//
//  FilmTableViewCell.h
//  AnswerListFilmTableView
//
//  Created by TNKHANH on 12/9/17.
//  Copyright © 2017 TNKHANH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FilmModel.h"

@interface FilmTableViewCell : UITableViewCell

@property(nonatomic,weak) IBOutlet UIImageView *filmThumbnail;
@property(nonatomic,weak) IBOutlet UILabel *filmTitle;
@property(nonatomic,weak) IBOutlet UILabel *filmTime;
@property(nonatomic,weak) IBOutlet UIImageView *filmRating;

-(void)setCellWithFilm:(FilmModel *)film;

@end
