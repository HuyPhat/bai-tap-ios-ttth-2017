//
//  HeaderView.m
//  NewTableView
//
//  Created by TNKHANH on 12/9/17.
//  Copyright © 2017 TNKHANH. All rights reserved.
//

#import "HeaderView.h"

@implementation HeaderView

-(instancetype)init {
    self=[[[NSBundle mainBundle]loadNibNamed:@"HeaderView" owner:nil options:nil]objectAtIndex:0];
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
