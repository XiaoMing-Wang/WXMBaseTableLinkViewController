//
//  WXMBaseChildTableViewController.m
//  Multi-project-coordination
//
//  Created by wq on 2020/1/20.
//  Copyright © 2020 wxm. All rights reserved.
//
#import "WXMBaseTableLinkViewController.h"
#import "WXMBaseChildTableViewController.h"
#import "UIViewController+WXMTableSliding.h"

@implementation WXMBaseChildTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self setSlidScrollView];
    self.tableView.showsVerticalScrollIndicator = NO;
    self.tableView.tableFooterView = [UIView new];
    self.tableView.backgroundColor = [UIColor whiteColor];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
}

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
- (void)requestHeaderControl {
    SEL sel = NSSelectorFromString(@"requestDataSources");
    for (UIViewController *vc in self.parentViewController.childViewControllers) {
        if ([vc respondsToSelector:sel]) [vc performSelector:sel];
    }
}
#pragma clang diagnostic pop

- (void)requestDataSources {
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)table cellForRowAtIndexPath:(NSIndexPath *)index {
    UITableViewCell *cell = [table dequeueReusableCellWithIdentifier:@"cell" forIndexPath:index];
    return cell;
}




@end
