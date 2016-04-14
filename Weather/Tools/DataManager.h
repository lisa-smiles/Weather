//
//  DataManager.h
//  Weather
//
//  Created by lisa on 16/4/8.
//  Copyright © 2016年 lisa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataManager : NSObject
+ (NSArray *)getAllCityGroups;
+ (NSArray *)getAllDailyData;

@end
