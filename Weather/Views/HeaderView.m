//
//  HeaderView.m
//  Weather
//
//  Created by lisa on 16/4/7.
//  Copyright © 2016年 lisa. All rights reserved.
//

#import "HeaderView.h"
#import "PrefixHeader.pch"
//label左右边距
static const CGFloat inset = 20;
//label高
static const CGFloat labelHeight = 40;
//当前温度label高
static const CGFloat tempLabelHeight = 110;


@implementation HeaderView

//重写父类方法 添加Button
- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
      //创建Button
        CGRect buttonFrame = CGRectMake(20, 20, 40, 40) ;
         self.menuButton = [[UIButton alloc] initWithFrame:buttonFrame];
//        self.menuButton.backgroundColor = [UIColor redColor];
        [self.menuButton setImage:[UIImage imageNamed:@"IconHome"] forState:UIControlStateNormal];
        [self addSubview:self.menuButton];
        //创建cityLabel
        CGRect cityLabelFrame = CGRectMake(labelHeight, inset, SCREEN_WIDTH-labelHeight-inset, labelHeight);
        self.cityLabel = [[UILabel alloc] initWithFrame:cityLabelFrame];
        self.cityLabel.text = @"loading";
        self.cityLabel.textAlignment = NSTextAlignmentCenter;
        self.cityLabel.font = [UIFont systemFontOfSize:30.0];
        self.cityLabel.textColor = [UIColor whiteColor];
        [self addSubview:self.cityLabel];
        
        CGRect hiloLabelFrame = CGRectMake(inset, SCREEN_HEIGHT - labelHeight, SCREEN_WIDTH - 2*inset, labelHeight);
        self.hiloLabel = [[UILabel alloc] initWithFrame:hiloLabelFrame];
        self.hiloLabel.text = @"0˚ / 10˚";
        self.hiloLabel.font = [UIFont systemFontOfSize:25.0];
        self.hiloLabel.textColor = [UIColor whiteColor];
        [self addSubview:self.hiloLabel];
        
        CGRect temperatureLabelFrame = CGRectMake(inset, (SCREEN_HEIGHT-labelHeight-tempLabelHeight), (SCREEN_WIDTH-2*inset)/2, tempLabelHeight);
        self.temperatureLabel = [[UILabel alloc] initWithFrame:temperatureLabelFrame];
        self.temperatureLabel.text = @"0˚";
        self.temperatureLabel.font = [UIFont italicSystemFontOfSize:60];
        self.temperatureLabel.textColor = [UIColor whiteColor];
        [self addSubview:self.temperatureLabel];
        
        CGRect iconViewFrame = CGRectMake(inset, SCREEN_HEIGHT-2*labelHeight-tempLabelHeight, labelHeight, labelHeight);
        self.iconView = [[UIImageView alloc] initWithFrame:iconViewFrame];
        [self.iconView setImage:[UIImage imageNamed:@"placeholder"]];
        [self addSubview:self.iconView];
        
        CGRect conditionsLabelFrame = CGRectMake(inset+labelHeight, SCREEN_HEIGHT-2*labelHeight-tempLabelHeight, SCREEN_WIDTH-2*inset-labelHeight, labelHeight);
        self.conditionsLabel = [[UILabel alloc] initWithFrame:conditionsLabelFrame];
        self.conditionsLabel.text = @"Clear";
        self.conditionsLabel.textColor = [UIColor whiteColor];
        [self addSubview:_conditionsLabel];
        

    }
    return self;
}

@end
