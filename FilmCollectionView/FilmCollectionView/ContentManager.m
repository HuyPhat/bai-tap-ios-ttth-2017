//
//  ContentManager.m
//  AnswerListFilmTableView
//
//  Created by TNKHANH on 12/12/17.
//  Copyright © 2017 TNKHANH. All rights reserved.
//
#define KEY_FILM_PLAYING @"FilmsPlaying"

#import "ContentManager.h"
#import "FilmModel.h"

@implementation ContentManager

+(ContentManager *)shareManager {
    static ContentManager *manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[ContentManager alloc]init];
    });
    return manager;
}

-(NSDictionary *)getFileDict:(NSString *)path {
    NSString *filePath = [[NSBundle mainBundle]pathForResource:path ofType:@"plist"];
    fileDict = [NSDictionary dictionaryWithContentsOfFile:filePath];
    return fileDict;
}

-(NSMutableArray *)getFilmList:(NSString *)path {
    NSDictionary *filmDict = [self getFileDict:path];
    filmList = [[NSMutableArray alloc]init];
    for(NSDictionary *temp in [filmDict objectForKey:KEY_FILM_PLAYING]) {
        [filmList addObject:[FilmModel filmModelFromDictionary:temp]];
    }
    return filmList;
}

@end
