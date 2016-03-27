//
//  UILabel+exlabel.m
//  LInkProgram
//
//  Created by hujiele on 16/3/9.
//  Copyright © 2016年 JLHuu. All rights reserved.
//

#import "UILabel+exlabel.h"

@implementation UILabel (exlabel)

-(UILabel *(^)(UIColor *))labackgroundcolor
{
    return ^UILabel *(UIColor *color){
        self.backgroundColor = color;
        return self;
    };
}
@end
