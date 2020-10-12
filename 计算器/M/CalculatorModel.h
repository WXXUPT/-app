//
//  CalculatorModel.h
//  计算器
//
//  Created by 王旭 on 2020/10/8.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CalculatorModel : NSObject
typedef struct {
    char data[50];
    int top;
}Stack;//符号栈
typedef struct {
    double data[50];
    int top;
}StackNum;//数字栈
//- (Stack *)initStack;
- (void) pop:(Stack *)stack;
- (void) pushfu: (char)s: (Stack *)stack;
- (void) pushshu: (double)s: (StackNum *)stack;
- (BOOL)isEmpty:(Stack *)stack;
- (int) whoFirst:(char) c;
- (double) jieshu: (double)a : (double)b : (char)c;
- (double) end:(char *)s;
- (BOOL) piPei:(char *)s;
@end

NS_ASSUME_NONNULL_END
