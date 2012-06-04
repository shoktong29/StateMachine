//
//  AIComponent.m
//  StateMachine
//
//  Created by martin magalong on 6/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AIComponent.h"
#import "State.h"
#import "StateFactory.h"
#import "Miner.h"

@implementation AIComponent
@synthesize currentState = _currentState;
@synthesize previousState = _previousState;

- (id)initWithParentEntity:(NSObject *)entity
{
    self = [super self];
    if(self)
    {
        _miner = (Miner *)entity;
        _currentState = [StateFactory createFromStateIdentifier:StateIdentifierWorking delegate:self];
    }
    return self;
}

- (void)tick:(float)dt
{
    [_currentState execute:dt];
}

- (void)changeState:(StateIdentifier)stateIdentifier
{
    if (stateIdentifier!=_currentState.stateIdentifier) {
        _previousState = _currentState;
        _currentState = [StateFactory createFromStateIdentifier:stateIdentifier delegate:self];
        _currentState.stateIdentifier = stateIdentifier;
        [_previousState exit];
        [_currentState enter];
    }
}

- (void)_didEnterState:(id<StateComponentProtocol>)stateComponent
{
    NSLog(@"Exiting %@",stateComponent);
    State *state = stateComponent;
    switch (state.stateIdentifier) {
        case StateIdentifierWorking:
            break;
        case StateIdentifierThirsty:
            break;
        case StateIdentifierGoToBank:
            break;
        default:
            break;
    }
}

- (void)_didExecuteState:(id<StateComponentProtocol>)stateComponent
{
    State *state = stateComponent;
    switch (state.stateIdentifier) {
        case StateIdentifierWorking:
            _miner.iGoldCarried ++;
            _miner.iThirst ++;
            if (_miner.iGoldCarried > 10) {
                [self changeState:StateIdentifierGoToBank];
            }
            else if (_miner.iThirst >= 5)
            {
                [self changeState:StateIdentifierThirsty];
            }
            break;
            
        case StateIdentifierThirsty:
            _miner.iThirst = 0;
            [self changeState:StateIdentifierWorking];
            break;
            
        case StateIdentifierGoToBank:
            _miner.iMoneyInBank += _miner.iGoldCarried;
            _miner.iGoldCarried = 0;
            [self changeState:StateIdentifierWorking];
            if(_miner.iMoneyInBank >= 50)
            {
                [self changeState:-1];
            }
            break;
            
        default:
            break;
    }
}

- (void)_didExitState:(id<StateComponentProtocol>)stateComponent
{
    NSLog(@"Exiting %@",stateComponent);
}
@end
