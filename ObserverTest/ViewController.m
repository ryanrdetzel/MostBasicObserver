//
//  ViewController.m
//  ObserverTest
//
//  Created by Ryan Detzel on 12/10/15.
//  Copyright © 2015 Ryan Detzel. All rights reserved.
//

#import "ViewController.h"
#import "Player.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    PlayerObserver *obs = [PlayerObserver sharedInstance];
    [obs addObserver:self];

    Player *player = [[Player alloc] init];
    [player play];

    [obs removeObserver:self];
    [player stop];

    [obs addObserver:self];
    [player stop];
    [player stop];

    [obs removeObserver:self];
    [player play];
    [player stop];
}

- (void)logEvent:(NSString *)message
{
    NSLog(@"I got a log message: %@", message);
}

@end
