//
//  MHMediator+HuaTMediatorCategory.m
//  Categories
//
//  Created by MiHu on 2018/4/23.
//

#import "MHMediator+HuaTMediatorCategory.h"


NSString * const HuaTMediatorTargetA = @"Home";

NSString * const HuaTMediatorActionNativFetchHomeViewController = @"nativeFetchDetailViewController";

@implementation MHMediator (HuaTMediatorCategory)


- (UIViewController *)HuaTMediator_viewControllerForHome{
    
    UIViewController *viewController = [self performTarget:HuaTMediatorTargetA
                                                    action:HuaTMediatorActionNativFetchHomeViewController
                                                    params:@{@"key":@"value"}
                                         shouldCacheTarget:NO
                                        ];
    if ([viewController isKindOfClass:[UIViewController class]]) {
        // view controller 交付出去之后，可以由外界选择是push还是present
        return viewController;
    } else {
        // 这里处理异常场景，具体如何处理取决于产品
        return [[UIViewController alloc] init];
    }
    
    return nil;
}

@end
