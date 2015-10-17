//
//  LinkedList.h
//  AlgorithmsObjectiveC
//
//  Created by Deshmukh,Richa on 10/13/15.
//  Copyright (c) 2015 Richa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LinkedListNode.h"

@interface LinkedList : NSObject

@property (strong, nonatomic) LinkedListNode *head;
@property (strong, nonatomic) LinkedListNode *tail;

/*
 * Adds a node to the end of a linked list
 */
-(void) addNode : (NSInteger) value;

/*
 * Print the linked list
 */
-(void) printList;

/*
 * Reverse k sublists at a time. If length is not a multple of k, reverse
 */
-(void) reverseKSublists : (NSInteger) k;


@end
