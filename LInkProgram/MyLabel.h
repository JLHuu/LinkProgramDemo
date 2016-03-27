//
//  MyLabel.h
//  LInkProgram
//
//  Created by hujiele on 16/3/5.
//  Copyright © 2016年 JLHuu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyLabel : UILabel
@property(nonatomic,copy,readonly)MyLabel *(^labelframe)(CGRect frame);
@property(nonatomic,copy,readonly)MyLabel *(^lacornerradius)(CGFloat cornerradius);
@property(nonatomic,copy,readonly)MyLabel *(^lastring)(NSString *str,UIColor *strcolor,CGFloat fontsize);
@property(nonatomic,weak,readonly)MyLabel *with;
// 写了一个类方法来创建实例
+(instancetype)labelinitWith:(void (^)(MyLabel *la)) initblock;
@end
