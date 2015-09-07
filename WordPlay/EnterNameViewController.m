//
//  EnterNameViewController.m
//  WordPlay
//
//  Created by Mobile Maker on 7/14/15.
//  Copyright (c) 2015 Mobile Maker. All rights reserved.
//

#import "EnterNameViewController.h"
#import "EnterAdjectiveViewController.h"

@interface EnterNameViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UIButton *nameButton;

@end

@implementation EnterNameViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //make sure button isn't enabled to start (nothing entered in nameTextField)
    self.nameButton.enabled = false;
}

//enable button when there is text in the textfield; disable otherwise
- (IBAction)onKeyPressed:(UITextField *)sender {
    if (sender.text.length > 0) {
        self.nameButton.enabled = true;
    } else {
        self.nameButton.enabled = false;
    }
}

//set the next view controller as segue destination
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    EnterAdjectiveViewController *vc = segue.destinationViewController;

    //delegate local property (vc.name) to the string entered by the user
    vc.name = self.nameTextField.text;
}

@end
