//
//  HappinessViewController.m
//  Happiness
//
//  Created by David Thornton on 14/03/12.
//  Copyright (c) 2012 Digital Trends. All rights reserved.
//

#import "HappinessViewController.h"
#import "FaceView.h"

@interface HappinessViewController ()

@property (nonatomic, weak) IBOutlet FaceView *faceview;

@end
// --jhgjhgsdjd
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
    
}


//-----------------------------------------------
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
    return YES;
}

@end
