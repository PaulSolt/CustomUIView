CustomUIView
============

Subclass the CustomUIView to load your custom UIView designs from .xib files programmatically or by embedding into another interface file.


Setup Steps in Xcode 5
----
1. Create a new Objective-C class (i.e. LabelMadness)
2. Create a new iPhone View Interface File (i.e. LabelMadness.xib)
3. Set the File's Owner to your custom class. (i.e. LabelMadness on Identity Inspector)
4. Add a empty UIView to the Storyboard or your custom .xib for a UIViewController class
5. Set the Custom Class for the UIView to your classname. (i.e. LabelMadness)
