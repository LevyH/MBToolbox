//
//  UIView+MBSnapshotImage.h
//  Mockingbird Toolbox
//
//  Created by Evan Coyne Maloney on 9/23/13.
//  Copyright (c) 2013 Gilt Groupe. All rights reserved.
//

#import "MBAvailability.h"

#if MB_BUILD_UIKIT

#import <UIKit/UIKit.h>

/******************************************************************************/
#pragma -
#pragma mark UIView class additions
/******************************************************************************/

/*!
 A `UIView` class extension that provides methods for creating snapshot images
 of a view.
 */
@interface UIView (MBSnapshotImage)

/*----------------------------------------------------------------------------*/
#pragma mark Acquiring snapshot images from views
/*!    @name Acquiring snapshot images from views                             */
/*----------------------------------------------------------------------------*/

/*!
 Returns a `UIImage` instance containing a rendering of the receiver's content.
 
 @return    The image.
 */
- (nonnull UIImage*) snapshotImage;

/*!
 Returns a CoreImage `CIImage` instance containing a rendering of the receiver's
 content.
 
 @return    The image.
 */
- (nonnull CIImage*) coreImageSnapshot;

/*!
 Returns a CoreGraphics `CGImageRef` containing a rendering of the receiver's 
 content.
 
 @return    The image.
 */
- (nonnull CGImageRef) coreGraphicsSnapshot;

@end

#endif
