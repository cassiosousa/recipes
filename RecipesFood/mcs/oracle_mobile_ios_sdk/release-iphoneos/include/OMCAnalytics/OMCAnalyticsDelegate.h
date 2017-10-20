//
//  OMCAnalyticsDelegate.h
//  OMCAnalytics
//
//  Copyright (c) 2015, Oracle Corp. All rights reserved. 
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/**
 This protocol defines the optional methods used to receive updates from
 the Analytics service.
 */
@protocol OMCAnalyticsDelegate <NSObject>

@optional

/**
 Notifies the delegate that the analytics service successfully posted events
 to the analytics server.
 The delegate will be notified on the main dispatch queue.
 @param analytics The analytics that generated the event.
 @param request The REST request used to post the analytics events to the analytics server.
 @param response The REST server response to the posting of analytics events.
 @param responseData The data returned by the analytics server in response to the posting of analytics events.
 */
- (void)analytics:(OMCAnalytics*)analytics didPostEvents:(NSURLRequest*)request response:(NSHTTPURLResponse*)response responseData:(NSData*)responseData;

/**
 Notifies the delegate that the analytics service suffered the specified error.
 The delegate will be notified on the main dispatch queue.
 @param analytics The analytics that generated the event.
 @param error The error generated by the analytics service, typically related to
 posting analytics events.
 */
- (void)analytics:(OMCAnalytics*)analytics didFailWithError:(NSError*)error;

@end

NS_ASSUME_NONNULL_END
