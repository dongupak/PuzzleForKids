//
//  FirstViewController.h
//  vehicle
//
//  Created by LeeGiChul on 10. 12. 22..
//  Copyright 2010 창원대학교 모바일엑스. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <QuartzCore/QuartzCore.h>

@interface FirstViewController : UIViewController 
{
	UIImageView *bg;
	UIButton *airplanebt;
	UIButton *helicopterbt;
	UIButton *motorcyclebt;
	UIButton *ambulancebt;
	UIButton *carbt;
	UIButton *busbt;
	UIButton *fireEnginebt;
	UIButton *bulldozerbt;
	UIButton *truckbt;
	UIButton *zetbt;
	AVAudioPlayer *airplanesn;
	AVAudioPlayer *helicoptersn;
	AVAudioPlayer *motorcyclesn;
	AVAudioPlayer *ambulancesn;
	AVAudioPlayer *carsn;
	AVAudioPlayer *bussn;
	AVAudioPlayer *fireEnginesn;
	AVAudioPlayer *bulldozersn;
	AVAudioPlayer *trucksn;
	AVAudioPlayer *zetsn;
	NSArray * audios;
	NSArray * btns;
	NSTimer * rTimer;
	int	rFlog;
}

@property (nonatomic, retain) IBOutlet UIImageView *bg;
@property (nonatomic, retain) IBOutlet UIButton *airplanebt;
@property (nonatomic, retain) IBOutlet UIButton *helicopterbt;
@property (nonatomic, retain) IBOutlet UIButton *motorcyclebt;
@property (nonatomic, retain) IBOutlet UIButton *ambulancebt;
@property (nonatomic, retain) IBOutlet UIButton *carbt;
@property (nonatomic, retain) IBOutlet UIButton *busbt;
@property (nonatomic, retain) IBOutlet UIButton *fireEnginebt;
@property (nonatomic, retain) IBOutlet UIButton *bulldozerbt;
@property (nonatomic, retain) IBOutlet UIButton *truckbt;
@property (nonatomic, retain) IBOutlet UIButton *zetbt;

-(void)rotation:(id)sender;
-(void)dontTouch:(UIButton*)sender;
-(IBAction)allClickEvent:(id)sender;

@end

