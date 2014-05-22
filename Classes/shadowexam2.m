//
//  shadowexam2.m
//  vehicle
//
//  Created by LeeGiChul on 10. 12. 22..
//  Copyright 2010 창원대학교 모바일엑스. All rights reserved.
//

#import "shadowexam2.h"


@implementation shadowexam2

@synthesize bg;
@synthesize shadowpho;
@synthesize realpho;
@synthesize resolvebt;
@synthesize rightbt;
@synthesize nextpage;
@synthesize object1;
@synthesize object2;
@synthesize object3;
@synthesize object4;
@synthesize object5;
@synthesize object6;
- (void)viewDidLoad {
	
	nextpage.hidden = YES;
	shadowpho.hidden = NO;
	realpho.hidden = YES;
	
	
	
	
	NSString *path3 = [[NSBundle mainBundle] pathForResource:@"examShadow" ofType:@"mp3"];
	NSURL *url3 = [NSURL fileURLWithPath:path3];
	startsn = [[AVAudioPlayer alloc] initWithContentsOfURL:url3 error:nil];
	
	
	
	NSString *path5 = [[NSBundle mainBundle] pathForResource:@"pressPhoto" ofType:@"mp3"];
	NSURL *url5 = [NSURL fileURLWithPath:path5];
	pressPhoto = [[AVAudioPlayer alloc] initWithContentsOfURL:url5 error:nil];
	
	NSString *path11 = [[NSBundle mainBundle] pathForResource:@"airplane" ofType:@"mp3"];
	NSURL *url11 = [NSURL fileURLWithPath:path11];
	airplanesn = [[AVAudioPlayer alloc] initWithContentsOfURL:url11 error:nil];
	
	NSString *path12 = [[NSBundle mainBundle] pathForResource:@"helicopter" ofType:@"mp3"];
	NSURL *url12 = [NSURL fileURLWithPath:path12];
	helicoptersn = [[AVAudioPlayer alloc] initWithContentsOfURL:url12 error:nil];
	
	NSString *path13 = [[NSBundle mainBundle] pathForResource:@"motorcycle" ofType:@"mp3"];
	NSURL *url13 = [NSURL fileURLWithPath:path13];
	motorcyclesn = [[AVAudioPlayer alloc] initWithContentsOfURL:url13 error:nil];
	
	NSString *path14 = [[NSBundle mainBundle] pathForResource:@"ambulance" ofType:@"mp3"];
	NSURL *url14 = [NSURL fileURLWithPath:path14];
	ambulancesn = [[AVAudioPlayer alloc] initWithContentsOfURL:url14 error:nil];
	
	NSString *path15 = [[NSBundle mainBundle] pathForResource:@"car" ofType:@"mp3"];
	NSURL *url15 = [NSURL fileURLWithPath:path15];
	carsn = [[AVAudioPlayer alloc] initWithContentsOfURL:url15 error:nil];
	
	NSString *path16 = [[NSBundle mainBundle] pathForResource:@"bus" ofType:@"mp3"];
	NSURL *url16 = [NSURL fileURLWithPath:path16];
	bussn = [[AVAudioPlayer alloc] initWithContentsOfURL:url16 error:nil];
	
	NSString *path17 = [[NSBundle mainBundle] pathForResource:@"fireEngine" ofType:@"mp3"];
	NSURL *url17 = [NSURL fileURLWithPath:path17];
	fireEnginesn = [[AVAudioPlayer alloc] initWithContentsOfURL:url17 error:nil];
	
	NSString *path18 = [[NSBundle mainBundle] pathForResource:@"bulldozer" ofType:@"mp3"];
	NSURL *url18 = [NSURL fileURLWithPath:path18];
	bulldozersn = [[AVAudioPlayer alloc] initWithContentsOfURL:url18 error:nil];
	
	NSString *path19 = [[NSBundle mainBundle] pathForResource:@"truck" ofType:@"mp3"];
	NSURL *url19 = [NSURL fileURLWithPath:path19];
	trucksn = [[AVAudioPlayer alloc] initWithContentsOfURL:url19 error:nil];
	
	
	[startsn play];
	
	
	[super viewDidLoad];
}

- (IBAction)wrong1:(id)sender{
	UIButton* temp = sender;
	int i =	[temp tag];
	if( i== 0){
		[UIView beginAnimations:@"move" context:nil];
		[UIView setAnimationDuration:0.5];
		[UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
		CATransform3D scaleTransform = CATransform3DIdentity;
		scaleTransform = CATransform3DScale(scaleTransform, 1.1, 1.1, 1.0);
		temp.layer.transform = scaleTransform;
		
		[UIView commitAnimations];
		[(UIButton*)temp setTag:1];
		[self performSelector:@selector(wrong1:) 
				   withObject:sender 
				   afterDelay:0.2];
		[self dontTouch:(UIButton*)sender];
	}
	else if(i==1){
		[UIView beginAnimations:@"move" context:nil];
		[UIView setAnimationDelay:0.5];
		[UIView setAnimationDuration:0.15];
		[UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
		CATransform3D scaleTransform = CATransform3DIdentity;
		scaleTransform = CATransform3DScale(scaleTransform, 1.0, 1.0, 1.0);
		temp.layer.transform = scaleTransform;
		[UIView commitAnimations];
		[(UIButton*)temp setTag:2];
		
		[self performSelector:@selector(wrong1:) 
				   withObject:sender 
				   afterDelay:0.2];
		
		
	}
	else if(i==2){
		[UIView beginAnimations:@"move" context:nil];
		[UIView setAnimationDelay:0.5];
		[UIView setAnimationDuration:0.15];
		[UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
		CATransform3D scaleTransform = CATransform3DIdentity;
		scaleTransform = CATransform3DScale(scaleTransform, 1.1, 1.1, 1.0);
		temp.layer.transform = scaleTransform;
		[UIView commitAnimations];
		[(UIButton*)temp setTag:3];
		
		[self performSelector:@selector(wrong1:) 
				   withObject:sender 
				   afterDelay:0.2];
	}
	else if(i==3){
		[UIView beginAnimations:@"move" context:nil];
		[UIView setAnimationDelay:1.3];
		[UIView setAnimationDuration:0.15];
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
	
	[ambulancesn play];
	[startsn stop];
	
}
- (IBAction)wrong2:(id)sender{
	UIButton* temp = sender;
	int i =	[temp tag];
	if( i== 0){
		[UIView beginAnimations:@"move" context:nil];
		[UIView setAnimationDuration:0.5];
		[UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
		CATransform3D scaleTransform = CATransform3DIdentity;
		scaleTransform = CATransform3DScale(scaleTransform, 1.1, 1.1, 1.0);
		temp.layer.transform = scaleTransform;
		
		[UIView commitAnimations];
		[(UIButton*)temp setTag:1];
		[self performSelector:@selector(wrong2:) 
				   withObject:sender 
				   afterDelay:0.2];
		[self dontTouch:(UIButton*)sender];
	}
	else if(i==1){
		[UIView beginAnimations:@"move" context:nil];
		[UIView setAnimationDelay:0.5];
		[UIView setAnimationDuration:0.15];
		[UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
		CATransform3D scaleTransform = CATransform3DIdentity;
		scaleTransform = CATransform3DScale(scaleTransform, 1.0, 1.0, 1.0);
		temp.layer.transform = scaleTransform;
		[UIView commitAnimations];
		[(UIButton*)temp setTag:2];
		
		[self performSelector:@selector(wrong2:) 
				   withObject:sender 
				   afterDelay:0.2];
		
		
	}
	else if(i==2){
		[UIView beginAnimations:@"move" context:nil];
		[UIView setAnimationDelay:0.5];
		[UIView setAnimationDuration:0.15];
		[UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
		CATransform3D scaleTransform = CATransform3DIdentity;
		scaleTransform = CATransform3DScale(scaleTransform, 1.1, 1.1, 1.0);
		temp.layer.transform = scaleTransform;
		[UIView commitAnimations];
		[(UIButton*)temp setTag:3];
		
		[self performSelector:@selector(wrong2:) 
				   withObject:sender 
				   afterDelay:0.2];
	}
	else if(i==3){
		[UIView beginAnimations:@"move" context:nil];
		[UIView setAnimationDelay:1.3];
		[UIView setAnimationDuration:0.15];
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
	
	[trucksn play];
	[startsn stop];
	
}
- (IBAction)wrong3:(id)sender{
	UIButton* temp = sender;
	int i =	[temp tag];
	if( i== 0){
		[UIView beginAnimations:@"move" context:nil];
		[UIView setAnimationDuration:0.5];
		[UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
		CATransform3D scaleTransform = CATransform3DIdentity;
		scaleTransform = CATransform3DScale(scaleTransform, 1.1, 1.1, 1.0);
		temp.layer.transform = scaleTransform;
		
		[UIView commitAnimations];
		[(UIButton*)temp setTag:1];
		[self performSelector:@selector(wrong3:) 
				   withObject:sender 
				   afterDelay:0.2];
		[self dontTouch:(UIButton*)sender];
	}
	else if(i==1){
		[UIView beginAnimations:@"move" context:nil];
		[UIView setAnimationDelay:0.5];
		[UIView setAnimationDuration:0.15];
		[UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
		CATransform3D scaleTransform = CATransform3DIdentity;
		scaleTransform = CATransform3DScale(scaleTransform, 1.0, 1.0, 1.0);
		temp.layer.transform = scaleTransform;
		[UIView commitAnimations];
		[(UIButton*)temp setTag:2];
		
		[self performSelector:@selector(wrong3:) 
				   withObject:sender 
				   afterDelay:0.2];
		
		
	}
	else if(i==2){
		[UIView beginAnimations:@"move" context:nil];
		[UIView setAnimationDelay:0.5];
		[UIView setAnimationDuration:0.15];
		[UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
		CATransform3D scaleTransform = CATransform3DIdentity;
		scaleTransform = CATransform3DScale(scaleTransform, 1.1, 1.1, 1.0);
		temp.layer.transform = scaleTransform;
		[UIView commitAnimations];
		[(UIButton*)temp setTag:3];
		
		[self performSelector:@selector(wrong3:) 
				   withObject:sender 
				   afterDelay:0.2];
	}
	else if(i==3){
		[UIView beginAnimations:@"move" context:nil];
		[UIView setAnimationDelay:1.3];
		[UIView setAnimationDuration:0.15];
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
	
	[bulldozersn play];
	[startsn stop];
	
}
- (IBAction)wrong4:(id)sender{
	UIButton* temp = sender;
	int i =	[temp tag];
	if( i== 0){
		[UIView beginAnimations:@"move" context:nil];
		[UIView setAnimationDuration:0.5];
		[UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
		CATransform3D scaleTransform = CATransform3DIdentity;
		scaleTransform = CATransform3DScale(scaleTransform, 1.1, 1.1, 1.0);
		temp.layer.transform = scaleTransform;
		
		[UIView commitAnimations];
		[(UIButton*)temp setTag:1];
		[self performSelector:@selector(wrong4:) 
				   withObject:sender 
				   afterDelay:0.2];
		[self dontTouch:(UIButton*)sender];
	}
	else if(i==1){
		[UIView beginAnimations:@"move" context:nil];
		[UIView setAnimationDelay:0.5];
		[UIView setAnimationDuration:0.15];
		[UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
		CATransform3D scaleTransform = CATransform3DIdentity;
		scaleTransform = CATransform3DScale(scaleTransform, 1.0, 1.0, 1.0);
		temp.layer.transform = scaleTransform;
		[UIView commitAnimations];
		[(UIButton*)temp setTag:2];
		
		[self performSelector:@selector(wrong4:) 
				   withObject:sender 
				   afterDelay:0.2];
		
		
	}
	else if(i==2){
		[UIView beginAnimations:@"move" context:nil];
		[UIView setAnimationDelay:0.5];
		[UIView setAnimationDuration:0.15];
		[UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
		CATransform3D scaleTransform = CATransform3DIdentity;
		scaleTransform = CATransform3DScale(scaleTransform, 1.1, 1.1, 1.0);
		temp.layer.transform = scaleTransform;
		[UIView commitAnimations];
		[(UIButton*)temp setTag:3];
		
		[self performSelector:@selector(wrong4:) 
				   withObject:sender 
				   afterDelay:0.2];
	}
	else if(i==3){
		[UIView beginAnimations:@"move" context:nil];
		[UIView setAnimationDelay:1.3];
		[UIView setAnimationDuration:0.15];
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
	
	[airplanesn play];
	[startsn stop];
	
}
- (IBAction)wrong5:(id)sender{
	UIButton* temp = sender;
	int i =	[temp tag];
	if( i== 0){
		[UIView beginAnimations:@"move" context:nil];
		[UIView setAnimationDuration:0.5];
		[UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
		CATransform3D scaleTransform = CATransform3DIdentity;
		scaleTransform = CATransform3DScale(scaleTransform, 1.1, 1.1, 1.0);
		temp.layer.transform = scaleTransform;
		
		[UIView commitAnimations];
		[(UIButton*)temp setTag:1];
		[self performSelector:@selector(wrong5:) 
				   withObject:sender 
				   afterDelay:0.2];
		[self dontTouch:(UIButton*)sender];
	}
	else if(i==1){
		[UIView beginAnimations:@"move" context:nil];
		[UIView setAnimationDelay:0.5];
		[UIView setAnimationDuration:0.15];
		[UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
		CATransform3D scaleTransform = CATransform3DIdentity;
		scaleTransform = CATransform3DScale(scaleTransform, 1.0, 1.0, 1.0);
		temp.layer.transform = scaleTransform;
		[UIView commitAnimations];
		[(UIButton*)temp setTag:2];
		
		[self performSelector:@selector(wrong5:) 
				   withObject:sender 
				   afterDelay:0.2];
		
		
	}
	else if(i==2){
		[UIView beginAnimations:@"move" context:nil];
		[UIView setAnimationDelay:0.5];
		[UIView setAnimationDuration:0.15];
		[UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
		CATransform3D scaleTransform = CATransform3DIdentity;
		scaleTransform = CATransform3DScale(scaleTransform, 1.1, 1.1, 1.0);
		temp.layer.transform = scaleTransform;
		[UIView commitAnimations];
		[(UIButton*)temp setTag:3];
		
		[self performSelector:@selector(wrong5:) 
				   withObject:sender 
				   afterDelay:0.2];
	}
	else if(i==3){
		[UIView beginAnimations:@"move" context:nil];
		[UIView setAnimationDelay:1.3];
		[UIView setAnimationDuration:0.15];
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
	
	[helicoptersn play];
	[startsn stop];
	
}

- (IBAction)right:(id)sender{
	UIButton* temp = sender;
	int i =	[temp tag];
	if( i== 0){
		[UIView beginAnimations:@"move" context:nil];
		[UIView setAnimationDuration:0.5];
		[UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
		CATransform3D scaleTransform = CATransform3DIdentity;
		scaleTransform = CATransform3DScale(scaleTransform, 1.1, 1.1, 1.0);
		temp.layer.transform = scaleTransform;
		
		[UIView commitAnimations];
		[(UIButton*)temp setTag:1];
		[self performSelector:@selector(right:) 
				   withObject:sender 
				   afterDelay:0.2];
		[self dontTouch:(UIButton*)sender];
	}
	else if(i==1){
		[UIView beginAnimations:@"move" context:nil];
		[UIView setAnimationDelay:0.5];
		[UIView setAnimationDuration:0.15];
		[UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
		CATransform3D scaleTransform = CATransform3DIdentity;
		scaleTransform = CATransform3DScale(scaleTransform, 1.0, 1.0, 1.0);
		temp.layer.transform = scaleTransform;
		[UIView commitAnimations];
		[(UIButton*)temp setTag:2];
		
		[self performSelector:@selector(right:) 
				   withObject:sender 
				   afterDelay:0.2];
		
		
	}
	else if(i==2){
		[UIView beginAnimations:@"move" context:nil];
		[UIView setAnimationDelay:0.5];
		[UIView setAnimationDuration:0.15];
		[UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
		CATransform3D scaleTransform = CATransform3DIdentity;
		scaleTransform = CATransform3DScale(scaleTransform, 1.1, 1.1, 1.0);
		temp.layer.transform = scaleTransform;
		[UIView commitAnimations];
		[(UIButton*)temp setTag:3];
		
		[self performSelector:@selector(right:) 
				   withObject:sender 
				   afterDelay:0.2];
	}
	else if(i==3){
		[UIView beginAnimations:@"move" context:nil];
		[UIView setAnimationDelay:1.3];
		[UIView setAnimationDuration:0.15];
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
	
	
	nextpage.hidden = NO;
	shadowpho.hidden = YES;
	realpho.hidden = NO;
	
	[pressPhoto play];
	[startsn stop];
	
//	object1.hidden = YES;
//	object2.hidden = YES;
//	object3.hidden = YES;
//	object4.hidden = YES;
//	object5.hidden = YES;
//	object6.hidden = YES;
	
	
}
- (IBAction)shoadow:(id)sender{
	[motorcyclesn play];
	[startsn stop];
	
}
- (IBAction)real:(id)sender{
	shadowexam3 *nextexam = [[shadowexam3 alloc] init];
	[self.view addSubview:nextexam.view]; 
	[self.navigationController pushViewController:nextexam animated:YES];

	[nextexam release];
	[pressPhoto stop];
	
	
}

-(void)dontTouch:(UIButton*)sender{
	
	if(sender.enabled){
		[sender setEnabled:NO];
	}else {
		[sender setEnabled:YES];
	}
	
}


- (void)dealloc {
	[bg release];
	[shadowpho release];
	[realpho release];
	[resolvebt release];
	[rightbt release]; 
	[nextpage release];
	[object1 release];
	[object2 release];
	[object3 release];
	[object4 release];
	[object5 release];
	[object6 release];
	
    [super dealloc];
}


@end
