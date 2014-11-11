//
//  UIColor+PPFlatUIColors.m
//  Flat UI Colors
//
//  Created by App Dev Wizard on 10/29/14.
//  Copyright (c) 2014 Pavel Palancica. All rights reserved.
//

#import "UIColor+PPFlatUIColors.h"


@implementation UIColor (PPFlatUIColors)

+ (NSArray *)flatUIColorNames
{
    static dispatch_once_t onceToken;
    static NSArray *flatUIColorNames = nil;
    
    dispatch_once(&onceToken, ^{
        
        flatUIColorNames = @[
                             @"turquoise",
                             @"greenSea",
                             @"emerald",
                             @"nephritis",
                             @"peterRiver",
                             @"belizeHole",
                             @"amethyst",
                             @"wisteria",
                             @"wetAsphalt",
                             @"midnightBlue",
                             @"sunFlower",
                             @"orange",
                             @"carrot",
                             @"pumpkin",
                             @"alizarin",
                             @"pomegranate",
                             @"clouds",
                             @"silver",
                             @"concrete",
                             @"asbestos"
                             ];
    });
    
    return flatUIColorNames;
}

+ (NSDictionary *)flatUIColors
{
    static dispatch_once_t onceToken;
    static NSDictionary *flatUIColors = nil;
    
    dispatch_once(&onceToken, ^{
        
        flatUIColors = @{
                        @"turquoise": [[self class] turquoiseFlatUIColor],
                        @"greenSea": [[self class] greenSeaFlatUIColor],
                        @"emerald": [[self class] emeraldFlatUIColor],
                        @"nephritis": [[self class] nephritisFlatUIColor],
                        @"peterRiver": [[self class] peterRiverFlatUIColor],
                        @"belizeHole": [[self class] belizeHoleFlatUIColor],
                        @"amethyst": [[self class] amethystFlatUIColor],
                        @"wisteria": [[self class] wisteriaFlatUIColor],
                        @"wetAsphalt": [[self class] wetAsphaltFlatUIColor],
                        @"midnightBlue": [[self class] midnightBlueFlatUIColor],
                        @"sunFlower": [[self class] sunFlowerFlatUIColor],
                        @"orange": [[self class] orangeColor],
                        @"carrot": [[self class] carrotFlatUIColor],
                        @"pumpkin": [[self class] pumpkinFlatUIColor],
                        @"alizarin": [[self class] alizarinFlatUIColor],
                        @"pomegranate": [[self class] pomegranateFlatUIColor],
                        @"clouds": [[self class] cloudsFlatUIColor],
                        @"silver": [[self class] silverFlatUIColor],
                        @"concrete": [[self class] concreteFlatUIColor],
                        @"asbestos": [[self class] asbestosFlatUIColor]
                        };
    });
    
    return flatUIColors;
}

+ (UIColor *)flatUIColorWithName:(NSString *)name
{
    UIColor *color = nil;
    
    if ([[[self class] flatUIColorNames] indexOfObject:name] != NSNotFound)
    {
        color = [[self class] flatUIColors][name];
    }
    
    return color;
}

+ (UIColor *)turquoiseFlatUIColor
{
    return [UIColor colorWithRed:26.0f / 255.0f
                           green:188.0f / 255.0f
                            blue:156.0f / 255.0f
                           alpha:1.0f];
}

+ (UIColor *)greenSeaFlatUIColor
{
    return [UIColor colorWithRed:22.0f / 255.0f
                           green:160.0f / 255.0f
                            blue:133.0f / 255.0f
                           alpha:1.0f];
}

+ (UIColor *)emeraldFlatUIColor
{
    return [UIColor colorWithRed:46.0f / 255.0f
                           green:204.0f / 255.0f
                            blue:113.0f / 255.0f
                           alpha:1.0f];
}

+ (UIColor *)nephritisFlatUIColor
{
    return [UIColor colorWithRed:39.0f / 255.0f
                           green:174.0f / 255.0f
                            blue:96.0f / 255.0f
                           alpha:1.0f];
}

+ (UIColor *)peterRiverFlatUIColor
{
    return [UIColor colorWithRed:52.0f / 255.0f
                           green:152.0f / 255.0f
                            blue:219.0f / 255.0f
                           alpha:1.0f];
}

+ (UIColor *)belizeHoleFlatUIColor
{
    return [UIColor colorWithRed:41.0f / 255.0f
                           green:128.0f / 255.0f
                            blue:185.0f / 255.0f
                           alpha:1.0f];
}

+ (UIColor *)amethystFlatUIColor
{
    return [UIColor colorWithRed:155.0f / 255.0f
                           green:89.0f / 255.0f
                            blue:182.0f / 255.0f
                           alpha:1.0f];
}

+ (UIColor *)wisteriaFlatUIColor
{
    return [UIColor colorWithRed:142.0f / 255.0f
                           green:68.0f / 255.0f
                            blue:173.0f / 255.0f
                           alpha:1.0f];
}

+ (UIColor *)wetAsphaltFlatUIColor
{
    return [UIColor colorWithRed:52.0f / 255.0f
                           green:73.0f / 255.0f
                            blue:94.0f / 255.0f
                           alpha:1.0f];
}

+ (UIColor *)midnightBlueFlatUIColor
{
    return [UIColor colorWithRed:44.0f / 255.0f
                           green:62.0f / 255.0f
                            blue:80.0f / 255.0f
                           alpha:1.0f];
}

+ (UIColor *)sunFlowerFlatUIColor
{
    return [UIColor colorWithRed:241.0f / 255.0f
                           green:196.0f / 255.0f
                            blue:15.0f / 255.0f
                           alpha:1.0f];
}

+ (UIColor *)orangeFlatUIColor
{
    return [UIColor colorWithRed:243.0f / 255.0f
                           green:156.0f / 255.0f
                            blue:18.0f / 255.0f
                           alpha:1.0f];
}

+ (UIColor *)carrotFlatUIColor
{
    return [UIColor colorWithRed:230.0f / 255.0f
                           green:126.0f / 255.0f
                            blue:34.0f / 255.0f
                           alpha:1.0f];
}

+ (UIColor *)pumpkinFlatUIColor
{
    return [UIColor colorWithRed:211.0f / 255.0f
                           green:84.0f / 255.0f
                            blue:0.0f / 255.0f
                           alpha:1.0f];
}

+ (UIColor *)alizarinFlatUIColor
{
    return [UIColor colorWithRed:231.0f / 255.0f
                           green:76.0f / 255.0f
                            blue:60.0f / 255.0f
                           alpha:1.0f];
}

+ (UIColor *)pomegranateFlatUIColor
{
    return [UIColor colorWithRed:192.0f / 255.0f
                           green:57.0f / 255.0f
                            blue:43.0f / 255.0f
                           alpha:1.0f];
}

+ (UIColor *)cloudsFlatUIColor
{
    return [UIColor colorWithRed:236.0f / 255.0f
                           green:240.0f / 255.0f
                            blue:241.0f / 255.0f
                           alpha:1.0f];
}

+ (UIColor *)silverFlatUIColor
{
    return [UIColor colorWithRed:189.0f / 255.0f
                           green:195.0f / 255.0f
                            blue:199.0f / 255.0f
                           alpha:1.0f];
}

+ (UIColor *)concreteFlatUIColor
{
    return [UIColor colorWithRed:149.0f / 255.0f
                           green:165.0f / 255.0f
                            blue:166.0f / 255.0f
                           alpha:1.0f];
}

+ (UIColor *)asbestosFlatUIColor
{
    return [UIColor colorWithRed:127.0f / 255.0f
                           green:140.0f / 255.0f
                            blue:141.0f / 255.0f
                           alpha:1.0f];
}

@end
