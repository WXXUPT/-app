//
//  CalculatorModel.m
//  计算器
//
//  Created by 王旭 on 2020/10/8.
//

#import "CalculatorModel.h"

@implementation CalculatorModel
/*
(1).操作数压到结果字符串；操作符压入操作符栈；
(2).当待压入操作符栈的操作符优先级大于栈顶操作符时，直接入栈；
      若小于等于栈顶操作符的话，栈顶操作符加入到结果字符串后面，直到遇到前括号‘（’或者栈顶操作符优先级小于待入栈操作符，最后待入栈操作符入栈；
(3).如果时前‘（’直接入栈；
(4).如果是后‘）’，将栈中操作符依次弹出并压入结果字符串，并弹出前‘(’不加入结果字符串；
 */
- (void) pop:(Stack *)stack {
    stack->top = stack->top-1;
}
- (void) pushfu: (char)s: (Stack *)stack {
    stack->top++;
    stack->data[stack->top] = s;
}
- (void) pushshu: (double)s: (StackNum *)stack {
    stack->top++;
    stack->data[stack->top] = s;
}
//判断栈空
- (BOOL)isEmpty:(Stack *)stack {
    if (stack->top == -1) {
        return true;
    } else {
        return false;
    }
}
//运算符优先级
- (int) whoFirst:(char) c {
    if (c == '('){
        return 0;
    } else if (c == '+' || c == '-') {
        return 1;
    } else if (c == '*' || c == '/') {
        return 2;
    }
    return 0;
}
- (double) jieshu: (double)a : (double)b : (char)c {
    if (c == '+')
        return a + b;
    if (c == '-')
        return a - b;
    if (c == '*')
        return a * b;
    if (c == '/')
        return a / b;
    return 0;
}
- (double) end:(char *)s {
    char ans[500];
    int k = 0;
    int len = strlen(s);
    s[len] = '=';
    
    Stack *fuhao = malloc(sizeof(Stack));
    fuhao->top = -1;
    
    StackNum *shu = malloc(sizeof(StackNum));
    shu->top = -1;
    
    for (int i = 0; i <= len; i++) {
        if ((s[i]>='0' && s[i] <= '9') || s[i] =='.'){
                ans[k++] = s[i];
        } else if(s[i] == '+' || s[i] == '-' || s[i] == '*' || s[i] == '/') {
            ans[k++] = '#';
            if ([self isEmpty:fuhao]) {
                    [self pushfu:s[i] :fuhao];
            } else {
                while (![self isEmpty:fuhao] && [self whoFirst:fuhao->data[fuhao->top]] >=  [self whoFirst:s[i]]) {
                    ans[k++] = fuhao->data[fuhao->top];
                    fuhao->top--;
                    }
                [self pushfu:s[i] :fuhao];
            }
        } else if (s[i] == '(') {
            [self pushfu:s[i] :fuhao];
        } else if(s[i]==')') {
            while(fuhao->data[fuhao->top] != '(') {
                ans[k++] = fuhao->data[fuhao->top];
                fuhao->top--;
            }
            fuhao->top--;;
        } else if(s[i] == '=') {
            while(![self isEmpty:fuhao]) {
                ans[k++] = fuhao->data[fuhao->top];
                fuhao->top--;
            }
        }
    }
    puts(ans);
    int pos = 0;
    for(int i = 0; i < k; i++) {
        pos = 0;
        if (ans[i] >= '0' && ans[i] <= '9') {
            for(int j = i; j < k; j++) {
                if ((ans[j] >= '0' && ans[j] <= '9') || ans[j] == '.') {
                    pos++;
                } else {
                    break;
                }
            }
            double h = 1, sum1 = 0, sum2 = 0;
            for(int j = i + pos - 1; j >= i; j--) {
                if (ans[j] >= '0' && ans[j] <= '9') {
                    sum1 += (ans[j] - '0') * h;
                    h *= 10;
                } else if (ans[j] == '.') {
                    sum1 /= h;
                    h = 1;
                    sum2 += sum1;
                    sum1 = 0;
                }
            }
            sum2 += sum1;
            [self pushshu:sum2 :shu];
            i += pos - 1;
        } else if (ans[i] == '+'|| ans[i] == '-'|| ans[i] == '*'|| ans[i] == '/') {
            double x = shu->data[shu->top];
            shu->top--;
            double y = shu->data[shu->top];
            shu->top--;
            shu->top++;
            shu->data[shu->top] = [self jieshu :y :x :ans[i] ];
        }
    }
    return shu->data[shu->top];
}
- (BOOL) piPei: (char *)s {
    int len = strlen(s);
    for (int i = 0; i<len; i++) {
          if(s[i]=='('&&s[i+1]==')')
              return false;
      }
    Stack *stack = malloc(sizeof(Stack));
    stack->top = -1;
    for (int i = 0; i<len; i++) {
        if (s[i] == '(') {
            stack->top++;
        }
        if (s[i] == ')') {
            if(stack->top == -1)
                return false;
            stack->top--;
        }
    }
    if (stack->top == -1) {
        return true;
    }
    else {
        return false;
    }
    return false;
}
@end
