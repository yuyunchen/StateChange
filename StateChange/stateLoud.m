//
//  stateLoud.m
//  StateChange
//
//  Created by cyy9119 on 3/4/17.
//  Copyright © 2017 everflag. All rights reserved.
//

#import "stateLoud.h"
#import "stateNormal.h"

@implementation stateLoud

-(BaseState *)stateWithInput:(NSString *)str
{
    if ([str isEqualToString:@"-"]) {
        return [[stateNormal alloc] init];
    } else {
        return self;
    }
}


@end
