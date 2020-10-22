/******************************************************************************
 * Copyright (C) 2017 by Alex Fosdick - University of Colorado
 *
 * Redistribution, modification or use of this software in source or binary
 * forms is permitted as long as the files maintain this copyright. Users are 
 * permitted to modify this and use it to learn about the field of embedded
 * software. Alex Fosdick and the University of Colorado are not liable for any
 * misuse of this material. 
 *
 *****************************************************************************/
/**
 * @file <Add File Name> 
 * @brief <Add Brief Description Here >
 *
 * <Add Extended Description Here>
 *
 * @author <Add FirsName LastName>
 * @date <Add date >
 *
 */

#include <stdio.h>
#include "stats.h"

/* Size of the Data Set */
#define SIZE 40

/*Main function*/
void main()
{

  unsigned int test[SIZE] = {34, 201, 190, 154, 8, 194, 2, 6,
                             114, 88, 45, 76, 123, 87, 25, 23,
                             200, 122, 150, 90, 92, 87, 177, 244,
                             201, 6, 12, 60, 8, 2, 5, 67,
                             7, 87, 250, 230, 99, 3, 100, 90};

  /* Other Variable Declarations Go Here */
  /* Statistics and Printing Functions Go Here */
  print_statistics(test, SIZE);
}

/* Add other Implementation File Code Here */

void print_statistics(unsi *arr, int length)
{
  print_array(arr, length);
  printf("\nThe mean is %d", find_mean(arr, length));
  printf("\nThe median is %d", find_median(arr, length));
  printf("\nThe maximum is %d", find_maximum(arr, length));
  printf("\nThe median is %d", find_minimum(arr, length));
  
}

void print_array(unsi *arr, int length)
{
  unsi *itr = arr;
  printf("The array is : ");
  while (length--)
  {
    printf("%d ", *itr);
    itr++;
  }
}
void swap(int *p, int *q)
{
  int t;
  t = *p;
  *p = *q;
  *q = t;
}

unsi *sort_array(unsi *arr, int length)
{
  int i, j, temp;

  for (i = 0; i < length - 1; i++)
  {
    for (j = 0; j < length - i - 1; j++)
    {
      if (arr[j] < arr[j + 1])
        swap(&arr[j], &arr[j + 1]);
    }
  }
  return arr;
}

unsi find_median(unsi *arr, int length)
{
  arr = sort_array(arr, length);
  int n = length;
  n = (n + 1) / 2 - 1;
  return arr[n];
}

unsi find_mean(unsi *arr, int length)
{
  unsi sum = 0, i = 0;
  for (i = 0; i < length; i++)
  {
    sum = sum + arr[i];
  }
  int armean = sum / length;
  return armean;
}

unsi find_maximum(unsi *arr, int length)
{
  return arr[0];
}
unsi find_minimum(unsi *arr, int length)
{ 
  return arr[length-1];
}