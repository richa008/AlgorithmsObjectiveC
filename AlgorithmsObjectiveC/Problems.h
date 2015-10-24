//
//  Problems.h
//  AlgorithmsObjectiveC
//
//  Created by Deshmukh,Richa on 10/24/15.
//  Copyright (c) 2015 Richa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+RDString.h"

@interface Problems : NSObject

/*
 * Implement elis gamma encoding for array of numbers
 * e.g: 13 
 * 1. Convert num to binary
 * 2. Prepend with binary string's length - 1 zeroes
 * i.e 13 = 0001101
 */
-(NSString *) elisGammaEncodeNumbers : (NSArray *) anArray;

/*
 * Implement elis gamma decoding of string
 *
 */
-(NSArray *) elisGammaDecodeString : (NSString *) aString;

@end
