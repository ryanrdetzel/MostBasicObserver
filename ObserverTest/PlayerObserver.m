//
//  ScribeObserver.m
//  ObserverTest
//
//  Created by Ryan Detzel on 12/10/15.
//  Copyright © 2015 Ryan Detzel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PlayerObserver.h"

@interface PlayerObserver()
@property (nonatomic) NSMutableSet *observers;
@end


@implementation PlayerObserver

+ (id)sharedInstance
{
    static dispatch_once_t p = 0;
    __strong static PlayerObserver *_sharedObject = nil;

    dispatch_once(&p, ^{
        _sharedObject = [[self alloc] init];
        _sharedObject.observers = [NSMutableSet set];
    });

    return _sharedObject;
}

- (void)addObserver:(id<PlayerObserver>)observer
{
    [self.observers addObject:observer];
}

- (void)removeObserver:(id<PlayerObserver>)observer
{
    [self.observers removeObject:observer];
}

- (void)logMessage:(NSString *)message
{
    for (id observer in self.observers){
        [observer performSelector:@selector(logEvent:) withObject:message];
    }
}

@end