//
//  SkipViewController.m
//  TableView穿透导航条
//
//  Created by sw on 16/1/7.
//  Copyright © 2016年 sw. All rights reserved.
//

#import "SkipViewController.h"

@interface SkipViewController ()

@end

@implementation SkipViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.backgroundColor = [UIColor redColor];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 50;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@""];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@""];
    }
    NSInteger numberOfRow = [tableView numberOfRowsInSection:indexPath.section];

    cell.textLabel.text = [NSString stringWithFormat:@"%ld",numberOfRow - indexPath.row];
    return cell;
}


@end
