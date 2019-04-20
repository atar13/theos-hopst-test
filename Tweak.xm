// 	import UIKit;
// import UIColor;


// %hook SBLockScreenView


// - (void)setCustomSlideToUnlockText:(int)arg1{
// 	NSString *LSText = @"test";

// 	%orig(LSText);


// }

// %end


// %hook SBDockView 

// - (void)setCustomDockColor:(int)arg1{
// 	UIColor (clearColor);

// 	%orig(0,0);
// }

@interface SBLockScreenViewControllerBase : UIViewController
@end


%hook SBLockScreenViewControllerBase
- (void)viewDidLoad{
	%orig;

	UIView *rectangle = [[UIView alloc] initWithFrame:CGREctMake(0,0,200,200)];
	[rectangle setBackgroundColor:[UIColor blackColor]]
	[self.view addSubview:redRectangle];
}

%end;


