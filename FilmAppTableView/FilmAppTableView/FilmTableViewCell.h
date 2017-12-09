//
//  FilmTableViewCell.h
//  FilmAppTableView
//
//  Created by TNKHANH on 12/5/17.
//  Copyright © 2017 TNKHANH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FilmTableViewCell : UITableViewCell

@property(nonatomic, weak)IBOutlet UIImageView *filmThumbnail;
@property(nonatomic, weak)IBOutlet UIImageView *ratingImage;
@property(nonatomic, weak)IBOutlet UILabel *filmName;
@property(nonatomic, weak)IBOutlet UILabel *filmPublishDate;

@end
