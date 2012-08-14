//
//  AFRequestClass.m
//  Snippets
//
//  Created by John Nichols on 8/14/12.
//  Copyright (c) 2012 John Nichols. All rights reserved.
//

#import "AFRequestClass.h"
#import "AFHTTPRequestOperation.h"

@implementation AFRequestClass

+ (AFRequestClass*)sharedClient  {
    static AFRequestClass *_sharedClient = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedClient = [[AFRequestClass alloc] initWithBaseURL:[NSURL URLWithString:kPRBaseURL]];
    });
    
    return _sharedClient;
}

- (id)initWithBaseURL:(NSURL *)url {
    self = [super initWithBaseURL:url];
    if (!self) {
        return nil;
    }
    //self.parameterEncoding = AFFormURLParameterEncoding; to set param encoding
    [self registerHTTPOperationClass:[AFHTTPRequestOperation class]];
    
    return self;
}

@end
