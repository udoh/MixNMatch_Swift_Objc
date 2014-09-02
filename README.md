MixNMatch_Swift_Objc
====================

This is a quick test to integrate a Swift source file into an existing Objective-C project.

(Using Xcode 6 Beta6)

- start a new project using the 'Single View Application' template, called 'MixNMatch2'
- embed the generated ViewController into a UINavigationController and place a a UIButton on its view
- add an objc UIViewController subclass called 'MyViewController'
- add a UIViewController to the storyboard and change the custom class to 'MyViewController'
- add target/action method to ViewController.m 'buttonPressed, which instantiates MyViewController from the storyboard and 
  pushes it onto the navigationController's stack
  
Now comes the simulated Swift integration/migration:
- delete MyViewController.h & .m
- in Build Settings set 'Defines Modules' under 'Packaging' to Yes (this must be done prior to creating the first Swift file)
- create a new file using the 'Cocoa Touch Class' template and select Swift as the language and enter UIViewController 
  as superclass; name the new file 'MyViewController' (name does not need to match the name of the class, however)
- let Xcode generate the bridging header file (for future integration of objc -> swift). this file is not used in this test
- add NSLog statements in viewDidLoad and deinit (add this method), so we can see that the Swift viewController is 
  being instantiated and deallocated
- in the storybaord, make sure the custom class is set to 'MyViewController' and set the module to 'MixNMatch2'
- in ViewController.m delete the import statement for "MyViewController.h" and add the import statement for the 
  Xcode generated header for the Swift class, called "MixNMatch2-Swift.h". NOTE: this file is NOT visible in the file system!
