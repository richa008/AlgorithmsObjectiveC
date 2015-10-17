//
//  LinkedListNode.h
//  AlgorithmsObjectiveC
//
//  Created by Deshmukh,Richa on 10/13/15.
//  Copyright (c) 2015 Richa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LinkedListNode : NSObject

@property (nonatomic) NSInteger value;
@property (nonatomic, strong) LinkedListNode *next;

-(LinkedListNode *) initWithValue : (NSInteger) aValue;

@end
