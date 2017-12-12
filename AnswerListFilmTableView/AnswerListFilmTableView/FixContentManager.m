//
//  FixContentManager.m
//  AnswerListFilmTableView
//
//  Created by TNKHANH on 12/12/17.
//  Copyright © 2017 TNKHANH. All rights reserved.
//
#define KEY_FILM_PLAYING @"FilmsPlaying"

#import "FixContentManager.h"
#import "FilmModel.h"

@implementation FixContentManager

+(FixContentManager *)fShareManager {
    static FixContentManager *manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[FixContentManager alloc]init];
    });
    return manager;
}

-(NSArray*)getFilmList {
        NSString *filePath = [[NSBundle mainBundle]pathForResource:@"Data" ofType:@"plist"];
        NSDictionary *filmDict = [NSDictionary dictionaryWithContentsOfFile:filePath];
        NSMutableArray *filmList = [[NSMutableArray alloc]init];
        for(NSDictionary *temp in [filmDict objectForKey:KEY_FILM_PLAYING]) {
            [filmList addObject:[FilmModel filmModelFromDictionary:temp]];
        }
    return filmList;
}


@end
