//
//  PPFlatColorPicker.m
//  Flat Color Picker
//
//  Created by App Dev Wizard on 11/11/14.
//  Copyright (c) 2014 Pavel Palancica. All rights reserved.
//

#import "PPFlatColorPicker.h"

#import "UIColor+PPFlatUIColors.h"


@implementation PPFlatColorPicker

- (instancetype)init
{
    CGRect frame = CGRectZero;
    
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
        
    } else {
        
    }
    
    frame = CGRectMake(0, 0, 310, 250);
    
    if ((self = [super initWithFrame:frame])) {

        self.backgroundColor = [UIColor colorWithWhite:0.8f alpha:0.5f];
        self.layer.cornerRadius = 2.0f;
        
        NSInteger numberOfLines = 4;
        NSInteger numberOfColumns = 5;
        
        UIButton *colorButton = nil;
        NSString *colorName = nil;
        
        for (NSInteger i = 0; i < numberOfLines; i++) {
         
            for (NSInteger j = 0; j < numberOfColumns; j++) {
                
                colorButton = [UIButton buttonWithType:UIButtonTypeCustom];
                colorButton.tag = i * numberOfColumns + j + MIN_BUTTON_TAG;

                colorButton.backgroundColor = [UIColor orangeColor];
                colorName = [UIColor flatUIColorNames][i * numberOfColumns + j];
                colorButton.backgroundColor = [UIColor flatUIColorWithName:colorName];
                colorButton.frame = CGRectMake(j * 60 + 10, i * 60 + 10, 50, 50);
                colorButton.layer.cornerRadius = 50 / 2.f;
                
                [colorButton addTarget:self
                                action:@selector(onColorSelected:)
                      forControlEvents:UIControlEventTouchUpInside];
                
                [self addSubview:colorButton];
            }
        }
    }
    
    return self;
}

- (void)onColorSelected:(UIButton *)button
{
    if ([self.delegate respondsToSelector:@selector(flatColorPicker:didSelectColor:withName:)]) {
        
        NSString *colorName = [UIColor flatUIColorNames][button.tag - MIN_BUTTON_TAG];
        UIColor *color = [UIColor flatUIColorWithName:colorName];

        [self.delegate flatColorPicker:self
                        didSelectColor:color
                              withName:colorName];
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
