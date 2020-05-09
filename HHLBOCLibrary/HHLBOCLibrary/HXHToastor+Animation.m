//
//  HXHToastor+Animation.m
//  AliyunOSSiOS
//
//  Created by Han Jize on 2020/5/9.
//

#import "HXHToastor+Animation.h"

@implementation HXHToastor (Animation)

+ (void)removedToastAnimationWithView:(UIView *)view{
    if(!view) return;
    
    [UIView animateWithDuration:0.05 animations:^{
        
        view.transform=CGAffineTransformScale(view.transform, 0.5, 0.5);
        view.alpha = 0;
        
    } completion:^(BOOL finished) {
        
        [UIView animateWithDuration:0.05 animations:^{
            
            [view setAlpha:0];
            [view setBackgroundColor:UIColorHEX(0xffffff)];
            
        } completion:^(BOOL finished) {
            
            [view removeFromSuperview];
            
        }];
    }];
    
}

+ (void)loadToastAnimationWithPresentView:(UIView *)view duration:(CGFloat)duration complete:(void(^)())complete {
    if(!view) return;
    
    duration = duration?:1.5;
    
    view.transform=CGAffineTransformScale(view.transform, 0.5, 0.5);
    view.alpha = 0;
    
    [UIView animateWithDuration:0.6 delay:0.2 usingSpringWithDamping:0.7 initialSpringVelocity:0.6 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        
        view.transform=CGAffineTransformIdentity;
        view.alpha = 1;
        
    } completion:^(BOOL finished) {
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(duration * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            
            [UIView animateWithDuration:0.3 animations:^{
                
                view.transform=CGAffineTransformScale(view.transform, 0.5, 0.5);
                view.alpha = 0;
                
            } completion:^(BOOL finished) {
                
                [UIView animateWithDuration:0.3 animations:^{
                    
                    [view setAlpha:0];
                    [view setBackgroundColor:UIColorHEX(0xffffff)];
                    
                } completion:^(BOOL finished) {
                    
                    [view removeFromSuperview];
                    
                    if (complete) {
                        complete();
                    }
                    
                }];
            }];
        });
    }];
    
}


+ (void)removedErrorAnimationWithView:(UIView *)view {
    if(!view) return;
    
    [UIView animateWithDuration:0.05 animations:^{
        
        view.transform=CGAffineTransformScale(view.transform, 1, 1);
        
    } completion:^(BOOL finished) {
        
        [UIView animateWithDuration:0.05 animations:^{
            
            [view setAlpha:0];
            [view setBackgroundColor:UIColorHEX(0xffffff)];
            
        } completion:^(BOOL finished) {
            
            [view removeFromSuperview];
            
        }];
    }];
}

+ (void)loadErrorToastAnimationWithPresentView:(UIView *)view duration:(CGFloat)duration complete:(void(^)())complete {
    if(!view) return;
    
    duration = duration?:1.5;
    
    view.transform=CGAffineTransformScale(view.transform, 1, 1);
    
    [UIView animateWithDuration:0.6 delay:0.2 usingSpringWithDamping:0.7 initialSpringVelocity:0.6 options:UIViewAnimationOptionCurveEaseInOut animations:^{
        
        view.transform=CGAffineTransformIdentity;
        
    } completion:^(BOOL finished) {
        
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            
            [UIView animateWithDuration:0.3 animations:^{
                
                view.transform=CGAffineTransformScale(view.transform, 1, 1);
                
            } completion:^(BOOL finished) {
                
                [UIView animateWithDuration:0.3 animations:^{
                    
                    [view setAlpha:0];
                    [view setBackgroundColor:UIColorHEX(0xffffff)];
                    
                } completion:^(BOOL finished) {
                    
                    [view removeFromSuperview];
                    
                    if (complete) {
                        complete();
                    }
                    
                }];
            }];
        });
    }];
    
}


@end
