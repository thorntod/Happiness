//
//  HappinessViewController.m
//  Happiness
//
//  Created by David Thornton on 14/03/12.
//  Copyright (c) 2012 Digital Trends. All rights reserved.
//

#import "HappinessViewController.h"
#import "FaceView.h"

// ======================= INTERFACE ==========================
@interface HappinessViewController () <FaceViewDataSource>

@property (nonatomic, weak) IBOutlet FaceView *faceview;

@end


// ======================= IMPLEMENTATION ==========================
@implementation HappinessViewController

@synthesize happiness = _happiness;
@synthesize faceview = _faceview;

//-----------------------------------------------
- (void)setHappiness:(int)happiness {
    _happiness = happiness;
    [self.faceview setNeedsDisplay];  //vener call drawRect directly
    
}

//-------------------------------------------
- (void)setFaceview:(FaceView *)faceview {
    _faceview = faceview;
    [self.faceview addGestureRecognizer:[[UIPinchGestureRecognizer alloc] initWithTarget:self.faceview action:@selector(pinch:)]];
    [self.faceview addGestureRecognizer:[[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handleHappinessGesture:)]];
    self.faceview.datasource = self;
    
}

- (void)handleHappinessGesture:(UIPanGestureRecognizer *)gesture {
    
    if ((gesture.state == UIGestureRecognizerStateChanged) ||
        (gesture.state == UIGestureRecognizerStateEnded)){
        CGPoint translation = [gesture translationInView:self.faceview];
        self.happiness -= translation.y /2;
        [gesture setTranslation:CGPointZero inView:self.faceview];
    }
    
}
//-----------------------------------------------
- (float)smileForFaceView:(FaceView *)sender {
    
    return (self.happiness - 50) / 50.0;
}

//-----------------------------------------------
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
    return YES;
}

@end
