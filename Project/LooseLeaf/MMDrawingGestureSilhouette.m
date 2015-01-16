//
//  MMHandPathHelper.m
//  LooseLeaf
//
//  Created by Adam Wulf on 1/12/15.
//  Copyright (c) 2015 Milestone Made, LLC. All rights reserved.
//

#import "MMDrawingGestureSilhouette.h"

@implementation MMDrawingGestureSilhouette{
    UIBezierPath* pointerFingerPath;
    CGPoint currentOffset;
}

@synthesize pointerFingerPath;
@synthesize currentOffset;

-(id) init{
    if(self = [super init]){
        CGSize defSize = CGSizeMake(100, 227);
        defSize = CGSizeApplyAffineTransform(defSize, CGAffineTransformMakeScale(3, 3));
        [self scalePathToSize:defSize];
    }
    return self;
}

-(UIBezierPath*) pathForTouch:(UITouch*)touch{
    return pointerFingerPath;
}

-(CGPoint) locationOfIndexFingerInPathBoundsForTouch:(UITouch*)touch{
    return self.currentOffset;
}


-(void) scalePathToSize:(CGSize)sizeOfHand{
    
    CGRect handFrame = CGRectMake(0, 0, sizeOfHand.width, sizeOfHand.height);
    
    pointerFingerPath = UIBezierPath.bezierPath;
    [pointerFingerPath moveToPoint: CGPointMake(CGRectGetMinX(handFrame) + 0.28066 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.95491 * CGRectGetHeight(handFrame))];
    [pointerFingerPath addLineToPoint: CGPointMake(CGRectGetMinX(handFrame) + 0.77766 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.95491 * CGRectGetHeight(handFrame))];
    [pointerFingerPath addCurveToPoint: CGPointMake(CGRectGetMinX(handFrame) + 0.74352 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.86437 * CGRectGetHeight(handFrame)) controlPoint1: CGPointMake(CGRectGetMinX(handFrame) + 0.77766 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.95491 * CGRectGetHeight(handFrame)) controlPoint2: CGPointMake(CGRectGetMinX(handFrame) + 0.75490 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.88740 * CGRectGetHeight(handFrame))];
    [pointerFingerPath addCurveToPoint: CGPointMake(CGRectGetMinX(handFrame) + 0.66005 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.67666 * CGRectGetHeight(handFrame)) controlPoint1: CGPointMake(CGRectGetMinX(handFrame) + 0.73214 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.84129 * CGRectGetHeight(handFrame)) controlPoint2: CGPointMake(CGRectGetMinX(handFrame) + 0.66385 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.68329 * CGRectGetHeight(handFrame))];
    [pointerFingerPath addCurveToPoint: CGPointMake(CGRectGetMinX(handFrame) + 0.62212 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.57129 * CGRectGetHeight(handFrame)) controlPoint1: CGPointMake(CGRectGetMinX(handFrame) + 0.65625 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.67008 * CGRectGetHeight(handFrame)) controlPoint2: CGPointMake(CGRectGetMinX(handFrame) + 0.61452 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.58283 * CGRectGetHeight(handFrame))];
    [pointerFingerPath addCurveToPoint: CGPointMake(CGRectGetMinX(handFrame) + 0.66764 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.51041 * CGRectGetHeight(handFrame)) controlPoint1: CGPointMake(CGRectGetMinX(handFrame) + 0.62970 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.55980 * CGRectGetHeight(handFrame)) controlPoint2: CGPointMake(CGRectGetMinX(handFrame) + 0.64867 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.51865 * CGRectGetHeight(handFrame))];
    [pointerFingerPath addCurveToPoint: CGPointMake(CGRectGetMinX(handFrame) + 0.71696 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.45114 * CGRectGetHeight(handFrame)) controlPoint1: CGPointMake(CGRectGetMinX(handFrame) + 0.68661 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.50216 * CGRectGetHeight(handFrame)) controlPoint2: CGPointMake(CGRectGetMinX(handFrame) + 0.71317 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.47088 * CGRectGetHeight(handFrame))];
    [pointerFingerPath addCurveToPoint: CGPointMake(CGRectGetMinX(handFrame) + 0.72708 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.38420 * CGRectGetHeight(handFrame)) controlPoint1: CGPointMake(CGRectGetMinX(handFrame) + 0.72075 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.43136 * CGRectGetHeight(handFrame)) controlPoint2: CGPointMake(CGRectGetMinX(handFrame) + 0.72201 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.38749 * CGRectGetHeight(handFrame))];
    [pointerFingerPath addCurveToPoint: CGPointMake(CGRectGetMinX(handFrame) + 0.73214 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.36551 * CGRectGetHeight(handFrame)) controlPoint1: CGPointMake(CGRectGetMinX(handFrame) + 0.73214 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.38091 * CGRectGetHeight(handFrame)) controlPoint2: CGPointMake(CGRectGetMinX(handFrame) + 0.73972 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.37538 * CGRectGetHeight(handFrame))];
    [pointerFingerPath addCurveToPoint: CGPointMake(CGRectGetMinX(handFrame) + 0.70938 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.32051 * CGRectGetHeight(handFrame)) controlPoint1: CGPointMake(CGRectGetMinX(handFrame) + 0.72455 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.35564 * CGRectGetHeight(handFrame)) controlPoint2: CGPointMake(CGRectGetMinX(handFrame) + 0.72202 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.32823 * CGRectGetHeight(handFrame))];
    [pointerFingerPath addCurveToPoint: CGPointMake(CGRectGetMinX(handFrame) + 0.59809 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.29967 * CGRectGetHeight(handFrame)) controlPoint1: CGPointMake(CGRectGetMinX(handFrame) + 0.69672 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.31283 * CGRectGetHeight(handFrame)) controlPoint2: CGPointMake(CGRectGetMinX(handFrame) + 0.67396 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.27993 * CGRectGetHeight(handFrame))];
    [pointerFingerPath addCurveToPoint: CGPointMake(CGRectGetMinX(handFrame) + 0.49691 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.27335 * CGRectGetHeight(handFrame)) controlPoint1: CGPointMake(CGRectGetMinX(handFrame) + 0.59809 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.29967 * CGRectGetHeight(handFrame)) controlPoint2: CGPointMake(CGRectGetMinX(handFrame) + 0.58038 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.25795 * CGRectGetHeight(handFrame))];
    [pointerFingerPath addCurveToPoint: CGPointMake(CGRectGetMinX(handFrame) + 0.45138 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.22944 * CGRectGetHeight(handFrame)) controlPoint1: CGPointMake(CGRectGetMinX(handFrame) + 0.49691 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.27335 * CGRectGetHeight(handFrame)) controlPoint2: CGPointMake(CGRectGetMinX(handFrame) + 0.51715 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.23602 * CGRectGetHeight(handFrame))];
    [pointerFingerPath addCurveToPoint: CGPointMake(CGRectGetMinX(handFrame) + 0.34768 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.25576 * CGRectGetHeight(handFrame)) controlPoint1: CGPointMake(CGRectGetMinX(handFrame) + 0.38562 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.22286 * CGRectGetHeight(handFrame)) controlPoint2: CGPointMake(CGRectGetMinX(handFrame) + 0.34768 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.25576 * CGRectGetHeight(handFrame))];
    [pointerFingerPath addCurveToPoint: CGPointMake(CGRectGetMinX(handFrame) + 0.31227 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.23383 * CGRectGetHeight(handFrame)) controlPoint1: CGPointMake(CGRectGetMinX(handFrame) + 0.34768 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.25576 * CGRectGetHeight(handFrame)) controlPoint2: CGPointMake(CGRectGetMinX(handFrame) + 0.31986 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.24260 * CGRectGetHeight(handFrame))];
    [pointerFingerPath addCurveToPoint: CGPointMake(CGRectGetMinX(handFrame) + 0.27687 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.14052 * CGRectGetHeight(handFrame)) controlPoint1: CGPointMake(CGRectGetMinX(handFrame) + 0.30468 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.22505 * CGRectGetHeight(handFrame)) controlPoint2: CGPointMake(CGRectGetMinX(handFrame) + 0.28951 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.16469 * CGRectGetHeight(handFrame))];
    [pointerFingerPath addCurveToPoint: CGPointMake(CGRectGetMinX(handFrame) + 0.24397 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.04612 * CGRectGetHeight(handFrame)) controlPoint1: CGPointMake(CGRectGetMinX(handFrame) + 0.26421 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.11640 * CGRectGetHeight(handFrame)) controlPoint2: CGPointMake(CGRectGetMinX(handFrame) + 0.25409 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.05494 * CGRectGetHeight(handFrame))];
    [pointerFingerPath addCurveToPoint: CGPointMake(CGRectGetMinX(handFrame) + 0.19592 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.03186 * CGRectGetHeight(handFrame)) controlPoint1: CGPointMake(CGRectGetMinX(handFrame) + 0.23386 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.03735 * CGRectGetHeight(handFrame)) controlPoint2: CGPointMake(CGRectGetMinX(handFrame) + 0.22122 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.03077 * CGRectGetHeight(handFrame))];
    [pointerFingerPath addCurveToPoint: CGPointMake(CGRectGetMinX(handFrame) + 0.15292 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.05165 * CGRectGetHeight(handFrame)) controlPoint1: CGPointMake(CGRectGetMinX(handFrame) + 0.17063 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.03296 * CGRectGetHeight(handFrame)) controlPoint2: CGPointMake(CGRectGetMinX(handFrame) + 0.15797 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.04064 * CGRectGetHeight(handFrame))];
    [pointerFingerPath addCurveToPoint: CGPointMake(CGRectGetMinX(handFrame) + 0.15798 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.14162 * CGRectGetHeight(handFrame)) controlPoint1: CGPointMake(CGRectGetMinX(handFrame) + 0.14786 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.06261 * CGRectGetHeight(handFrame)) controlPoint2: CGPointMake(CGRectGetMinX(handFrame) + 0.15798 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.13613 * CGRectGetHeight(handFrame))];
    [pointerFingerPath addCurveToPoint: CGPointMake(CGRectGetMinX(handFrame) + 0.16810 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.18882 * CGRectGetHeight(handFrame)) controlPoint1: CGPointMake(CGRectGetMinX(handFrame) + 0.15798 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.14710 * CGRectGetHeight(handFrame)) controlPoint2: CGPointMake(CGRectGetMinX(handFrame) + 0.16304 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.17895 * CGRectGetHeight(handFrame))];
    [pointerFingerPath addCurveToPoint: CGPointMake(CGRectGetMinX(handFrame) + 0.19086 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.27335 * CGRectGetHeight(handFrame)) controlPoint1: CGPointMake(CGRectGetMinX(handFrame) + 0.17316 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.19869 * CGRectGetHeight(handFrame)) controlPoint2: CGPointMake(CGRectGetMinX(handFrame) + 0.19338 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.26672 * CGRectGetHeight(handFrame))];
    [pointerFingerPath addCurveToPoint: CGPointMake(CGRectGetMinX(handFrame) + 0.19340 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.33700 * CGRectGetHeight(handFrame)) controlPoint1: CGPointMake(CGRectGetMinX(handFrame) + 0.18833 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.27993 * CGRectGetHeight(handFrame)) controlPoint2: CGPointMake(CGRectGetMinX(handFrame) + 0.19592 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.32713 * CGRectGetHeight(handFrame))];
    [pointerFingerPath addCurveToPoint: CGPointMake(CGRectGetMinX(handFrame) + 0.20098 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.40833 * CGRectGetHeight(handFrame)) controlPoint1: CGPointMake(CGRectGetMinX(handFrame) + 0.19086 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.34687 * CGRectGetHeight(handFrame)) controlPoint2: CGPointMake(CGRectGetMinX(handFrame) + 0.19845 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.39407 * CGRectGetHeight(handFrame))];
    [pointerFingerPath addCurveToPoint: CGPointMake(CGRectGetMinX(handFrame) + 0.22627 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.48514 * CGRectGetHeight(handFrame)) controlPoint1: CGPointMake(CGRectGetMinX(handFrame) + 0.20350 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.42258 * CGRectGetHeight(handFrame)) controlPoint2: CGPointMake(CGRectGetMinX(handFrame) + 0.22374 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.47527 * CGRectGetHeight(handFrame))];
    [pointerFingerPath addCurveToPoint: CGPointMake(CGRectGetMinX(handFrame) + 0.24904 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.54555 * CGRectGetHeight(handFrame)) controlPoint1: CGPointMake(CGRectGetMinX(handFrame) + 0.22881 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.49505 * CGRectGetHeight(handFrame)) controlPoint2: CGPointMake(CGRectGetMinX(handFrame) + 0.24904 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.53563 * CGRectGetHeight(handFrame))];
    [pointerFingerPath addCurveToPoint: CGPointMake(CGRectGetMinX(handFrame) + 0.26928 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.64648 * CGRectGetHeight(handFrame)) controlPoint1: CGPointMake(CGRectGetMinX(handFrame) + 0.24904 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.55541 * CGRectGetHeight(handFrame)) controlPoint2: CGPointMake(CGRectGetMinX(handFrame) + 0.26168 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.62235 * CGRectGetHeight(handFrame))];
    [pointerFingerPath addCurveToPoint: CGPointMake(CGRectGetMinX(handFrame) + 0.29457 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.80563 * CGRectGetHeight(handFrame)) controlPoint1: CGPointMake(CGRectGetMinX(handFrame) + 0.27687 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.67065 * CGRectGetHeight(handFrame)) controlPoint2: CGPointMake(CGRectGetMinX(handFrame) + 0.29962 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.79247 * CGRectGetHeight(handFrame))];
    [pointerFingerPath addCurveToPoint: CGPointMake(CGRectGetMinX(handFrame) + 0.28066 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.95491 * CGRectGetHeight(handFrame)) controlPoint1: CGPointMake(CGRectGetMinX(handFrame) + 0.28951 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.81884 * CGRectGetHeight(handFrame)) controlPoint2: CGPointMake(CGRectGetMinX(handFrame) + 0.27939 * CGRectGetWidth(handFrame), CGRectGetMinY(handFrame) + 0.93627 * CGRectGetHeight(handFrame))];
    [pointerFingerPath closePath];
    
    currentOffset = CGPointMake(21.0 / 100.0 * handFrame.size.width, 12.0 / 228.0 * handFrame.size.height);
}

@end
