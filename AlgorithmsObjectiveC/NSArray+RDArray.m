//
//  NSArray+RDArray.m
//  AlgorithmsObjectiveC
//
//  Created by Deshmukh,Richa on 9/27/15.
//  Copyright (c) 2015 Richa. All rights reserved.
//

#import "NSArray+RDArray.h"

@implementation NSArray (RDArray)

/*
 * Finds the index of the integer larger than k in a sorted array
 * {1, 23, 43, 43, 56, 78, 100}, if k = 50 -> returns 56
 */
-(NSInteger) findNextIntegerLargerThanK : (NSInteger ) k
{
    NSInteger left = 0;
    NSInteger right = self.count - 1;
    NSInteger mid;
    NSInteger result = -1;
    
    while(left <= right)
    {
        mid = (left + right)/2;
        NSNumber *middleNumber = self[mid];
        if(middleNumber.integerValue > k)
        {
            result = mid;
            right = mid - 1;
        }
        else{
            left = mid + 1;
        }
    }
    return result;
}

@end
