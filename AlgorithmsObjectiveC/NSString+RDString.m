//
//  NSString+RDString.m
//  AlgorithmsObjectiveC
//
//  Created by Deshmukh,Richa on 10/11/15.
//  Copyright (c) 2015 Richa. All rights reserved.
//

#import "NSString+RDString.h"

@implementation NSString (RDString)

/*
 * Returns true if string is made up of only alphanumeric characters
 */
-(BOOL) isAlphanumeric
{
    NSCharacterSet *unwantedCharacters = [[NSCharacterSet alphanumericCharacterSet] invertedSet];
    NSRange range = [self rangeOfCharacterFromSet:unwantedCharacters];
    
    return (range.location == NSNotFound);
}

/*
 * Reverse all words in a sentence
 *
 * e.g : Richa loves pizza -> pizza loves Richa
 */
-(NSString *) reverseWordsInSentence
{
    NSMutableString *reversedWordsString  = [NSMutableString string];
    
    //Method 1 using blocks
    /*[self enumerateSubstringsInRange:NSMakeRange(0, self.length)
                             options:(NSStringEnumerationByWords | NSStringEnumerationReverse)
                          usingBlock:^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop) {
                              [reversedWordsString appendString:substring];
                              [reversedWordsString appendString:@" "];
    }];*/
    
    //Method 2
    NSString * reversedString = [self reverseString];
    NSArray *allWords = [reversedString componentsSeparatedByCharactersInSet: [NSCharacterSet whitespaceCharacterSet]];
    for(NSString * word in allWords)
    {
        [reversedWordsString appendString:[word reverseString]];
        [reversedWordsString appendString:@" "];
    }
    return reversedWordsString;
}

/*
 * Reverses the string
 */
-(NSString *) reverseString
{
    NSMutableString *reversedString = [NSMutableString string];
    
    [self enumerateSubstringsInRange: NSMakeRange(0, self.length)
                             options: (NSStringEnumerationReverse | NSStringEnumerationByComposedCharacterSequences)
                          usingBlock:^(NSString *substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop){
                              [reversedString appendString:substring];
                          }];
    return reversedString;
}

/*
 * Compute all mnemonics for a phone number
 */
-(void) phoneNumberMnemonics
{
    NSDictionary *map = @{@1: @"1",
                          @2: @"abc",
                          @3: @"def",
                          @4: @"ghi",
                          @5: @"jkl",
                          @6: @"mno",
                          @7: @"pqrs",
                          @8: @"tuvw",
                          @9: @"xyz"
                          };
    [self printPhoneNumberMnemonicsUsingDictionary:map forDigitNo:0 result:[@"" mutableCopy]] ;
}

-(void) printPhoneNumberMnemonicsUsingDictionary : (NSDictionary *) map forDigitNo : (NSInteger) digit result : (NSMutableString *) result
{
    if(result.length == self.length)
    {
        NSLog(@"%@\n", result);
        return;
    }
    NSString *number = [self substringWithRange:NSMakeRange(digit, 1)];
    NSString *phoneString = [map objectForKey:@(number.integerValue)];
    
    for(int i = 0; i < phoneString.length; i++)
    {
        NSString *phoneLetter = [phoneString substringWithRange:NSMakeRange(i, 1)];
        [result appendString:phoneLetter];
        [self printPhoneNumberMnemonicsUsingDictionary:map forDigitNo:digit + 1 result:result];
        [result deleteCharactersInRange:NSMakeRange(result.length - 1, 1)];
    }
}

@end
