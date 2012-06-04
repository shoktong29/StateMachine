//
//  Miner.h
//  StateMachine
//
//  Created by martin magalong on 6/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AIComponent.h"
@interface Miner : NSObject
{

}
@property (nonatomic,assign)    int                   iGoldCarried;
@property (nonatomic,assign)    int                   iMoneyInBank;
@property (nonatomic,assign)    int                   iThirst;
@property (nonatomic,assign)    int                   iFatigue;
@property (nonatomic,retain)    __strong AIComponent           *aiComponent;

- (id)initMinerWithId:(int)uniqueId;
@end
