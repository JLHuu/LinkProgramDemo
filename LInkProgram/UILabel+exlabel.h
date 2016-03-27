//
//  UILabel+exlabel.h
//  LInkProgram
//
//  Created by hujiele on 16/3/9.
//  Copyright © 2016年 JLHuu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (exlabel)
@property(nonatomic,copy,readonly)UILabel *(^labackgroundcolor)(UIColor *backgroundcolor);
@end
