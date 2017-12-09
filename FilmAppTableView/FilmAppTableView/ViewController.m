//
//  ViewController.m
//  FilmAppTableView
//
//  Created by TNKHANH on 12/5/17.
//  Copyright © 2017 TNKHANH. All rights reserved.
//
#define SCREEN_WIDTH [[UIScreen mainScreen]bounds].size.width
#define SCREEN_HEIGHT [[UIScreen mainScreen]bounds].size.height
#define STATUS_HEIGHT 20
#define UIColorFromRGB(rgbValue) \
[UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 \
green:((float)((rgbValue & 0x00FF00) >>  8))/255.0 \
blue:((float)((rgbValue & 0x0000FF) >>  0))/255.0 \
alpha:1.0]

#import "ViewController.h"
#import "FilmTableViewCell.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize tblView;

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpView];

}

- (void)setUpView {
    [tblView setFrame:CGRectMake(0, STATUS_HEIGHT, SCREEN_WIDTH, SCREEN_HEIGHT-STATUS_HEIGHT)];
    [tblView registerNib:[UINib nibWithNibName:@"FilmTableViewCell" bundle:nil] forCellReuseIdentifier:@"Cell"];
    tblView.dataSource = self;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    switch (section) {
        case 0:
            return 1;
            break;
        case 1:
            return 15;
            break;
        case 2:
            return 20;
            break;
        default:
            return 20;
            break;
    }
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  FilmTableViewCell *cell = [tblView dequeueReusableCellWithIdentifier:@"Cell"];
  [cell.filmName setText:@"Thần bút mã lương"];
  cell.filmName.textColor = UIColorFromRGB(0xffffff);
  cell.contentView.backgroundColor = UIColorFromRGB(0x0095ff);
  cell.filmThumbnail.image = [UIImage imageNamed:@"hinh2.jpg"];
  cell.filmThumbnail.contentMode = UIViewContentModeScaleAspectFill;
  CGRect frame = [tblView rectForRowAtIndexPath:indexPath];
  NSLog(@"row height : %f", frame.size.height);
  return cell;
}

//-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
//  return 55.000000;
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
