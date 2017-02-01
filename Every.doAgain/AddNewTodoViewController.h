//
//  AddNewTodoViewController.h
//  Every.doAgain
//
//  Created by Alex Bearinger on 2017-02-01.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Todo+CoreDataClass.h"

@interface AddNewTodoViewController : UIViewController
@property (nonatomic,copy) void (^addNewTodo)(Todo *todo);
@property (nonatomic) Todo *todo;
@end
