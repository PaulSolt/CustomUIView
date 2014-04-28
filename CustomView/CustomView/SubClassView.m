//
//  SubClassView.m
//  CustomView
//
//  Created by Paul Solt on 4/28/14.
//  Copyright (c) 2014 Paul Solt. All rights reserved.
//

#import "SubClassView.h"

@interface SubClassView()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UISwitch *onSwitch;

@end

@implementation SubClassView

// Note: You can customize the behavior after calling the super method

// Called when loading programatically
- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if(self) {
        // Call a common method to setup gesture and state of UIView
        [self setup];
    }
    return self;
}

// Called when loading from embedded .xib UIView
- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if(self) {
        // Call a common method to setup gesture and state of UIView
        [self setup];
    }
    return self;
}

- (void)setup {
    // Add a gesture to show that touch input works on full bounds of UIView
    UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePanGesture:)];
    [self addGestureRecognizer:panGesture];
}

- (void)handlePanGesture:(UIPanGestureRecognizer *)gesture {
    NSLog(@"Pan: %@", NSStringFromCGPoint([gesture locationInView:gesture.view]));
}
- (IBAction)switchChanged:(UISwitch *)sender {
    NSLog(@"Switch: %d", sender.on);
}

@end
