//
//  Daily.h
//  Weather
//
//  Created by lisa on 16/4/8.
//  Copyright © 2016年 lisa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Daily : NSObject
//日期
@property (nonatomic, strong) NSString *date;
//最高
@property (nonatomic, strong) NSString *maxTempC;
//最低
@property (nonatomic, strong) NSString *mintempC;
//图标url
@property (nonatomic, strong) NSString *iconUrl;

+ (Daily *)parseDayData:(NSDictionary *)dic;

@end
