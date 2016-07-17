//
//  Planet.h
//  PlanetTrack
//
//  Created by Matt Milner on 7/16/16.
//  Copyright © 2016 Matt Milner. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Planet : NSObject


@property (nonatomic,weak) NSString *planetName;
@property (nonatomic,weak) NSString *planetDescription;
@property (nonatomic,weak) NSString *imagePath;
@property (nonatomic,weak) NSString *distanceFromSun;
@property (nonatomic,weak) NSString *distanceFromEarth;



@end
