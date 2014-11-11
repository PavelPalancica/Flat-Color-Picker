//
//  ViewController.m
//  Flat Color Picker
//
//  Created by App Dev Wizard on 11/11/14.
//  Copyright (c) 2014 Pavel Palancica. All rights reserved.
//

#import "ViewController.h"

#import "PPFlatColorPicker.h"


@interface ViewController () <PPFlatColorPickerDelegate>

@property (nonatomic, strong) PPFlatColorPicker *colorPicker;

@end


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.colorPicker = [[PPFlatColorPicker alloc] init];
    
    self.colorPicker.delegate = self;
    self.colorPicker.center = self.view.center;
    
    [self.view addSubview:self.colorPicker];
    
    self.colorPicker.frame = CGRectMake(self.colorPicker.frame.origin.x,
                                        self.view.bounds.size.height,
                                        self.colorPicker.frame.size.width,
                                        self.colorPicker.frame.size.height);
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [UIView animateWithDuration:0.5f animations:^{
       
        self.colorPicker.frame = CGRectMake(self.colorPicker.frame.origin.x,
                                            self.view.bounds.size.height - self.colorPicker.frame.size.height,
                                            self.colorPicker.frame.size.width,
                                            self.colorPicker.frame.size.height);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mak - PPFlatColorPickerDelegate

- (void)flatColorPicker:(PPFlatColorPicker *)colorPicker didSelectColor:(UIColor *)color withName:(NSString *)name
{
    NSLog(@"Color Name: %@", name);
    NSLog(@"Color: %@", color);
    
    [UIView animateWithDuration:0.5f animations:^{
        
        self.colorPicker.frame = CGRectMake(self.colorPicker.frame.origin.x,
                                            self.view.bounds.size.height + self.colorPicker.frame.size.height,
                                            self.colorPicker.frame.size.width,
                                            self.colorPicker.frame.size.height);
    }];
}

@end
