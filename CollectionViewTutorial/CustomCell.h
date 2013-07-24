//
//  CustomCell.h
//  CollectionViewTutorial
//
//  Created by Rizwan Javaid-Old on 7/23/13.
//  Copyright (c) 2013 Rizwan Javaid. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *myImage;
@property (weak, nonatomic) IBOutlet UILabel *myDescriptionLabel;
@property (weak, nonatomic) IBOutlet UIButton *myButton;

@end
