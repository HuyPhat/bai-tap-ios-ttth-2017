//
//  FilmCollectionViewCell.m
//  FilmCollectionView
//
//  Created by TNKHANH on 12/16/17.
//  Copyright © 2017 TNKHANH. All rights reserved.
//

#import "FilmCollectionViewCell.h"

@implementation FilmCollectionViewCell

@synthesize filmThumbnail;
@synthesize filmTitle;

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

-(void)setCellWithFilm:(FilmModel *)film {
    [filmThumbnail setImage:[UIImage imageNamed:[film filmImage]]];
    [filmTitle setText:[film filmName]];
}

@end
