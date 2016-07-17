//
//  PlanetListTableViewController.m
//  PlanetTrack
//
//  Created by Matt Milner on 7/16/16.
//  Copyright © 2016 Matt Milner. All rights reserved.
//

#import "PlanetListTableViewController.h"

@interface PlanetListTableViewController ()

@end

@implementation PlanetListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.backBarButtonItem.title = @"Home";
    
    _planetList = [[NSMutableArray alloc] init];
        
    Planet *mercury = [[Planet alloc] init];
    mercury.planetName = @"Mercury";
    mercury.distanceFromSun = @"35.98";
    mercury.distanceFromEarth = @"56.97";
    mercury.planetDescription = @"The Smallest Planet";
    mercury.imagePath = @"3D_Mercury.png";
    
    Planet *venus = [[Planet alloc] init];
    venus.planetName = @"Venus";
    venus.distanceFromSun = @"67.24";
    venus.distanceFromEarth = @"25.72";
    venus.planetDescription = @"The Brightest Planet";
    venus.imagePath = @"3D_Venus.png";
    
    Planet *earth = [[Planet alloc] init];
    earth.planetName = @"Earth";
    earth.distanceFromSun = @"92.96";
    earth.distanceFromEarth = @"0.0";
    earth.planetDescription = @"The Home of Mankind";
    earth.imagePath = @"3D_Earth.png";
    
    Planet *mars = [[Planet alloc] init];
    mars.planetName = @"Mars";
    mars.distanceFromSun = @"141.6";
    mars.distanceFromEarth = @"48.68";
    mars.planetDescription = @"The Small Red Planet";
    mars.imagePath = @"3D_Mars.png";
    
    Planet *jupiter = [[Planet alloc] init];
    jupiter.planetName = @"Jupiter";
    jupiter.distanceFromSun = @"483.8";
    jupiter.distanceFromEarth = @"390.67";
    jupiter.planetDescription = @"A Cloudy Gas Giant";
    jupiter.imagePath = @"3D_Jupiter.png";
    
    Planet *saturn = [[Planet alloc] init];
    saturn.planetName = @"Saturn";
    saturn.distanceFromSun = @"888.2";
    saturn.distanceFromEarth = @"792.25";
    saturn.planetDescription = @"The Ringed Gas Giant";
    saturn.imagePath = @"3D_Saturn.png";
    
    Planet *uranus = [[Planet alloc] init];
    uranus.planetName = @"Uranus";
    uranus.distanceFromSun = @"1787.0";
    uranus.distanceFromEarth = @"1692.66";
    uranus.planetDescription = @"The Rolling Ice Giant";
    uranus.imagePath = @"3D_Uranus.png";
    
    Planet *neptune = [[Planet alloc] init];
    neptune.planetName = @"Neptune";
    neptune.distanceFromSun = @"2795.6";
    neptune.distanceFromEarth = @"2700.0";
    neptune.planetDescription = @"The Blue God Planet";
    neptune.imagePath = @"3D_Neptune.png";
    
    [_planetList addObject:mercury];
    [_planetList addObject:venus];
    [_planetList addObject:earth];
    [_planetList addObject:mars];
    [_planetList addObject:jupiter];
    [_planetList addObject:saturn];
    [_planetList addObject:uranus];
    [_planetList addObject:neptune];
    
    self.tableView.backgroundColor = [UIColor clearColor];
    
    UIImageView *tableImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"starfield.jpeg"]];
    self.tableView.backgroundView = tableImage;
    self.title = @"Select Planet";
    self.tableView.rowHeight = 115;
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return _planetList.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PlanetNameCell" forIndexPath:indexPath];
    
    Planet *currentPlanet = _planetList[indexPath.row];
    cell.textLabel.textColor = [UIColor whiteColor];
    cell.textLabel.textAlignment = NSTextAlignmentCenter;
    cell.textLabel.font = [UIFont fontWithName:@"Apple SD Gothic Neo" size:33.0];
    cell.backgroundColor = [UIColor clearColor];
    cell.textLabel.text = currentPlanet.planetName;
    cell.imageView.image = [UIImage imageNamed:currentPlanet.imagePath];
    cell.selectionStyle = UITableViewCellSelectionStyleBlue;
    [cell.contentView.layer setBorderColor:[UIColor blueColor].CGColor];
    [cell.contentView.layer setBorderWidth:2.0f];
    return cell;
}


-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    PlanetInformationViewController *planetInfoController = segue.destinationViewController;
    
    if([segue.identifier isEqualToString:@"PlanetInfoSegue"]){
        
    
    UITableViewCell *selectedCell = (UITableViewCell *) sender;
    
        if([selectedCell.textLabel.text isEqualToString:@"Mercury"]){
            planetInfoController.planet = _planetList[0];
        }
        else if ([selectedCell.textLabel.text isEqualToString:@"Venus"]){
            planetInfoController.planet = _planetList[1];
        }
        else if ([selectedCell.textLabel.text isEqualToString:@"Earth"]){
            planetInfoController.planet = _planetList[2];
        }
        else if ([selectedCell.textLabel.text isEqualToString:@"Mars"]){
            planetInfoController.planet = _planetList[3];
        }
        else if ([selectedCell.textLabel.text isEqualToString:@"Jupiter"]){
            planetInfoController.planet = _planetList[4];
        }
        else if ([selectedCell.textLabel.text isEqualToString:@"Saturn"]){
            planetInfoController.planet = _planetList[5];
        }
        else if ([selectedCell.textLabel.text isEqualToString:@"Uranus"]){
            planetInfoController.planet = _planetList[6];
        }
        else if ([selectedCell.textLabel.text isEqualToString:@"Neptune"]){
            planetInfoController.planet = _planetList[7];
        }
    
    }
    
    
    
    
    
}


































@end
