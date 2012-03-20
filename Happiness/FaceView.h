//
//  FaceView.h
//  Happiness
//
//  Created by David Thornton on 14/03/12.
//  Copyright (c) 2012 Digital Trends. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FaceView : UIView

@property (nonatomic) CGFloat scale;

- (void)pinch:(UIPinchGestureRecognizer *)gesture;

@end
