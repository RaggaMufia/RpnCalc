//
//  ViewController.m
//  Calculator
//
//  Created by pat on 13.09.2013.
//  Copyright (c) 2013 zuehlke. All rights reserved.
//

#import "CalcViewController.h"
#import "Computer.h"
#import <AVFoundation/AVFoundation.h>


@interface CalcViewController ()

@property (readwrite) Computer* computer;

@end


@implementation CalcViewController

- (IBAction)digitPressed:(id)sender
{
    UIButton* button = sender;
    NSString* digit = button.currentTitle;
    NSLog(@"Digit pressed %@", digit);
    
    [self.computer digitPressed:digit];
    [self updateUI];
}

- (IBAction)operationPressed:(id)sender
{
    UIButton* button = sender;
    NSString* operation = button.currentTitle;
    NSLog(@"Operation pressed %@", operation);
    
    [self.computer operationPressed:operation];
    [self updateUI];
}

- (IBAction)enterPressed:(id)sender
{
    NSLog(@"Enter pressed");
        
    [self.computer enterPressed];
    [self updateUI];
}


- (IBAction)loudspeakerPressed:(id)sender {
   
    AVSpeechUtterance *utterance = [AVSpeechUtterance speechUtteranceWithString:[self.computer resultText]];
    utterance.voice = [AVSpeechSynthesisVoice voiceWithLanguage:@"en-US"];
    utterance.rate = 0.3;
    
    AVSpeechSynthesizer *synthesizer = [[AVSpeechSynthesizer alloc] init];
    [synthesizer speakUtterance:utterance];
}

- (void)updateUI
{
    self.resultView.text = [self.computer resultText];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.computer = [[Computer alloc] init];
    [self updateUI];
}

-(void) motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event{
    if(event.type == UIEventSubtypeMotionShake){
		
        NSLog(@"Detected Shake!");
        
        [self.computer reset];
        [self updateUI];
        
	}
}



@end
