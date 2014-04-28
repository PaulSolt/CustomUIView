//
//  LabelMadness.m
//  CustomView
//
//  Created by Paul Solt on 4/28/14.
//  Copyright (c) 2014 Paul Solt. All rights reserved.
//

#import "LabelMadness.h"

@implementation LabelMadness

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        NSLog(@"LabelMadness.initWithFrame:");
        
        // Customize logic
    }
    return self;
}

- (IBAction)buttonPressed:(id)sender {
    NSLog(@"ButtonPRessed");
}


@end
