//
//  Planet.m
//  PlanetTrack
//
//  Created by Matt Milner on 7/16/16.
//  Copyright © 2016 Matt Milner. All rights reserved.
//

#import "Planet.h"

@implementation Planet


-(instancetype) initWithCoder: (NSCoder *) coder {
    
    self = [super init];
    
    self.planetName = [coder decodeObjectForKey:@"planetName"];
    self.planetDescription = [coder decodeObjectForKey: @"planetDescription"];
    self.imagePath = [coder decodeObjectForKey:@"imagePath"];
    self.distanceFromSun =  [coder decodeObjectForKey:@"distanceSun"];
    self.distanceFromEarth = [coder decodeObjectForKey:@"distanceEarth"];
    
    return self;
    
}

-(void) encodeWithCoder: (NSCoder *) coder{
    
    [coder encodeObject:self.planetName forKey:@"planetName"];
    [coder encodeObject:self.planetDescription forKey:@"planetDescription"];
    [coder encodeObject:self.imagePath forKey:@"imagePath"];
    [coder encodeObject:self.distanceFromSun forKey:@"distanceSun"];
    [coder encodeObject:self.distanceFromEarth forKey:@"distanceEarth"];
    
}






@end
