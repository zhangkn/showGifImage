//
//  KNPhotoZoom.h
//  showGifImage
//
//  Created by mac on 2020/10/29.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface KNPhotoZoom : UIScrollView
@property (nonatomic, strong) UIImageView * imageView;

//默认是屏幕的宽和高
@property (assign, nonatomic) CGFloat imageNormalWidth; // 图片未缩放时宽度
@property (assign, nonatomic) CGFloat imageNormalHeight; // 图片未缩放时高度

//缩放方法，共外界调用
- (void)pictureZoomWithScale:(CGFloat)zoomScale;

@end

NS_ASSUME_NONNULL_END
