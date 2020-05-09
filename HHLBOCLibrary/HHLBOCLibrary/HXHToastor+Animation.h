//
//  HXHToastor+Animation.h
//  AliyunOSSiOS
//
//  Created by Han Jize on 2020/5/9.
//

#import "HXHDefineConstant.h"
#import "HXHToastor.h"

NS_ASSUME_NONNULL_BEGIN

@interface HXHToastor (Animation)

/*************************** 纯文本Toast *****************************/

// Toast removed animation
+ (void)removedToastAnimationWithView:(UIView *)view;

// Toast load animation
+ (void)loadToastAnimationWithPresentView:(UIView *)view duration:(CGFloat)duration complete:(void(^)())complete;


/*************************** 警告/错误类Toast *****************************/

// ErrorToast removed aniamtion
+ (void)removedErrorAnimationWithView:(UIView *)lastView;

// ErrorToast load animation
+ (void)loadErrorToastAnimationWithPresentView:(UIView *)view duration:(CGFloat)duration complete:(void(^)())complete;


@end

NS_ASSUME_NONNULL_END
