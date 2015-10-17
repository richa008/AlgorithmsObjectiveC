//
//  Stack.h
//  AlgorithmsObjectiveC
//
//  Created by Deshmukh,Richa on 10/15/15.
//  Copyright (c) 2015 Richa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Stack : NSObject

-(instancetype) init;

-(instancetype) initWithMaxSize : (NSInteger) maxSize;

/*
 * Add object to top of stack
 */
-(void) pushObject : (id) anObject;

/*
 * Remove object from top of stack
 */
-(id) pop;

/*
 * Check if stack is empty
 */
-(BOOL) isEmpty;

/*
 * Check if stack is full
 */
-(BOOL) isFull;

/*
 * Returns top element (doesnt remove)
 */
-(id) peek;



@end
