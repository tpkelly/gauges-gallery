//
//  ViewController.m
//  GaugeGallery
//
//  Created by Colin Eberhardt on 20/08/2013.
//  Copyright (c) 2013 ShinobiControls. All rights reserved.

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface ViewController ()

@end

#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

@implementation ViewController
{
    SGaugeRadial* gauge;
    
    SGaugeLinear *verticalLinearGauge;
    
    UIColor *red;
    UIColor *orange;
    UIColor *green;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //Common color schemes
    green = UIColorFromRGB(0x09BF5D);
    orange = UIColorFromRGB(0xFFB637);
    red = UIColorFromRGB(0xF5474F);
    
    [self addGaugeOne];
    
    [self addGaugeTwo];
    
    [self addGaugeThree];
    
    [self addGaugeFour];
}
- (void)addGaugeThree {
    
    
    gauge = [[SGaugeRadial alloc] initWithFrame:CGRectOffset(CGRectMake(0, 0, 250, 250), 700, 40)
                                    fromMinimum:@0 toMaximum:@1];
    gauge.qualitativeRanges = @[
                                [SGaugeQualitativeRange rangeWithMinimum:@0 withMaximum:@0.75 withColor:green],
                                [SGaugeQualitativeRange rangeWithMinimum:@0.75 withMaximum:@0.99 withColor:orange],
                                [SGaugeQualitativeRange rangeWithMinimum:@0.99 withMaximum:nil withColor:red]];
    
    gauge.backgroundColor = [UIColor blackColor];
    [self.view addSubview:gauge];
        
    // tick
    gauge.axis.majorTickFrequency = 0.250f;
    gauge.axis.minorTickFrequency = 0.025f;
    
    NSNumberFormatter* formatter = [NSNumberFormatter new];
    formatter.numberStyle = NSNumberFormatterPercentStyle;
    gauge.axis.formatter = formatter;
    
    // sweep
    gauge.arcAngleStart = -M_PI * 0.6;
    gauge.arcAngleEnd = M_PI * 0.6;
    gauge.style.borderIsFullCircle = NO;
    
    // qual ranges
    gauge.style.qualitativeInnerPosition = 0.9f;
    gauge.style.qualitativeOuterPosition = 0.95f;
    gauge.style.qualitativeRangeBorderWidth = 0.0f;
    
    // background color
    gauge.style.innerBackgroundColor = [UIColor clearColor];
    gauge.style.outerBackgroundColor = [UIColor clearColor];
    
    
    // needle
    gauge.style.needleColor = UIColorFromRGB(0x00A0D7);
    gauge.style.needleWidth = 7.0f;
    gauge.style.needleLength = 0.75;
    gauge.style.needleBorderWidth = 0.0f;
    
    // knob
    gauge.style.knobColor = UIColorFromRGB(0x00A0D7);
    gauge.style.knobBorderWidth = 0.0f;
    gauge.style.knobRadius = 7.0f;
    
    // tick location
    gauge.style.tickBaselinePosition = 0.88f;
    
    // tick styling
    gauge.style.majorTickColor = [UIColor whiteColor];
    gauge.style.majorTickSize = CGSizeMake(1, 8);
    gauge.style.minorTickSize = CGSizeMake(1, 6);
    gauge.style.minorTickColor = [UIColor whiteColor];
    gauge.style.tickMarkAlignment = SGaugeTickAlignTop;
    
    // glass
    gauge.style.showGlassEffect = NO;
    
    // labels
    gauge.style.tickLabelOffsetFromBaseline = -30.0f;
    gauge.style.tickLabelColor = [UIColor whiteColor];
    gauge.style.tickLabelsRotate = NO;
    gauge.style.tickLabelFont = [UIFont fontWithName:gauge.style.tickLabelFont.fontName size:15.0f];
    
    // bezel
    gauge.style.bevelWidth = 0.0f;
    
    
    // value
    gauge.value = 0.79;
    
}

- (void)addGaugeTwo {
    
    
    gauge = [[SGaugeRadial alloc] initWithFrame:CGRectOffset(CGRectMake(0, 0, 250, 250), 350, 40)
                                    fromMinimum:@100 toMaximum:@200];
    gauge.qualitativeRanges = @[
                                [SGaugeQualitativeRange rangeWithMinimum:@100 withMaximum:@120 withColor:UIColorFromRGB(0x008120)],
                                [SGaugeQualitativeRange rangeWithMinimum:@120 withMaximum:@140 withColor:UIColorFromRGB(0x8CCE4B)],
                                [SGaugeQualitativeRange rangeWithMinimum:@140 withMaximum:@160 withColor:UIColorFromRGB(0xFFFF4A)],
                                [SGaugeQualitativeRange rangeWithMinimum:@160 withMaximum:@180 withColor:UIColorFromRGB(0xFFA32E)],
                                [SGaugeQualitativeRange rangeWithMinimum:@180 withMaximum:@200 withColor:UIColorFromRGB(0xFF0009)]];
    
    gauge.backgroundColor = UIColorFromRGB(0x493E88);
    [self.view addSubview:gauge];
    
    // tick
    gauge.axis.majorTickFrequency = 10.0f;
    gauge.axis.minorTickFrequency = 2.0f;
    
    // sweep
    gauge.arcAngleStart = -M_PI * 0.65;
    gauge.arcAngleEnd = M_PI * 0.65;
    gauge.style.borderIsFullCircle = NO;
    
    // qual ranges
    gauge.style.qualitativeInnerPosition = 0.6f;
    gauge.style.qualitativeOuterPosition = 0.7f;
    gauge.style.qualitativeRangeBorderColor = [UIColor whiteColor];
    gauge.style.qualitativeRangeBorderWidth = 1.0f;
    
    // background
    gauge.style.innerBackgroundColor = UIColorFromRGB(0x493E88);
    gauge.style.outerBackgroundColor =UIColorFromRGB(0x493E88);
    
    // needle
    gauge.style.needleColor = [UIColor redColor];
    gauge.style.needleWidth = 20.0f;
    gauge.style.needleLength = 0.75;
    gauge.style.needleBorderWidth = 0.0f;
    
    // knob
    gauge.style.knobColor = [UIColor whiteColor];
    gauge.style.knobBorderWidth = 0.0f;
    gauge.style.knobRadius = 20.0f;
    
    // tick location
    gauge.style.tickBaselinePosition = 0.77f;
    
    // tick styling
    gauge.style.majorTickColor = [UIColor whiteColor];
    gauge.style.majorTickSize = CGSizeMake(5, 5);
    gauge.style.minorTickSize = CGSizeMake(2, 2);
    gauge.style.minorTickColor = [UIColor whiteColor];
    gauge.style.tickMarkAlignment = SGaugeTickAlignCenter;
    
    // glass
    gauge.style.showGlassEffect = NO;
    
    // labels
    gauge.style.tickLabelOffsetFromBaseline = 20.0f;
    gauge.style.tickLabelColor = UIColorFromRGB(0x00B8F3);
    gauge.style.tickLabelsRotate = YES;
    gauge.style.tickLabelFont = [UIFont fontWithName:gauge.style.tickLabelFont.fontName size:20.0f];
    
    // bezel
    gauge.style.bevelWidth = 0.0f;
    
    
    // value
    gauge.value = 140.0f;
    
}

- (void)addGaugeOne {
    
    gauge = [[SGaugeRadial alloc] initWithFrame:CGRectOffset(CGRectMake(0, 0, 250, 250), 40, 40)
                                    fromMinimum:@0 toMaximum:@100];
    [self.view addSubview:gauge];
    
    // tick
    gauge.axis.majorTickFrequency = 20.0f;
    gauge.axis.minorTickFrequency = 5.0f;
    
    // sweep
    gauge.arcAngleStart = -M_PI * 0.8;
    gauge.arcAngleEnd = M_PI * 0.8;
    gauge.style.borderIsFullCircle = YES;
    
    // background
    gauge.style.innerBackgroundColor = UIColorFromRGB(0xB1BACE);
    gauge.style.outerBackgroundColor = UIColorFromRGB(0x727F9A);
    
    // needle
    gauge.style.needleColor = UIColorFromRGB(0xFE5A00);
    gauge.style.needleBorderColor = UIColorFromRGB(0x6A6866);
    gauge.style.needleBorderWidth = 2.5f;
    gauge.style.needleWidth = 25.0f;
    gauge.style.needleLength = 0.9f;
    
    // knob
    gauge.style.knobColor = [UIColor colorWithWhite:0.2f alpha:1.0f];
    gauge.style.knobBorderWidth = 2.0f;
    gauge.style.knobBorderColor = [UIColor blackColor];
    gauge.style.knobRadius = 15.0f;
    
    // needle shadow
    gauge.needle.layer.shadowRadius = 1.0;
    gauge.needle.layer.shadowColor = [UIColor blackColor].CGColor;
    gauge.needle.layer.masksToBounds = NO;
    gauge.needle.layer.shadowOffset = CGSizeMake(4.0, 4.0);
    gauge.needle.layer.shadowOpacity = 0.5;
    
    // tick styling
    gauge.style.majorTickColor = [UIColor blackColor];
    gauge.style.minorTickColor = [UIColor blackColor];
    
    // tick baseline
    gauge.style.tickBaselinePosition = 0.95f;
    gauge.style.tickBaselineColor = [UIColor blackColor];
    gauge.style.tickBaselineWidth = 1.0f;
    
    // label offset from baseline
    gauge.style.tickLabelOffsetFromBaseline = -30.f;
    
    // bevel
    gauge.style.bevelPrimaryColor = [UIColor blackColor];
    gauge.style.bevelSecondaryColor = [UIColor colorWithWhite:0.5f alpha:1.0f];
    gauge.style.bevelFlatProportion = 0.3f;
    gauge.style.bevelWidth = 20.0f;
    
    // value
    gauge.value = 70.0f;
    
}

-(void)addGaugeFour
{
    UIView *gaugeBackground = [[UIView alloc] initWithFrame:CGRectOffset(CGRectMake(0, 0, 250, 250), 40, 350)];
    gaugeBackground.backgroundColor = [UIColor blackColor];
    [self.view addSubview:gaugeBackground];
    
    verticalLinearGauge = [[SGaugeLinear alloc] initWithFrame:CGRectMake(0, 0, 220, 75) fromMinimum:@0 toMaximum:@100];
    [gaugeBackground addSubview:verticalLinearGauge];
    verticalLinearGauge.delegate = self;
    verticalLinearGauge.value = 57;
    
    //Background
    verticalLinearGauge.style.bevelWidth = 0;
    verticalLinearGauge.style.showGlassEffect = NO;
    verticalLinearGauge.style.innerBackgroundColor = [UIColor clearColor];
    verticalLinearGauge.style.outerBackgroundColor = [UIColor clearColor];
    
    //Needle
    verticalLinearGauge.style.needleWidth = 0;
    verticalLinearGauge.style.needleLength = 0.4;
    verticalLinearGauge.style.needleBorderWidth = 3;
    verticalLinearGauge.style.needleBorderColor = [UIColor colorWithRed:0 green:160.f/255 blue:215.f/255.f alpha:1];
    verticalLinearGauge.style.knobBorderWidth = 0;
    
    //Tickmarks
    verticalLinearGauge.style.tickMarkAlignment = SGaugeTickAlignCenter;
    verticalLinearGauge.style.tickLabelOffsetFromBaseline = 30;
    verticalLinearGauge.style.tickBaselineWidth = 0;
    verticalLinearGauge.style.tickLabelColor = [UIColor whiteColor];
    
    //Qualitative ranges
    verticalLinearGauge.style.qualitativeInnerPosition = 0.95;
    verticalLinearGauge.qualitativeRanges = @[[SGaugeQualitativeRange rangeWithMinimum:nil withMaximum:nil withColor:red],
                                              [SGaugeQualitativeRange rangeWithMinimum:@20 withMaximum:@80 withColor:orange],
                                              [SGaugeQualitativeRange rangeWithMinimum:@40 withMaximum:@60 withColor:green]];
    
    //Make the Gauge vertical
    verticalLinearGauge.transform = CGAffineTransformMakeRotation(-M_PI_2);
    verticalLinearGauge.center = CGPointMake(100, 125);
}

#pragma mark - Delegate methods

-(void)gauge:(SGauge *)_gauge alterTickLabel:(UILabel *)tickLabel atValue:(float)value
{
    if (_gauge == verticalLinearGauge)
    {
        tickLabel.transform = CGAffineTransformMakeRotation(M_PI_2);
    }
}

-(void)gauge:(SGauge *)_gauge alterTickMark:(UIView *)tickMark atValue:(float)value isMajorTick:(BOOL)majorTick
{
    if (_gauge == verticalLinearGauge)
    {
        //Match tick labels to qualitative ranges
        if (value <= 60 && value >= 40)
            tickMark.backgroundColor = green;
        else if (value <= 80 && value >= 20)
            tickMark.backgroundColor = orange;
        else
            tickMark.backgroundColor = red;
    }
}

@end

