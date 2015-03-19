//
//  IVCDelegate.h
//  nameEntry
//
//  Created by Alex French on 3/19/15.
//  Copyright (c) 2015 french.chagrin. All rights reserved.
//

#import <Foundation/Foundation.h>

@class IVCDelegate;


@protocol IVCCustomDelegate

-(void)setArray:(NSMutableArray*)newAry;
-(NSMutableArray*)getArray;

@end


@interface IVCDelegate : NSObject

@property (nonatomic, assign) id delegate;
@property (nonatomic, strong) NSMutableArray* transferText;
@property (nonatomic) int loc;

@end
