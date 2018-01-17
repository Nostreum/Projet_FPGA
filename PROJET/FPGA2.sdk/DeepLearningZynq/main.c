
// Global preprocessor command
//----------------------------
//#define DEBUG
#define DEBUG_TIME
//----------------------------

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <float.h>
#include <math.h>
#include <time.h>
#include <xil_printf.h>
#include "timers_b.h"
#include "weights.h"
#include "weights_fixe.h"
#include "xparameters.h"
#include "simd.h"
#include "xil_io.h"

#include "xtime_l.h"


#define IMGWIDTH 29
#define IMGHEIGHT 29
#define tour 10000
#define Q 8

#define SIGMOID(x) (1.7159*tanh(0.66666667*x))
#define DSIGMOID(S) (0.66666667/1.7159*(1.7159+(S))*(1.7159-(S)))

void printInput(float *Input);

void calculateLayer1(float* input, float* Layer1_Neurons_CPU);
void calculateLayer2(float* Layer1_Neurons_CPU, float* Layer1_Weights_CPU, float* Layer2_Neurons_CPU);
void calculateLayer4(float* Layer3_Neurons_CPU, float* Layer3_Weights_CPU, float* Layer4_Neurons_CPU);
void calculateLayer4_opti_enrolled(float* Layer3_Neurons_CPU, float* Layer3_Weights_CPU, float* Layer4_Neurons_CPU);
void calculateLayer5(float* Layer4_Neurons_CPU, float* Layer4_Weights_CPU, double* Layer5_Neurons_CPU);

void calculateLayer3(float* Layer2_Neurons_CPU, float* Layer2_Weights_CPU, float* Layer3_Neurons_CPU);
void calculateLayer3_opti_enrolled(float* Layer2_Neurons_CPU, float* Layer2_Weights_CPU, float* Layer3_Neurons_CPU);

void InitHostMem(float *Layer1_Weights_CPU,float *Layer2_Weights_CPU, float *Layer3_Weights_CPU,float *Layer4_Weights_CPU);

void calculateLayer4_SIMD(float* Layer3_Neurons_CPU, float* Layer3_Weights_CPU, float* Layer4_Neurons_CPU);
void calculateLayer5_SIMD(afloat32* Layer4_Neurons_CPU, afloat32* Layer4_Weights_CPU, double* Layer5_Neurons_CPU);

void calculateLayer1_int(uint16_t* input, uint16_t* Layer1_Neurons_CPU);
void calculateLayer2_int(uint16_t* Layer1_Neurons_CPU, uint16_t* Layer1_Weights_CPU, uint16_t* Layer2_Neurons_CPU);
void calculateLayer3_int(uint16_t* Layer2_Neurons_CPU, uint16_t* Layer2_Weights_CPU, uint16_t* Layer3_Neurons_CPU);
void calculateLayer4_int(uint16_t* Layer3_Neurons_CPU, uint16_t* Layer3_Weights_CPU, uint16_t* Layer4_Neurons_CPU);
void calculateLayer5_int(uint16_t* Layer4_Neurons_CPU, uint16_t* Layer4_Weights_CPU, double* Layer5_Neurons_CPU);


XTime getCycles(){
	XTime t;
	XTime_GetTime(&t);
	return t;
}

double diff(XTime start, XTime end){
	XTime temp = end - start;
	return ((double)temp / (double)(COUNTS_PER_SECOND/1000000));
}

void print2_simd(float32x4_t v4, float32x2_t v2){

       float *v4_t = (float*)&v4;
       float *v2_t = (float*)&v2;

       printf("v4_t : %f %f %f %f \n", v4_t[0], v4_t[1], v4_t[2], v4_t[3]);
       printf("v2_t : %f %f \n", v2_t[0], v2_t[1]);

}

void print4_simd(float32x4_t v4, float32x4_t v2){

       float *v4_t = (float*)&v4;
       float *v2_t = (float*)&v2;

       printf("v4_t : %f %f %f %f \n", v4_t[0], v4_t[1], v4_t[2], v4_t[3]);
       printf("v2_t : %f %f %f %f \n", v2_t[0], v2_t[1], v2_t[2], v2_t[3]);

}


int _main(int argc, char** argv){

	XTime  t1, t2, t3, t4, t5, t6;
	double dt1, dt2, dt3, dt4, dt5, dt6;
	//init_platform();

	float
		Layer1_Neurons_CPU[IMGWIDTH*IMGHEIGHT],
		Layer2_Neurons_CPU[6*13*13],
		Layer3_Neurons_CPU[50*5*5],
		Layer4_Neurons_CPU[100];

	uint16_t
			Layer1_Neurons_CPU_int[IMGWIDTH*IMGHEIGHT],
			Layer2_Neurons_CPU_int[6*13*13],
			Layer3_Neurons_CPU_int[50*5*5],
			Layer4_Neurons_CPU_int[100];

	double
		Layer5_Neurons_CPU[10];

	int i;

	double scoremax;

	//float Input[29*29];

	float Input[29*29] = {

	// caractère "2"

	/**1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,0,0,0,1,1,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,
	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,1,1,1,1,1,
	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1*/

	// caractère
	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,0,0,0,1,1,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,0,1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
	/*
	
	// caractère "8"

	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,0,0,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,0,0,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,1,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,0,0,0,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,0,0,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,0,0,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
	1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1

*/	};

	/*float tab[4] = { 2, 4, 6, 5};

	float32x4_t v = vld1q_f32(&tab[0]);
	float32x2_t v1 = vadd_f32(vget_high_f32(v), vget_low_f32(v));
	v1 = vpadd_f32(v1, v1);
	print2_simd(v, v1);*/

	// slv_reg0 <= a
	// slv_reg1 <= b
	// slv_reg2 <= c
	// c <= slv_reg3

	//readFile(Input, filename);
	//printInput(Input);

	t1 = getCycles();
	calculateLayer1(Input, Layer1_Neurons_CPU);
	t2 = getCycles();
	calculateLayer2(Layer1_Neurons_CPU, Layer1_Weights_CPU, Layer2_Neurons_CPU);
	t3 = getCycles();
	calculateLayer3(Layer2_Neurons_CPU, Layer2_Weights_CPU, Layer3_Neurons_CPU);
	t4 = getCycles();
	calculateLayer4_SIMD(Layer3_Neurons_CPU, Layer3_Weights_CPU, Layer4_Neurons_CPU);
	t5= getCycles();
	calculateLayer5_SIMD(Layer4_Neurons_CPU, Layer4_Weights_CPU, Layer5_Neurons_CPU);


	t6 = getCycles();
	dt1 = diff(t1,t2);
	dt2 = diff(t2,t3);
	dt3 = diff(t3,t4);
	dt4 = diff(t4,t5);
	dt5 = diff(t5,t6);
	dt6 = diff(t1, t6);

	printf("Layout 1 : %.3f, Layout 2 : %.3f, Layout 3 : %.3f, Layout 4 : %.3f, Layout 5 : %.3f, Total : %.3f us \n", dt1, dt2, dt3, dt4, dt5, dt6);

	uint16_t Input_int[29*29];
	for(int i=0; i<29*29; i++)
		Input_int[i] = (uint16_t)Input[i];

	t1 = getCycles();
	calculateLayer1_int(Input_int, Layer1_Neurons_CPU_int);
	t2 = getCycles();
	calculateLayer2_int(Layer1_Neurons_CPU_int, Layer1_Weights_CPU_int, Layer2_Neurons_CPU_int);
	t3 = getCycles();
	calculateLayer3_int(Layer2_Neurons_CPU_int, Layer2_Weights_CPU_int, Layer3_Neurons_CPU_int);
	t4 = getCycles();
	calculateLayer4_int(Layer3_Neurons_CPU_int, Layer3_Weights_CPU_int, Layer4_Neurons_CPU_int);
	t5= getCycles();
	calculateLayer5_int(Layer4_Neurons_CPU_int, Layer4_Weights_CPU_int, Layer5_Neurons_CPU);


	t6 = getCycles();
	dt1 = diff(t1,t2);
	dt2 = diff(t2,t3);
	dt3 = diff(t3,t4);
	dt4 = diff(t4,t5);
	dt5 = diff(t5,t6);
	dt6 = diff(t1, t6);

	printf("Layout 1 : %.3f, Layout 2 : %.3f, Layout 3 : %.3f, Layout 4 : %.3f, Layout 5 : %.3f, Total : %.3f us \n", dt1, dt2, dt3, dt4, dt5, dt6);


	scoremax = FLT_MIN;
	int indexmax=-1;
	for(i=0;i<10;i++)
	{
		//xil_printf("%d : %f\n",i,Layer5_Neurons_CPU[i]);
		if(Layer5_Neurons_CPU[i]>scoremax)
		{
			scoremax = Layer5_Neurons_CPU[i];
			indexmax = i;
		}
	}
	printf("Le resultat est : %d \n",indexmax);

	return 0;
}




void calculateLayer1(float* input, float* Layer1_Neurons_CPU){
	memcpy(Layer1_Neurons_CPU, input, IMGWIDTH*IMGHEIGHT*sizeof(float));
}

void calculateLayer2(float* Layer1_Neurons_CPU, float* Layer1_Weights_CPU, float* Layer2_Neurons_CPU){
		float somme;
	int i,j,k,m,n;

	for(i=0;i<6;i++) 
		for(j=0;j<13;j++) 
			for(k=0;k<13;k++){ 
				somme = Layer1_Weights_CPU[26*i]; 
				for(m=0;m<5;m++) 
					for(n=0;n<5;n++) 
						somme += Layer1_Weights_CPU[26*i+5*m+n+1] * Layer1_Neurons_CPU[29*(m+2*j)+n+2*k];
				Layer2_Neurons_CPU[13*13*i+13*j+k] = (float) SIGMOID(somme);
			}
}

void calculateLayer3(float* Layer2_Neurons_CPU, float* Layer2_Weights_CPU, float* Layer3_Neurons_CPU){
	float somme;
	int i,j,k,m,n;
	for( i=0;i<50;i++) 
		for(j=0;j<5;j++) 
			for(k=0;k<5;k++){ 
				somme = Layer2_Weights_CPU[26*6*i]; 
				
				for( m=0;m<5;m++) 
					for( n=0;n<5;n++){ 
						somme += Layer2_Weights_CPU[26*6*i+1+6*(n+5*m)	] * Layer2_Neurons_CPU[13*13*0+13*(2*j+m)+(2*k+n)];
						somme += Layer2_Weights_CPU[26*6*i+1+6*(n+5*m)+1] * Layer2_Neurons_CPU[13*13*1+13*(2*j+m)+(2*k+n)];
						somme += Layer2_Weights_CPU[26*6*i+1+6*(n+5*m)+2] * Layer2_Neurons_CPU[13*13*2+13*(2*j+m)+(2*k+n)];
						somme += Layer2_Weights_CPU[26*6*i+1+6*(n+5*m)+3] * Layer2_Neurons_CPU[13*13*3+13*(2*j+m)+(2*k+n)];
						somme += Layer2_Weights_CPU[26*6*i+1+6*(n+5*m)+4] * Layer2_Neurons_CPU[13*13*4+13*(2*j+m)+(2*k+n)];
						somme += Layer2_Weights_CPU[26*6*i+1+6*(n+5*m)+5] * Layer2_Neurons_CPU[13*13*5+13*(2*j+m)+(2*k+n)];

					}
				Layer3_Neurons_CPU[5*5*i+5*j+k] = (float) SIGMOID(somme);
			}
}

void calculateLayer3_opti_enrolled(float* Layer2_Neurons_CPU, float* Layer2_Weights_CPU, float* Layer3_Neurons_CPU){
	float somme;
	int i,j,k,m;
	for( i=0;i<50;i++)
		for(j=0;j<5;j++)
			for(k=0;k<5;k++){
				somme = Layer2_Weights_CPU[26*6*i];

				for( m=0;m<5;m++){
					somme += Layer2_Weights_CPU[26*6*i+1+6*(0+5*m)	] * Layer2_Neurons_CPU[13*13*0+13*(2*j+m)+(2*k+0)];
					somme += Layer2_Weights_CPU[26*6*i+1+6*(1+5*m)+1] * Layer2_Neurons_CPU[13*13*1+13*(2*j+m)+(2*k+1)];
					somme += Layer2_Weights_CPU[26*6*i+1+6*(2+5*m)+2] * Layer2_Neurons_CPU[13*13*2+13*(2*j+m)+(2*k+2)];
					somme += Layer2_Weights_CPU[26*6*i+1+6*(3+5*m)+3] * Layer2_Neurons_CPU[13*13*3+13*(2*j+m)+(2*k+3)];
					somme += Layer2_Weights_CPU[26*6*i+1+6*(4+5*m)+4] * Layer2_Neurons_CPU[13*13*4+13*(2*j+m)+(2*k+4)];
					somme += Layer2_Weights_CPU[26*6*i+1+6*(5+5*m)+5] * Layer2_Neurons_CPU[13*13*5+13*(2*j+m)+(2*k+5)];

					somme += Layer2_Weights_CPU[26*6*i+1+6*(0+5*m)	] * Layer2_Neurons_CPU[13*13*0+13*(2*j+m)+(2*k+0)];
					somme += Layer2_Weights_CPU[26*6*i+1+6*(1+5*m)+1] * Layer2_Neurons_CPU[13*13*1+13*(2*j+m)+(2*k+1)];
					somme += Layer2_Weights_CPU[26*6*i+1+6*(2+5*m)+2] * Layer2_Neurons_CPU[13*13*2+13*(2*j+m)+(2*k+2)];
					somme += Layer2_Weights_CPU[26*6*i+1+6*(3+5*m)+3] * Layer2_Neurons_CPU[13*13*3+13*(2*j+m)+(2*k+3)];
					somme += Layer2_Weights_CPU[26*6*i+1+6*(4+5*m)+4] * Layer2_Neurons_CPU[13*13*4+13*(2*j+m)+(2*k+4)];
					somme += Layer2_Weights_CPU[26*6*i+1+6*(5+5*m)+5] * Layer2_Neurons_CPU[13*13*5+13*(2*j+m)+(2*k+5)];

					somme += Layer2_Weights_CPU[26*6*i+1+6*(0+5*m)	] * Layer2_Neurons_CPU[13*13*0+13*(2*j+m)+(2*k+0)];
					somme += Layer2_Weights_CPU[26*6*i+1+6*(1+5*m)+1] * Layer2_Neurons_CPU[13*13*1+13*(2*j+m)+(2*k+1)];
					somme += Layer2_Weights_CPU[26*6*i+1+6*(2+5*m)+2] * Layer2_Neurons_CPU[13*13*2+13*(2*j+m)+(2*k+2)];
					somme += Layer2_Weights_CPU[26*6*i+1+6*(3+5*m)+3] * Layer2_Neurons_CPU[13*13*3+13*(2*j+m)+(2*k+3)];
					somme += Layer2_Weights_CPU[26*6*i+1+6*(4+5*m)+4] * Layer2_Neurons_CPU[13*13*4+13*(2*j+m)+(2*k+4)];
					somme += Layer2_Weights_CPU[26*6*i+1+6*(5+5*m)+5] * Layer2_Neurons_CPU[13*13*5+13*(2*j+m)+(2*k+5)];

					somme += Layer2_Weights_CPU[26*6*i+1+6*(0+5*m)	] * Layer2_Neurons_CPU[13*13*0+13*(2*j+m)+(2*k+0)];
					somme += Layer2_Weights_CPU[26*6*i+1+6*(1+5*m)+1] * Layer2_Neurons_CPU[13*13*1+13*(2*j+m)+(2*k+1)];
					somme += Layer2_Weights_CPU[26*6*i+1+6*(2+5*m)+2] * Layer2_Neurons_CPU[13*13*2+13*(2*j+m)+(2*k+2)];
					somme += Layer2_Weights_CPU[26*6*i+1+6*(3+5*m)+3] * Layer2_Neurons_CPU[13*13*3+13*(2*j+m)+(2*k+3)];
					somme += Layer2_Weights_CPU[26*6*i+1+6*(4+5*m)+4] * Layer2_Neurons_CPU[13*13*4+13*(2*j+m)+(2*k+4)];
					somme += Layer2_Weights_CPU[26*6*i+1+6*(5+5*m)+5] * Layer2_Neurons_CPU[13*13*5+13*(2*j+m)+(2*k+5)];

					somme += Layer2_Weights_CPU[26*6*i+1+6*(0+5*m)	] * Layer2_Neurons_CPU[13*13*0+13*(2*j+m)+(2*k+0)];
					somme += Layer2_Weights_CPU[26*6*i+1+6*(1+5*m)+1] * Layer2_Neurons_CPU[13*13*1+13*(2*j+m)+(2*k+1)];
					somme += Layer2_Weights_CPU[26*6*i+1+6*(2+5*m)+2] * Layer2_Neurons_CPU[13*13*2+13*(2*j+m)+(2*k+2)];
					somme += Layer2_Weights_CPU[26*6*i+1+6*(3+5*m)+3] * Layer2_Neurons_CPU[13*13*3+13*(2*j+m)+(2*k+3)];
					somme += Layer2_Weights_CPU[26*6*i+1+6*(4+5*m)+4] * Layer2_Neurons_CPU[13*13*4+13*(2*j+m)+(2*k+4)];
					somme += Layer2_Weights_CPU[26*6*i+1+6*(5+5*m)+5] * Layer2_Neurons_CPU[13*13*5+13*(2*j+m)+(2*k+5)];

				}
				Layer3_Neurons_CPU[5*5*i+5*j+k] = (float) SIGMOID(somme);
			}
}

void calculateLayer4(float* Layer3_Neurons_CPU, float* Layer3_Weights_CPU, float* Layer4_Neurons_CPU){
	float somme; 
	int i, j, k, m;
	for( i=0;i<100;i++){
		somme = Layer3_Weights_CPU[i*(1+50*25)];
		for( j=0;j<50;j++) 
			for( k=0;k<5;k++) 
				for ( m=0;m<5;m++) 
					somme += Layer3_Weights_CPU[i*(1+50*25)+1 + m + k*5 + j*25] * Layer3_Neurons_CPU[m+5*k+25*j];
				
		Layer4_Neurons_CPU[i] = (float) SIGMOID(somme);
	}

}

void calculateLayer4_opti_enrolled(float* Layer3_Neurons_CPU, float* Layer3_Weights_CPU, float* Layer4_Neurons_CPU){
	float somme;
	int i, j, k;
	for( i=0;i<100;i++){
		somme = Layer3_Weights_CPU[i*(1+50*25)];
		for( j=0;j<50;j++)
			for( k=0;k<5;k++){
				somme += Layer3_Weights_CPU[i*1251 + 0 + k*5 + j*25] * Layer3_Neurons_CPU[0+5*k+25*j];
				somme += Layer3_Weights_CPU[i*1251 + 1 + k*5 + j*25] * Layer3_Neurons_CPU[1+5*k+25*j];
				somme += Layer3_Weights_CPU[i*1251 + 2 + k*5 + j*25] * Layer3_Neurons_CPU[2+5*k+25*j];
				somme += Layer3_Weights_CPU[i*1251 + 3 + k*5 + j*25] * Layer3_Neurons_CPU[3+5*k+25*j];
				somme += Layer3_Weights_CPU[i*1251 + 4 + k*5 + j*25] * Layer3_Neurons_CPU[4+5*k+25*j];
				somme += Layer3_Weights_CPU[i*1251 + 5 + k*5 + j*25] * Layer3_Neurons_CPU[5+5*k+25*j];
			}
		Layer4_Neurons_CPU[i] = (float) SIGMOID(somme);
	}

}

void calculateLayer4_SIMD(float* Layer3_Neurons_CPU, float* Layer3_Weights_CPU, float* Layer4_Neurons_CPU){

	int i, j;
	for( i=0;i<100;i++){

		//v4x3 bias = v4x3_load(Layer3_Weights_CPU, i*(1+50*25));
		v4x3 sum = v4x3_setall(0);

		for( j=0;j<1248;j+=4){

			v4x3 l4w = v4x3_load(Layer3_Weights_CPU, i*(1+50*25)+1 + j);
			v4x3 l4n = v4x3_load(Layer3_Neurons_CPU, j	);

			sum = vmlaq_f32(sum, l4w, l4n);
		}

		float32x2_t v1 = vadd_f32(vget_high_f32(sum), vget_low_f32(sum));
		v1 = vpadd_f32(v1, v1);

		afloat32 extract = v2x3_extract(v1, 0);

		extract += Layer3_Weights_CPU[i*(1+50*25)+1 + 1248] * Layer3_Neurons_CPU[1248];
		extract += Layer3_Weights_CPU[i*(1+50*25)+1 + 1249] * Layer3_Neurons_CPU[1249];
		extract += Layer3_Weights_CPU[i*(1+50*25)];

		Layer4_Neurons_CPU[i] = SIGMOID(extract);
	}

}

void calculateLayer5_SIMD(afloat32* Layer4_Neurons_CPU, afloat32* Layer4_Weights_CPU, double* Layer5_Neurons_CPU){

	int i,j;

	for(i=0; i<10; i++){

		v4x3 sum = v4x3_setall(0);

		for(j=0; j<100; j+=4){

			v4x3 l4w = v4x3_load(Layer4_Weights_CPU, 1+101*i+j);
			v4x3 l4n = v4x3_load(Layer4_Neurons_CPU, j	);

			sum = vmlaq_f32(sum, l4w, l4n);
		}

		afloat32 extract = v4x3_extract(sum, 0);
		extract += Layer4_Weights_CPU[101*i];
		Layer5_Neurons_CPU[i] = SIGMOID(extract);

	}

}


void calculateLayer5(float* Layer4_Neurons_CPU, float* Layer4_Weights_CPU, double* Layer5_Neurons_CPU){
	float somme;
	int i, j;
	for( i=0;i<10;i++){
		somme = Layer4_Weights_CPU[101*i];
		for( j=0;j<100;j++)
			somme += Layer4_Weights_CPU[1+101*i+j] * Layer4_Neurons_CPU[j];
		Layer5_Neurons_CPU[i] = SIGMOID(somme);
	}
}

/* ----------------------------------------*/
/* INTEGER 16-BITS VERSION                 */
/* ----------------------------------------*/

void calculateLayer1_int(uint16_t* input, uint16_t* Layer1_Neurons_CPU){
	memcpy(Layer1_Neurons_CPU, input, IMGWIDTH*IMGHEIGHT*sizeof(uint16_t));
}

void calculateLayer2_int(uint16_t* Layer1_Neurons_CPU, uint16_t* Layer1_Weights_CPU, uint16_t* Layer2_Neurons_CPU){
		float somme;
	int i,j,k,m,n;

	for(i=0;i<6;i++)
		for(j=0;j<13;j++)
			for(k=0;k<13;k++){
				somme = Layer1_Weights_CPU[26*i];
				for(m=0;m<5;m++)
					for(n=0;n<5;n++)
						somme += (Layer1_Weights_CPU[26*i+5*m+n+1] * Layer1_Neurons_CPU[29*(m+2*j)+n+2*k]) >> Q;
				Layer2_Neurons_CPU[13*13*i+13*j+k] = (float) SIGMOID(somme);
			}
}

void calculateLayer3_int(uint16_t* Layer2_Neurons_CPU, uint16_t* Layer2_Weights_CPU, uint16_t* Layer3_Neurons_CPU){
	float somme;
	int i,j,k,m,n;
	for( i=0;i<50;i++)
		for(j=0;j<5;j++)
			for(k=0;k<5;k++){
				somme = Layer2_Weights_CPU[26*6*i];

				for( m=0;m<5;m++)
					for( n=0;n<5;n++){
						somme += (Layer2_Weights_CPU[26*6*i+1+6*(n+5*m)	] * Layer2_Neurons_CPU[13*13*0+13*(2*j+m)+(2*k+n)])>>Q;
						somme += (Layer2_Weights_CPU[26*6*i+1+6*(n+5*m)+1] * Layer2_Neurons_CPU[13*13*1+13*(2*j+m)+(2*k+n)])>>Q;
						somme += (Layer2_Weights_CPU[26*6*i+1+6*(n+5*m)+2] * Layer2_Neurons_CPU[13*13*2+13*(2*j+m)+(2*k+n)])>>Q;
						somme += (Layer2_Weights_CPU[26*6*i+1+6*(n+5*m)+3] * Layer2_Neurons_CPU[13*13*3+13*(2*j+m)+(2*k+n)])>>Q;
						somme += (Layer2_Weights_CPU[26*6*i+1+6*(n+5*m)+4] * Layer2_Neurons_CPU[13*13*4+13*(2*j+m)+(2*k+n)])>>Q;
						somme += (Layer2_Weights_CPU[26*6*i+1+6*(n+5*m)+5] * Layer2_Neurons_CPU[13*13*5+13*(2*j+m)+(2*k+n)])>>Q;

					}
				Layer3_Neurons_CPU[5*5*i+5*j+k] = (uint16_t) SIGMOID(somme);
			}
}

void calculateLayer4_int(uint16_t* Layer3_Neurons_CPU, uint16_t* Layer3_Weights_CPU, uint16_t* Layer4_Neurons_CPU){
	float somme;
	int i, j, k, m;
	for( i=0;i<100;i++){
		somme = Layer3_Weights_CPU[i*(1+50*25)];
		for( j=0;j<50;j++)
			for( k=0;k<5;k++)
				for ( m=0;m<5;m++)
					somme += (Layer3_Weights_CPU[i*(1+50*25)+1 + m + k*5 + j*25] * Layer3_Neurons_CPU[m+5*k+25*j])>>Q;

		Layer4_Neurons_CPU[i] = (uint16_t) SIGMOID(somme);
	}

}

void calculateLayer4_SIMD_int(uint16_t* Layer3_Neurons_CPU, uint16_t* Layer3_Weights_CPU, uint16_t* Layer4_Neurons_CPU){

	int i, j;
	for( i=0;i<100;i++){

		//v4x3 bias = v4x3_load(Layer3_Weights_CPU, i*(1+50*25));
		v4x3 sum = v4x3_setall(0);

		for( j=0;j<1248;j+=4){

			v4x3 l4w = v4x3_load(Layer3_Weights_CPU, i*(1+50*25)+1 + j);
			v4x3 l4n = v4x3_load(Layer3_Neurons_CPU, j	);

			sum = vmlaq_f32(sum, l4w, l4n);
		}

		float32x2_t v1 = vadd_f32(vget_high_f32(sum), vget_low_f32(sum));
		v1 = vpadd_f32(v1, v1);

		afloat32 extract = v2x3_extract(v1, 0);

		extract += Layer3_Weights_CPU[i*(1+50*25)+1 + 1248] * Layer3_Neurons_CPU[1248];
		extract += Layer3_Weights_CPU[i*(1+50*25)+1 + 1249] * Layer3_Neurons_CPU[1249];
		extract += Layer3_Weights_CPU[i*(1+50*25)];

		Layer4_Neurons_CPU[i] = (uint16_t) SIGMOID(extract);
	}

}

void calculateLayer5_SIMD_int(uint16_t* Layer4_Neurons_CPU, uint16_t* Layer4_Weights_CPU, uint16_t* Layer5_Neurons_CPU){

	int i,j;

	for(i=0; i<10; i++){

		v4x3 sum = v4x3_setall(0);

		for(j=0; j<100; j+=4){

			v4x3 l4w = v4x3_load(Layer4_Weights_CPU, 1+101*i+j);
			v4x3 l4n = v4x3_load(Layer4_Neurons_CPU, j	);

			sum = vmlaq_f32(sum, l4w, l4n);
		}

		afloat32 extract = v4x3_extract(sum, 0);
		extract += Layer4_Weights_CPU[101*i];
		Layer5_Neurons_CPU[i] = (uint16_t) SIGMOID(extract);

	}

}


void calculateLayer5_int(uint16_t* Layer4_Neurons_CPU, uint16_t* Layer4_Weights_CPU, double* Layer5_Neurons_CPU){
	float somme;
	int i, j;
	for( i=0;i<10;i++){
		somme = Layer4_Weights_CPU[101*i];
		for( j=0;j<100;j++)
			somme += (Layer4_Weights_CPU[1+101*i+j] * Layer4_Neurons_CPU[j])>>Q;
		Layer5_Neurons_CPU[i] = (uint16_t) SIGMOID(somme);
	}
}


void printInput(float *Input){

	int i,j;

	for(i=0; i<29; i++){
		for(j=0; j<29; j++){
			xil_printf("%.0f ", Input[(i*29)+j]);
		}
		
		xil_printf("\n");
	}

}

int main(int argc, char *argv[]){

	_main(argc, argv);

	/*int16_t a = 2;
	int16_t b = 4;
	int16_t res = -1;

	int32_t reg0 = ((int32_t)a<<15) | (int32_t)b;
	int32_t reg1 = ((int32_t)1<<31) | 0x0;
	int32_t reg2 = (int32_t)res;

	xil_printf("reg0 : %d \r\n", reg0);


	Xil_Out32(XPAR_MULACC_0_S00_AXI_BASEADDR + 0x0, reg0);
	Xil_Out32(XPAR_MULACC_0_S00_AXI_BASEADDR + 0x4, reg1);
	//Xil_Out32(XPAR_MULACC_0_S00_AXI_BASEADDR + 0x8, reg2);

	reg2 = Xil_In32(XPAR_MULACC_0_S00_AXI_BASEADDR + 0x8);

	xil_printf("reg0 : %d, a : %d, b : %d \r\n", reg0, reg1, reg2 & 0x00FF);*/
}

 
