//
//  HXHToastor+SubViews.m
//  AliyunOSSiOS
//
//  Created by Han Jize on 2020/5/9.
//

#import "HXHToastor+SubViews.h"

@implementation HXHToastor (SubViews)

#pragma mark - ToastView body

+ (UIView *)toastBodyView {
    UIView *_toastBodyView = [[UIView alloc] init];
    _toastBodyView.backgroundColor = UIColorHEXA(0x000000, 0.70);
    _toastBodyView.layer.cornerRadius = WIDTH_SCALE_TO_IPHONE6(16);
    _toastBodyView.layer.masksToBounds = YES;
    _toastBodyView.tag = toastBodyViewTag;
    _toastBodyView.alpha = 1;
    return _toastBodyView;
}


@end
