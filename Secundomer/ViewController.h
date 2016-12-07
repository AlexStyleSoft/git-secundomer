//
//  ViewController.h
//  Secundomer
//
//  Created by Хорошо on 07.12.16.
//  Copyright © 2016 GoodDay. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    NSTimer * timer;
}
@property (weak, nonatomic) IBOutlet UILabel *timerLabel;
@property (weak, nonatomic) IBOutlet UIButton *startButton;
@property (weak, nonatomic) IBOutlet UIButton *stopButton;
- (IBAction)startButtonPressed:(id)sender;
- (IBAction)stopButtonPressed:(id)sender;


@end

