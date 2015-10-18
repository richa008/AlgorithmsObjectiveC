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
        NSString *str = @"())((()())(";
        NSLog(@"%ld", [str maximumValidParanthesis]);        
    }
    return 0;
}
