//
//  PlaySound.m
//  StateChange
//
//  Created by cyy9119 on 3/5/17.
//  Copyright © 2017 everflag. All rights reserved.
//

#import "PlaySound.h"
#import "BaseState.h"
#import "stateSilent.h"
#import "stateNormal.h"
#import "stateLoud.h"

@interface PlaySound ()
@property (strong, nonatomic) BaseState *soundState;
@end

@implementation PlaySound

-(instancetype)init
{
    if (self = [super init]) {
        _soundState = [[stateSilent alloc] init];
    }
    
    return self;
}

-(void)pressPlus
{
    NSLog(@"current state is %@, press +", [_soundState class]);
    self.soundState = [self.soundState stateWithInput:@"+"];
    [self play];
}

-(void)pressMinus
{
    NSLog(@"current state is %@, press -", [_soundState class]);
    self.soundState = [self.soundState stateWithInput:@"-"];
    [self play];
}

-(void)play
{
    if ([self.soundState isKindOfClass:[stateSilent class]]) {
        NSLog(@"======= slient =======");
    } else if ([self.soundState isKindOfClass:[stateNormal class]]) {
        NSLog(@"======= normal =======");
    } else if ([self.soundState isKindOfClass:[stateLoud class]]) {
        NSLog(@"======= loud =======");
    } else {
        NSLog(@"unknown sound state");
    }
}

@end
