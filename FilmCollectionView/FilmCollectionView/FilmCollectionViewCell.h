//
//  FilmCollectionViewCell.h
//  FilmCollectionView
//
//  Created by TNKHANH on 12/16/17.
//  Copyright © 2017 TNKHANH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FilmModel.h"

@interface FilmCollectionViewCell : UICollectionViewCell

@property(nonatomic,weak) IBOutlet UIImageView *filmThumbnail;
@property(nonatomic,weak) IBOutlet UILabel *filmTitle;

-(void)setCellWithFilm:(FilmModel *)film;

@end
