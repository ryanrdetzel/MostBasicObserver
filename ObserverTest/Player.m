//
//  Player.m
//  ObserverTest
//
//  Created by Ryan Detzel on 12/10/15.
//  Copyright © 2015 Ryan Detzel. All rights reserved.
//

#import "Player.h"
#import "PlayerObserver.h"

@implementation Player

- (void)play
{
    PlayerObserver *observer = [PlayerObserver sharedInstance];
    [observer logMessage:@"Play"];
}

- (void)stop
{
    PlayerObserver *observer = [PlayerObserver sharedInstance];
    [observer logMessage:@"Stop"];
}

@end
