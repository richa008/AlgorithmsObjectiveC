//
//  BinaryTree.m
//  AlgorithmsObjectiveC
//
//  Created by Deshmukh,Richa on 10/21/15.
//  Copyright (c) 2015 Richa. All rights reserved.
//

#import "BinaryTree.h"

@interface BinaryTree()

@property (nonatomic, strong) BinaryTreeNode *root;

@end

@implementation BinaryTree

/*
 * Initialize tree with node
 */
-(instancetype) initWithNode : (BinaryTreeNode *) node
{
    self  = [super init];
    if(self)
    {
        _root = node;
    }
    return self;
}


/*
 * Find a node in a tree
 */
-(BinaryTreeNode *) findNode : (BinaryTreeNode *) node
{
    if(self.root == nil)
    {
        return nil;
    }
    BinaryTreeNode *currentNode = self.root;
    NSMutableArray *queue = [NSMutableArray array];
    [queue addObject:currentNode];
    
    while (queue.count != 0) {
        BinaryTreeNode *nodeInTree = [queue firstObject];
        [queue removeObjectAtIndex:0];
        
        if([nodeInTree.value isEqual :node.value])
        {
            return node;
        }
    }
    return nil;
}

/*
 * Add node to parent
 */
-(void) addNode : (BinaryTreeNode *) node toParent : (BinaryTreeNode *) parent
{
    if(parent.lchild == nil)
    {
        parent.lchild = node;
    }else if(parent.rchild == nil)
    {
        parent.rchild = node;
    }
    else
    {
        NSLog(@"Node cannnot be added to this parent");
    }
}

/*
 * Prints tree in preorder
 */
-(void) preOrderTraversal
{
    [self preOrderTraversalHelper:self.root];
}

-(void) preOrderTraversalHelper : (BinaryTreeNode *) node
{
    if(node)
    {
        NSLog(@"%@", node.value);
        [self preOrderTraversalHelper: node.lchild];
        [self preOrderTraversalHelper: node.rchild];
    }
}

/*
 * Returns true if the tree is balanced
 */
-(BOOL) isTreeBalanced
{
    NSInteger result = [self isTreeBalancedHelper:self.root];
    return (result == -1) ?  NO:  YES;
}

-(NSInteger) isTreeBalancedHelper : (BinaryTreeNode *) node
{
    if(node == nil)
    {
        return 0;
    }
    NSInteger lcount = [self isTreeBalancedHelper:node.lchild];
    NSInteger rcount = [self isTreeBalancedHelper:node.rchild];
    if(lcount == -1 || rcount == -1)
    {
        return -1;
    }
    
    if(labs(lcount - rcount) > 1)
    {
        return -1;
    }
    return MAX(lcount, rcount) + 1;
}

/*
 * Returns true if the tree is symmetric
 */
-(BOOL) isTreeSymmetric
{
    return [self isTreeSymmetricHelper:self.root.lchild and:self.root.rchild];
}

-(BOOL) isTreeSymmetricHelper : (BinaryTreeNode *) node1 and :(BinaryTreeNode *) node2
{
    if(node1 == nil && node2 == nil)
    {
        return YES;
    }
    if(node1 == nil || node2 == nil)
    {
        return NO;
    }
    if(![node1.value isEqual: node2.value])
    {
        return NO;
    }
    return  ([self isTreeSymmetricHelper:node1.lchild and:node2.rchild] && [self isTreeSymmetricHelper:node1.rchild and:node2.lchild]);
}


@end
