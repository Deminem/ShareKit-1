//
//  ShareKitDemoConfigurator.m
//  ShareKit
//
//  Created by Vilem Kurz on 12.11.2011.
//  Copyright (c) 2011 Cocoa Miners. All rights reserved.
//

#import "ShareKitDemoConfigurator.h"

@implementation ShareKitDemoConfigurator

/* 
 App Description 
 ---------------
 These values are used by any service that shows 'shared from XYZ'
 */
- (NSString*)appName {
	return @"Share Kit Demo App";
}

- (NSString*)appURL {
	return @"https://github.com/ShareKit/ShareKit/";
}

/*
 API Keys
 --------
 This is the longest step to getting set up, it involves filling in API keys for the supported services.
 It should be pretty painless though and should hopefully take no more than a few minutes.
 
 Each key below as a link to a page where you can generate an api key.  Fill in the key for each service below.
 
 A note on services you don't need:
 If, for example, your app only shares URLs then you probably won't need image services like Flickr.
 In these cases it is safe to leave an API key blank.
 
 However, it is STRONGLY recommended that you do your best to support all services for the types of sharing you support.
 The core principle behind ShareKit is to leave the service choices up to the user.  Thus, you should not remove any services,
 leaving that decision up to the user.
 */


// Vkontakte
// SHKVkontakteAppID is the Application ID provided by Vkontakte
- (NSString*)vkontakteAppId {
	return @"2706858";
}

// Facebook - https://developers.facebook.com/apps
// SHKFacebookAppID is the Application ID provided by Facebook
// SHKFacebookLocalAppID is used if you need to differentiate between several iOS apps running against a single Facebook app. Useful, if you have full and lite versions of the same app,
// and wish sharing from both will appear on facebook as sharing from one main app. You have to add different suffix to each version. Do not forget to fill both suffixes on facebook developer ("URL Scheme Suffix"). Leave it blank unless you are sure of what you are doing. 
// The CFBundleURLSchemes in your App-Info.plist should be "fb" + the concatenation of these two IDs.
// Example: 
//    SHKFacebookAppID = 555
//    SHKFacebookLocalAppID = lite
// 
//    Your CFBundleURLSchemes entry: fb555lite
- (NSString*)facebookAppId {
	return @"232705466797125";
}

- (NSString*)facebookLocalAppId {
	return @"";
}
// Read It Later - http://readitlaterlist.com/api/signup/ 
- (NSString*)readItLaterKey {
	return @"45aT6Vfvg66eWNebybd680gu13pdba3d";
}
// Twitter - http://dev.twitter.com/apps/new
/*
 Important Twitter settings to get right:
 
 Differences between OAuth and xAuth
 --
 There are two types of authentication provided for Twitter, OAuth and xAuth.  OAuth is the default and will
 present a web view to log the user in.  xAuth presents a native entry form but requires Twitter to add xAuth to your app (you have to request it from them).
 If your app has been approved for xAuth, set SHKTwitterUseXAuth to 1.
 
 Callback URL (important to get right for OAuth users)
 --
 1. Open your application settings at http://dev.twitter.com/apps/
 2. 'Application Type' should be set to BROWSER (not client)
 3. 'Callback URL' should match whatever you enter in SHKTwitterCallbackUrl.  The callback url doesn't have to be an actual existing url.  The user will never get to it because ShareKit intercepts it before the user is redirected.  It just needs to match.
 */

- (NSString*)twitterConsumerKey {
	return @"48Ii81VO5NtDKIsQDZ3Ggw";
}

- (NSString*)twitterSecret {
	return @"WYc2HSatOQGXlUCsYnuW3UjrlqQj0xvkvvOIsKek32g";
}
// You need to set this if using OAuth, see note above (xAuth users can skip it)
- (NSString*)twitterCallbackUrl {
	return @"http://twitter.sharekit.com";
}
// To use xAuth, set to 1
- (NSNumber*)twitterUseXAuth {
	return [NSNumber numberWithInt:0];
}
// Enter your app's twitter account if you'd like to ask the user to follow it when logging in. (Only for xAuth)
- (NSString*)twitterUsername {
	return @"";
}
// Evernote - http://www.evernote.com/about/developer/api/
/*	You need to set to sandbox until you get approved by evernote
 // Sandbox
 #define SHKEvernoteUserStoreURL    @"https://sandbox.evernote.com/edam/user"
 #define SHKEvernoteNetStoreURLBase @"http://sandbox.evernote.com/edam/note/"
 
 // Or production
 #define SHKEvernoteUserStoreURL    @"https://www.evernote.com/edam/user"
 #define SHKEvernoteNetStoreURLBase @"http://www.evernote.com/edam/note/"
 */

- (NSString*)evernoteUserStoreURL {
	return @"";
}

- (NSString*)evernoteNetStoreURLBase {
	return @"";
}

- (NSString*)evernoteConsumerKey {
	return @"";
}

- (NSString*)evernoteSecret {
	return @"";
}
// Flickr - http://www.flickr.com/services/apps/create/
/*
 1 - This requires the CFNetwork.framework 
 2 - One needs to setup the flickr app as a "web service" on the flickr authentication flow settings, and enter in your app's custom callback URL scheme. 
 3 - make sure you define and create the same URL scheme in your apps info.plist. It can be as simple as yourapp://flickr */
- (NSString*)flickrConsumerKey {
    return @"72f05286417fae8da2d7e779f0eb1b2a";
}

- (NSString*)flickrSecretKey {
    return @"b5e731f395031782";
}
// The user defined callback url
- (NSString*)flickrCallbackUrl{
    return @"app://flickr";
}
// Bit.ly (for shortening URLs on Twitter) - http://bit.ly/account/register - after signup: http://bit.ly/a/your_api_key
- (NSString*)bitLyLogin {
	return @"vilem";
}

- (NSString*)bitLyKey {
	return @"R_466f921d62a0789ac6262b7711be8454";
}

// LinkedIn - https://www.linkedin.com/secure/developer
- (NSString*)linkedInConsumerKey {
	return @"9f8m5vx0yhjf";
}

- (NSString*)linkedInSecret {
	return @"UWGKcBWreMKhwzRG";
}

- (NSString*)linkedInCallbackUrl {
	return @"http://yourdomain.com/callback";
}

// Foursquare V2 - https://developer.foursquare.com
- (NSString*)foursquareV2ClientId {
    return @"NFJOGLJBI4C4RSZ3DQGR0W4ED5ZWAAE5QO3FW02Z3LLVZCT4";
}

- (NSString*)foursquareV2RedirectURI {
    return @"app://foursquare";
}


/*
 UI Configuration : Basic
 ------------------------
 These provide controls for basic UI settings.  For more advanced configuration see below.
 */

// Toolbars
- (NSString*)barStyle {
	return @"UIBarStyleDefault";// See: http://developer.apple.com/iphone/library/documentation/UIKit/Reference/UIKitDataTypesReference/Reference/reference.html#//apple_ref/c/econst/UIBarStyleDefault
}

- (UIColor*)barTintForView:(UIViewController*)vc {    
	
    if ([NSStringFromClass([vc class]) isEqualToString:@"SHKTwitter"]) 
        return [UIColor colorWithRed:0 green:151.0f/255 blue:222.0f/255 alpha:1];
    
    if ([NSStringFromClass([vc class]) isEqualToString:@"SHKFacebook"]) 
        return [UIColor colorWithRed:59.0f/255 green:89.0f/255 blue:152.0f/255 alpha:1];
    
    return nil;
}

// Forms
- (NSNumber*)formFontColorRed {
	return [NSNumber numberWithInt:-1];// Value between 0-255, set all to -1 for default
}

- (NSNumber*)formFontColorGreen {
	return [NSNumber numberWithInt:-1];// Value between 0-255, set all to -1 for default
}

- (NSNumber*)formFontColorBlue {
	return [NSNumber numberWithInt:-1];// Value between 0-255, set all to -1 for default
}

- (NSNumber*)formBgColorRed {
	return [NSNumber numberWithInt:-1];// Value between 0-255, set all to -1 for default
}

- (NSNumber*)formBgColorGreen {
	return [NSNumber numberWithInt:-1];// Value between 0-255, set all to -1 for default
}

- (NSNumber*)formBgColorBlue {
	return [NSNumber numberWithInt:-1];// Value between 0-255, set all to -1 for default
}
// iPad views
- (NSString*)modalPresentationStyle {
	return @"UIModalPresentationFormSheet";// See: http://developer.apple.com/iphone/library/documentation/UIKit/Reference/UIViewController_Class/Reference/Reference.html#//apple_ref/occ/instp/UIViewController/modalPresentationStyle
}

- (NSString*)modalTransitionStyle {
	return @"UIModalTransitionStyleCoverVertical";// See: http://developer.apple.com/iphone/library/documentation/UIKit/Reference/UIViewController_Class/Reference/Reference.html#//apple_ref/occ/instp/UIViewController/modalTransitionStyle
}
// ShareMenu Ordering
- (NSNumber*)shareMenuAlphabeticalOrder {
	return [NSNumber numberWithInt:0];// Setting this to 1 will show list in Alphabetical Order, setting to 0 will follow the order in SHKShares.plist
}
// Append 'Shared With 'Signature to Email (and related forms)
- (NSNumber*)sharedWithSignature {
	return [NSNumber numberWithInt:0];
}
// Name of the plist file that defines the class names of the sharers to use. Usually should not be changed, but 
// this allows you to subclass a sharer and have the subclass be used.
- (NSString*)sharersPlistName {
	return @"SHKSharers.plist";
}
/*
 UI Configuration : Advanced
 ---------------------------
 If you'd like to do more advanced customization of the ShareKit UI, like background images and more,
 check out http://getsharekit.com/customize
 */

// turn on to use placeholders in edit fields instead of labels to the left for input fields.
- (NSNumber*)usePlaceholders {
	return [NSNumber numberWithBool:false];
}
/*
 Advanced Configuration
 ----------------------
 These settings can be left as is.  This only need to be changed for uber custom installs.
 */
- (NSNumber*)maxFavCount {
	return [NSNumber numberWithInt:3];
}

- (NSString*)favsPrefixKey {
	return @"SHK_FAVS_";
}

- (NSString*)authPrefix {
	return @"SHK_AUTH_";
}

- (NSNumber*)allowOffline {
	return [NSNumber numberWithBool:true];
}

- (NSNumber*)allowAutoShare {
	return [NSNumber numberWithBool:true];
}

/* 
 Debugging settings
 ------------------
 see DefaultSHKConfigurator.h
 */


@end
