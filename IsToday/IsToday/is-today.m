//
//  is-today.m
//  IsToday
//
//  Created by Mark Joslin on 8/13/12.
//  Copyright (c) 2012 Mark Joslin. All rights reserved.
//

#import "is-today.h"

@implementation is_today

+ (BOOL) isTodayWithDate:(NSDate *)date
{
    // We have to display time if it's today -- otherwise we show date
    NSDate *now = [[NSDate alloc] init];
    NSCalendar *calendar = [NSCalendar currentCalendar];
    
    // Today's day, month, year
    NSDateComponents *components = [calendar components:NSYearCalendarUnit | NSMonthCalendarUnit |  NSDayCalendarUnit fromDate:now];
    NSInteger day = [components day];
    NSInteger month = [components month];
    NSInteger year = [components year];
    
    // Incoming date's day, month, year
    components = [calendar components:NSYearCalendarUnit | NSMonthCalendarUnit |  NSDayCalendarUnit fromDate:date];
    NSInteger incDay = [components day];
    NSInteger incMonth = [components month];
    NSInteger incYear = [components year];
    
    return (day == incDay && month == incMonth && year == incYear);
}
@end
