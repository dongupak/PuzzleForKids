//
//  numberexam4.m
//  vehicle
//
//  Created by LeeGiChul on 10. 12. 23..
//  Copyright 2010 창원대학교 모바일엑스. All rights reserved.
//

#import "numberexam4.h"


@implementation numberexam4

@synthesize bg;
@synthesize object1;
@synthesize object2;
@synthesize object3;
@synthesize object4;
@synthesize object5;
@synthesize object6;
@synthesize object7;
@synthesize object8;
@synthesize object9;
@synthesize object10;
@synthesize objects1;
@synthesize objects2;
@synthesize objects3;
@synthesize objects4;
@synthesize objects5;
@synthesize objects6;
@synthesize objects7;
@synthesize objects8;
@synthesize objects9;
@synthesize objects10;
@synthesize result;
- (void)viewDidLoad {
	
	NSLog(@"numberexam10.m - viewDidLoad");
	i = 0;
	number = 0;
	result.hidden = YES;
	
	

	

	
	NSString *path2 = [[NSBundle mainBundle] pathForResource:@"ok" ofType:@"mp3"];
	NSURL *url2 = [NSURL fileURLWithPath:path2];
	rightsn = [[AVAudioPlayer alloc] initWithContentsOfURL:url2 error:nil];
	
	NSString *path3 = [[NSBundle mainBundle] pathForResource:@"1" ofType:@"mp3"];
	NSURL *url3 = [NSURL fileURLWithPath:path3];
	ownsn = [[AVAudioPlayer alloc] initWithContentsOfURL:url3 error:nil];
	
	NSString *path4 = [[NSBundle mainBundle] pathForResource:@"2" ofType:@"mp3"];
	NSURL *url4 = [NSURL fileURLWithPath:path4];
	twosn = [[AVAudioPlayer alloc] initWithContentsOfURL:url4 error:nil];
	
	NSString *path5 = [[NSBundle mainBundle] pathForResource:@"3" ofType:@"mp3"];
	NSURL *url5 = [NSURL fileURLWithPath:path5];
	threesn = [[AVAudioPlayer alloc] initWithContentsOfURL:url5 error:nil];
	
	NSString *path6 = [[NSBundle mainBundle] pathForResource:@"result4" ofType:@"mp3"];
	NSURL *url6 = [NSURL fileURLWithPath:path6];
	foursn = [[AVAudioPlayer alloc] initWithContentsOfURL:url6 error:nil];
	
	NSString *path7 = [[NSBundle mainBundle] pathForResource:@"5" ofType:@"mp3"];
	NSURL *url7 = [NSURL fileURLWithPath:path7];
	fivesn = [[AVAudioPlayer alloc] initWithContentsOfURL:url7 error:nil];
	
	NSString *path8 = [[NSBundle mainBundle] pathForResource:@"6" ofType:@"mp3"];
	NSURL *url8 = [NSURL fileURLWithPath:path8];
	sixsn = [[AVAudioPlayer alloc] initWithContentsOfURL:url8 error:nil];
	
	NSString *path9 = [[NSBundle mainBundle] pathForResource:@"7" ofType:@"mp3"];
	NSURL *url9 = [NSURL fileURLWithPath:path9];
	sevensn = [[AVAudioPlayer alloc] initWithContentsOfURL:url9 error:nil];
	
	NSString *path10 = [[NSBundle mainBundle] pathForResource:@"8" ofType:@"mp3"];
	NSURL *url10 = [NSURL fileURLWithPath:path10];
	eightsn = [[AVAudioPlayer alloc] initWithContentsOfURL:url10 error:nil];
	
	NSString *path11 = [[NSBundle mainBundle] pathForResource:@"9" ofType:@"mp3"];
	NSURL *url11 = [NSURL fileURLWithPath:path11];
	ninesn = [[AVAudioPlayer alloc] initWithContentsOfURL:url11 error:nil];
	
	NSString *path12 = [[NSBundle mainBundle] pathForResource:@"10" ofType:@"mp3"];
	NSURL *url12 = [NSURL fileURLWithPath:path12];
	tensn = [[AVAudioPlayer alloc] initWithContentsOfURL:url12 error:nil];
	
	NSString *path13 = [[NSBundle mainBundle] pathForResource:@"right4" ofType:@"mp3"];
	NSURL *url13 = [NSURL fileURLWithPath:path13];
	pressnumber = [[AVAudioPlayer alloc] initWithContentsOfURL:url13 error:nil];
	
	NSString *path14 = [[NSBundle mainBundle] pathForResource:@"examnumber" ofType:@"mp3"];
	NSURL *url14 = [NSURL fileURLWithPath:path14];
	examnumber = [[AVAudioPlayer alloc] initWithContentsOfURL:url14 error:nil];
	[examnumber play];
	
	objects1.hidden = YES;
	objects2.hidden = YES;
	objects3.hidden = YES;
	objects4.hidden = YES;
	objects5.hidden = YES;
	objects6.hidden = YES;
	objects7.hidden = YES;
	objects8.hidden = YES;
	objects9.hidden = YES;
	objects10.hidden = YES;
	
	[super viewDidLoad];
}


- (void)soundPlay {
	if ( number==0 ) {
		NSLog(@"1.%d",i);
		[ownsn play];
	} 
	else if ( number == 1) {
		NSLog(@"%d",i);
		[twosn play];
		
	}
	else if (number == 2) {
		NSLog(@"%d",i);
		[threesn play];
		
	}
	else if ( number == 3) {
		NSLog(@"%d",i);
		[foursn play];
		objects1.hidden = NO;
		objects2.hidden = NO;
		objects3.hidden = NO;
		objects4.hidden = NO;
		objects5.hidden = NO;
		objects6.hidden = NO;
		objects7.hidden = NO;
		objects8.hidden = NO;
		objects9.hidden = NO;
		objects10.hidden = NO;
	}
	else if ( number == 4) {
		NSLog(@"%d",i);
		[fivesn play];
		
	}
	else if ( number == 5) {
		NSLog(@"%d",i);
		[sixsn play];
		
	}
	else if ( number == 6) {
		NSLog(@"%d",i);
		[sevensn play];
		
	}
	else if ( number == 7) {
		NSLog(@"%d",i);
		[eightsn play];
		
	}
	else if ( number == 8) {
		NSLog(@"%d",i);
		[ninesn play];
		
	}
	else if ( number == 9){
		NSLog(@"%d",i);
		[tensn play];
	}
	
	
}

- (IBAction)wrong1:(id)sender{
	[ownsn play];
	[foursn stop];
}

- (IBAction)wrong2:(id)sender{
	[twosn play];
	[foursn stop];
}
- (IBAction)wrong3:(id)sender{
	[threesn play];
	[foursn stop];
}

- (IBAction)wrong5:(id)sender{
	[fivesn play];
	[foursn stop];
}
- (IBAction)wrong6:(id)sender{
	[sixsn play];
	[foursn stop];
}
- (IBAction)wrong7:(id)sender{
	[sevensn play];
	[foursn stop];
}
- (IBAction)wrong8:(id)sender{
	[eightsn play];
	[foursn stop];
}
- (IBAction)wrong9:(id)sender{
	[ninesn play];
	[foursn stop];
}
- (IBAction)wrong10:(id)sender{
	[tensn play];
	[foursn stop];
}



- (IBAction)right:(id)sender{
	[pressnumber play];
	[foursn stop];
	
	result.hidden = NO;
//	objects1.hidden = YES;
//	objects2.hidden = YES;
//	objects3.hidden = YES;
//	objects4.hidden = YES;
//	objects5.hidden = YES;
//	objects6.hidden = YES;
//	objects7.hidden = YES;
//	objects8.hidden = YES;
//	objects9.hidden = YES;
//	objects10.hidden = YES;
//	
//	object1.hidden = YES;
//	object2.hidden = YES;
//	object3.hidden = YES;
//	object4.hidden = YES;
//	object5.hidden = YES;
//	object6.hidden = YES;
//	object7.hidden = YES;
//	object8.hidden = YES;
//	object9.hidden = YES;
//	object10.hidden = YES;
	
}

- (IBAction)nextpage:(id)sender{
	[pressnumber stop];
	numberexam5 *nextexam = [[numberexam5 alloc] init];
	[self.navigationController pushViewController:nextexam animated:YES];
	[nextexam release];
	[object10 release];
}




- (IBAction)hidden1:(id)sender{
	[sender setEnabled:NO];
	[self soundPlay];
	[examnumber stop];
	i++;
	number++;
	NSLog(@"number = %d", number);
	
}
- (IBAction)hidden2:(id)sender
{
	[sender setEnabled:NO];
	[examnumber stop];
	[self soundPlay];
	
	i++;
	number++;
	NSLog(@"number = %d", number);
	
}
- (IBAction)hidden3:(id)sender{
	[sender setEnabled:NO];
	[examnumber stop];
	[self soundPlay];
	i = i+1;
	number++;
	NSLog(@"number = %d", number);
	
}
- (IBAction)hidden4:(id)sender{
	
	[sender setEnabled:NO];
	[examnumber stop];
	[self soundPlay];
	i = i+1;
	number++;
	NSLog(@"number = %d", number);
	
}
- (IBAction)hidden5:(id)sender{
	[sender setEnabled:NO];
	[self soundPlay];
	[examnumber stop];
	i = i+1;
	number++;
	NSLog(@"number = %d", number);
	
}

- (IBAction)hidden6:(id)sender{
	[sender setEnabled:NO];
	[examnumber stop];
	[self soundPlay];
	i = i+1;
	number++;
	NSLog(@"number = %d", number);
	
	
}
- (IBAction)hidden7:(id)sender
{
	[sender setEnabled:NO];
	[examnumber stop];
	[self soundPlay];
	i = i+1;
	number++;
	NSLog(@"number = %d", number);
	
}
- (IBAction)hidden8:(id)sender{
	[sender setEnabled:NO];
	[examnumber stop];
	[self soundPlay];
	i = i+1;
	number++;
	NSLog(@"number = %d", number);
	
}
- (IBAction)hidden9:(id)sender{
	
	[sender setEnabled:NO];
	[examnumber stop];
	[self soundPlay];
	i = i+1;
	number++;
	NSLog(@"number = %d", number);
	
}
- (IBAction)hidden10:(id)sender{
	[sender setEnabled:NO];
	[examnumber stop];
	[self soundPlay];
	i = i+1;
	number++;
	NSLog(@"number = %d", number);
	
}


- (void)dealloc {
	[bg release];
	[object1 release];
	[object2 release];
	[object3 release];
	[object4 release];
	[object5 release];
	[object6 release];
	[object7 release];
	[object8 release];
	[object9 release];
	[object10 release];
	[objects1 release];
	[objects2 release];
	[objects3 release];
	[objects4 release];
	[objects5 release];
	[objects6 release];
	[objects7 release];
	[objects8 release];
	[objects9 release];
	[objects10 release];
	[result release];
	
    [super dealloc];
}

@end