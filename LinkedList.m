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

/*
 * Reverse k sublists at a time. If length is not a multple of k, reverse
 */
-(void) reverseKSublists : (NSInteger) k
{
    LinkedListNode *current = self.head;
    NSInteger count = 1;
    while (current != nil) {
        current = current.next;
        count ++;
    }
  
    if(k > count)
    {
        return;
    }
    
    NSInteger reversableSublists = 0;
    reversableSublists = count/k;
        
    current = self.head;
    
    while(current != nil)
    {
        
    }
    
    
}



@end
