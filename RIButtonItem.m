//
//  RIButtonItem.m
//  Shibui
//
//  Created by Jiva DeVoe on 1/12/11.
//  Copyright 2011 Random Ideas, LLC. All rights reserved.
//

#import "RIButtonItem.h"

@implementation RIButtonItem
@synthesize label;
@synthesize action;

+(id)item
{
    return [self new];
}

+(id)itemWithLabel:(NSString *)inLabel
{
    return [self itemWithLabel: inLabel action: nil];
}

+(id)itemWithLabel:(NSString *)inLabel action: (void (^)())action
{
    RIButtonItem *newItem = [self item];
    [newItem setLabel:inLabel];
    [newItem setAction: action];
    return newItem;
}

@end

