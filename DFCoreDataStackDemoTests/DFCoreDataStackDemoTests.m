//
//  DFCoreDataStackDemoTests.m
//  DFCoreDataStackDemoTests
//
//  Created by Diego Freniche Brito on 23/02/14.
//  Copyright (c) 2014 freniche. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "DFCoreDataStack.h"

@interface DFCoreDataStackDemoTests : XCTestCase

@end

@implementation DFCoreDataStackDemoTests


- (void)testCreateCoreDataStackInMemory {
    DFCoreDataStack *cds = [[DFCoreDataStack alloc] initInMemory];
    XCTAssertNotNil(cds, @"OMG");
}

















- (void)testInsertEntity {
    DFCoreDataStack *cds = [[DFCoreDataStack alloc] initInMemory];
    XCTAssertNotNil(cds, @"OMG");
    
    NSManagedObject *p1 = [NSEntityDescription insertNewObjectForEntityForName:@"Project" inManagedObjectContext:cds.managedObjectContext];
    XCTAssertNotNil(p1, @"OMG");
    
    [p1 setValue:@"Build new $16B chat App" forKey:@"name"];
    [cds.managedObjectContext save:nil];

}

- (void)insertSomeProjectsInContext:(NSManagedObjectContext *)context {
    for (int i=0; i<100; i++) {
        NSManagedObject *p1 = [NSEntityDescription insertNewObjectForEntityForName:@"Project" inManagedObjectContext:context];
        
        [p1 setValue:[NSString stringWithFormat:@"Project %d", i] forKey:@"name"];

    }
}

- (void)testFetchEntities {
    NSManagedObjectContext *context = [[[DFCoreDataStack alloc] initInMemory] managedObjectContext];
    
    [self insertSomeProjectsInContext:context];
    
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Project" inManagedObjectContext:context];
    [fetchRequest setEntity:entity];
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"name" ascending:NO];
    [fetchRequest setSortDescriptors:@[sortDescriptor]];
    NSError *error = nil;
    NSArray *distincResults = [context executeFetchRequest:fetchRequest error:&error];
    XCTAssertNotNil(distincResults, @"");
    XCTAssertTrue(distincResults.count > 0, @"Count %d", distincResults.count);
    
}

@end
