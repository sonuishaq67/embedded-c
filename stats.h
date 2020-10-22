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
#ifndef __STATS_H__
#define __STATS_H__
#define unsi unsigned int
/* Add Your Declarations and Function Comments here */

/**
 * @brief Returns minimum in a array
 *
 * Returns minimum of an array after giving array and its length
 *
 * @param arr An array of unsigned characters 
 * @param length Length of given array
 *
 * @return Returns the minimum unsigned character value
 */
unsi find_minimum(unsi *arr, int length);
/**
 * @brief Returns maximum in a array
 *
 * Returns maximum of an array after giving array and its length
 *
 * @param arr An array of unsigned characters 
 * @param length Length of given array
 *
 * @return Returns the maximum unsigned character value
 */
unsi find_maximum(unsi *arr, int length);
/**
 * @brief Returns mean in a array
 *
 * Returns minimum of an array after giving array and its length
 *
 * @param arr An array of unsigned characters 
 * @param length Length of given array
 *
 * @return Returns the minimum unsigned character value
 */
unsi find_mean(unsi *arr, int length);
/**
 * @brief Returns median in a array
 *
 * Returns mean of an array after giving array and its length
 *
 * @param arr An array of unsigned characters 
 * @param length Length of given array
 *
 * @return Returns the mean unsigned character value
 */
unsi find_median(unsi *arr, int length);
/**
 * @brief prints the array
 *
 *
 * @param arr An array of unsigned characters 
 * @param length Length of given array
 *
 * @return prints the array 
 */
void print_array(unsi *arr, int length);
/**
 * @brief prints the statistics
 *
 *
 * @param arr An array of unsigned characters 
 * @param length Length of given array
 *
 * @return prints the array 
 */
void print_statistics(unsi *arr, int length);
/**
 * @brief Sorts an array 
 *
 * Returns minimum of an array after giving array and its length
 *
 * @param arr An array of unsigned characters 
 * @param length Length of given array
 *
 * @return Returns the sorted array
 */
unsi *sort_array(unsi *arr, int length);

#endif /* __STATS_H__ */
