//
//  ViewController.h
//  Music Player
//
//  Created by Student P_03 on 09/08/16.
//  Copyright © 2016 Akshay Awtade. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController
{
    AVAudioPlayer *player;
    NSTimer *duration;
}
- (IBAction)ButtonStopTapped:(id)sender;
- (IBAction)buttonPlayPauseTapped:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *buttonPlayPause;
@property (weak, nonatomic) IBOutlet UISlider *sliderVolume;
- (IBAction)sliderDurationVAlueChanged:(id)sender;

- (IBAction)sliderVolumeValueChanged:(id)sender;
@property (weak, nonatomic) IBOutlet UISlider *sliderDurationValueChanged;
@property (weak, nonatomic) IBOutlet UIImageView *ImagePredefined;

@end

