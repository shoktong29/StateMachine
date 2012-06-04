//
//  StateVisitBankAndDepositGold.m
//  StateMachine
//
//  Created by martin magalong on 6/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "StateVisitBankAndDepositGold.h"
#import "Miner.h"

@implementation StateVisitBankAndDepositGold

- (id)initWithDelegate:(id<StateMessagingrotocol>)delegate
{
    self = [super self];
    if (self) {
        self.delegate = delegate;
    }
    return self;
}

- (void)enter
{
    [super enter];
} 

- (void)execute:(float)dt
{
    [super execute:dt];
    NSLog(@"Me go to bank to deposit.");
} 

- (void)exit
{
    [super exit];
}
@end
