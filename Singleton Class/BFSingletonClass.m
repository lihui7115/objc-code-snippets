//
//  BFSingletonClass.m
//  Snippets
//
//  Created by John Nichols on 8/15/12.
//  Copyright (c) 2012 John Nichols. All rights reserved.
//

#import "BFSingletonClass.h"

@implementation BFSingletonClass


static BFSingletonClass *sharedInstanceManager = nil;

+ (BFSingletonClass *)sharedInstance {
    @synchronized(self) {
        if (sharedInstanceManager == nil)
            sharedInstanceManager = [[self alloc] init];
    }
    return sharedInstanceManager;
}

- (id)init {
	if ((self = [super init])) {
        
	}
	return self;
}

@end
