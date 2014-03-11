//
//  DFCoreDataStack.h
//  HelloWorldCD
//
//  Created by Diego Freniche Brito on 11/11/13.
//  Copyright (c) 2013 freniche. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@interface DFCoreDataStack : NSObject

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;


- (void)saveContext;
- (id) initWithDataBaseFileName:(NSString *)dbFileName
          andXDataModelFileName:(NSString *)xDataModel;
- (id)initInMemory;

+ (DFCoreDataStack *)sharedCoreDataStack;


@end
