import UIKit;
import UIColor;


%hook SBLockScreenView


- (void)setCustomSlideToUnlockText:(int)arg1{
	NSString *LSText = @"test";

	%orig(LSText);


}

%end


%hook SBDockView 

- (void)setCustomDockColor:(int)arg1{
	UIColor (clearColor);

	%orig(0,0);
}






