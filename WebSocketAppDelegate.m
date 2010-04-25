//
//  WebSocketAppDelegate.m
//  WebSocket
//
//  Created by Erich Ocean on 4/13/10.
//  Copyright 2010 Erich Atlas Ocean. All rights reserved.
//

#import "WebSocketAppDelegate.h"

@implementation WebSocketAppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    webSocket = [[WebSocket alloc] initWithURLString:@"ws://localhost:8003/memstore" delegate:self];
    [webSocket open];	
}

-(void)webSocketDidClose:(WebSocket *)ws {
    NSLog(@"Connection closed");
}

-(void)webSocket:(WebSocket *)ws didFailWithError:(NSError *)error {
    if (error.code == WebSocketErrorConnectionFailed) {
        NSLog(@"Connection failed");
    } else if (error.code == WebSocketErrorHandshakeFailed) {
        NSLog(@"Handshake failed");
    } else {
        NSLog(@"Error");
    }
}

-(void)webSocket:(WebSocket *)ws didReceiveMessage:(NSString*)message {
    NSLog(@"Recieved message: %@", message);
}

-(void)webSocketDidOpen:(WebSocket *)ws {
    NSLog(@"Connected");
}

-(void)webSocketDidSendMessage:(WebSocket *)ws {
    NSLog(@"Did send message");
}

-(void) dealloc {
    [webSocket release];
    [super dealloc];
}

@end
