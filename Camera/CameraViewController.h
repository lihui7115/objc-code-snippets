//
//  CameraViewController.h
//  Snippets
//
//  Created by John Nichols on 8/14/12.
//  Copyright (c) 2012 John Nichols. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CameraViewController : UIViewController <UINavigationControllerDelegate, UIImagePickerControllerDelegate>

@property (nonatomic,strong) UIImagePickerController *imagePicker;

@end
