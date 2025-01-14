//
//  GDURLUtilities.m
//  GDFileManagerExample
//
//  Created by Graham Dennis on 21/06/13.
//  Copyright (c) 2013 Graham Dennis. All rights reserved.
//

#import "GDURLUtilities.h"

#import "AFHTTPClient.h"

NSString * GDURLQueryStringFromParametersWithEncoding(NSDictionary *parameters, NSStringEncoding encoding)
{
    return AFQueryStringFromParametersWithEncoding(parameters, encoding);
}

NSDictionary *GDParametersFromURLQueryStringWithEncoding(NSString *queryString, NSStringEncoding encoding)
{
    NSArray *pairs = [queryString componentsSeparatedByString:@"&"];
    NSMutableDictionary *parameters = [NSMutableDictionary new];
    for (NSString *pair in pairs) {
        NSArray *kv = [pair componentsSeparatedByString:@"="];
        if ([kv count] != 2) {
            // FIXME: report error
            continue;
        }
        NSString *value = [kv[1] stringByRemovingPercentEncoding];
        NSString *key = [kv[0] stringByRemovingPercentEncoding];
        [parameters setObject:value forKey:key];
    }
    
    return [parameters copy];
}
