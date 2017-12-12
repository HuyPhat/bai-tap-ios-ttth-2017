//
//  FilmDetailViewController.h
//  AnswerListFilmTableView
//
//  Created by TNKHANH on 12/9/17.
//  Copyright © 2017 TNKHANH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FilmModel.h"

@interface FilmDetailViewController : UIViewController {
  UIScrollView *filmDetailScrollView;
}

@property (nonatomic,assign) FilmModel* film;

@end
