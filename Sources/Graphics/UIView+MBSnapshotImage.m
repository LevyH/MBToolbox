//
//  UIView+MBSnapshotImage.m
//  Mockingbird Toolbox
//
//  Created by Evan Coyne Maloney on 9/23/13.
//  Copyright (c) 2013 Gilt Groupe. All rights reserved.
//

#import "UIView+MBSnapshotImage.h"

#if MB_BUILD_UIKIT

#import "MBModuleLogMacros.h"

#define DEBUG_LOCAL             0

/******************************************************************************/
#pragma -
#pragma mark UIView class additions
/******************************************************************************/

@implementation UIView (MBSnapshotImage)

/******************************************************************************/
#pragma mark Acquiring images from views
/******************************************************************************/

- (nonnull UIImage*) snapshotImage
{
    MBLogDebugTrace();

    UIGraphicsBeginImageContextWithOptions(self.bounds.size, self.isOpaque, 0.0);
    [self drawViewHierarchyInRect:self.bounds afterScreenUpdates:NO];
    UIImage* image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

- (nonnull CIImage*) coreImageSnapshot
{
    MBLogDebugTrace();
    
    return [CIImage imageWithCGImage:[self coreGraphicsSnapshot]];
}

- (nonnull CGImageRef) coreGraphicsSnapshot
{
    MBLogDebugTrace();
    
    return [self snapshotImage].CGImage;
}

@end

#endif
