//
//  FilmListViewController.m
//  AnswerListFilmTableView
//
//  Created by TNKHANH on 12/9/17.
//  Copyright © 2017 TNKHANH. All rights reserved.
//

#define SCREEN_WIDTH [[UIScreen mainScreen]bounds].size.width
#define SCREEN_HEIGHT [[UIScreen mainScreen]bounds].size.height
#define STATUS_HEIGHT 20
#define NAV_HEIGHT 44
#define KEY_FILM_PLAYING @"FilmsPlaying"

#import "FilmListViewController.h"
#import "FilmTableViewCell.h"
#import "FilmModel.h"
#import "FilmDetailViewController.h"

@interface FilmListViewController ()

@end

@implementation FilmListViewController

@synthesize filmListTableView;

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setUpView {
    [self setTitle:@"Film List"];
    self.automaticallyAdjustsScrollViewInsets = NO;
    [filmListTableView setFrame:CGRectMake(0, STATUS_HEIGHT+NAV_HEIGHT, SCREEN_WIDTH, SCREEN_HEIGHT-STATUS_HEIGHT-NAV_HEIGHT)];
    [filmListTableView registerNib:[UINib nibWithNibName:@"FilmTableViewCell" bundle:nil] forCellReuseIdentifier:@"Cell"];
    filmListTableView.dataSource = self;
    filmListTableView.delegate = self;
    [self getData];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return filmList.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    FilmTableViewCell *cell = [filmListTableView dequeueReusableCellWithIdentifier:@"Cell"];
    [cell setCellWithFilm:[filmList objectAtIndex:[indexPath row]]];
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100;
}

-(void)getData {
    NSString *filePath = [[NSBundle mainBundle]pathForResource:@"Data" ofType:@"plist"];
    NSDictionary *filmDict = [NSDictionary dictionaryWithContentsOfFile:filePath];
    filmList = [[NSMutableArray alloc]init];
    for(NSDictionary *temp in [filmDict objectForKey:KEY_FILM_PLAYING]) {
//        NSLog(@"data %@", temp);
        [filmList addObject:[FilmModel filmModelFromDictionary:temp]];
    }
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self performSegueWithIdentifier:@"DetailView" sender:[filmList objectAtIndex:[indexPath row]]];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([[segue identifier]isEqualToString:@"DetailView"]) {
        FilmDetailViewController *detailView = (FilmDetailViewController *)[segue destinationViewController];
    }
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
