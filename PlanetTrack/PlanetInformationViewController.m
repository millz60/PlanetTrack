//
//  PlanetInformationViewController.m
//  PlanetTrack
//
//  Created by Matt Milner on 7/16/16.
//  Copyright © 2016 Matt Milner. All rights reserved.
//

#import "PlanetInformationViewController.h"

@interface PlanetInformationViewController ()

@end

@implementation PlanetInformationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)viewWillAppear:(BOOL)animated{
    
    [self setupPlanetScreen:self.planet];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void) setupPlanetScreen: (Planet *) sentPlanet{
    
    self.planet = (Planet *) sentPlanet;
    
    self.planetTitleLabel.text = sentPlanet.planetName;
    self.planetSubtitleLabel.text = sentPlanet.planetDescription;
    self.planetImage.image = [UIImage imageNamed:sentPlanet.imagePath];
    self.distanceFromEarthLabel.text = [NSString stringWithFormat:@" %@ Million Miles", sentPlanet.distanceFromEarth];
    self.distanceFromSunLabel.text = [NSString stringWithFormat:@" %@ Million Miles", sentPlanet.distanceFromSun];
    
    _earthDistance = self.planet.distanceFromEarth.floatValue;
    _sunDistance = self.planet.distanceFromSun.floatValue;
    
    
    [NSTimer scheduledTimerWithTimeInterval:0.05f target:self selector:@selector(updateDistance:) userInfo:nil repeats:YES];

}


// Insert Planetary Distance Equations here

- (void) updateDistance:(NSTimer *)timer{
    float i = 0.00011421521412;
        if(![self.planet.planetName isEqualToString:@"Earth"]){
            _earthDistance += i;
            self.distanceFromEarthLabel.text = [NSString stringWithFormat:@" %.05f Million Miles", (float) _earthDistance];
        }
        _sunDistance += (i * 2);
        self.distanceFromSunLabel.text = [NSString stringWithFormat:@" %.05f Million Miles", (float) _sunDistance];
    
}





    


@end
