//
//  Stack.m
//  AlgorithmsObjectiveC
//
//  Created by Deshmukh,Richa on 10/15/15.
//  Copyright (c) 2015 Richa. All rights reserved.
//

#import "Stack.h"

@interface Stack()

@property (nonatomic, strong) NSMutableArray * stackArray;
@property (nonatomic) NSInteger maxSize;

@end

@implementation Stack


-(instancetype) init
{
    self = [self initWithMaxSize:5];
    return self;
}

-(instancetype) initWithMaxSize : (NSInteger) maxSize
{

    self = [super init];
    if(self)
    {
        _maxSize = maxSize;
        _stackArray = [@[] mutableCopy];
    }
    return self;
}

/*
 * Add object to top of stack
 */
-(void) pushObject : (id) anObject
{
    if([self isFull])
    {
        NSLog(@"Stack is full");
        return;
    }
    
    [self.stackArray addObject:anObject];
    
}

/*
 * Remove object from top of stack
 */
-(id) pop
{
    if([self isEmpty])
    {
        return nil;
    }
    id lastObject = [self.stackArray lastObject];
    [self.stackArray removeLastObject];
    
    return lastObject;
}

/*
 * Check if stack is empty
 */
-(BOOL) isEmpty
{
    return (self.stackArray.count == 0);
}


/*
 * Check if stack is full
 */
-(BOOL) isFull
{
    return (self.stackArray.count == self.maxSize);
}

/*
 * Returns top element (doesnt remove)
 */
-(id) peek
{
    if([self isEmpty])
    {
        return nil;
    }
    id lastObject = [self.stackArray lastObject];
    return lastObject;
}

@end
