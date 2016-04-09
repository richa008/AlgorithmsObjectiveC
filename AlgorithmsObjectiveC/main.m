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
#import "NSArray+RDArray.h"
#import "Stack.h"
#import "BinaryTree.h"
#import "BinaryTreeNode.h"
#import "Problems.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
       /* BinaryTreeNode *node1 = [[BinaryTreeNode alloc] initWithValue:@1];
        BinaryTreeNode *node2 = [[BinaryTreeNode alloc] initWithValue:@2];
        BinaryTreeNode *node3 = [[BinaryTreeNode alloc] initWithValue:@2];
        BinaryTreeNode *node4 = [[BinaryTreeNode alloc] initWithValue:@3];
        BinaryTreeNode *node5 = [[BinaryTreeNode alloc] initWithValue:@4];
        BinaryTreeNode *node6 = [[BinaryTreeNode alloc] initWithValue:@3];
        BinaryTreeNode *node7 = [[BinaryTreeNode alloc] initWithValue:@4];
        //BinaryTreeNode *node8 = [[BinaryTreeNode alloc] initWithValue:@8];
        //BinaryTreeNode *node9 = [[BinaryTreeNode alloc] initWithValue:@9];
        
        BinaryTree *tree = [[BinaryTree alloc] initWithNode:node1];
        
        [tree addNode:node2 toParent:node1];
        [tree addNode:node3 toParent:node1];
        [tree addNode:node4 toParent:node2];
        [tree addNode:node5 toParent:node2];
        [tree addNode:node6 toParent:node3];
        [tree addNode:node7 toParent:node3];
        //[tree addNode:node8 toParent:node6];
        
        [tree preOrderTraversal];
        
        BOOL t = [tree isTreeSymmetric];*/
        
        Problems *p = [[Problems alloc] init];
        NSLog(@"%@", [p elisGammaEncodeNumbers:@[@10, @11, @2, @13]]);
        NSLog(@"%@", [p elisGammaDecodeString:@"000101000010110100001101"]);
        
        NSLog(@"%hhd", @"A man, a plan, a canal, Panama".isPalindrome);
         NSLog(@"%hhd", @"Ray is Ray".isPalindrome);
    }
    return 0;
}
