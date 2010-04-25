//
//  WebSocketAppDelegate.h
//  WebSocket
//
//  Created by Erich Ocean on 4/13/10.
//  Copyright 2010 Erich Atlas Ocean. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "WebSocket.h"

@interface WebSocketAppDelegate : NSObject <WebSocketDelegate, NSApplicationDelegate> {
    NSWindow *window;
    WebSocket* webSocket;
}

@property (assign) IBOutlet NSWindow *window;

@end
