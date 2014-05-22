//
//  shadowexam7.h
//  vehicle
//
//  Created by LeeGiChul on 10. 12. 22..
//  Copyright 2010 창원대학교 모바일엑스. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>>
#import "shadowexam8.h"
#import <QuartzCore/QuartzCore.h>

@interface shadowexam7 : UIViewController {
	
	UIImageView *bg;
	UIButton *shadowpho;
	UIButton *realpho;
	UIButton *resolvebt;
	UIButton *rightbt;
	
	UIButton *object1;
	UIButton *object2;
	UIButton *object3;
	UIButton *object4;
	UIButton *object5;
	UIButton *object6;
	
	UILabel *nextpage;
	
	AVAudioPlayer *resolvesn;
	AVAudioPlayer *rightsn;
	AVAudioPlayer *startsn;
	AVAudioPlayer *roarsn;
	AVAudioPlayer *pressPhoto;
	AVAudioPlayer *airplanesn;
	AVAudioPlayer *helicoptersn;
	AVAudioPlayer *motorcyclesn;
	AVAudioPlayer *ambulancesn;
	AVAudioPlayer *carsn;
	AVAudioPlayer *bussn;
	AVAudioPlayer *fireEnginesn;
	AVAudioPlayer *bulldozersn;
	AVAudioPlayer *trucksn;
	AVAudioPlayer *vehiclestart;
	
}


@property (nonatomic, retain) IBOutlet UIImageView *bg;
@property (nonatomic, retain) IBOutlet UIButton *shadowpho;
@property (nonatomic, retain) IBOutlet UIButton *realpho;
@property (nonatomic, retain) IBOutlet UIButton *resolvebt;
@property (nonatomic, retain) IBOutlet UIButton *rightbt;
@property (nonatomic, retain) IBOutlet UILabel *nextpage;
@property (nonatomic, retain) IBOutlet UIButton *object1;
@property (nonatomic, retain) IBOutlet UIButton *object2;
@property (nonatomic, retain) IBOutlet UIButton *object3;
@property (nonatomic, retain) IBOutlet UIButton *object4;
@property (nonatomic, retain) IBOutlet UIButton *object5;
@property (nonatomic, retain) IBOutlet UIButton *object6;
- (IBAction)wrong1:(id)sender;
- (IBAction)wrong2:(id)sender;
- (IBAction)wrong3:(id)sender;
- (IBAction)wrong4:(id)sender;
- (IBAction)wrong5:(id)sender;
- (IBAction)right:(id)sender;
- (IBAction)shoadow:(id)sender;
- (IBAction)real:(id)sender;
-(void)dontTouch:(UIButton*)sender;
@end