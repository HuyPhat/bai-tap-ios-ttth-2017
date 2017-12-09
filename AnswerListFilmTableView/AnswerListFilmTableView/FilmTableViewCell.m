//
//  FilmTableViewCell.m
//  AnswerListFilmTableView
//
//  Created by TNKHANH on 12/9/17.
//  Copyright © 2017 TNKHANH. All rights reserved.
//

#import "FilmTableViewCell.h"

@implementation FilmTableViewCell
@synthesize filmTime;
@synthesize filmThumbnail;
@synthesize filmTitle;
@synthesize filmRating;

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

-(void)setCellWithFilm:(FilmModel *)film {
    [filmThumbnail setImage:[UIImage imageNamed:[film filmImage]]];
    [filmTitle setText:[film filmName]];
    for(UIView *temp in [self subviews]) {
        if([temp isKindOfClass:[UIImageView class]]) {
            UIImageView *getImage = (UIImageView *)temp;
            if(getImage != filmRating) {
                [getImage removeFromSuperview];
            }
        }
    }
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"dd/MM/yyyy"];
    [filmTime setText:[NSString stringWithFormat:@"Ngay chieu:%@", [formatter stringFromDate:[film filmDateStart]]]];
    int vote = round([[film filmVote]floatValue]/2);
    for(int i = 0; i < vote; i++) {
        UIImageView *star = [[UIImageView alloc]initWithFrame:CGRectMake(filmTitle.frame.origin.x + i * 20, filmTitle.frame.origin.y + filmTitle.bounds.size.height + 5, 20, 20)];
        [star setImage:[UIImage imageNamed:@"star"]];
        [self addSubview:star];
    }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
