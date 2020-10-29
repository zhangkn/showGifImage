//
//  UIImageView+Gif.h
//  showGifImage
//
//  Created by mac on 2020/10/29.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImageView (Gif)
- (void)showGifImageWithData:(NSData *)data;

- (void)showGifImageWithURL:(NSURL *)url;

@end

NS_ASSUME_NONNULL_END
