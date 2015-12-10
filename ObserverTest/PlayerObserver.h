//
//  ScribeObserver.h
//  ObserverTest
//
//  Created by Ryan Detzel on 12/10/15.
//  Copyright © 2015 Ryan Detzel. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PlayerObserver

@required
- (void)logEvent:(NSString *)message;
@end

@interface PlayerObserver : NSObject
+ (id)sharedInstance;
- (void)addObserver:(id<PlayerObserver>)observer;
- (void)removeObserver:(id<PlayerObserver>)observer;
- (void)logMessage:(NSString *)message;
@end