//
//  DetailViewController.h
//  Every.doAgain
//
//  Created by Alex Bearinger on 2017-02-01.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Every_doAgain+CoreDataModel.h"
#import "Todo+CoreDataClass.h"

@interface DetailViewController : UIViewController

@property (strong, nonatomic) Todo *detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

