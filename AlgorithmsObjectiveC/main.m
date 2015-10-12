//
//  main.m
//  AlgorithmsObjectiveC
//
//  Created by Deshmukh,Richa on 9/27/15.
//  Copyright (c) 2015 Richa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+RDString.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *str = @"425";
        [str phoneNumberMnemonics];
    }
    return 0;
}
