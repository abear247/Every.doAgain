//
//  DetailViewController.m
//  Every.doAgain
//
//  Created by Alex Bearinger on 2017-02-01.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import "DetailViewController.h"
#import "AddNewTodoViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
        self.detailDescriptionLabel.text = self.detailItem.todoDescription;
    }
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"EditView"]){
        AddNewTodoViewController *avc = (AddNewTodoViewController *)[segue destinationViewController];
        avc.todo = self.detailItem;
        avc.addNewTodo = ^(Todo *todo){
            self.detailDescriptionLabel.text = self.detailItem.todoDescription;
        };
    }
}


#pragma mark - Managing the detail item

- (void)setDetailItem:(Todo *)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}


@end
