## Description

* `NSObjectCoder` is an efficient and delightful library for IOS and Mac OS X. 

* It automatically encodes and decodes all attributes of a `NSObject` instance.

* Choose `NSObjectCoder` for your project, you will be happy you don't need to write additional code for each attribute anymore: 


```objective-c

    - (void)encodeWithCoder:(NSCoder *)aCoder;

    - (id)initWithCoder:(NSCoder*)aDecoder;

```


## Version 

Version `1.0`



## How-to use

* Download [NSObjectCoder](https://github.com/Eric-LeiYang/NSObjectCoder.git) and drag `NSObjectCoder` folder directly to your project.

* For any class extending `NSObject` that you would like to encode and decode, 

	Import `NSObjectCoder.h` into `.h` file:


	```objective-c
	
	#import `NSObjectCoder.h`
	
	```


* Copy and paste the following code into `.m` file:


	For encode:


	```objective-c
	- (void)encodeWithCoder:(NSCoder *)aCoder{
    	[NSObjectCoder encodePropertiesOfObject:self ToCoder:aCoder];
	}
	```

	For decode:


	```objective-c
	-(id)initWithCoder:(NSCoder *)aDecoder{
    	if(self = [super init]){
        	[NSObjectCoder decodePropertiesOfObject:self FromCoder:aDecoder];
    	}
    	return self;
	}
	```


* Enjoy now!




##Installation with 'CocoaPods'

[CocoaPods](https://cocoapods.org) is a dependency manager for Objective-C, which automates and simplifies the process of using 3rd-party libraries like NSObjectCoder in your projects. See the "Getting Started guide" for more information.

Podfile


```ruby
platform :ios, '7.0'
pod "NSObjectCoder", "~> 2.0"
```

## License 

NSObjectCoder is available under the MIT license. See the LICENSE file for more info.