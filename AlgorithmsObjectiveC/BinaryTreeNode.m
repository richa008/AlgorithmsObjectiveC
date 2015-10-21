//
//  BinaryTreeNode.m
//  AlgorithmsObjectiveC
//
//  Created by Deshmukh,Richa on 10/21/15.
//  Copyright (c) 2015 Richa. All rights reserved.
//

#import "BinaryTreeNode.h"

@implementation BinaryTreeNode

-(instancetype) initWithValue : (id) value
{
    self = [super init];
    if(self)
    {
        _value = value;
        _lchild = nil;
        _rchild = nil;
    }
    return self;
}

@end
