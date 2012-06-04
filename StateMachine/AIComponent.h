//
//  AIComponent.h
//  StateMachine
//
//  Created by martin magalong on 6/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StateMachineProtocol.h"
#import "State.h"

@class Miner;
@interface AIComponent : NSObject <StateMessagingrotocol>
{
    __unsafe_unretained Miner *_miner;
}
@property (nonatomic,readonly) __strong State *currentState;
@property (nonatomic,readonly) __strong State *previousState;
- (id)initWithParentEntity:(NSObject *)entity;
- (void)tick:(float)dt;
@end
