//
//  main.m
//  IsToday
//
//  Created by Mark Joslin on 8/13/12.
//  Copyright (c) 2012 Mark Joslin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "is-today.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSDate *now = [NSDate date];
        BOOL today = [is_today isTodayWithDate:now];
        assert(today == YES);
        
        NSDate *tomorrow = [now dateByAddingTimeInterval: 1 * 24 * 60 * 60 ];
        today = [is_today isTodayWithDate:tomorrow];
        assert(today == NO);
        
        NSLog(@"Passed tests");
        
    }
    return 0;
}
