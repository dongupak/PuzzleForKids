//
//  HowToNumber.m
//  vehicle
//
//  Created by LeeGiChul on 10. 12. 26..
//  Copyright 2010 창원대학교 모바일엑스. All rights reserved.
//

#import "HowToNumber.h"


@implementation HowToNumber
- (IBAction)start:(id)sender{
	numberexam1 *nextexam = [[numberexam1 alloc] init];
	[self.view addSubview:nextexam.view]; 
	[self.navigationController pushViewController:nextexam animated:YES];
	
	[nextexam release];
	
	
	
}- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
