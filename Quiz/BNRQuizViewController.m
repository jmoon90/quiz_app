//
//  BNRQuizViewController.m
//  Quiz
//
//  Created by John Moon on 5/10/14.
//  Copyright (c) 2014 John Moon. All rights reserved.
//

#import "BNRQuizViewController.h"

@interface BNRQuizViewController ()
    @property (nonatomic) int currentQuestionIndex;
    @property (nonatomic, copy) NSArray *questions;
    @property (nonatomic, copy) NSArray *answers;

    @property (nonatomic, weak) IBOutlet UILabel *questionLabel;
    @property (nonatomic, weak) IBOutlet UILabel *answerLabel;
@end

@implementation BNRQuizViewController
- (instancetype)initWithNibName:(NSString *)nibNameOrNil
                    bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil
                           bundle:nibBundleOrNil];
    if (self) {
        self.questions = @[@"What color is roasted peanuts",
                           @"What year was LivingSocial found?",
                           @"What season is it?"];
        self.answers = @[@"Brown",
                         @"2007",
                         @"Golf Season"];
    }
    return self;
}


- (IBAction)showQuestion:(id)sender
{
    self.currentQuestionIndex++;
    if (self.currentQuestionIndex == [self.questions count]) {
        self.currentQuestionIndex = 0;
    }
    
    NSString *question = self.questions[self.currentQuestionIndex];
    self.questionLabel.text = question;
    
    self.answerLabel.text = @"???";
}

- (IBAction)showAnswer:(id)sender
{
    NSString *answer = self.answers[self.currentQuestionIndex];
    
    self.answerLabel.text = answer;
}
@end
