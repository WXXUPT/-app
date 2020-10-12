//
//  CalculatorView.m
//  计算器
//
//  Created by 王旭 on 2020/10/4.
//

#import "CalculatorView.h"

@implementation CalculatorView

- (instancetype) initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    self.backgroundColor = [UIColor blackColor];
    _textLabel = [[UILabel alloc] init];
    [self addSubview:_textLabel];
    
    self.textLabel.textColor = [UIColor whiteColor];
    self.textLabel.font = [UIFont systemFontOfSize:36];
    self.textLabel.textAlignment = NSTextAlignmentRight;
    self.textLabel.numberOfLines = 1;
    
    _zeroButton = [[UIButton alloc] init];
    _oneButton = [[UIButton alloc] init];
    _twoButton = [[UIButton alloc] init];
    _threeButton = [[UIButton alloc] init];
    _fourButton = [[UIButton alloc] init];
    _fiveButton = [[UIButton alloc] init];
    _sixButton = [[UIButton alloc] init];
    _sevenButton = [[UIButton alloc] init];
    _eightButton = [[UIButton alloc] init];
    _nineButton = [[UIButton alloc] init];
    _spotButton = [[UIButton alloc] init];
    _ACButton = [[UIButton alloc] init];
    _rightButton = [[UIButton alloc] init];
    _leftButton = [[UIButton alloc] init];
    _jiaButton = [[UIButton alloc] init];
    _jianButton = [[UIButton alloc] init];
    _chengButton = [[UIButton alloc] init];
    _chuButton = [[UIButton alloc] init];
    _dengyuButton = [[UIButton alloc] init];
    
    [self addSubview:_zeroButton];
    [self addSubview:_oneButton];
    [self addSubview:_twoButton];
    [self addSubview:_threeButton];
    [self addSubview:_fourButton];
    [self addSubview:_fiveButton];
    [self addSubview:_sixButton];
    [self addSubview:_sevenButton];
    [self addSubview:_eightButton];
    [self addSubview:_nineButton];
    [self addSubview:_spotButton];
    [self addSubview:_ACButton];
    [self addSubview:_rightButton];
    [self addSubview:_leftButton];
    [self addSubview:_jiaButton];
    [self addSubview:_jianButton];
    [self addSubview:_chengButton];
    [self addSubview:_chuButton];
    [self addSubview:_dengyuButton];
    
    [_zeroButton setTitle:@"0" forState:UIControlStateNormal];
    [_oneButton setTitle:@"1" forState:UIControlStateNormal];
    [_twoButton setTitle:@"2" forState:UIControlStateNormal];
    [_threeButton setTitle:@"3" forState:UIControlStateNormal];
    [_fourButton setTitle:@"4" forState:UIControlStateNormal];
    [_fiveButton setTitle:@"5" forState:UIControlStateNormal];
    [_sixButton setTitle:@"6" forState:UIControlStateNormal];
    [_sevenButton setTitle:@"7" forState:UIControlStateNormal];
    [_eightButton setTitle:@"8" forState:UIControlStateNormal];
    [_nineButton setTitle:@"9" forState:UIControlStateNormal];
    [_spotButton setTitle:@"." forState:UIControlStateNormal];
    [_ACButton setTitle:@"AC" forState:UIControlStateNormal];
    [_leftButton setTitle:@"(" forState:UIControlStateNormal];
    [_rightButton setTitle:@")" forState:UIControlStateNormal];
    [_jiaButton setTitle:@"+" forState:UIControlStateNormal];
    [_jianButton setTitle:@"-" forState:UIControlStateNormal];
    [_chengButton setTitle:@"×" forState:UIControlStateNormal];
    [_chuButton setTitle:@"÷" forState:UIControlStateNormal];
    [_dengyuButton setTitle:@"=" forState:UIControlStateNormal];

    return self;
}
- (void) layoutSubviews {
    [_zeroButton setTintColor:[UIColor whiteColor]];
    _zeroButton.backgroundColor = [UIColor colorWithRed:0.2f green:0.2f blue:0.2f alpha:1.0f];
    _zeroButton.layer.cornerRadius = 40;
    _zeroButton.layer.masksToBounds = YES;
    _zeroButton.titleLabel.font = [UIFont systemFontOfSize:32];
    [_oneButton setTintColor:[UIColor whiteColor]];
    _oneButton.backgroundColor = [UIColor colorWithRed:0.2f green:0.2f blue:0.2f alpha:1.0f];
    _oneButton.layer.cornerRadius = 40;
    _oneButton.layer.masksToBounds = YES;
    _oneButton.titleLabel.font = [UIFont systemFontOfSize:32];
    [_twoButton setTintColor:[UIColor whiteColor]];
    _twoButton.backgroundColor = [UIColor colorWithRed:0.2f green:0.2f blue:0.2f alpha:1.0f];
    _twoButton.layer.cornerRadius = 40;
    _twoButton.layer.masksToBounds = YES;
    _twoButton.titleLabel.font = [UIFont systemFontOfSize:32];
    [_threeButton setTintColor:[UIColor whiteColor]];
    _threeButton.backgroundColor = [UIColor colorWithRed:0.2f green:0.2f blue:0.2f alpha:1.0f];
    _threeButton.layer.cornerRadius = 40;
    _threeButton.layer.masksToBounds = YES;
    _threeButton.titleLabel.font = [UIFont systemFontOfSize:32];
    [_fourButton setTintColor:[UIColor whiteColor]];
    _fourButton.backgroundColor = [UIColor colorWithRed:0.2f green:0.2f blue:0.2f alpha:1.0f];
    _fourButton.layer.cornerRadius = 40;
    _fourButton.layer.masksToBounds = YES;
    _fourButton.titleLabel.font = [UIFont systemFontOfSize:32];
    [_fiveButton setTintColor:[UIColor whiteColor]];
    _fiveButton.backgroundColor = [UIColor colorWithRed:0.2f green:0.2f blue:0.2f alpha:1.0f];
    _fiveButton.layer.cornerRadius = 40;
    _fiveButton.layer.masksToBounds = YES;
    _fiveButton.titleLabel.font = [UIFont systemFontOfSize:32];
    [_sixButton setTintColor:[UIColor whiteColor]];
    _sixButton.backgroundColor = [UIColor colorWithRed:0.2f green:0.2f blue:0.2f alpha:1.0f];
    _sixButton.layer.cornerRadius = 40;
    _sixButton.layer.masksToBounds = YES;
    _sixButton.titleLabel.font = [UIFont systemFontOfSize:32];
    [_sevenButton setTintColor:[UIColor whiteColor]];
    _sevenButton.backgroundColor = [UIColor colorWithRed:0.2f green:0.2f blue:0.2f alpha:1.0f];
    _sevenButton.layer.cornerRadius = 40;
    _sevenButton.layer.masksToBounds = YES;
    _sevenButton.titleLabel.font = [UIFont systemFontOfSize:32];
    [_eightButton setTintColor:[UIColor whiteColor]];
    _eightButton.backgroundColor = [UIColor colorWithRed:0.2f green:0.2f blue:0.2f alpha:1.0f];
    _eightButton.layer.cornerRadius = 40;
    _eightButton.layer.masksToBounds = YES;
    _eightButton.titleLabel.font = [UIFont systemFontOfSize:32];
    [_nineButton setTintColor:[UIColor whiteColor]];
    _nineButton.backgroundColor = [UIColor colorWithRed:0.2f green:0.2f blue:0.2f alpha:1.0f];
    _nineButton.layer.cornerRadius = 40;
    _nineButton.layer.masksToBounds = YES;
    _nineButton.titleLabel.font = [UIFont systemFontOfSize:32];
    [_spotButton setTintColor:[UIColor whiteColor]];
    _spotButton.backgroundColor = [UIColor colorWithRed:0.2f green:0.2f blue:0.2f alpha:1.0f];
    _spotButton.layer.cornerRadius = 40;
    _spotButton.layer.masksToBounds = YES;
    _spotButton.titleLabel.font = [UIFont systemFontOfSize:32];
    
    [_chuButton setTintColor:[UIColor whiteColor]];
    _chuButton.backgroundColor = [UIColor colorWithRed:0.96f green:0.53f blue:0.00f alpha:1.00f];
    _chuButton.layer.masksToBounds = YES;
    _chuButton.layer.cornerRadius = 40;
    _chuButton.titleLabel.font = [UIFont systemFontOfSize:32];
    [_chengButton setTintColor:[UIColor whiteColor]];
    _chengButton.backgroundColor = [UIColor colorWithRed:0.96f green:0.53f blue:0.00f alpha:1.00f];
    _chengButton.layer.masksToBounds = YES;
    _chengButton.layer.cornerRadius = 40;
    _chengButton.titleLabel.font = [UIFont systemFontOfSize:32];
    [_jiaButton setTintColor:[UIColor whiteColor]];
    _jiaButton.backgroundColor = [UIColor colorWithRed:0.96f green:0.53f blue:0.00f alpha:1.00f];
    _jiaButton.layer.masksToBounds = YES;
    _jiaButton.layer.cornerRadius = 40;
    _jiaButton.titleLabel.font = [UIFont systemFontOfSize:32];
    [_jianButton setTintColor:[UIColor whiteColor]];
    _jianButton.backgroundColor = [UIColor colorWithRed:0.96f green:0.53f blue:0.00f alpha:1.00f];
    _jianButton.layer.masksToBounds = YES;
    _jianButton.layer.cornerRadius = 40;
    _jianButton.titleLabel.font = [UIFont systemFontOfSize:32];
    [_dengyuButton setTintColor:[UIColor whiteColor]];
    _dengyuButton.backgroundColor = [UIColor colorWithRed:0.96f green:0.53f blue:0.00f alpha:1.00f];
    _dengyuButton.layer.masksToBounds = YES;
    _dengyuButton.layer.cornerRadius = 40;
    _dengyuButton.titleLabel.font = [UIFont systemFontOfSize:32];
    
    [_ACButton setTintColor:[UIColor blackColor]];;
    _ACButton.backgroundColor = [UIColor colorWithRed:0.65f green:0.65f blue:0.65f alpha:1.00f];
    _ACButton.layer.masksToBounds = YES;
    _ACButton.layer.cornerRadius = 40;
    _ACButton.titleLabel.font = [UIFont systemFontOfSize:32];
    [_rightButton setTintColor:[UIColor blackColor]];;
    _rightButton.backgroundColor = [UIColor colorWithRed:0.65f green:0.65f blue:0.65f alpha:1.00f];
    _rightButton.layer.masksToBounds = YES;
    _rightButton.layer.cornerRadius = 40;
    _rightButton.titleLabel.font = [UIFont systemFontOfSize:32];
    [_leftButton setTintColor:[UIColor blackColor]];;
    _leftButton.backgroundColor = [UIColor colorWithRed:0.65f green:0.65f blue:0.65f alpha:1.00f];
    _leftButton.layer.masksToBounds = YES;
    _leftButton.layer.cornerRadius = 40;
    _leftButton.titleLabel.font = [UIFont systemFontOfSize:32];
    
    [_textLabel setFrame:CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height/4)];
    [_ACButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo([UIScreen mainScreen].bounds.size.height*0.35);
            make.width.mas_equalTo([UIScreen mainScreen].bounds.size.width*0.2);
            make.height.mas_equalTo([UIScreen mainScreen].bounds.size.width*0.2);
            make.left.mas_equalTo([UIScreen mainScreen].bounds.size.width*0.04);
    }];
    [_leftButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo([UIScreen mainScreen].bounds.size.height*0.35);
            make.width.mas_equalTo([UIScreen mainScreen].bounds.size.width*0.2);
            make.height.mas_equalTo([UIScreen mainScreen].bounds.size.width*0.2);
            make.left.mas_equalTo(_ACButton.mas_right).offset([UIScreen mainScreen].bounds.size.width*0.04);
    }];
    [_rightButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo([UIScreen mainScreen].bounds.size.height*0.35);
            make.width.mas_equalTo([UIScreen mainScreen].bounds.size.width*0.2);
            make.height.mas_equalTo([UIScreen mainScreen].bounds.size.width*0.2);
            make.left.mas_equalTo(_leftButton.mas_right).offset([UIScreen mainScreen].bounds.size.width*0.04);
    }];
    [_chuButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo([UIScreen mainScreen].bounds.size.height*0.35);
            make.width.mas_equalTo([UIScreen mainScreen].bounds.size.width*0.2);
            make.height.mas_equalTo([UIScreen mainScreen].bounds.size.width*0.2);
            make.left.mas_equalTo(_rightButton.mas_right).offset([UIScreen mainScreen].bounds.size.width*0.04);
    }];
    [_sevenButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(_ACButton.mas_bottom).offset([UIScreen mainScreen].bounds.size.width*0.04);
            make.width.mas_equalTo([UIScreen mainScreen].bounds.size.width*0.2);
            make.height.mas_equalTo([UIScreen mainScreen].bounds.size.width*0.2);
            make.left.mas_equalTo([UIScreen mainScreen].bounds.size.width*0.04);
    }];
    [_eightButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(_leftButton.mas_bottom).offset([UIScreen mainScreen].bounds.size.width*0.04);
            make.width.mas_equalTo([UIScreen mainScreen].bounds.size.width*0.2);
            make.height.mas_equalTo([UIScreen mainScreen].bounds.size.width*0.2);
            make.left.mas_equalTo(_sevenButton.mas_right).offset([UIScreen mainScreen].bounds.size.width*0.04);
    }];
    [_nineButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(_rightButton.mas_bottom).offset([UIScreen mainScreen].bounds.size.width*0.04);
            make.width.mas_equalTo([UIScreen mainScreen].bounds.size.width*0.2);
            make.height.mas_equalTo([UIScreen mainScreen].bounds.size.width*0.2);
            make.left.mas_equalTo(_eightButton.mas_right).offset([UIScreen mainScreen].bounds.size.width*0.04);
    }];
    [_chengButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(_chuButton.mas_bottom).offset([UIScreen mainScreen].bounds.size.width*0.04);
            make.width.mas_equalTo([UIScreen mainScreen].bounds.size.width*0.2);
            make.height.mas_equalTo([UIScreen mainScreen].bounds.size.width*0.2);
            make.left.mas_equalTo(_nineButton.mas_right).offset([UIScreen mainScreen].bounds.size.width*0.04);
    }];
    [_fourButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(_sevenButton.mas_bottom).offset([UIScreen mainScreen].bounds.size.width*0.04);
            make.width.mas_equalTo([UIScreen mainScreen].bounds.size.width*0.2);
            make.height.mas_equalTo([UIScreen mainScreen].bounds.size.width*0.2);
            make.left.mas_equalTo([UIScreen mainScreen].bounds.size.width*0.04);
    }];
    [_fiveButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(_eightButton.mas_bottom).offset([UIScreen mainScreen].bounds.size.width*0.04);
            make.width.mas_equalTo([UIScreen mainScreen].bounds.size.width*0.2);
            make.height.mas_equalTo([UIScreen mainScreen].bounds.size.width*0.2);
            make.left.mas_equalTo(_fourButton.mas_right).offset([UIScreen mainScreen].bounds.size.width*0.04);
    }];
    [_sixButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(_nineButton.mas_bottom).offset([UIScreen mainScreen].bounds.size.width*0.04);
            make.width.mas_equalTo([UIScreen mainScreen].bounds.size.width*0.2);
            make.height.mas_equalTo([UIScreen mainScreen].bounds.size.width*0.2);
            make.left.mas_equalTo(_fiveButton.mas_right).offset([UIScreen mainScreen].bounds.size.width*0.04);
    }];
    [_jianButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(_chengButton.mas_bottom).offset([UIScreen mainScreen].bounds.size.width*0.04);
            make.width.mas_equalTo([UIScreen mainScreen].bounds.size.width*0.2);
            make.height.mas_equalTo([UIScreen mainScreen].bounds.size.width*0.2);
            make.left.mas_equalTo(_sixButton.mas_right).offset([UIScreen mainScreen].bounds.size.width*0.04);
    }];
    [_oneButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(_fourButton.mas_bottom).offset([UIScreen mainScreen].bounds.size.width*0.04);
            make.width.mas_equalTo([UIScreen mainScreen].bounds.size.width*0.2);
            make.height.mas_equalTo([UIScreen mainScreen].bounds.size.width*0.2);
            make.left.mas_equalTo([UIScreen mainScreen].bounds.size.width*0.04);
    }];
    [_twoButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(_fiveButton.mas_bottom).offset([UIScreen mainScreen].bounds.size.width*0.04);
            make.width.mas_equalTo([UIScreen mainScreen].bounds.size.width*0.2);
            make.height.mas_equalTo([UIScreen mainScreen].bounds.size.width*0.2);
            make.left.mas_equalTo(_oneButton.mas_right).offset([UIScreen mainScreen].bounds.size.width*0.04);
    }];
    [_threeButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(_sixButton.mas_bottom).offset([UIScreen mainScreen].bounds.size.width*0.04);
            make.width.mas_equalTo([UIScreen mainScreen].bounds.size.width*0.2);
            make.height.mas_equalTo([UIScreen mainScreen].bounds.size.width*0.2);
            make.left.mas_equalTo(_twoButton.mas_right).offset([UIScreen mainScreen].bounds.size.width*0.04);
    }];
    [_jiaButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(_jianButton.mas_bottom).offset([UIScreen mainScreen].bounds.size.width*0.04);
            make.width.mas_equalTo([UIScreen mainScreen].bounds.size.width*0.2);
            make.height.mas_equalTo([UIScreen mainScreen].bounds.size.width*0.2);
            make.left.mas_equalTo(_threeButton.mas_right).offset([UIScreen mainScreen].bounds.size.width*0.04);
    }];
    [_zeroButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(_oneButton.mas_bottom).offset([UIScreen mainScreen].bounds.size.width*0.04);
            make.width.mas_equalTo([UIScreen mainScreen].bounds.size.width*0.45);
            make.height.mas_equalTo([UIScreen mainScreen].bounds.size.width*0.2);
            make.left.mas_equalTo([UIScreen mainScreen].bounds.size.width*0.04);
    }];
    [_spotButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(_threeButton.mas_bottom).offset([UIScreen mainScreen].bounds.size.width*0.04);
            make.width.mas_equalTo([UIScreen mainScreen].bounds.size.width*0.2);
            make.height.mas_equalTo([UIScreen mainScreen].bounds.size.width*0.2);
            make.left.mas_equalTo(_zeroButton.mas_right).offset([UIScreen mainScreen].bounds.size.width*0.04);
    }];
    [_dengyuButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(_jiaButton.mas_bottom).offset([UIScreen mainScreen].bounds.size.width*0.04);
            make.width.mas_equalTo([UIScreen mainScreen].bounds.size.width*0.2);
            make.height.mas_equalTo([UIScreen mainScreen].bounds.size.width*0.2);
            make.left.mas_equalTo(_spotButton.mas_right).offset([UIScreen mainScreen].bounds.size.width*0.04);
    }];
}
@end
