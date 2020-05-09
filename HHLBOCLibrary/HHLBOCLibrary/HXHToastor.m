//
//  HXHToastor.m
//  AliyunOSSiOS
//
//  Created by Han Jize on 2020/5/9.
//

#import "HXHToastor.h"

#import "HXHToastor+Animation.h"
#import "HXHToastor+SubViews.h"


@implementation HXHToastor

+ (void)showToastWithText:(NSString *)text{
    UIWindow *window = ([UIApplication sharedApplication].delegate).window;
    //removed Toast with Animation
    [self removedToastAnimationWithView :[window viewWithTag:toastBodyViewTag]];
    //load Toast subViews
    UIView *view = [self toastBodyView];
    UILabel *label=[self toastContentLabelWithText:text maxNumOfLine:1];
    [view addSubview:label];
    [window addSubview:view];
    
    CGRect frame=label.frame;
    frame.size.width += (WIDTH_SCALE_TO_IPHONE6(48)*2);
    frame.size.height += (HEIGHT_SCALE_TO_IPHONE6(27)*2);
    frame.origin.x=SCREEN_WIDTH/2-CGRectGetWidth(frame)/2;
    frame.origin.y=SCREEN_HEIGHT/2-CGRectGetHeight(frame)/2;
    view.frame=frame;
    
    //load Toast With Animation
    CGFloat duration = (text.length <= 8)? 1 : 2 ;
    [self loadToastAnimationWithPresentView:view duration:duration complete:nil];
}

#pragma mark - 纯文本Toast subView

+ (UILabel *)toastContentLabelWithText:(NSString *)text maxNumOfLine:(NSInteger)maxNum {
    UILabel *label=[[UILabel alloc]init];
    label.text=text;
    label.font = [UIFont systemFontOfSize:16];
    label.numberOfLines=1;
    label.textAlignment=NSTextAlignmentCenter;
    label.backgroundColor=[UIColor clearColor];
    label.textColor=[UIColor whiteColor];
    //[label setSpacingDefault];
    
    if(text.length <= 8) {
        label.bounds=CGRectMake(0, 0, WIDTH_SCALE_TO_IPHONE6(460)-WIDTH_SCALE_TO_IPHONE6(27)*2, 10);
        label.numberOfLines = 1;
    } else if(text.length > 8 && text.length <= 14){
        label.bounds=CGRectMake(0, 0, WIDTH_SCALE_TO_IPHONE6(550)-WIDTH_SCALE_TO_IPHONE6(27)*2, 10);
        label.numberOfLines = 0;
    } else {
        label.bounds=CGRectMake(0, 0, WIDTH_SCALE_TO_IPHONE6(550)-WIDTH_SCALE_TO_IPHONE6(27)*2, 10);
        label.numberOfLines = maxNum? maxNum: 0;
    }
    [label sizeToFit];
    
    CGRect frame = label.frame;
    frame.origin.x = WIDTH_SCALE_TO_IPHONE6(48);
    frame.origin.y = HEIGHT_SCALE_TO_IPHONE6(27);
    label.frame = frame;
    
    label.layer.cornerRadius = WIDTH_SCALE_TO_IPHONE6(16);
    label.layer.masksToBounds=YES;
    
    return label;
}
@end
