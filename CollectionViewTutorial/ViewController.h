//
//  ViewController.h
//  CollectionViewTutorial
//
//  Created by Rizwan Javaid-Old on 7/23/13.
//  Copyright (c) 2013 Rizwan Javaid. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UICollectionViewDataSource, UICollectionViewDelegate>

@property (weak, nonatomic) IBOutlet UICollectionView *myCollectionView;

- (IBAction)buttonTapped:(id)sender;


@end
