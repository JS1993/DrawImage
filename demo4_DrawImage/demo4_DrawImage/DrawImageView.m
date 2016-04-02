//
//  DrawImageView.m
//  demo4_DrawImage
//
//  Created by  江苏 on 16/2/24.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "DrawImageView.h"

@implementation DrawImageView

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    CGContextRef* context=UIGraphicsGetCurrentContext();
    CGContextSaveGState(*context);
    UIBezierPath* roundRectPath=[UIBezierPath bezierPathWithRoundedRect:self.bounds cornerRadius:10];
    [roundRectPath addClip];
    UIImage * image=[UIImage imageNamed:@"8"];
    [image drawInRect:self.bounds];
    CGContextRestoreGState(*context);
}


@end
