//
//  ViewController.h
//  FilmAppTableView
//
//  Created by TNKHANH on 12/5/17.
//  Copyright © 2017 TNKHANH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>

@property(nonatomic,weak) IBOutlet UITableView *tblView;

@end

