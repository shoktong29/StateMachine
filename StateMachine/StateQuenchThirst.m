//
//  StateQuenchThirst.m
//  StateMachine
//
//  Created by martin magalong on 6/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "StateQuenchThirst.h"

@implementation StateQuenchThirst


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
        NSLog(@"Me thirsty.");
    [super execute:dt];
} 

- (void)exit
{
    [super exit];
} 
@end
