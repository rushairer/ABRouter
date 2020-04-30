//
//  ABRouter.h
//  ABCameraKit_Example
//
//  Created by Abenx on 2020/4/26.
//  Copyright © 2020 rushairer. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef void (^ABAction)(NSDictionary *userInfo);

@interface ABRouter : NSObject

- (void)registerAction:(NSString *)name
 withCompletionHandler:(ABAction)block;

- (void)handleAction:(NSString *)name;

- (void)handleAction:(NSString *)name
        withUserInfo:(nullable NSDictionary *)userInfo
          completion:(nullable void (^)(void))block;

+ (ABRouter *)sharedInstance;

@end

NS_ASSUME_NONNULL_END
