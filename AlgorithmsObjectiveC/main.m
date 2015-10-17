//
//  main.m
//  AlgorithmsObjectiveC
//
//  Created by Deshmukh,Richa on 9/27/15.
//  Copyright (c) 2015 Richa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LinkedList.h"
#import "NSString+RDString.h"
#import "Stack.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *str = @"25+3*";
        NSLog(@"%ld", [str evaluatePostfixExpression]);
        
       /* LinkedList *linkedList = [[LinkedList alloc] init];
        [linkedList addNode:1];
        [linkedList addNode:2];
        [linkedList addNode:3];
        [linkedList addNode:4];
        [linkedList addNode:5];
        
        [linkedList printList];*/
        
    }
    return 0;
}
