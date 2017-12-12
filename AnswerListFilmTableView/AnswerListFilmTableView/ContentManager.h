//
//  ContentManager.h
//  AnswerListFilmTableView
//
//  Created by TNKHANH on 12/12/17.
//  Copyright © 2017 TNKHANH. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ContentManager : NSObject {
    NSDictionary *fileDict;
    NSMutableArray *filmList;
}

+(ContentManager *)shareManager;

-(NSDictionary *)getFileDict:(NSString *)path;

-(NSMutableArray *)getFilmList:(NSString *)path;

@end
