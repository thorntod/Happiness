//
//  FaceView.h
//  Happiness
//
//  Created by David Thornton on 14/03/12.
//  Copyright (c) 2012 Digital Trends. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FaceView;

// ============== PROTOCOL =================
@protocol FaceViewDataSource 

- (float)smileForFaceView:(FaceView *)sender;

@end

// ============== INTERFACE =================
@interface FaceView : UIView

@property (nonatomic) CGFloat scale;

- (void)pinch:(UIPinchGestureRecognizer *)gesture;

@property (nonatomic, weak) IBOutlet id <FaceViewDataSource> datasource;

@end
