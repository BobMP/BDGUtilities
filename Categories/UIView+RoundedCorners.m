//
//  UIView+RoundedCorners.m
//  CalendarCube
//
//  Created by Bob de Graaf on 18-02-14.
//  Copyright (c) 2014 MobilePioneers. All rights reserved.
//

#import "UIView+RoundedCorners.h"

@implementation UIView (RoundedCorners)

-(void)roundCorners:(UIRectCorner)corners radius:(float)radius
{
    UIBezierPath* rounded = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:corners cornerRadii:CGSizeMake(radius, radius)];
    CAShapeLayer* shape = [[CAShapeLayer alloc] init];
    [shape setPath:rounded.CGPath];
    self.layer.mask = shape;
}

@end
