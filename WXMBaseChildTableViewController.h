//
//  WXMBaseChildTableViewController.h
//  Multi-project-coordination
//
//  Created by wq on 2020/1/20.
//  Copyright © 2020 wxm. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface WXMBaseChildTableViewController : UITableViewController

/** 同步刷新所有子控制器 */
- (void)requestHeaderControl;

/** 下拉刷新 */
- (void)requestDataSources;

@end

NS_ASSUME_NONNULL_END
