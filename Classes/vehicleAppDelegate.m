//
//  vehicleAppDelegate.m
//  vehicle
//
//  Created by LeeGiChul on 10. 12. 22..
//  Copyright 2010 창원대학교 모바일엑스. All rights reserved.
//

#import "vehicleAppDelegate.h"

@implementation vehicleAppDelegate

@synthesize window;
@synthesize tabBarController;

static float i = 0;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
	NSString *path = [[NSBundle mainBundle] pathForResource:@"player" ofType:@"mp3"];
	NSURL *url = [NSURL fileURLWithPath:path];
	NSError *error = [[NSError alloc] init];
	player = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
	
	NSLog(@"error %@",error);
	[player play];
	
    [window addSubview:tabBarController.view];
	
	backImg = [[UIButton alloc]init];
	[backImg setFrame:CGRectMake(0, 0, 320, 480)];
	[backImg setImage:[UIImage imageNamed:@"intro.png"] forState:UIControlStateHighlighted];
	[backImg setImage:[UIImage imageNamed:@"intro.png"] forState:UIControlStateNormal];
	//[backImg addTarget:self action:@selector(stopBGM) forControlEvents:UIControlEventTouchUpInside];
	[window addSubview:backImg];
	
	backIcon = [[UIButton alloc]init];
	[backIcon setImage:[UIImage imageNamed:@"main.png"] forState:UIControlStateHighlighted];
	[backIcon addTarget:self action:@selector(mainView) forControlEvents:UIControlEventTouchUpInside];
	[backIcon setFrame:CGRectMake(0, 0, 320, 480)];
	[backIcon setImage:[UIImage imageNamed:@"main.png"] forState:UIControlStateNormal];
	backIcon.alpha = i;
	[window addSubview:backIcon];
	
	[NSTimer scheduledTimerWithTimeInterval:0.20
									 target:self 
								   selector:@selector(loadingView)
								   userInfo:nil 
									repeats:YES] ;
	NSString *path10 = [[NSBundle mainBundle] pathForResource:@"vehiclestart" ofType:@"mp3"];
	NSURL *url10 = [NSURL fileURLWithPath:path10];
	vehiclestart = [[AVAudioPlayer alloc] initWithContentsOfURL:url10 error:nil];
	[window makeKeyAndVisible];
	
	
    return YES;
}
//-(void)stopBGM{
//	[UIView beginAnimations:@"move" context:nil];
//	[UIView setAnimationDuration:1.5];	
//	[backImg setAlpha:0.0f];
//	[UIView commitAnimations];
//	[backImg performSelector:@selector(removeFromSuperview) withObject:nil afterDelay:1.5f];
//	[player stop];
//}
-(void)mainView
{
	//	[backImg removeFromSuperview];
	[backIcon removeFromSuperview];
	[UIView beginAnimations:@"move" context:nil];
	[UIView setAnimationDuration:2.5];	
	[backImg setAlpha:0.0f];
	[UIView commitAnimations];
	[backImg performSelector:@selector(removeFromSuperview) withObject:nil afterDelay:1.5f];
	[player stop];
	[vehiclestart play];
}
-(void)loadingView
{
	
	backIcon.alpha = i;
	if(i<1)
	{
		i += 0.1;
	}
	
}

#pragma mark -
#pragma mark Memory management

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
    /*
     Free up as much memory as possible by purging cached data objects that can be recreated (or reloaded from disk) later.
     */
}

- (void)dealloc {
    [tabBarController release];
    [window release];
    [super dealloc];
}

@end

