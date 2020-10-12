//
//  CalculatorViewController.m
//  计算器
//
//  Created by 王旭 on 2020/10/2.
//

#import "CalculatorViewController.h"
#import "CalculatorView.h"
#import "CalculatorModel.h"
@interface CalculatorViewController ()

@end

@implementation CalculatorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _a = 0;
    _rootView = [[CalculatorView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.view addSubview:_rootView];
    
    _Model = [[CalculatorModel alloc] init];
    
    self.textString = [[NSMutableString alloc] initWithString:@""];
    self.textStringShow = [[NSMutableString alloc] initWithString:@""];
    
    [self.rootView.chuButton addTarget:self action:@selector(AddChu) forControlEvents:UIControlEventTouchUpInside];
    [self.rootView.chengButton addTarget:self action:@selector(AddCheng) forControlEvents:UIControlEventTouchUpInside];
    [self.rootView.jianButton addTarget:self action:@selector(AddJian) forControlEvents:UIControlEventTouchUpInside];
    [self.rootView.jiaButton addTarget:self action:@selector(AddJia) forControlEvents:UIControlEventTouchUpInside];
    [self.rootView.dengyuButton addTarget:self action:@selector(Dengyu) forControlEvents:UIControlEventTouchUpInside];
    [self.rootView.ACButton addTarget:self action:@selector(Ac) forControlEvents:UIControlEventTouchUpInside];
    [self.rootView.leftButton addTarget:self action:@selector(AddLeft) forControlEvents:UIControlEventTouchUpInside];
    [self.rootView.rightButton addTarget:self action:@selector(AddRight) forControlEvents:UIControlEventTouchUpInside];
    [self.rootView.zeroButton addTarget:self action:@selector(Add0) forControlEvents:UIControlEventTouchUpInside];
    [self.rootView.oneButton addTarget:self action:@selector(Add1) forControlEvents:UIControlEventTouchUpInside];
    [self.rootView.twoButton addTarget:self action:@selector(Add2) forControlEvents:UIControlEventTouchUpInside];
    [self.rootView.threeButton addTarget:self action:@selector(Add3) forControlEvents:UIControlEventTouchUpInside];
    [self.rootView.fourButton addTarget:self action:@selector(Add4) forControlEvents:UIControlEventTouchUpInside];
    [self.rootView.fiveButton addTarget:self action:@selector(Add5) forControlEvents:UIControlEventTouchUpInside];
    [self.rootView.sixButton addTarget:self action:@selector(Add6) forControlEvents:UIControlEventTouchUpInside];
    [self.rootView.sevenButton addTarget:self action:@selector(Add7) forControlEvents:UIControlEventTouchUpInside];
    [self.rootView.eightButton addTarget:self action:@selector(Add8) forControlEvents:UIControlEventTouchUpInside];
    [self.rootView.nineButton addTarget:self action:@selector(Add9) forControlEvents:UIControlEventTouchUpInside];
    [self.rootView.spotButton addTarget:self action:@selector(AddSpot) forControlEvents:UIControlEventTouchUpInside];
}
- (BOOL) select {
    if (_a == 1) {
        return false;
    } else {
        return true;
    }
}
- (void) AddChu {
    if ([self select]) {
    [self.textString appendString:@"÷"];
    [self.textStringShow appendString:@"/"];
    self.rootView.textLabel.text = self.textString ;
    const char * a =[self.textStringShow UTF8String];
    _a = 0;
    } else {
       
    }
}
- (void) AddCheng{
    if ([self select]) {
    [self.textString appendString:@"×"];
    [self.textStringShow appendString:@"*"];
    self.rootView.textLabel.text = self.textString ;
        _a = 0;
    } else {
        
    }
}
- (void) AddJian {
    if ([self select]) {
    [self.textString appendString:@"-"];
    [self.textStringShow appendString:@"-"];
    self.rootView.textLabel.text = self.textString ;
    _a = 0;
    }
}
- (void) AddJia{
    if ([self select]) {
        [self.textString appendString:@"+"];
        [self.textStringShow appendString:@"+"];
        self.rootView.textLabel.text = self.textString ;
        _a = 0;
    }
}
- (void) Dengyu {
    const char *a =[self.textStringShow UTF8String];
    if ([_Model piPei:a]) {
        double b = [_Model end:a];
        NSNumber *c = [NSNumber numberWithFloat:b];
        self.rootView.textLabel.text = [NSString stringWithFormat:@"%@",c];
    } else {
        self.rootView.textLabel.text = [NSString stringWithFormat:@"Error"];
    }
    _a = 0;
}
- (void) Ac {
    [self.textString setString:@""];
    [self.textStringShow setString:@""];
    self.rootView.textLabel.text = self.textString ;
    _a = 0;
}
- (void) AddLeft {
    [self.textString appendString:@"("];
    [self.textStringShow appendString:@"("];
    self.rootView.textLabel.text = self.textString ;
    _a = 0;
}
- (void) AddRight {
    [self.textString appendString:@")"];
    [self.textStringShow appendString:@")"];
    self.rootView.textLabel.text = self.textString ;
    _a = 0;
}
- (void) Add0 {
    [self.textString appendString:@"0"];
    [self.textStringShow appendString:@"0"];
    self.rootView.textLabel.text = self.textString ;
    _a = 0;
}
- (void) Add1 {
    [self.textString appendString:@"1"];
    [self.textStringShow appendString:@"1"];
    self.rootView.textLabel.text = self.textString ;
     _a = 0;
}
- (void) Add2 {
    [self.textString appendString:@"2"];
    [self.textStringShow appendString:@"2"];
    self.rootView.textLabel.text = self.textString ;
     _a = 0;
}
- (void) Add3 {
    [self.textString appendString:@"3"];
    [self.textStringShow appendString:@"3"];
    self.rootView.textLabel.text = self.textString ;
     _a = 0;
}
- (void) Add4 {
    [self.textString appendString:@"4"];
    [self.textStringShow appendString:@"4"];
    self.rootView.textLabel.text = self.textString ;
     _a = 0;
}
- (void) Add5 {
    [self.textString appendString:@"5"];
    [self.textStringShow appendString:@"5"];
    self.rootView.textLabel.text = self.textString ;
     _a = 0;
}
- (void) Add6 {
    [self.textString appendString:@"6"];
    [self.textStringShow appendString:@"6"];
    self.rootView.textLabel.text = self.textString ;
     _a = 0;
}
- (void) Add7 {
    [self.textString appendString:@"7"];
    [self.textStringShow appendString:@"7"];
    self.rootView.textLabel.text = self.textString ;
     _a = 0;
}
- (void) Add8 {
    [self.textString appendString:@"8"];
    [self.textStringShow appendString:@"8"];
    self.rootView.textLabel.text = self.textString ;
     _a = 0;
}
- (void) Add9{
    [self.textString appendString:@"9"];
    [self.textStringShow appendString:@"9"];
    self.rootView.textLabel.text = self.textString ;
     _a = 0;
}
- (void) AddSpot {
    [self.textString appendString:@"."];
    [self.textStringShow appendString:@"."];
    self.rootView.textLabel.text = self.textString ;
    _a = 0;
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
