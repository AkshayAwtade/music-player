//
//  ViewController.m
//  Music Player
//
//  Created by Student P_03 on 09/08/16.
//  Copyright © 2016 Akshay Awtade. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.sliderDurationValueChanged.value = 0.0;
          // Do any additional setup after loading the view, typically from a nib.
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
//    UIImage *image=[[UIImage alloc]init];
  
    // Dispose of any resources that can be recreated.
}

- (IBAction)ButtonStopTapped:(id)sender {
    UIButton *button =sender;
    if([button.titleLabel.text isEqualToString:@"Stop"])
    {
        [self.buttonPlayPause setTitle:@"Play" forState:UIControlStateNormal];
        [player stop];
        self.sliderDurationValueChanged.value =0.00;
        
    }
}

- (IBAction)buttonPlayPauseTapped:(id)sender {
   UIButton *button =sender;
        NSError *error;
    player = [[AVAudioPlayer alloc]initWithContentsOfURL:[[NSBundle mainBundle]URLForResource:@"Mitwaa" withExtension:@"mp3"] error:&error];

if(error)
{
    NSLog(@"%@",error.localizedDescription);
    
}
    else
        if([button.titleLabel.text isEqualToString:@"Play"])
    {
        duration = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(updateDurationSlider:) userInfo:nil repeats:YES];
        self.sliderDurationValueChanged.maximumValue = player.duration;
        self.ImagePredefined.image=[UIImage imageNamed:@"Cosmos03.jpg"];

        [player play];
        [button setTitle:@"Pause" forState:UIControlStateNormal];
        
    }
    else
        if([button.titleLabel.text isEqualToString:@"Pause"])
    {
          [player pause];
          [button setTitle:@"Resume" forState:UIControlStateNormal];
    }
    else
        if([button.titleLabel.text isEqualToString:@"Resume"])
    {
        [button setTitle:@"Pause" forState:UIControlStateNormal];
        [player play];
    }
    
    
}

- (IBAction)sliderDurationVAlueChanged:(id)sender {
    UISlider *slider = sender;
    if(player)
       [player play];
    player.currentTime =slider.value;
    [player play];
}

- (IBAction)sliderVolumeValueChanged:(id)sender {
    player.volume = self.sliderVolume.value;
}

-(void)updateDurationSlider:(id)sender{
    self.sliderDurationValueChanged.value= player.currentTime;
    
    }
    



@end
