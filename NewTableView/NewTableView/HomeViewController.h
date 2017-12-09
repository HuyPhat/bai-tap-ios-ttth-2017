//
//  HomeViewController.h
//  NewTableView
//
//  Created by TNKHANH on 12/9/17.
//  Copyright © 2017 TNKHANH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeViewController : UIViewController<UITableViewDelegate,UITableViewDataSource> {
    NSArray *dataList;
}

@property (nonatomic,weak) IBOutlet UITableView *tblData;

@end
