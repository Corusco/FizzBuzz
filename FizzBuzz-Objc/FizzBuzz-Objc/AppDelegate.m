//
//  AppDelegate.m
//  FizzBuzz-Objc
//
//  Created by Joshua Howland on 8/22/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //Loop all integers from 1-100, checking against methods.
    for (int i = 1; i<=100; i++){
        BOOL buzzed = [self isBuzzed:i];
        BOOL fizzed = [self isFizzed:i];
    
        //Print Buzz if meets appropriate arguments
        if (buzzed && !fizzed){
            NSLog(@"Buzz (%d)", i);
        }
        
        //Print Fizz if meets appropriate arguments
        else if (!buzzed && fizzed){
            NSLog(@"Fizz (%d)", i);
        }
    
        //Print FizzBuzz if it meets both above arguments
        else if (buzzed && fizzed){
            NSLog(@"FizzBuzz! (%d)", i);
        }
        
        //nothing there. Just print the integer.
        else {
            NSLog(@"%d", i);
        }
    }
    
    return YES;
}

//Method to check to see if integer is divisible by 3, or contains the numeral 3. If so, it's buzzy.
-(BOOL) isBuzzed:(int)integer{
    if (integer % 3 == 0) {
        return YES;
    }
    else if ([[NSString stringWithFormat:@"%d", integer] containsString:@"3"]){
        return YES;
    }
    else {
        return NO;
    }
}

//Method to check to see if integer is divisible by 5, or contains the numeral 5. If so, it's fizzy.
-(BOOL) isFizzed:(int)integer;{
    if (integer % 5 == 0) {
        return YES;
    }
    else if ([[NSString stringWithFormat:@"%d", integer] containsString:@"5"]){
        return YES;
    }
    else {
        return NO;
    }
}

@end
