//
//  Miner.m
//  StateMachine
//
//  Created by martin magalong on 6/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Miner.h"
#import "StateFactory.h"



@implementation Miner
@synthesize iGoldCarried = _iGoldCarried;
@synthesize iThirst = _iThirst;
@synthesize iFatigue = _iFatigue;
@synthesize iMoneyInBank = _iMoneyInBank;
@synthesize aiComponent = _aiComponent;

- (id)initMinerWithId:(int)uniqueId
{
    self = [super self];
    if(self)
    {
        _aiComponent = [[AIComponent alloc]initWithParentEntity:self];
        [self performSelector:@selector(tick:)];
    }
    return self;
}

- (void)tick:(float)dt
{
    [_aiComponent tick:dt];
    [self performSelector:@selector(tick:) withObject:nil afterDelay:0.5];
}

@end
