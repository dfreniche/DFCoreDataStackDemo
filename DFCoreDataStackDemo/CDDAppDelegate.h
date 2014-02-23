//
//  CDDAppDelegate.h
//  DFCoreDataStackDemo
//
//  Created by Diego Freniche Brito on 23/02/14.
//  Copyright (c) 2014 freniche. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CDDAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
