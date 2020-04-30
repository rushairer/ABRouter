//
//  ABRouter.m
//  ABCameraKit_Example
//
//  Created by Abenx on 2020/4/26.
//  Copyright © 2020 rushairer. All rights reserved.
//

#import "ABRouter.h"


@interface ABRouter()

@property (nonatomic, strong) NSMutableDictionary *routes;

@end

@implementation ABRouter

+ (ABRouter *)sharedInstance
{
    static ABRouter *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[ABRouter alloc] init];
    });
    return sharedInstance;
}

+ (id)allocWithZone:(NSZone *)zone
{
    static ABRouter *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [super allocWithZone:zone];
    });
    return sharedInstance;
}

- (instancetype)init
{
    self = [super init];
    if(self) {
    }
    return self;
}

- (id)copy
{
    return self;
}

- (id)mutableCopy
{
    return self;
}

- (BOOL)willDealloc
{
    return NO;
}

#pragma mark - public methods
- (void)registerAction:(NSString *)name
 withCompletionHandler:(ABAction)block
{
    [self.routes setObject:block forKey:name];
}

- (void)handleAction:(NSString *)name
{
    [self handleAction:name
          withUserInfo:nil
            completion:nil];
}

- (void)handleAction:(NSString *)name
        withUserInfo:(nullable NSDictionary *)userInfo
          completion:(nullable void (^)(void))block
{
    ABAction action = (ABAction)[self.routes objectForKey:name];
    
    if (action) {
        action(userInfo);
    
        if (block) {
            block();
        }
    }
}

#pragma mark - getters and setters
- (NSMutableDictionary *)routes
{
    if (!_routes) {
        _routes = [[NSMutableDictionary alloc] init];
    }
    return _routes;
}

@end
