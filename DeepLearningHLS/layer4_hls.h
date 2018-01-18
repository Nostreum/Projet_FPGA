#ifndef _LAYER4_HLS_H_
#define _LAYER4_HLS_H_

#include <stdint.h>

#define Q 8

void calculateLayer4(		uint16_t* Layer3_Neurons_CPU_hls,
							uint16_t* Layer3_Weights_CPU_hls,
							uint16_t* Layer4_Neurons_CPU_hls);

void calculateLayer3(		uint16_t* Layer2_Neurons_CPU_hls,
							uint16_t* Layer2_Weights_CPU_hls,
							uint16_t* Layer3_Neurons_CPU_hls);
#endif
