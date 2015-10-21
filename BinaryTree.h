//
//  BinaryTree.h
//  AlgorithmsObjectiveC
//
//  Created by Deshmukh,Richa on 10/21/15.
//  Copyright (c) 2015 Richa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BinaryTreeNode.h"

@interface BinaryTree : NSObject

-(instancetype) initWithNode : (BinaryTreeNode *) node;

/*
 * Find a node in a tree
 */
-(BinaryTreeNode *) findNode : (BinaryTreeNode *) node;

/*
 * Add node to parent
 */
-(void) addNode : (BinaryTreeNode *) node toParent : (BinaryTreeNode *) parent;


/*
 * Prints tree in preorder
 */
-(void) preOrderTraversal;

/*
 * Returns true if the tree is balanced
 */
-(BOOL) isTreeBalanced;

/*
 * Returns true if the tree is symmetric
 */
-(BOOL) isTreeSymmetric;


@end
