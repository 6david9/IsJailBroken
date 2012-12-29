//
//  UIDevice+IsJailBroken.m
//  IsJailBroken
//
//  Created by ly on 12/29/12.
//  Copyright (c) 2012 Lei Yan. All rights reserved.
//

#import "UIDevice+IsJailBroken.h"

@implementation UIDevice (IsJailBroken)

- (BOOL)isJailBroken
{
    BOOL jailBroken = NO;
    NSString *cydiaPath = @"/Applications/Cydia.app";
    NSString *aptPath = @"/private/var/lib/apt/";
    
    if ([[NSFileManager defaultManager] fileExistsAtPath:cydiaPath])
        jailBroken = YES;

    if ([[NSFileManager defaultManager] fileExistsAtPath:aptPath])
        jailBroken = YES;

    return jailBroken;
}

@end