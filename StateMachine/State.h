//
//  State.h
//  StateMachine
//
//  Created by martin magalong on 6/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StateMachineProtocol.h"

typedef enum
{
    StateIdentifierWorking = 0,
    StateIdentifierThirsty = 1,
    StateIdentifierGoToBank = 2,
}StateIdentifier;

@interface State : NSObject <StateComponentProtocol>
{
    
}
@property(nonatomic,assign) StateIdentifier stateIdentifier;
@property(nonatomic,assign) id<StateMessagingrotocol>delegate;

-(id)initWithDelegate:(id<StateMessagingrotocol>)delegate;
@end
