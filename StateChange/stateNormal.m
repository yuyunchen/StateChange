//
//  stateNormal.m
//  StateChange
//
//  Created by cyy9119 on 3/4/17.
//  Copyright © 2017 everflag. All rights reserved.
//

#import "stateNormal.h"
#import "stateSilent.h"
#import "stateLoud.h"

@implementation stateNormal

-(BaseState *)stateWithInput:(NSString *)str
{
    if ([str isEqualToString:@"-"]) {
        return [[stateSilent alloc] init];
    } else if ([str isEqualToString:@"+"]) {
        return [[stateLoud alloc] init];
    } else {
        return self;
    }
}


@end
