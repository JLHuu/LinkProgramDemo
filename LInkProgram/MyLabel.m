//
//  MyLabel.m
//  LInkProgram
//
//  Created by hujiele on 16/3/5.
//  Copyright © 2016年 JLHuu. All rights reserved.
//

#import "MyLabel.h"

@implementation MyLabel
+(instancetype)labelinitWith:(void (^)(MyLabel *))initblock
{
    MyLabel *la = [[MyLabel alloc] init];
    if (initblock) {
        initblock(la);
    }
    return la;
}
-(MyLabel *)with
{
    return self;
}
-(MyLabel *(^)(CGRect))labelframe
{
    return ^MyLabel *(CGRect rect){
        self.frame = rect;
        return self;
    };
}

-(MyLabel *(^)(CGFloat))lacornerradius
{
    return ^MyLabel *(CGFloat a){
        self.layer.cornerRadius = a;
        self.layer.masksToBounds = YES;
        return self;
    };
}
-(MyLabel *(^)(NSString *, UIColor * ,CGFloat))lastring
{
    return ^MyLabel *(NSString *str ,UIColor *color,CGFloat fontsize){
        self.text = str;
        self.textColor = color;
        self.font = [UIFont systemFontOfSize:fontsize];
        self.numberOfLines = 0;
        self.textAlignment = NSTextAlignmentCenter;
        return self;
    };
}
@end
