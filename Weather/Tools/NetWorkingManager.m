//
//  NetWorkingManager.m
//  Weather
//
//  Created by lisa on 16/4/9.
//  Copyright © 2016年 lisa. All rights reserved.
//

#import "NetWorkingManager.h"
#import "AFNetworking.h"

@implementation NetWorkingManager
+ (void)sendRequestWithUrl:(NSString *)url parameters:(NSDictionary *)dic success:(void (^)(id))success failure:(void (^)(NSError *))failure {
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager GET:url parameters:dic success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        success(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failure(error);
    }];
    
}
@end
