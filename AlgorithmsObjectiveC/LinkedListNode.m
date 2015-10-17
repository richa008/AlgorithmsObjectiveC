//
//  LinkedListNode.m
//  AlgorithmsObjectiveC
//
//  Created by Deshmukh,Richa on 10/13/15.
//  Copyright (c) 2015 Richa. All rights reserved.
//

#import "LinkedListNode.h"

@implementation LinkedListNode

-(LinkedListNode *) initWithValue : (NSInteger) aValue
{
    self = [super init];
    if(self)
    {
        _value = aValue;
        _next = nil;
    }
    return self;
}

@end
