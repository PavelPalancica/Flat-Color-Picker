//
//  PPFlatColorPicker.h
//  Flat Color Picker
//
//  Created by App Dev Wizard on 11/11/14.
//  Copyright (c) 2014 Pavel Palancica. All rights reserved.
//

#import <UIKit/UIKit.h>

//
// NOTES:
//
// 1. This class uses tags in the interval [MIN_BUTTON_TAG ... MIN_BUTTON_TAG + 19]
//
//    In case you need to use those tags for other UIView objects,
//    make sure you change the value of MIN_BUTTON_TAG
//
// 2. The size of the component is 310x250
//
//    Make sure you set its center coordinates to the center coordinates of its parent view
//    For example:
//
//        PPFlatColorPicker *colorPicker = [[PPFlatColorPicker alloc] init];
//
//        colorPicker.delegate = self;
//        colorPicker.center = self.view.center;
//
//        [self.view addSubview:colorPicker];
//
// 3. This class is dependent on the category UIColor+PPFlatUIColors, included in this project.
//
//    Check out the demo to see how to set the PPFlatColorPicker object properly
//    in order to appear or dissapear from the visible area of the device screen.
//
// 4. If you want to also support horizontal orientations,
//    make sure you customize the frames inside the corresponding methods.
//
//    Feel free to customize it according to your needs.
//

#define MIN_BUTTON_TAG 1000


@class PPFlatColorPicker;


@protocol PPFlatColorPickerDelegate <NSObject>

@required
- (void)flatColorPicker:(PPFlatColorPicker *)colorPicker
         didSelectColor:(UIColor *)color
               withName:(NSString *)name;

@end


@interface PPFlatColorPicker : UIView

@property (nonatomic, assign) id<PPFlatColorPickerDelegate> delegate;

@end
