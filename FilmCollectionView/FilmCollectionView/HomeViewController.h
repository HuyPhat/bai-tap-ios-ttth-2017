//
//  HomeViewController.h
//  FilmCollectionView
//
//  Created by TNKHANH on 12/16/17.
//  Copyright © 2017 TNKHANH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeViewController : UIViewController<UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout> {
    NSMutableArray *filmList;
}

@property (nonatomic,weak) IBOutlet UICollectionView *tblData;

@end
