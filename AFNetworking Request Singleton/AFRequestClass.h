//
//  AFRequestClass.h
//  Snippets
//
//  Created by John Nichols on 8/14/12.
//  Copyright (c) 2012 John Nichols. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFHTTPClient.h"

@interface AFRequestClass : AFHTTPClient

+ (AFRequestClass*)sharedClient;

@end
