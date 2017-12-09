//
//  FilmListViewController.h
//  AnswerListFilmTableView
//
//  Created by TNKHANH on 12/9/17.
//  Copyright © 2017 TNKHANH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FilmListViewController : UIViewController<UITableViewDataSource, UITableViewDelegate> {
    NSMutableArray *filmList;
}

@property (nonatomic, weak) IBOutlet UITableView *filmListTableView;

@end
