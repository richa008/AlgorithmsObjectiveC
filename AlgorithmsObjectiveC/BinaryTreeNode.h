//
//  BinaryTreeNode.h
//  AlgorithmsObjectiveC
//
//  Created by Deshmukh,Richa on 10/21/15.
//  Copyright (c) 2015 Richa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BinaryTreeNode : NSObject

@property (nonatomic, strong) id value;
@property (nonatomic, strong) BinaryTreeNode *lchild;
@property (nonatomic, strong) BinaryTreeNode *rchild;

-(instancetype) initWithValue : (id) value;

@end
