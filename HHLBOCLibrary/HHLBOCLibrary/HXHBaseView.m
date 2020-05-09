//
//  HXHBaseView.m
//  AliyunOSSiOS
//
//  Created by Han Jize on 2020/5/9.
//

#import "HXHBaseView.h"

@implementation HXHBaseView

- (void)showText:(NSString *)text {
    [HXHToastor showToastWithText:text];
}

@end
