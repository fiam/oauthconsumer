//
//  OAFileParameter.h
//  iPhoneNotes
//
//  Created by Alberto García Hierro on 24/11/08.
//  Copyright 2008 Alberto García Hierro. All rights reserved.
//	bynotes.com

#import <Foundation/Foundation.h>


@interface OAFileParameter : NSObject {
	NSString *name;
	NSString *fileName;
	NSString *contentType;
	NSData *data;
}

@property(nonatomic, copy) NSString *name;
@property(nonatomic, copy) NSString *fileName;
@property(nonatomic, copy) NSString *contentType;
@property(nonatomic, retain) NSData *data;

- (id)initWithName:(NSString *)name fileName:(NSString *)fileName contentType:(NSString *)contentType data:(NSData *)data;

+ (id)fileWithName:(NSString *)name fileName:(NSString *)fileName contentType:(NSString *)contentType data:(NSData *)data;

@end
