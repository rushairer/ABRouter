//
//  ABROUTERViewController.m
//  ABRouter
//
//  Created by rushairer on 04/30/2020.
//  Copyright (c) 2020 rushairer. All rights reserved.
//

#import "ABROUTERViewController.h"
#import <ABRouter/ABRouter.h>

@interface ABROUTERViewController () <UITableViewDelegate>

@end

@implementation ABROUTERViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        [[ABRouter sharedInstance] handleAction:@"view1"
                                   withUserInfo:@{@"view": @"view1"}
                                     completion:^{
            NSLog(@"handleAction:view1");
        }];
    } else if (indexPath.row == 1) {
        [[ABRouter sharedInstance] handleAction:@"view2"
                                   withUserInfo:@{@"view": @"view2"}
                                     completion:^{
            NSLog(@"handleAction:view2");
        }];
    }
}

@end
