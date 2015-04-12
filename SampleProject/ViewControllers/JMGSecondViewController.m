//
//  JMGSecondViewController.m
//  SampleProject
//
//  Created by Jorge Maroto García on 07/05/14.
//  Copyright (c) 2014 Jorge Maroto. All rights reserved.
//

#import "JMGSecondViewController.h"
#import "JMGUser.h"
#import "UIViewController+BlockSegue.h"

@interface JMGSecondViewController ()

@property (weak, nonatomic) IBOutlet UILabel *changeableLabel;

@end


@implementation JMGSecondViewController
- (void)viewDidLoad{
    [super viewDidLoad];
    self.changeableLabel.text = [NSString stringWithFormat:@"%@ %@", self.user.name, self.user.surname];
}

- (IBAction)doneButtonTapped:(id)sender {
    __weak typeof(self)weakSelf = self;
    self.segue_completion(weakSelf);
    [self.navigationController popViewControllerAnimated:YES];
}

@end