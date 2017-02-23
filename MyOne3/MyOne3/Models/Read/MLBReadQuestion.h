//
//  MLBReadQuestion.h
//  MyOne3
//
//  Created by meilbn on 2/21/16.
//  Copyright © 2016 meilbn. All rights reserved.
//

#import "MLBBaseModel.h"

@interface MLBReadQuestion : MLBBaseModel

@property (nonatomic, strong) NSString *questionId;
@property (nonatomic, strong) NSString *questionTitle;
@property (nonatomic, strong) NSString *answerTitle;
@property (nonatomic, strong) NSString *answerContent;
@property (nonatomic, strong) NSString *questionMakeTime;

@end
