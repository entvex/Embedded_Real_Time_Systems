#pragma line 1 "D:/Xilinx/Assignment_2/EQ_HLS/EQ.c"
#pragma line 1 "<built-in>"
#pragma line 1 "<command-line>"
#pragma line 1 "D:/Xilinx/Assignment_2/EQ_HLS/EQ.c"
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
void iir (int b0, int b1, int b2, int a1, int a2, short band, short sample, short* result)
{
 static int x1_fix[7], x2_fix[7], y1_fix[7], y2_fix[7];
 int in = sample;
 int out = b0 * in
    + b1 * x1_fix[band]
    + b2 * x2_fix[band]
    - a1 * y1_fix[band]
    - a2 * y2_fix[band];
#pragma empty_line
#pragma empty_line
 out >>= (16 -1);
#pragma empty_line
 x2_fix[band] = x1_fix[band];
 x1_fix[band] = in;
 y2_fix[band] = y1_fix[band];
 y1_fix[band] = out;
#pragma empty_line
 *result = out;
}
#pragma empty_line
#pragma empty_line
void eq (int b0, int b1, int b2, int a1, int a2,
   short band,
   short sampleIn,
         short* sampleOut)
{
    static int coeff[7*5];
    short i;
 short result = 0;
 short b = 0;
 short input = sampleIn;
#pragma empty_line
    if (band < 7)
    {
     i = band*5;
        coeff[i++] = b0;
        coeff[i++] = b1;
        coeff[i++] = b2;
        coeff[i++] = a1;
        coeff[i] = a2;
    }
    else
    {
  loop: for (i = 0; i < 7*5; i += 5) {
   iir(coeff[i], coeff[i+1], coeff[i+2],
    coeff[i+3], coeff[i+4],
    b, input, &result);
   input = result;
   b++;
  }
    }
 *sampleOut = result;
}
