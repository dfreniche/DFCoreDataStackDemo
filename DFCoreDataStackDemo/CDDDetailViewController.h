//
//  CDDDetailViewController.h
//  DFCoreDataStackDemo
//
//  Created by Diego Freniche Brito on 23/02/14.
//  Copyright (c) 2014 freniche. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CDDDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
