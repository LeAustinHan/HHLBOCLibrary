//
//  HXHToastor.h
//  AliyunOSSiOS
//
//  Created by Han Jize on 2020/5/9.
//

#import <Foundation/Foundation.h>

static NSInteger const toastBodyViewTag = 0xfe222a;

NS_ASSUME_NONNULL_BEGIN

@interface HXHToastor : NSObject

+ (void)showToastWithText:(NSString *)text;


+ (UILabel *)toastContentLabelWithText:(NSString *)text maxNumOfLine:(NSInteger)maxNum;

@end

NS_ASSUME_NONNULL_END
