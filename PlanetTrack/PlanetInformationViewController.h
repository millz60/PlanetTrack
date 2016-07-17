//
//  PlanetInformationViewController.h
//  PlanetTrack
//
//  Created by Matt Milner on 7/16/16.
//  Copyright © 2016 Matt Milner. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Planet.h"
#import "PlanetListTableViewController.h"

@interface PlanetInformationViewController : UIViewController

@property (nonatomic,weak) IBOutlet UILabel *planetTitleLabel;
@property (nonatomic,weak) IBOutlet UILabel *planetSubtitleLabel;
@property (nonatomic,weak) IBOutlet UILabel *distanceFromEarthLabel;
@property (nonatomic,weak) IBOutlet UILabel *distanceFromSunLabel;
@property (nonatomic,weak) IBOutlet UIImageView *planetImage;


@property float earthDistance;
@property float sunDistance;



@property Planet *planet;

@end
