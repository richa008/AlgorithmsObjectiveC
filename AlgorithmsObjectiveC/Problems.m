//
//  Problems.m
//  AlgorithmsObjectiveC
//
//  Created by Deshmukh,Richa on 10/24/15.
//  Copyright (c) 2015 Richa. All rights reserved.
//

#import "Problems.h"

@implementation Problems

/*
 * Implement elis gamma encoding for array of numbers
 * e.g: 13
 * 1. Convert num to binary
 * 2. Prepend with binary string's length - 1 zeroes
 * i.e 13 = 0001101
 */

-(NSString *) elisGammaEncodeNumbers : (NSArray *) anArray
{
    NSMutableString *resultString = [NSMutableString string];
    for(NSNumber *num in anArray)
    {
        NSMutableString *tempString = [NSMutableString string];
        NSString *binary = [self binaryFromDecimal: num.integerValue];
        NSInteger length = binary.length;
        length = length - 1;
        while(length > 0)
        {
            [tempString appendString:@"0"];
            length--;
        }
        [tempString appendString:binary];
        [resultString appendString:tempString];
    }
    return resultString;
}

/*
 * Convert decimal number to binary
 */
-(NSString *) binaryFromDecimal : (NSInteger) decimalNumber
{
    NSMutableString *str = [NSMutableString string];
    if(decimalNumber == 0)
    {
        return @"0";
    }
    while (decimalNumber != 0)
    {
        NSInteger val = (decimalNumber & 1);
        decimalNumber = decimalNumber >> 1;
        [str appendFormat:@"%ld", val];
    }

    return [str reverseString];
}

/*
 * Implement elis gamma decoding of string
 *
 */
-(NSArray *) elisGammaDecodeString : (NSString *) aString
{
    NSMutableArray *array = [NSMutableArray array];
    NSInteger i = 0;
    NSInteger zeroCount = 0;
    while(i < aString.length)
    {
        while(i < aString.length && [aString characterAtIndex:i] == '0')
        {
            zeroCount++;
            i++;
            if(i >= aString.length)
            {
                break;
            }
        }

        NSString *binary = [aString substringWithRange: NSMakeRange(i, zeroCount + 1)];
        NSNumber *num = [self decimalFromBinaryString: binary];
        i = zeroCount + i + 1;
        zeroCount = 0;
        
        [array addObject:num];
    }
    return array;
}

/*
 * Convert binary number to decimal
 */
-(NSNumber *) decimalFromBinaryString : (NSString *) aString;
{
    NSInteger result = 0;
    for(int i = 0; i < aString.length; i++)
    {
        char c = [aString characterAtIndex:i];
        result = result * 2 + (c - '0');
    }
    return @(result);
}

@end
