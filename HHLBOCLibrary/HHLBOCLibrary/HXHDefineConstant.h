//
//  HXHDefineConstant.h
//  Pods
//
//  Created by Han Jize on 2020/5/9.
//

#ifndef HXHDefineConstant_h
#define HXHDefineConstant_h

#define RGBA(R, G, B, A) [UIColor colorWithRed:((R)/255.0f) green:((G)/255.0f) blue:((B)/255.0f) alpha:A]
#define RGB(R, G, B) RGBA(R,G,B,1.0)

#define APPVersion [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"]
#define OSVersion [[UIDevice currentDevice] systemVersion]

//机型判断
#define iPHONE5_WIDTH (SCREEN_WIDTH == 320)
#define iPhone5s (SCREEN_HEIGHT == 568)
#define iPhone6 (SCREEN_WIDTH == 375)
#define iPhone6P (SCREEN_WIDTH == 414)
#define iPhoneX (CGSizeEqualToSize([[UIScreen mainScreen] bounds].size, CGSizeMake(375, 812))||CGSizeEqualToSize([[UIScreen mainScreen] bounds].size, CGSizeMake(812,375))||CGSizeEqualToSize([[UIScreen mainScreen] bounds].size, CGSizeMake(414, 896))||CGSizeEqualToSize([[UIScreen mainScreen] bounds].size, CGSizeMake(896,414)))
#define iPad (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)

#define SCREEN_WIDTH ([[UIScreen mainScreen] bounds].size.width)
#define SCREEN_HEIGHT ([[UIScreen mainScreen] bounds].size.height)

#define NAVIGATION_HEIGHT (iPhoneX ? 88:64)
#define STATUSBAR_HEIGHT (iPhoneX ? 44:20)

#define HEIGHT_EQUAL_TO_IPHONE6(HEIGHT) (HEIGHT*667/1334)
#define WIDTH_EQUAL_TO_IPHONE6(WIDTH) (WIDTH*375/750)

#define HEIGHT_SCALE_TO_IPHONE6(HEIGHT) (iPad ? HEIGHT_EQUAL_TO_IPHONE6(HEIGHT) :  (iPhoneX ? HEIGHT_EQUAL_TO_IPHONE6(HEIGHT) : HEIGHT/1334.0*SCREEN_HEIGHT))
#define WIDTH_SCALE_TO_IPHONE6(WIDTH) (iPad ? WIDTH_EQUAL_TO_IPHONE6(WIDTH) :  (WIDTH/750.0*SCREEN_WIDTH))
//kooup
#define SCREEN_WIDTH_SCALE(distance) ((UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) ? distance :  (distance * ADJUST_SCREEN_WIDTH / 375.0))

#define ADJUST_SCREEN_WIDTH (IsPortrait ? [[UIScreen mainScreen] bounds].size.width : [[UIScreen mainScreen] bounds].size.height)

#define IsPortrait ([[UIApplication sharedApplication] statusBarOrientation] == UIInterfaceOrientationPortrait || [[UIApplication sharedApplication] statusBarOrientation] == UIInterfaceOrientationPortraitUpsideDown)


#define HEIGHT_MIN_SCALE_TO_IPHONE6(HEIGHT) (HEIGHT_SCALE_TO_IPHONE6(HEIGHT)>HEIGHT_EQUAL_TO_IPHONE6(HEIGHT) ? HEIGHT_SCALE_TO_IPHONE6(HEIGHT) : HEIGHT_EQUAL_TO_IPHONE6(HEIGHT))

#define WIDTH_MIN_SCALE_TO_IPHONE6(WIDTH) (WIDTH_SCALE_TO_IPHONE6(WIDTH)>WIDTH_EQUAL_TO_IPHONE6(WIDTH) ? WIDTH_SCALE_TO_IPHONE6(WIDTH) : WIDTH_EQUAL_TO_IPHONE6(WIDTH))

#define HEIGHT_MAX_SCALE_TO_IPHONE6(HEIGHT) (HEIGHT_SCALE_TO_IPHONE6(HEIGHT)<HEIGHT_EQUAL_TO_IPHONE6(HEIGHT) ? HEIGHT_SCALE_TO_IPHONE6(HEIGHT) : HEIGHT_EQUAL_TO_IPHONE6(HEIGHT))

#define WIDTH_MAX_SCALE_TO_IPHONE6(WIDTH) (WIDTH_SCALE_TO_IPHONE6(WIDTH)<WIDTH_EQUAL_TO_IPHONE6(WIDTH) ? WIDTH_SCALE_TO_IPHONE6(WIDTH) : WIDTH_EQUAL_TO_IPHONE6(WIDTH))

#define kFontSizeDefault 16
#define kFontDefault [UIFont systemFontOfSize:kFontSizeDefault]
#define kFontWithSize(size) [UIFont systemFontOfSize:size]
#define kTimeFormatGeneral @"yyyy.MM.dd HH:mm:ss"
#define kPageSizeDefault 20


#define UIColorHEX(hex) [UIColor colorWithRed:((float)((hex & 0xFF0000) >> 16))/255.0 green:((float)((hex & 0xFF00) >> 8))/255.0 blue:((float)(hex & 0xFF))/255.0 alpha:1.0]
#define UIColorHEXA(hex,a) [UIColor colorWithRed:((float)((hex & 0xFF0000) >> 16))/255.0 green:((float)((hex & 0xFF00) >> 8))/255.0 blue:((float)(hex & 0xFF))/255.0 alpha:a]
#define UIColorRGB(r,g,b) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1.0]

#define kImageNamed(name) [UIImage imageNamed:name]

#define dispatch_main_async_safe(block)\
if ([NSThread isMainThread]) {\
block();\
} else {\
dispatch_async(dispatch_get_main_queue(), block);\
}

//获取屏幕的尺寸，宽高，比例等
#define kScreenSize \
([[UIScreen mainScreen] respondsToSelector:@selector(nativeBounds)] ? CGSizeMake([UIScreen mainScreen].nativeBounds.size.width/[UIScreen mainScreen].nativeScale, [UIScreen mainScreen].nativeBounds.size.height/[UIScreen mainScreen].nativeScale) : [UIScreen mainScreen].bounds.size)
#define kScreenWidth kScreenSize.width
#define kScreenHeight kScreenSize.height
#define kScreenFrame CGRectMake(0, 0, kScreenWidth, kScreenHeight)
#define kScreenScale kScreenWidth/375 /* 根据iphone6的宽度适配 */

//判断是iphone几
#define kIsIphone4     (kScreenWidth==320&&kScreenHeight==480)
#define kIsIphone5     (kScreenWidth==320&&kScreenHeight==568)
#define kIsIphone6     (kScreenWidth==375&&kScreenHeight==667)
#define kIsIphone6Plus (kScreenWidth==414&&kScreenHeight==736)
#define kIsIphone7     kIsIphone6
#define kIsIphone7Plus kIsIphone6Plus
#define kIsIphone8     kIsIphone6
#define kIsIphone8Plus kIsIphone6Plus
#define kIsIphoneX     kScreenWidth >=375.0f && kScreenHeight >=812.0f && (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)

//状态栏、导航条、导航栏
#define kStatusBarHeight       (kIsIphoneX ? 44.f : 20.f)     //状态条高度
#define kTopBarSafeHeight      (CGFloat)(kIsIphoneX?(44):(0)) // 顶部安全区域远离高度
#define kBottomSafeHeight      (CGFloat)(kIsIphoneX?(34):(0)) // 底部安全区域远离高度
#define kTopBarDifHeight       (CGFloat)(kIsIphoneX?(24):(0)) // iPhoneX的状态栏高度差值
#define kNavbarHeight          (CGFloat)(44+kStatusBarHeight) // 导航条高度
#define kTabbarHeight          (CGFloat)(49+kBottomSafeHeight)//分栏高度

//颜色
#define kColorRGBA(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]
#define kColorRGB(r, g, b) kColorRGBA(r, g, b, 1.0f)
#define kColorRandomAlpha(alpha) \
kColorRGBA(arc4random_uniform(256),arc4random_uniform(256),arc4random_uniform(256),alpha)
#define kColorRandom kColorRandomAlpha(1.0f)
#define kColorWithHexAndAlpha(rgbValue,a) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16)) / 255.0 green:((float)((rgbValue & 0xFF00) >> 8)) / 255.0 blue:((float)(rgbValue & 0xFF)) / 255.0 alpha:a]
#define kColorWithHex(rgbValue) kColorWithHexAndAlpha(rgbValue,1.0f)

//字体大小及字重
#define kFont_Bold(size)        [UIFont boldSystemFontOfSize:size]
#define kFont_UltraLight(size)  [UIFont systemFontOfSize:size weight:UIFontWeightUltraLight]
#define kFont_Thin(size)        [UIFont systemFontOfSize:size weight:UIFontWeightThin]
#define kFont_Light(size)       [UIFont systemFontOfSize:size weight:UIFontWeightLight]
#define kFont_Regular(size)     [UIFont systemFontOfSize:size weight:UIFontWeightRegular]
#define kFont_Medium(size)      [UIFont systemFontOfSize:size weight:UIFontWeightMedium]
#define kFont_Semibold(size)    [UIFont systemFontOfSize:size weight:UIFontWeightSemibold]
#define kFont_Bold(size)        [UIFont systemFontOfSize:size weight:UIFontWeightBold]
#define kFont_Heavy(size)       [UIFont systemFontOfSize:size weight:UIFontWeightHeavy]
#define WS(weakSelf) __weak __typeof(self) weakSelf = self

//iphonex 以适配
#define WIDTH_SCALE_IPHONEX(distance) distance * SCREEN_WIDTH/375
#define HEIGHT_SCALE_IPHONEX(distance) distance * SCREEN_HEIGHT/812

#endif /* HXHDefineConstant_h */
