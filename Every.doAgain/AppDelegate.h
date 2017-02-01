//
//  AppDelegate.h
//  Every.doAgain
//
//  Created by Alex Bearinger on 2017-02-01.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

