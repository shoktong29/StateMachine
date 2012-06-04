//
//  StateFactory.m
//  StateMachine
//
//  Created by martin magalong on 6/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "StateFactory.h"


@implementation StateFactory
+(State *)createFromStateIdentifier:(StateIdentifier)stateIdentifier delegate:(id<StateMessagingrotocol>)delegate
{
    if(stateIdentifier == StateIdentifierThirsty)
    {
        return [[StateQuenchThirst alloc]initWithDelegate:delegate];
    }
    else if(stateIdentifier == StateIdentifierGoToBank){
        return [[StateVisitBankAndDepositGold alloc]initWithDelegate:delegate];
    }
    else if(stateIdentifier == StateIdentifierWorking){
        return [[StateEnterMineAndDigForNugget alloc]initWithDelegate:delegate];
    }
    return nil;
}
@end
