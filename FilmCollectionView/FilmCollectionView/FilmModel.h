//
//  FilmModel.h
//  AnswerListFilmTableView
//
//  Created by TNKHANH on 12/9/17.
//  Copyright © 2017 TNKHANH. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FilmModel : NSObject

@property (nonatomic,strong) NSNumber *filmTime;
@property (nonatomic,strong) NSDate *filmDateStart;
@property (nonatomic,strong) NSString *filmContent;
@property (nonatomic,strong) NSString *filmDirector;
@property (nonatomic,strong) NSString *filmID;
@property (nonatomic,strong) NSString *filmImage;
@property (nonatomic,strong) NSString *filmName;
@property (nonatomic,strong) NSString *filmType;
@property (nonatomic,strong) NSString *filmVote;

+(FilmModel*)filmModelFromDictionary:(NSDictionary *)dict;

@end
