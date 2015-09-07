//
//  ResultsViewController.m
//  WordPlay
//
//  Created by Mobile Maker on 7/14/15.
//  Copyright (c) 2015 Mobile Maker. All rights reserved.
//

#import "ResultsViewController.h"

@interface ResultsViewController ()

@property (weak, nonatomic) IBOutlet UILabel *resultsLabel;
//@property NSMutableAttributedString *userText;

@end

@implementation ResultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.resultsLabel.numberOfLines = 0;
    [self.resultsLabel sizeToFit];

    self.resultsLabel.text = [NSString stringWithFormat:@"My friend %@ is %@, but likes to %@ with a %@.", self.name, self.adjective, self.verb, self.noun];

    NSRange range1 = [self.resultsLabel.text rangeOfString:self.name];
    NSRange range2 = [self.resultsLabel.text rangeOfString:self.adjective];
    NSRange range3 = [self.resultsLabel.text rangeOfString:self.verb];
    NSRange range4 = [self.resultsLabel.text rangeOfString:self.noun];

    NSMutableAttributedString *attributedText = [[NSMutableAttributedString alloc] initWithString:self.resultsLabel.text];

    [attributedText setAttributes:@{NSFontAttributeName:[UIFont boldSystemFontOfSize:16]}
                            range:range1];
    [attributedText setAttributes:@{NSFontAttributeName:[UIFont boldSystemFontOfSize:16]}
                            range:range2];
    [attributedText setAttributes:@{NSFontAttributeName:[UIFont boldSystemFontOfSize:16]}
                            range:range3];
    [attributedText setAttributes:@{NSFontAttributeName:[UIFont boldSystemFontOfSize:16]}
                            range:range4];

    self.resultsLabel.attributedText = attributedText;

//    self.resultsTextView.text = [NSString stringWithFormat:@"My friend %@ is %@, but likes to %@ with a %@.", self.name, self.adjective, self.verb, self.noun];


}

@end
