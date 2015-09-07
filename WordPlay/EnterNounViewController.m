//
//  EnterNounViewController.m
//  WordPlay
//
//  Created by Mobile Maker on 7/14/15.
//  Copyright (c) 2015 Mobile Maker. All rights reserved.
//

#import "EnterNounViewController.h"
#import "EnterVerbViewController.h"

@interface EnterNounViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nounTextField;
@property (weak, nonatomic) IBOutlet UIButton *nounButton;

@end

@implementation EnterNounViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //make sure button isn't enabled to start (nothing entered in nounTextField)
    self.nounButton.enabled = false;
}

//enable button when there is text in the textfield; disable otherwise
- (IBAction)onKeyPressed:(UITextField *)sender {
    if (sender.text.length > 0) {
        self.nounButton.enabled = true;
    } else {
        self.nounButton.enabled = false;
    }
}

//set the next view controller as segue destination
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    EnterVerbViewController *vc = segue.destinationViewController;

    //pass name property through segue
    vc.name = self.name;

    //pass adjective property through segue
    vc.adjective = self.adjective;
    
    vc.noun = self.nounTextField.text;
}

@end
