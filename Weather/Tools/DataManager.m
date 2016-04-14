//
//  DataManager.m
//  Weather
//
//  Created by lisa on 16/4/8.
//  Copyright © 2016年 lisa. All rights reserved.
//

#import "DataManager.h"
#import "CityGroup.h"
@implementation DataManager
+ (NSArray *)getAllCityGroups {
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"cityGroups.plist" ofType:nil];
    NSArray *cityArr = [NSArray arrayWithContentsOfFile:filePath];
    
    NSMutableArray *cityGroups = [NSMutableArray array];
    for (NSDictionary *dic in cityArr) {
        CityGroup *group = [CityGroup new];
        [group setValuesForKeysWithDictionary:dic];
        [cityGroups addObject:group];
    }
    return [cityGroups copy];
}

@end
