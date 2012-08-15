//
//  BFSingletonClass.h
//  Snippets
//
//  Created by John Nichols on 8/15/12.
//  Copyright (c) 2012 John Nichols. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BFSingletonClass : NSObject

+ (BFSingletonClass *)sharedInstance;

@end
