#include <stdio.h>
#include <stdlib.h>

int main () {
   int i,j;
   int myArray[9]; // Subscript ranges of an array in the stack is bound in compile time. 
   int* ptr = malloc(sizeof(int) * 5);
   int* ptr2 = calloc(5, sizeof(int));
   printf("Malloc [%d] = %d\n", 0, ptr[0]);
   printf("Calloc initializes to zero [%d] = %d\n", 0, ptr2[0]); 
   int myInitArray[] = {1,2,3}; // an array can be initialized.
   int **multArray = malloc(sizeof(int)*3);
   for(i = 0; i < 3; i++){
	multArray[i] = malloc(sizeof(int)*(i + 1)); // This is a jagged array. Every row has number has their row no. of elements.
   } 
   

   myInitArray[2] = 5;
   printf("Element[%d] = %d\n", 2, myInitArray[2]); //accessing the modified element...
   
   /* initialize elements of array n to 0 */         
   for (i = 0; i < 8; i++ ) {
      myArray[i] = i + 20; /* set element at location i to i + 100 */
   }
   myArray[9] = -27; 
   /* output each array element's value */
   for (j = 0; j < 8; j++ ) {
      printf("Element[%d] = %d\n", j, myArray[j] );
   }
   printf("LastElement[%d] = %d\n", 9, myArray[-5]);
   myArray[11] = 5;

   
   return 0;
}
