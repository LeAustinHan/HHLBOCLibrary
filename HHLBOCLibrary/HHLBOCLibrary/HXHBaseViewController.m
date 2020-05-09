//
//  HXHBaseViewController.m
//  AFNetworking
//
//  Created by Han Jize on 2020/5/9.
//

#import "HXHBaseViewController.h"

@interface HXHBaseViewController ()

@end

@implementation HXHBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)showText:(NSString *)text {
    [HXHToastor showToastWithText:text];
}

@end
