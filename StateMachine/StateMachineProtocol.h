//
//  StateMachineProtocol.h
//  StateMachine
//
//  Created by martin magalong on 6/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol StateComponentProtocol <NSObject>
- (void) enter;
- (void) execute:(float)dt;
- (void) exit;
@end

@protocol StateMessagingrotocol <NSObject>
- (void)_didEnterState:(id<StateComponentProtocol>)stateComponent;
- (void)_didExecuteState:(id<StateComponentProtocol>)stateComponent;
- (void)_didExitState:(id<StateComponentProtocol>)stateComponent;

@end