//
//  LeftViewController.m
//  Weather
//
//  Created by lisa on 16/4/7.
//  Copyright © 2016年 lisa. All rights reserved.
//

#import "LeftViewController.h"
#import "PrefixHeader.pch"
#import "CitiesTableViewController.h"

static const CGFloat cellHeight = 50;
static const int cellCount = 2;

@interface LeftViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) NSArray *cellTextContent;
@property (nonatomic, strong) NSArray *cellImage;

@end

@implementation LeftViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.cellTextContent = @[@"更换城市", @"其他"];
    self.cellImage = @[@"IconSettings",@"IconProfile"];
    [self creatTableView];
}

- (void)creatTableView {
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, (SCREEN_HEIGHT - cellHeight*cellCount)/2, SCREEN_WIDTH, cellHeight*cellCount) style:UITableViewStylePlain];
    tableView.backgroundColor = [UIColor clearColor];
    tableView.delegate = self;
    tableView.dataSource = self;
    //设置分隔线
    tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.view addSubview:tableView];
}

#pragma mark - UITableViewDelegate / DataSources
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return cellCount;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    cell.backgroundColor = [UIColor clearColor];
    cell.textLabel.textColor = [UIColor whiteColor];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.textLabel.text = self.cellTextContent[indexPath.row];
    cell.imageView.image = [UIImage imageNamed:self.cellImage[indexPath.row]];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return cellHeight;
}

//更换城市
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        CitiesTableViewController *cityGroupController = [CitiesTableViewController new];
        UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:cityGroupController];
        [self presentViewController:navController animated:YES completion:nil];
    }
}

@end
