//
//  NSArray+RDArray.h
//  AlgorithmsObjectiveC
//
//  Created by Deshmukh,Richa on 9/27/15.
//  Copyright (c) 2015 Richa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (RDArray)

/*
 * Finds the index of the integer larger than k in a sorted array
 * {1, 23, 43, 43, 56, 78, 100}, if k = 50 -> returns 56
 */
-(NSInteger) findNextIntegerLargerThanK : (NSInteger ) k;


@end
