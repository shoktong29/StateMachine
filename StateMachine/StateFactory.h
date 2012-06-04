//
//  StateFactory.h
//  StateMachine
//
//  Created by martin magalong on 6/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "State.h"
#import "StateEnterMineAndDigForNugget.h"
#import "StateVisitBankAndDepositGold.h"
#import "StateQuenchThirst.h"

@interface StateFactory : NSObject
+(State *)createFromStateIdentifier:(StateIdentifier)stateIdentifier delegate:(id<StateMessagingrotocol>)delegate;
@end
