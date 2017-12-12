//
//  FilmDetailViewController.m
//  AnswerListFilmTableView
//
//  Created by TNKHANH on 12/9/17.
//  Copyright © 2017 TNKHANH. All rights reserved.
//
#define SCREEN_WIDTH [[UIScreen mainScreen]bounds].size.width
#define SCREEN_HEIGHT [[UIScreen mainScreen]bounds].size.height
#define STATUS_HEIGHT 20
#define NAV_HEIGHT 44
#define IMAGE_VIEW_WIDTH 120
#define IMAGE_VIEW_HEIGHT 150
#define LABEL_HEIGHT 30

#import "FilmDetailViewController.h"

@interface FilmDetailViewController ()

@end

@implementation FilmDetailViewController

@synthesize film;

- (void)viewDidLoad {
    [super viewDidLoad];
  [self setTitle:@"Chi Tiết Phim"];
  UIBarButtonItem *bookFilmButton = [[UIBarButtonItem alloc]initWithTitle:@"Đặt vé" style:UIBarButtonItemStylePlain target:self action:nil];
  [self.navigationItem setRightBarButtonItem:bookFilmButton];
  filmDetailScrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
  filmDetailScrollView.showsVerticalScrollIndicator=YES;
  filmDetailScrollView.scrollEnabled=YES;
  filmDetailScrollView.userInteractionEnabled=YES;
  [self.view addSubview:filmDetailScrollView];
  UIImageView *imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[film filmImage]]];
  [imageView setFrame:CGRectMake(SCREEN_WIDTH / 2 - IMAGE_VIEW_WIDTH / 2, 0, IMAGE_VIEW_WIDTH, IMAGE_VIEW_HEIGHT)];
  [filmDetailScrollView addSubview:imageView];
  UILabel *filmNameHeader = [[UILabel alloc]init];
  [filmNameHeader setFrame:CGRectMake(4, IMAGE_VIEW_HEIGHT + 4, 0, 30)];
  [filmNameHeader setFont:[UIFont boldSystemFontOfSize:17]];
  [filmNameHeader setText:@"Tên phim:"];
  [filmNameHeader sizeToFit];
  [filmDetailScrollView addSubview:filmNameHeader];
//  float filmNameLblWidth = filmNameHeader.intrinsicContentSize.width;
  UILabel *filmNameLbl = [[UILabel alloc]initWithFrame:CGRectMake(SCREEN_WIDTH / 2 - IMAGE_VIEW_WIDTH / 2, IMAGE_VIEW_HEIGHT + 4, 0, 30)];
  [filmNameLbl setText:[[film filmName]uppercaseString]];
  [filmNameLbl sizeToFit];
  [filmDetailScrollView addSubview:filmNameLbl];
  
//  filmNameHeader.frame.origin.x;
//  float y = filmNameHeader.frame.origin.y;
//  filmNameHeader.frame.size.width;
//  filmNameHeader.frame.size.height;
  UILabel *directorHeaderLbl = [[UILabel alloc]initWithFrame:CGRectMake(4, filmNameHeader.frame.origin.y + 30, 0, 30)];
  [directorHeaderLbl setText:@"Dao dien:"];
  [directorHeaderLbl setFont:[UIFont boldSystemFontOfSize:17]];
  [directorHeaderLbl sizeToFit];
  [filmDetailScrollView addSubview:directorHeaderLbl];
  
  UILabel *directorNameLbl = [[UILabel alloc]initWithFrame:CGRectMake(SCREEN_WIDTH / 2 - IMAGE_VIEW_WIDTH / 2, filmNameHeader.frame.origin.y + 30, 0, 30)];
  [directorNameLbl setText:[film filmDirector]];
  [directorNameLbl sizeToFit];
  [filmDetailScrollView addSubview:directorNameLbl];
  
  UILabel *durationHeaderLbl = [[UILabel alloc]initWithFrame:CGRectMake(4, directorHeaderLbl.frame.origin.y + 30, 0, 30)];
  [durationHeaderLbl setText:@"Thoi luong:"];
  [durationHeaderLbl setFont:[UIFont boldSystemFontOfSize:17]];
  [durationHeaderLbl sizeToFit];
  [filmDetailScrollView addSubview:durationHeaderLbl];
  
  UILabel *durationContentLbl = [[UILabel alloc]initWithFrame:CGRectMake(SCREEN_WIDTH / 2 - IMAGE_VIEW_WIDTH / 2, directorNameLbl.frame.origin.y + 30, 0, 30)];
  NSString *filmTimeString = [[NSString alloc]initWithFormat:@"%d phut", [[film filmTime]intValue]];
  [durationContentLbl setText:filmTimeString];
  [durationContentLbl sizeToFit];
  [filmDetailScrollView addSubview:durationContentLbl];
  
  UILabel *showTimeHeaderLbl = [[UILabel alloc]initWithFrame:CGRectMake(4, durationHeaderLbl.frame.origin.y + 30, 0, 30)];
  [showTimeHeaderLbl setText:@"Ngay chieu:"];
  [showTimeHeaderLbl setFont:[UIFont boldSystemFontOfSize:17]];
  [showTimeHeaderLbl sizeToFit];
  [filmDetailScrollView addSubview:showTimeHeaderLbl];
  
  UILabel *showTimeContentLbl = [[UILabel alloc]initWithFrame:CGRectMake(SCREEN_WIDTH / 2 - IMAGE_VIEW_WIDTH / 2, showTimeHeaderLbl.frame.origin.y, 0, 30)];
  NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
  [formatter setDateFormat:@"dd/MM/yyyy"];
  [showTimeContentLbl setText:[NSString stringWithFormat:@"%@", [formatter stringFromDate:[film filmDateStart]]]];
  [showTimeContentLbl sizeToFit];
  [filmDetailScrollView addSubview:showTimeContentLbl];
  
  UILabel *detailHeaderLbl = [[UILabel alloc]initWithFrame:CGRectMake(4, showTimeHeaderLbl.frame.origin.y + 30, 0, 30)];
  [detailHeaderLbl setText:@"Noi dung:"];
  [detailHeaderLbl setFont:[UIFont boldSystemFontOfSize:17]];
  [detailHeaderLbl sizeToFit];
  [filmDetailScrollView addSubview:detailHeaderLbl];
  
  UILabel *detailContentLbl = [[UILabel alloc]initWithFrame:CGRectMake(4, detailHeaderLbl.frame.origin.y + 30, SCREEN_WIDTH + 30, 30)];
  
  detailContentLbl.lineBreakMode = NSLineBreakByWordWrapping;
  detailContentLbl.numberOfLines = 0;
  [detailContentLbl setText:[film filmContent]];
  [detailHeaderLbl sizeToFit];
  [filmDetailScrollView addSubview:detailContentLbl];
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
