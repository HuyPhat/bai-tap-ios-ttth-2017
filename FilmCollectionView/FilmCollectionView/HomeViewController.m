//
//  HomeViewController.m
//  FilmCollectionView
//
//  Created by TNKHANH on 12/16/17.
//  Copyright © 2017 TNKHANH. All rights reserved.
//
#define SCREEN_WIDTH [[UIScreen mainScreen]bounds].size.width
#define SCREEN_HEIGHT [[UIScreen mainScreen]bounds].size.height
#define STATUS_HEIGHT 20
#define NAV_HEIGHT 44
#define MARGIN 5

#import "HomeViewController.h"
#import "FilmCollectionViewCell.h"
#import "FilmModel.h"
#import "ContentManager.h"
//#import "FilmDetailViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

@synthesize tblData;

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpView];
}

- (void)setUpView {
    self.automaticallyAdjustsScrollViewInsets = NO;
    [tblData setFrame:CGRectMake(0, STATUS_HEIGHT+NAV_HEIGHT, SCREEN_WIDTH, SCREEN_HEIGHT-STATUS_HEIGHT-NAV_HEIGHT)];
    [tblData registerNib:[UINib nibWithNibName:@"FilmCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:@"Cell"];
    tblData.dataSource = self;
    tblData.delegate = self;
    [self getData];
}


-(void)getData {
    filmList = [[NSMutableArray alloc]init];
    [filmList addObjectsFromArray:[[ContentManager shareManager]getFilmList:@"Data"]];
    [tblData reloadData];
}

-(CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    return MARGIN;
}


-(CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    return MARGIN;
}

-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    int columns = 2;
    return CGSizeMake((SCREEN_WIDTH - (columns + 1) * MARGIN) / columns, (SCREEN_WIDTH - (columns + 1) * MARGIN / columns));
}

-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    return UIEdgeInsetsMake(MARGIN, MARGIN, MARGIN, MARGIN);
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return filmList.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    FilmCollectionViewCell *cell = [tblData dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    [cell setCellWithFilm:[filmList objectAtIndex:[indexPath row]]];
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
