//
//  ViewController.m
//  Secundomer
//
//  Created by Хорошо on 07.12.16.
//  Copyright © 2016 GoodDay. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

-(void) timerUpdate;

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.startButton.hidden = NO;
    self.stopButton.hidden = YES;
    self.timerLabel.text = @"00.00";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startButtonPressed:(id)sender {
    
    NSDate * date = [NSDate date];
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(timerUpdate) userInfo:date repeats:YES];
    self.timerLabel.text = [NSString stringWithFormat:@"%d", 0];
    self.startButton.hidden = YES;
    self.stopButton.hidden = NO;
    self.timerLabel.text = @"00.00";
}

- (IBAction)stopButtonPressed:(id)sender {
    
    [timer invalidate];
    self.startButton.hidden = NO;
    self.stopButton.hidden = YES;
}

-(void) timerUpdate{
    
    double elapsed = -[(NSDate*)timer.userInfo timeIntervalSinceNow];
    if (elapsed <10)
        self.timerLabel.text = [NSString stringWithFormat:@"00:0%.0f", elapsed];
    if (elapsed >10 && elapsed <60)
        self.timerLabel.text = [NSString stringWithFormat:@"00:%.0f", elapsed];
    if (elapsed > 60) {
        double t = elapsed / 60;
        double k = (int)elapsed % 60;
        self.timerLabel.text = [NSString stringWithFormat:@"00%.0f:%.0f",t,k];
    }
}

@end
