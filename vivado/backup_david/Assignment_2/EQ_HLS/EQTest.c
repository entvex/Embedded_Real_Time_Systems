#include <stdio.h>
#include <math.h>
#include "EQFilter.h"

#define SAMPLES   48000
#define SAMPLE_FS 48000
#define NUM_BANDS     7

// Processing NUM_BANDS cascade IIR filters
void eq (int b0, int b1, int b2, int a1, int a2, // b0, b1, b2, a1, a2
		 short band,
		 short sampleIn,
         short* sampleOut);

void setCoeff(int *coeff, int band)
{
	short output;

	coeff[band*5+0] = IIR_getCoeffFixed(0); // b0
	coeff[band*5+1] = IIR_getCoeffFixed(1); // b1
	coeff[band*5+2] = IIR_getCoeffFixed(2); // b2
	coeff[band*5+3] = IIR_getCoeffFixed(4); // a1
	coeff[band*5+4] = IIR_getCoeffFixed(5); // a2

	eq(coeff[band*5+0], coeff[band*5+1],coeff[band*5+2],
	   coeff[band*5+3], coeff[band*5+4],
	   band, 0, &output);
}

int main ()
{
  FILE   *fp;
  short signal, output;
  int coefficients[NUM_BANDS*5];

  IIR_create();

  //IIR_makeLowPass(SAMPLE_FS, 1000); // Cut frequency 1 kHz

  IIR_makePeakEQ(SAMPLE_FS, 200, 10, 1.8); // Cut frequency 0.2 kHz
  setCoeff(coefficients, 0);
  IIR_makePeakEQ(SAMPLE_FS, 500, 10, 0.1); // Cut frequency 0.5 kHz
  setCoeff(coefficients, 1);
  IIR_makePeakEQ(SAMPLE_FS, 1000, 10, 0.1); // Cut frequency 1 kHz
  setCoeff(coefficients, 2);
  IIR_makePeakEQ(SAMPLE_FS, 2000, 10, 1.8); // Cut frequency 2 kHz
  setCoeff(coefficients, 3);
  IIR_makePeakEQ(SAMPLE_FS, 4000, 10, 0.1); // Cut frequency 4 kHz
  setCoeff(coefficients, 4);
  IIR_makePeakEQ(SAMPLE_FS, 8000, 10, 0.1); // Cut frequency 8 kHz
  setCoeff(coefficients, 5);
  IIR_makePeakEQ(SAMPLE_FS, 16000, 10, 1.8); // Cut frequency 16 kHz
  setCoeff(coefficients, 6);


  fp=fopen("eq_impulse.dat","w");

  int i;
  for (i=0;i<SAMPLES;i++) {
	  if(i==0)
		  signal = 0x4000;
	  else
		  signal = 0;
	  
	  eq(0, 0, 0, 0, 0, NUM_BANDS, signal, &output);
	  
   	  printf("%i %d %d\n",i,(int)signal,(int)output);
   	  fprintf(fp,"%03i %05d %05d\r\n",i,signal,output);
  }
  fclose(fp);
  return 0;
}
