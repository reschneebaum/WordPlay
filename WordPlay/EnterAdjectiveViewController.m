//
//  EnterAdjectiveViewController.m
//  WordPlay
//
//  Created by Mobile Maker on 7/14/15.
//  Copyright (c) 2015 Mobile Maker. All rights reserved.
//

#import "EnterAdjectiveViewController.h"
#import "EnterNounViewController.h"

@interface EnterAdjectiveViewController ()

@property (weak, nonatomic) IBOutlet UITextField *adjectiveTextField;
@property (weak, nonatomic) IBOutlet UIButton *adjectiveButton;

@end

@implementation EnterAdjectiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //make sure button isn't enabled to start (nothing entered in adjectiveTextField)
    self.adjectiveButton.enabled = false;
}

//enable button when there is text in the textfield; disable otherwise
- (IBAction)onKeyPressed:(UITextField *)sender {
    if (sender.text.length > 0) {
        self.adjectiveButton.enabled = true;
    } else {
        self.adjectiveButton.enabled = false;
    }
}

//set the next view controller as segue destination
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    EnterNounViewController *vc = segue.destinationViewController;

    //pass name property through segue
    vc.name = self.name;

    //delegate local property (vc.name) to the string entered by the user
    vc.adjective = self.adjectiveTextField.text;
}

@end
