//
//  NetWorkingManager.h
//  Weather
//
//  Created by lisa on 16/4/9.
//  Copyright © 2016年 lisa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NetWorkingManager : NSObject
+ (void)sendRequestWithUrl:(NSString *)url parameters:(NSDictionary *)dic success:(void(^)(id responsObject))success failure:(void(^)(NSError *erro))failure;
@end
