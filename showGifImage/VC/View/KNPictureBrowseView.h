//
//  KNPictureBrowseView.h
//  showGifImage
//
//  Created by mac on 2020/10/29.
//

#import <UIKit/UIKit.h>
#import "KNPhotoZoom.h"

NS_ASSUME_NONNULL_BEGIN

@interface KNPictureBrowseView : UIView
//图片URL
@property (nonatomic, strong)  NSMutableArray * urlArray;

//本地图片路径
@property (nonatomic, strong) NSMutableArray * pathArray;

//本地图片名字 如 1.gif 或者 1.jpeg ...
@property (nonatomic, strong) NSMutableArray * nameArray;

//图片对象
@property (nonatomic, weak) id pictureObject;

@property (nonatomic, weak) id viewController;

@property (nonatomic , strong) KNPhotoZoom * currentPhotoZoom;

@property (nonatomic , assign) NSInteger index;

@property (nonatomic, copy) NSData * currentImageData;

@end

NS_ASSUME_NONNULL_END
