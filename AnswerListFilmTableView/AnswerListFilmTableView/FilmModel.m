//
//  FilmModel.m
//  AnswerListFilmTableView
//
//  Created by TNKHANH on 12/9/17.
//  Copyright © 2017 TNKHANH. All rights reserved.
//

//#define KEY_FILM_TIME @"ZFILMTIME"
//#define KEY_FILM_DATE_START @"ZFILMDATESTART"
//#define KEY_FILM_CONTENT @"ZFILMCONTENT"
//#define KEY_FILM_DIRECTOR @"ZFILMDIRECTOR"
//#define KEY_FILM_ID @"ZFILMID"
//#define KEY_FILM_IMAGE @"ZFILMIMAGE"
//#define KEY_FILM_NAME @"ZFILMNAME"
//#define KEY_FILM_TYPE @"ZFILMTYPE"
//#define KEY_FILM_VOTE @"ZFILMVOTE"

#import "FilmModel.h"

@implementation FilmModel

@synthesize filmTime;
@synthesize filmDateStart;
@synthesize filmContent;
@synthesize filmDirector;
@synthesize filmID;
@synthesize filmImage;
@synthesize filmName;
@synthesize filmType;
@synthesize filmVote;

+(FilmModel *)filmModelFromDictionary:(NSDictionary *)dict {
    FilmModel *film = [[FilmModel alloc]init];
    film.filmName = [dict objectForKey:KEY_FILM_NAME];
    film.filmVote = [dict objectForKey:KEY_FILM_VOTE];
    film.filmImage = [dict objectForKey:KEY_FILM_IMAGE];
    film.filmTime = [dict objectForKey:KEY_FILM_TIME];
    film.filmDateStart = [dict objectForKey:KEY_FILM_DATE_START];
    film.filmID = [dict objectForKey:KEY_FILM_ID];
    film.filmType = [dict objectForKey:KEY_FILM_TYPE];
    film.filmDirector = [dict objectForKey:KEY_FILM_DIRECTOR];
    film.filmContent = [dict objectForKey:KEY_FILM_CONTENT];
    return film;
}

@end
