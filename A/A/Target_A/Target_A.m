//
//  Target_A.m
//  A
//
//  Created by liuchao on 2018/11/27.
//  Copyright © 2018 MVM. All rights reserved.
//

#import "Target_A.h"
#import "AAViewController.h"

@implementation Target_A

- (UIViewController *)Action_AViewController:(NSDictionary *)params;
{
    AAViewController *viewController = [[AAViewController alloc] init];
    return viewController;
}

@end
