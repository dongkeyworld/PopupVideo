//%new(B@:)
//%new(v@:)
//UIScrollView *thisScrollView = MSHookIvar <UIScrollView *> (self, "scrollView");
//    [sheet addButtonWithTitle:@"바코드 만들기"];

@interface SBUIController {
    UIWindow *_window;	// 4 = 0x4
}
- (BOOL)isBatteryCharging;	// 0x135dd
- (BOOL)isOnAC;	// 0x135f1

@end

%hook SBUIController
- (BOOL)isBatteryCharging {

    UIView *abc = [[UIView alloc] initWithFrame:CGRectMake(40, 120, 70,70)];
    abc.backgroundColor = [UIColor blueColor];
    UIWindow *topWindow = MSHookIvar <UIWindow *> (self, "_window");
    [topWindow addSubview:abc];
    
    return %orig;
}
- (BOOL)isOnAC {

    UIView *abc = [[UIView alloc] initWithFrame:CGRectMake(40, 120, 70,70)];
    abc.backgroundColor = [UIColor blueColor];
    UIWindow *topWindow = MSHookIvar <UIWindow *> (self, "_window");
    [topWindow addSubview:abc];

    return %orig;
}

%end



/*
%new(v@:)
- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
}
%new(B@:)
-(BOOL)isLandscapeToggle {
}
*/

//%hook MelOnAppDelegate
//-(BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options {
//    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[NSString stringWithFormat:@"멜론 후킹"]
//                                                    message:@"후킹 시도"
//                                                   delegate:self
//                                          cancelButtonTitle:@"취소"
//                                          otherButtonTitles:@"입력", nil];
//    [alert show];

//    return %orig;
//    
//}
//%end


