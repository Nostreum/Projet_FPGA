#include "layer4_hls.h"
#include <stdio.h>
#include <math.h>

#define SIGMOID(x) (1.7159*(tanh(0.66666667*x)))
#define Q 8

// ------------------------------------------------------------------------------------------------------------------------------------------
void calculateLayer4(	uint16_t Layer3_Neurons_CPU_hls[50*5*5],
						uint16_t Layer3_Weights_CPU_hls[50*5*5],
						uint16_t Layer4_Neurons_CPU_hls[100])
// ------------------------------------------------------------------------------------------------------------------------------------------
{
	uint16_t somme;
	int i, j, k, m;

	I : for( i=0;i<100;i++){
		somme = Layer3_Weights_CPU_hls[i*(1+50*25)];

#pragma HLS loop_flatten
		J : for( j=0;j<50;j++)
#pragma HLS pipeline
			K : for( k=0;k<5;k++)
				M : for ( m=0;m<5;m++)
					somme += (Layer3_Weights_CPU_hls[i*(1+50*25)+1 + m + k*5 + j*25] * Layer3_Neurons_CPU_hls[m+5*k+25*j]) >> Q;

		Layer4_Neurons_CPU_hls[i] = (uint16_t) (1.7159) * (sinhf(0.66666667*somme)/coshf(0.66666667*somme));
	}
}

// ----------------------------------------------------------------------------------------------------------------
void calculateLayer3(		uint16_t Layer2_Neurons_CPU_hls[6*13*13],
							uint16_t Layer2_Weights_CPU_hls[6*13*13],
							uint16_t Layer3_Neurons_CPU_hls[50*5*5])
// ----------------------------------------------------------------------------------------------------------------
{
	uint16_t somme;
	int i,j,k,m,n;
	I : for( i=0;i<50;i++)
		J : for(j=0;j<5;j++)
			K : for(k=0;k<5;k++){
				somme = Layer2_Weights_CPU_hls[26*6*i];

				M : for( m=0;m<5;m++)
					N : for( n=0;n<5;n++){
						somme += (Layer2_Weights_CPU_hls[26*6*i+1+6*(n+5*m)	] * Layer2_Neurons_CPU_hls[13*13*0+13*(2*j+m)+(2*k+n)])>>Q;
						somme += (Layer2_Weights_CPU_hls[26*6*i+1+6*(n+5*m)+1] * Layer2_Neurons_CPU_hls[13*13*1+13*(2*j+m)+(2*k+n)])>>Q;
						somme += (Layer2_Weights_CPU_hls[26*6*i+1+6*(n+5*m)+2] * Layer2_Neurons_CPU_hls[13*13*2+13*(2*j+m)+(2*k+n)])>>Q;
						somme += (Layer2_Weights_CPU_hls[26*6*i+1+6*(n+5*m)+3] * Layer2_Neurons_CPU_hls[13*13*3+13*(2*j+m)+(2*k+n)])>>Q;
						somme += (Layer2_Weights_CPU_hls[26*6*i+1+6*(n+5*m)+4] * Layer2_Neurons_CPU_hls[13*13*4+13*(2*j+m)+(2*k+n)])>>Q;
						somme += (Layer2_Weights_CPU_hls[26*6*i+1+6*(n+5*m)+5] * Layer2_Neurons_CPU_hls[13*13*5+13*(2*j+m)+(2*k+n)])>>Q;

					}
				Layer3_Neurons_CPU_hls[5*5*i+5*j+k] = (uint16_t) (1.7159) * (sinh(0.66666667*somme)/cosh(0.66666667*somme));
			}
}
