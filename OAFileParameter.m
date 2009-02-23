//
//  OAFileParameter.m
//  iPhoneNotes
//
//  Created by Alberto García Hierro on 24/11/08.
//  Copyright 2008 Alberto García Hierro. All rights reserved.
//	bynotes.com

#import "OAFileParameter.h"


@implementation OAFileParameter

@synthesize name;
@synthesize fileName;
@synthesize contentType;
@synthesize data;

- (id)initWithName:(NSString *)aName fileName:(NSString *)aFileName contentType:(NSString *)aContentType data:(NSData *)someData {
	if (self = [super init]) {
		self.name = aName;
		self.fileName = aFileName;
		self.contentType = aContentType;
		self.data = someData;
	}

	return self;
}

- (NSString*)contentType {
	if (contentType) {
		return contentType;
	}

	return @"application/octet-stream";
}

+ (id)fileWithName:(NSString *)name fileName:(NSString *)fileName contentType:(NSString *)contentType data:(NSData *)data {
	id obj = [[[self alloc] initWithName:name fileName:fileName contentType:contentType data:data] autorelease];
	return obj;
}

@end
