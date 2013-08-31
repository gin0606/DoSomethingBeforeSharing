//
// Created by gin0606 on 2013/08/31.
//


#import "KKActivityItemProvider.h"


@interface NSString (KKActivityType)
- (BOOL)isSNS;

- (BOOL)isMessage;

- (BOOL)isMail;

- (BOOL)isCopyToPasteboard;
@end

@implementation KKActivityItemProvider {

}

- (id)activityViewController:(UIActivityViewController *)activityViewController itemForActivityType:(NSString *)activityType {
    NSLog(@"%s", __PRETTY_FUNCTION__);
    return [super activityViewController:activityViewController itemForActivityType:activityType];
}

- (id)item {
    NSLog(@"%s", __PRETTY_FUNCTION__);
    if ([self.activityType isCopyToPasteboard]) {
        // Do Something
        NSLog(@"%@", self.placeholderItem);
        dispatch_async(dispatch_get_main_queue(), ^{

        });
    }
    return [super item];
}

@end


@implementation NSString (KKActivityType)
- (BOOL)isSNS {
    return [self isEqualToString:UIActivityTypePostToFacebook]
            || [self isEqualToString:UIActivityTypePostToTwitter]
            || [self isEqualToString:UIActivityTypePostToWeibo];
}

- (BOOL)isMessage {
    return [self isEqualToString:UIActivityTypeMessage];
}

- (BOOL)isMail {
    return [self isEqualToString:UIActivityTypeMail];
}

- (BOOL)isCopyToPasteboard {
    return [self isEqualToString:UIActivityTypeCopyToPasteboard];
}
@end