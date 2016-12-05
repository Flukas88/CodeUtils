#include <stdio.h>
#include <stdlib.h>
#define TRUE 0

#define SUM 0
#define MULT 1
#define MOD 2

// test function with "callback"
int callBackFnc(int a, int b, int (*callback)(int, int));

// callback functions
int sum(int a, int b);
int mult(int a, int b);
int mod(int a, int b);

int main() {
  
   int a,b,res,opt;

   printf("Please input an integer value: ");
   scanf("%d", &a);

   printf("Please input an integer value: ");
   scanf("%d", &b);

   printf("Please input op type code (0=SUM,1=MULT,2=MOD): ");
   scanf("%d", &opt);

  switch(opt) {

   case SUM:
      res = callBackFnc(a, b, sum); 
      printf("Called callBackFnc and result is %d\n", res);
      break; /* optional */
	
   case MULT:
      res = callBackFnc(a, b, mult);
      printf("Called callBackFnc and result is %d\n", res);
      break; /* optional */
 
   case MOD:
      res = callBackFnc(a, b, mod);
      printf("Called callBackFnc and result is %d\n", res);
      break; /* optional */
 
   default : /* Optional */
      printf("Invalid opt code!\n"); 
      break;
  }
   
  return TRUE;
}

int callBackFnc(int a, int b, int (*callback)(int, int)) {
  return callback(a, b);
}

int sum(int a, int b) { return a + b; }

int mult(int a, int b) { return a * b; }

int mod(int a, int b) { return a % b; }
