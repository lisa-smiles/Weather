//
//  MainViewController.m
//  Weather
//
//  Created by lisa on 16/4/7.
//  Copyright © 2016年 lisa. All rights reserved.
//

#import "MainViewController.h"
#import "HeaderView.h"
#import "RESideMenu.h"
#import "AFNetworking.h"


@interface MainViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //creat tableView&headerView
    [self creatTableView];
    [self creatHeaderView];
    
}

#pragma mark - 请求服务器相关



#pragma mark - 和界面相关的方法
- (void)creatTableView {
    self.tableView = [[UITableView alloc]initWithFrame:SCREEN_BOUNDS];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.backgroundColor = [UIColor clearColor];
    [self.view addSubview:self.tableView];
}

- (void)creatHeaderView {
    HeaderView *headerView = [[HeaderView alloc] initWithFrame:SCREEN_BOUNDS];
    [headerView.menuButton addTarget:self action:@selector(clickMenuButton) forControlEvents:UIControlEventTouchUpInside];
    self.tableView.tableHeaderView = headerView;
}

- (void)clickMenuButton {
    [self.sideMenuViewController presentLeftMenuViewController];
}

#pragma mark - tableViewDelegate/DataSources

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:identifier];
        cell.backgroundColor = [UIColor clearColor];
        cell.textLabel.textColor = [UIColor whiteColor];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return cell;
}


@end
