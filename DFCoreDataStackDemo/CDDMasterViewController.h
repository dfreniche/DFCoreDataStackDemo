//
//  CDDMasterViewController.h
//  DFCoreDataStackDemo
//
//  Created by Diego Freniche Brito on 23/02/14.
//  Copyright (c) 2014 freniche. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <CoreData/CoreData.h>

@interface CDDMasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
