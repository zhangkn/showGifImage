//
//  UIImageView+Gif.h
//  showGifImage
//
//  Created by mac on 2020/10/29.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
/**
 
 >循环次数的key：kCGImagePropertyGIFLoopCount
 >时间间隔key:kCGImagePropertyGIFUnclampedDelayTime



 https://kunnan.blog.csdn.net/
 */
@interface UIImageView (Gif)
- (void)showGifImageWithData:(NSData *)data;

- (void)showGifImageWithURL:(NSURL *)url;

@end

NS_ASSUME_NONNULL_END
