//
//  AAViewController.m
//  CocoaPodsRepoTest
//
//  Created by liuchao on 2018/11/27.
//  Copyright © 2018 MVM. All rights reserved.
//

#import "AAViewController.h"
#import <B_Category/CTMediator+B.h>

@interface AAViewController ()

@property (nonatomic, strong) UIButton *nextViewControllerButton;

@end

@implementation AAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view addSubview:self.nextViewControllerButton];
}

- (UIButton *)nextViewControllerButton
{
    if (_nextViewControllerButton == nil)
    {
        _nextViewControllerButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_nextViewControllerButton setTitle:@"push to BViewController" forState:UIControlStateNormal];
        _nextViewControllerButton.frame = CGRectMake(0, 0, 200, 44);
        _nextViewControllerButton.backgroundColor = [UIColor redColor];
        _nextViewControllerButton.center = self.view.center;
        [_nextViewControllerButton addTarget:self action:@selector(push:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _nextViewControllerButton;
}
- (void)push:(UIButton *)button
{
    UIViewController *vc = [[CTMediator sharedInstance] B_viewControllerWithContentText:@"hello world"];
    [self.navigationController pushViewController:vc animated:YES];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
