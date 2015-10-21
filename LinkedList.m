//
//  LinkedList.m
//  AlgorithmsObjectiveC
//
//  Created by Deshmukh,Richa on 10/13/15.
//  Copyright (c) 2015 Richa. All rights reserved.
//

#import "LinkedList.h"

@implementation LinkedList

/*
 * Adds a node to the end of a linked list
 */
-(void) addNode : (NSInteger) value
{
     LinkedListNode *node = [[LinkedListNode alloc] initWithValue:value];
    if(self.head == nil || self.tail == nil)
    {
        self.head = node;
        self.tail = node;
    }
    else
    {
        self.tail.next = node;
        self.tail = node;
    }
}

/*
 * Print the linked list
 */
-(void) printList
{
    LinkedListNode *current = self.head;
    while(current != nil)
    {
        NSLog(@"%ld ", current.value);
        current = current.next;
    }
}



@end
