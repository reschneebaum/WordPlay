//
//  EnterVerbViewController.m
//  WordPlay
//
//  Created by Rachel Schneebaum on 7/14/15.
//  Copyright (c) 2015 Mobile Maker. All rights reserved.
//

#import "EnterVerbViewController.h"
#import "ResultsViewController.h"

@interface EnterVerbViewController ()

@property (weak, nonatomic) IBOutlet UITextField *verbTextField;
@property (weak, nonatomic) IBOutlet UIButton *verbButton;

@end

@implementation EnterVerbViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //make sure button isn't enabled to start (nothing entered in nameTextField)
    self.verbButton.enabled = false;
}

//enable button when there is text in the textfield; disable otherwise
- (IBAction)onKeyPressed:(UITextField *)sender {
    if (sender.text.length > 0) {
        self.verbButton.enabled = true;
    } else {
        self.verbButton.enabled = false;
    }
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    ResultsViewController *vc = segue.destinationViewController;

    vc.name = self.name;
    vc.adjective = self.adjective;
    vc.noun = self.noun;
    vc.verb = self.verbTextField.text;
}

@end
