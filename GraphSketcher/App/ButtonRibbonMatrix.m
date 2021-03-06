// Copyright 2003-2013 Omni Development, Inc.  All rights reserved.
//
// This software may only be used and reproduced according to the
// terms in the file OmniSourceLicense.html, which should be
// distributed with this project and can also be found at
// <http://www.omnigroup.com/developer/sourcecode/sourcelicense/>.
//
// $Header: svn+ssh://source.omnigroup.com/Source/svn/Omni/trunk/OmniGroup/Applications/OmniGraphSketcher/App/ButtonRibbonMatrix.m 200244 2013-12-10 00:11:55Z correia $

#import "ButtonRibbonMatrix.h"

#import "ButtonRibbonCell.h"

RCS_ID("$Header: svn+ssh://source.omnigroup.com/Source/svn/Omni/trunk/OmniGroup/Applications/OmniGraphSketcher/App/ButtonRibbonMatrix.m 200244 2013-12-10 00:11:55Z correia $");

@implementation ButtonRibbonMatrix

+ (Class)cellClass;
{
    return [ButtonRibbonCell class];
}

- (void)awakeFromNib;
{
    // Set the "position" ivar of each cell so that the rounded corners will appear in the correct places.
    NSArray *cells = [self cells];
    NSUInteger index = 0;
    for (ButtonRibbonCell *cell in cells) {
	
	ButtonRibbonCellPosition position;
	if (index == 0)
	    position = ButtonRibbonCellLeft;
	else if (index == [cells count] - 1)
	    position = ButtonRibbonCellRight;
	else
	    position = ButtonRibbonCellMiddle;
	
	[cell setPosition:position];
	
	index++;
    }
}

@end
