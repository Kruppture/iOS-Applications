//
//  AppDelegate.h
//  LicensePlate
//
//  Created by Konnor Krupp on 6/27/13.
//  Copyright (c) 2013 Konnor Krupp. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ViewController;
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, retain, readonly) NSManagedObjectModel *managedObjectModel;
@property (nonatomic, retain, readonly) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, retain, readonly) NSPersistentStoreCoordinator *persistentStoreCoordinator ;


@end
