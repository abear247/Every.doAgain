//
//  AddNewTodoViewController.m
//  Every.doAgain
//
//  Created by Alex Bearinger on 2017-02-01.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import "AddNewTodoViewController.h"

@interface AddNewTodoViewController ()
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UILabel *priorityLabel;
@property (weak, nonatomic) IBOutlet UITextView *descriptionTextView;


@end

@implementation AddNewTodoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.todo.priorityNumber = 0;
    // Do any additional setup after loading the view.
}
- (IBAction)priorityStepper:(id)sender {
    UIStepper *stepper = sender;
    int value = (int)stepper.value;
    self.todo.priorityNumber = stepper.value;
    self.priorityLabel.text = [NSString stringWithFormat:@"%d",value];
}
- (IBAction)saveButton:(id)sender {
    self.todo.title = self.titleTextField.text;
    self.todo.todoDescription = self.descriptionTextView.text;
    self.addNewTodo(self.todo);
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
