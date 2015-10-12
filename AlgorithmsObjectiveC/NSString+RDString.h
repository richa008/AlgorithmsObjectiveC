//
//  NSString+RDString.h
//  AlgorithmsObjectiveC
//
//  Created by Deshmukh,Richa on 10/11/15.
//  Copyright (c) 2015 Richa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (RDString)

/*
 * Returns true if string is made up of only alphanumeric characters
 */
-(BOOL) isAlphanumeric;


/*
 * Reverse all words in a sentence
 *
 * e.g : Richa loves pizza -> pizza loves Richa
 */
-(NSString *) reverseWordsInSentence;


/*
 * Reverses the string
 */
-(NSString *) reverseString;

/*
 * Compute all mnemonics for a phone number
 */
-(void) phoneNumberMnemonics;

@end
