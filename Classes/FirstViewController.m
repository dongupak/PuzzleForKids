//
//  FirstViewController.m
//  vehicle
//
//  Created by LeeGiChul on 10. 12. 22..
//  Copyright 2010 창원대학교 모바일엑스. All rights reserved.
//

#import "FirstViewController.h"


@implementation FirstViewController
@synthesize bg;
@synthesize airplanebt;
@synthesize helicopterbt;
@synthesize motorcyclebt;
@synthesize ambulancebt;
@synthesize carbt;
@synthesize busbt;
@synthesize fireEnginebt;
@synthesize bulldozerbt;
@synthesize truckbt;
@synthesize zetbt;

- (void)viewDidLoad 
{	
    NSString *path1 = [[NSBundle mainBundle] pathForResource:@"airplane" ofType:@"mp3"];
	NSURL *url1 = [NSURL fileURLWithPath:path1];
	airplanesn = [[AVAudioPlayer alloc] initWithContentsOfURL:url1 error:nil];
	
	NSString *path2 = [[NSBundle mainBundle] pathForResource:@"helicopter" ofType:@"mp3"];
	NSURL *url2 = [NSURL fileURLWithPath:path2];
	helicoptersn = [[AVAudioPlayer alloc] initWithContentsOfURL:url2 error:nil];
	
	NSString *path3 = [[NSBundle mainBundle] pathForResource:@"motorcycle" ofType:@"mp3"];
	NSURL *url3 = [NSURL fileURLWithPath:path3];
	motorcyclesn = [[AVAudioPlayer alloc] initWithContentsOfURL:url3 error:nil];
	
	NSString *path4 = [[NSBundle mainBundle] pathForResource:@"ambulance" ofType:@"mp3"];
	NSURL *url4 = [NSURL fileURLWithPath:path4];
	ambulancesn = [[AVAudioPlayer alloc] initWithContentsOfURL:url4 error:nil];
	
	NSString *path5 = [[NSBundle mainBundle] pathForResource:@"car" ofType:@"mp3"];
	NSURL *url5 = [NSURL fileURLWithPath:path5];
	carsn = [[AVAudioPlayer alloc] initWithContentsOfURL:url5 error:nil];
	
	NSString *path6 = [[NSBundle mainBundle] pathForResource:@"bus" ofType:@"mp3"];
	NSURL *url6 = [NSURL fileURLWithPath:path6];
	bussn = [[AVAudioPlayer alloc] initWithContentsOfURL:url6 error:nil];
	
	NSString *path7 = [[NSBundle mainBundle] pathForResource:@"fireEngine" ofType:@"mp3"];
	NSURL *url7 = [NSURL fileURLWithPath:path7];
	fireEnginesn = [[AVAudioPlayer alloc] initWithContentsOfURL:url7 error:nil];
	
	NSString *path8 = [[NSBundle mainBundle] pathForResource:@"bulldozer" ofType:@"mp3"];
	NSURL *url8 = [NSURL fileURLWithPath:path8];
	bulldozersn = [[AVAudioPlayer alloc] initWithContentsOfURL:url8 error:nil];
	
	NSString *path9 = [[NSBundle mainBundle] pathForResource:@"truck" ofType:@"mp3"];
	NSURL *url9 = [NSURL fileURLWithPath:path9];
	trucksn = [[AVAudioPlayer alloc] initWithContentsOfURL:url9 error:nil];
	
	NSString *path20 = [[NSBundle mainBundle] pathForResource:@"zet" ofType:@"mp3"];
	NSURL *url20 = [NSURL fileURLWithPath:path20];
	zetsn = [[AVAudioPlayer alloc] initWithContentsOfURL:url20 error:nil];

	audios = [[NSArray alloc] initWithObjects: airplanesn,helicoptersn,motorcyclesn
			  ,ambulancesn,carsn,bussn,fireEnginesn,bulldozersn,trucksn,zetsn, nil];
	btns = [[NSArray alloc] initWithObjects:airplanebt,helicopterbt,motorcyclebt,ambulancebt,carbt
			,busbt,fireEnginebt,bulldozerbt,truckbt,zetbt,nil];

	[super viewDidLoad];
}

-(void)rotation:(id)sender
{	
	UIButton* temp = sender;
	int i =	[temp tag];
	if( i== 0){
		//[UIView beginAnimations:@"movedsd" context:nil];
		[UIView setAnimationDuration:0.5];
		[UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
		CATransform3D scaleTransform = CATransform3DIdentity;
		scaleTransform = CATransform3DScale(scaleTransform, 1.5, 1.5, 1.0);
		temp.layer.transform = scaleTransform;
		
		[UIView commitAnimations];
		[(UIButton*)temp setTag:1];
		[self performSelector:@selector(rotation:) 
				   withObject:sender 
				   afterDelay:0.2];
		[self dontTouch:(UIButton*)sender];
	}else if(i==1){
		//[UIView beginAnimations:@"movedsd" context:nil];
		[UIView setAnimationDelay:0.5];
		[UIView setAnimationDuration:0.3];
		[UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
		CATransform3D scaleTransform = CATransform3DIdentity;
		scaleTransform = CATransform3DScale(scaleTransform, 1.3, 1.3, 1.0);
		temp.layer.transform = scaleTransform;
		[UIView commitAnimations];
		[(UIButton*)temp setTag:2];
		
		[self performSelector:@selector(rotation:) 
				   withObject:sender 
				   afterDelay:0.2];
	}else if(i==2){
		//[UIView beginAnimations:@"movedsd" context:nil];
		[UIView setAnimationDelay:0.8];
		[UIView setAnimationDuration:0.3];
		[UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
		CATransform3D scaleTransform = CATransform3DIdentity;
		scaleTransform = CATransform3DScale(scaleTransform, 1.4, 1.4, 1.0);
		temp.layer.transform = scaleTransform;
		[UIView commitAnimations];
		[(UIButton*)temp setTag:3];
		
		[self performSelector:@selector(rotation:) 
				   withObject:sender 
				   afterDelay:0.2];
	}else if(i==3){
		//[UIView beginAnimations:@"movedsd" context:nil];
		[UIView setAnimationDelay:1.1];
		[UIView setAnimationDuration:0.3];
		[UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
		CATransform3D scaleTransform = CATransform3DIdentity;
		scaleTransform = CATransform3DScale(scaleTransform, 1.3, 1.3, 1.0);
		temp.layer.transform = scaleTransform;
		[UIView commitAnimations];
		[(UIButton*)temp setTag:4];
		
		[self performSelector:@selector(rotation:) 
				   withObject:sender 
				   afterDelay:0.2];
	}else if(i==4){
		//[UIView beginAnimations:@"movedsd" context:nil];
		[UIView setAnimationDelay:1.4];
		[UIView setAnimationDuration:0.3];
		[UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
		CATransform3D scaleTransform = CATransform3DIdentity;
		scaleTransform = CATransform3DScale(scaleTransform, 1.4, 1.4, 1.0);
		temp.layer.transform = scaleTransform;
		[UIView commitAnimations];
		[(UIButton*)temp setTag:5];
		
		[self performSelector:@selector(rotation:) 
				   withObject:sender 
				   afterDelay:0.2];
	}else if(i==5){
		//[UIView beginAnimations:@"movedsd" context:nil];
		[UIView setAnimationDelay:1.7];
		[UIView setAnimationDuration:0.3];
		[UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
		CATransform3D scaleTransform = CATransform3DIdentity;
		scaleTransform = CATransform3DScale(scaleTransform, 1.3, 1.3, 1.0);
		temp.layer.transform = scaleTransform;
		[UIView commitAnimations];
		[(UIButton*)temp setTag:6];
		
		[self performSelector:@selector(rotation:) 
				   withObject:sender 
				   afterDelay:0.2];
		
		
	}else if(i==6){
		//[UIView beginAnimations:@"movedsd" context:nil];
		[UIView setAnimationDelay:2.0];
		[UIView setAnimationDuration:0.3];
		[UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
		CATransform3D scaleTransform = CATransform3DIdentity;
		scaleTransform = CATransform3DScale(scaleTransform, 1.0, 1.0, 1.0);
		temp.layer.transform = scaleTransform;
		[UIView commitAnimations];
		[temp setTag:0];
		[[(UIButton*)sender titleLabel] setText:@"0"];
		[self performSelector:@selector(dontTouch:) 
				   withObject:sender 
				   afterDelay:0.2];
	}				
}

-(void)dontTouch:(UIButton*)sender{	
	if(sender.enabled){
		[sender setEnabled:NO];
	}else {
		[sender setEnabled:YES];
	}
}

-(IBAction)allClickEvent:(id)sender{
	AVAudioPlayer *tempSound = [audios objectAtIndex: [btns indexOfObject:sender]];
	[self rotation:sender];
	[tempSound play];
	
}


- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)dealloc {
	[airplanebt release];
	[helicopterbt release];
	[motorcyclebt release];
	[ambulancebt release];
	[carbt release];
	[busbt release];
	[fireEnginebt release];
	[bulldozerbt release];
	[truckbt release];
	[zetbt release];
    [super dealloc];
}


@end
