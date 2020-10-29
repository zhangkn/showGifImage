//
//  KNViewController.m
//  showGifImage
//
//  Created by mac on 2020/10/29.
//

#import "KNViewController.h"

#import "KNPictureBrowseView.h"


#define SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)

@interface KNViewController ()

@end

@implementation KNViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"showGifImage";
    // Do any additional setup after loading the view.
    self.title = @"https://kunnan.blog.csdn.net/";

    //网络gif图片URL
    NSMutableArray * urlArray = [NSMutableArray arrayWithArray:@[@"https://upload-images.jianshu.io/upload_images/1208426-679b4ee4e796d064.gif?imageMogr2/auto-orient/strip", @"https://profile.csdnimg.cn/D/9/E/3_u011018979",@"http://img3.duitang.com/uploads/item/201505/20/20150520150637_aEiMU.gif"]];
    
    
    
    //本地图片名字
    NSMutableArray * nameArray = [NSMutableArray arrayWithArray:@[@"11.gif", @"12.gif", @"csdn.JPG", @"13.gif"]];
    
    //本地图片地址
    NSMutableArray * pathArray  = [NSMutableArray array];
    
    for (NSString * nameStr in nameArray) {
        
        NSArray * nameAndType = [nameStr componentsSeparatedByString:@"."];
        NSString * name = [nameAndType  firstObject];
        NSString * type = [nameAndType  lastObject];
        [pathArray addObject: [[NSBundle mainBundle] pathForResource:name ofType:type]];
        
    }
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    KNPictureBrowseView * browseView = [[KNPictureBrowseView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
    browseView.backgroundColor = [UIColor blackColor];
//    browseView.urlArray = urlArray;// test uRL
        browseView.pathArray = pathArray;// 测试本地图片名字
    browseView.viewController = self;

    
    [self.view addSubview:browseView];

}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
