//
//  NAVRootViewController.m
//  TableView穿透导航条
//
//  Created by sw on 16/1/7.
//  Copyright © 2016年 sw. All rights reserved.
//

#import "NAVRootViewController.h"
#import "SkipViewController.h"
#import "WebViewController.h"

@interface NAVRootViewController ()

@end

@implementation NAVRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.clearsSelectionOnViewWillAppear = NO;
    
     self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    // 导航条透明
//    [self.navigationController.navigationBar setBackgroundColor:[UIColor clearColor]];
    
    [self.navigationController.navigationBar setBackgroundImage:[[UIImage alloc] init] forBarMetrics:UIBarMetricsDefault]; // 必须是空图片对象不能是nil
//
//    [self.navigationController.navigationBar setShadowImage:[[UIImage alloc] init]]; // 必须是空图片对象不能是nil
    
    self.navigationController.navigationBar.shadowImage = [[UIImage alloc] init]; // 去除导航条下面的黑色分隔线
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 40;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@""];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@""];
    }
    return cell;
}

#pragma mark - Table view delegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.row < 5) {
        WebViewController *webViewVC = [[WebViewController alloc] init];
        [self.navigationController pushViewController:webViewVC animated:YES];
        
    } else {
        SkipViewController *skipVC = [[SkipViewController alloc] initWithStyle:UITableViewStylePlain];
        
        [self.navigationController pushViewController:skipVC animated:YES];

    }
    
}

@end
