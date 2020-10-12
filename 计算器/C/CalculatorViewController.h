//
//  CalculatorViewController.h
//  计算器
//
//  Created by 王旭 on 2020/10/2.
//

#import <UIKit/UIKit.h>
#import "CalculatorView.h"
#import "CalculatorModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface CalculatorViewController : UIViewController
@property (nonatomic, strong) CalculatorView *rootView;
@property (nonatomic, strong) NSMutableString *textString;
@property (nonatomic, strong) NSMutableString *textStringShow;
@property (nonatomic, strong) CalculatorModel *Model;
@property NSInteger a;
@end

NS_ASSUME_NONNULL_END
