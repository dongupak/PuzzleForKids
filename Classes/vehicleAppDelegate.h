//
//  vehicleAppDelegate.h
//  vehicle
//
//  Created by LeeGiChul on 10. 12. 22..
//  Copyright 2010 창원대학교 모바일엑스. All rights reserved.
//

#import <UIKit/UIKit.h>
#import<AVFoundation/AVFoundation.h>
@interface vehicleAppDelegate : NSObject <UIApplicationDelegate, UITabBarControllerDelegate> {
    UIWindow *window;
//	FirstViewController *viewcon
    UITabBarController *tabBarController;
	AVAudioPlayer *player;
	AVAudioPlayer *vehiclestart;
	UIButton *backImg;
	UIButton *backIcon;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UITabBarController *tabBarController;

@end
