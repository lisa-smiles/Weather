//
//  HeaderView.h
//  Weather
//
//  Created by lisa on 16/4/7.
//  Copyright © 2016年 lisa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HeaderView : UIView
@property (nonatomic, strong) UIButton *menuButton;
@property (nonatomic, strong) UILabel *cityLabel;
@property (nonatomic, strong) UIImageView *iconView;
@property (nonatomic, strong) UILabel *conditionsLabel;
@property (nonatomic, strong) UILabel *temperatureLabel;
@property (nonatomic, strong) UILabel *hiloLabel;

@end
