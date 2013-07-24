//
//  ViewController.m
//  CollectionViewTutorial
//
//  Created by Rizwan Javaid-Old on 7/23/13.
//  Copyright (c) 2013 Rizwan Javaid. All rights reserved.
//

#import "ViewController.h"
#import "CustomCell.h"

@interface ViewController ()
{
    NSArray *arrayOfImages;
    NSArray *arrayOfDescriptions;
    NSArray *arrayOfLinks;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // Set self as the datasource
    [[self myCollectionView]setDataSource:self];
    
    // Set self as the delegate
    [[self myCollectionView]setDelegate:self];
    
    // Initialize the arrays
    arrayOfImages = [[NSArray alloc]initWithObjects:@"1.jpeg",@"2.jpeg",@"3.jpeg",@"4.jpeg", @"5.jpeg", nil];
    arrayOfDescriptions = [[NSArray alloc]initWithObjects:@"One", @"Two", @"Three", @"Four", @"Five", nil];
    arrayOfLinks = [[NSArray alloc]initWithObjects:@"http://www.hojoki.com",@"http://www.squarespace.com",@"http://www.caspio.com",@"http://www.philau.edu",@"http://www.typekit.com", nil];
    
}


// Datasource and Delegate Methods

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [arrayOfImages count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    CustomCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:CellIdentifier forIndexPath:indexPath];
    
    [[cell myImage]setImage:[UIImage imageNamed:[arrayOfImages objectAtIndex:indexPath.item]]];

    [[cell myDescriptionLabel]setText:[arrayOfDescriptions objectAtIndex:indexPath.item]];
    
    // Add a button with a background image
    [[cell myButton] addTarget:self action:@selector(buttonTapped:) forControlEvents:UIControlEventTouchUpOutside];
    [[cell myButton] setBackgroundImage:[UIImage imageNamed:[arrayOfImages objectAtIndex:indexPath.item]] forState:UIControlStateNormal];
    
    
    return cell;
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonTapped:(id)sender {
     NSLog(@"test");
}
@end
