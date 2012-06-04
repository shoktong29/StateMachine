//
//  State.m
//  StateMachine
//
//  Created by martin magalong on 6/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "State.h"


@implementation State
@synthesize delegate = _delegate;
@synthesize stateIdentifier = _stateIdentifier;
-(id)initWithDelegate:(id<StateMessagingrotocol>)delegate
{
    return self;
}
- (void)enter
{
    [_delegate _didEnterState:self];
}

- (void)execute:(float)dt
{
    [_delegate _didExecuteState:self];
}

- (void)exit
{
    [_delegate _didExitState:self];
}
@end
