//
//  HomeViewController.m
//  NewTableView
//
//  Created by TNKHANH on 12/9/17.
//  Copyright © 2017 TNKHANH. All rights reserved.
//

#define SCREEN_WIDTH [[UIScreen mainScreen]bounds].size.width
#define SCREEN_HEIGHT [[UIScreen mainScreen]bounds].size.height
#define STATUS_HEIGHT 20
#define NAV_HEIGHT 44

#import "HomeViewController.h"
#import "HomeTableViewCell.h"
#import "HeaderView.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

@synthesize tblData;

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpView];
}

- (void)setUpView {
    [tblData setFrame:CGRectMake(0, STATUS_HEIGHT, SCREEN_WIDTH, SCREEN_HEIGHT-STATUS_HEIGHT)];
    [tblData registerNib:[UINib nibWithNibName:@"HomeTableViewCell" bundle:nil] forCellReuseIdentifier:@"Cell"];
    tblData.dataSource = self;
    tblData.delegate = self;
    [self setUpData];
}

-(void)setUpData {
    NSArray *listA = @[@"item1", @"item2"];
    NSArray *listB = @[@"item3", @"item4"];
    NSArray *listC = @[@"item5", @"item6"];
    dataList = @[listA, listB, listC];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [dataList count];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[dataList objectAtIndex:section]count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    HomeTableViewCell *cell = [tblData dequeueReusableCellWithIdentifier:@"Cell"];
    return cell;
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    HeaderView *header = [[HeaderView alloc]init];
    return header;
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
