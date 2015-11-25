//
//  AssetsManager.m
//
//  Created by Anton Morozov on 14.10.14.
//  Copyright (c) 2014 Anton Morozov. All rights reserved.
//

#import "AssetsManager.h"

@implementation AssetsManager

+ (ALAssetsLibrary *)defaultAssetsLibrary {
    static dispatch_once_t pred = 0;
    static ALAssetsLibrary *library = nil;
    dispatch_once(&pred, ^{
        library = [[ALAssetsLibrary alloc] init];
    });
    return library;
}

@end
