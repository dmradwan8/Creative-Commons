#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// The MIT License (MIT)
//
// Copyright © (year) (copyright holders)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the “Software”), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

// the rest of the code follows

void print_array(int array[], int size) {
    int i;
    for (i = 0; i < size; i++) {
        printf("%d ", array[i]);
    }
    printf("\n");
}

int *merge_arrays(int array1[], int size1, int array2[], int size2) {
    // get the total size of both arrays
    int total_size = size1 + size2;
    // allocate memory for the new array
    int *merged_array = calloc(total_size, sizeof(int));

    // copy the contents of both arrays into the new array
    memcpy(merged_array, array1, size1 * sizeof(int));
    memcpy(merged_array + size1, array2, size2 * sizeof(int));

    return merged_array;
}

// Selection sort to sort an array
void selection_sort(int array[], int size) {
    int i, j, min_index, temp;
    for (i = 0; i < size - 1; i++) {
        min_index = i;
        for (j = i + 1; j < size; j++) {
            if (array[j] < array[min_index]) {
                min_index = j;
            }
        }
        // swap the elements
        temp = array[min_index];
        array[min_index] = array[i];
        array[i] = temp;
    }
}

// Bubble sort to sort array
void bubble_sort(int array[], int size) {
    int swapped = 0, i;
    do {
        swapped = 0;
        for (i = 0; i < size - 1; i++) {
            if (array[i] > array[i + 1]) {
                int temp = array[i];
                array[i] = array[i + 1];
                array[i + 1] = temp;
                swapped = 1;
            }
        }
    } while (swapped != 0);
}

int main() {
    // create the array
    int array1[5] = {2, 4, 6, 8, 10};
    int array2[5] = {1, 3, 5, 7, 8};
    int size1 = 5;
    int size2 = 5;

    // print the original arrays
    printf("Array 1: ");
    print_array(array1, size1);
    printf("Array 2: ");
    print_array(array2, size2);

    // merge the arrays and print the merged array
    int *merged_array = merge_arrays(array1, size1, array2, size2);
    printf("Merged Array: ");
    print_array(merged_array, 10);

    // sort the array and print it
    selection_sort(merged_array, 10);
    printf("Sorted Array: ");
    print_array(merged_array, 10);

    free(merged_array);

    return 0;
}