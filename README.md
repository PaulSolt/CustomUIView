CustomUIView
============

Subclass the CustomView to load your custom UIView designs from .xib files programmatically or by embedding into another interface file. There isn't an easy solution that works without writing code (Unlike UIViewController .xib files).

I created a class called PSCustomViewFromXib that can be subclassed and will automatically load the .xib file for a UIView, if they have the same name. 

![Storyboard with embedded UIViews](https://raw.githubusercontent.com/PaulSolt/CustomUIView/master/CustomView/Storyboard.png)

![Loaded UIViews for iPhone](https://raw.githubusercontent.com/PaulSolt/CustomUIView/master/CustomView/Custom%20UIView%20on%20iPhone.png)

Custom UIView's
----
![SubclassView](https://raw.githubusercontent.com/PaulSolt/CustomUIView/master/CustomView/SubclassView.png)
![LabelMadness](https://raw.githubusercontent.com/PaulSolt/CustomUIView/master/CustomView/LabelMadness.png)


Setup Steps in Xcode 5
----
1. Create a new Objective-C class and subclass PSCustomViewFromXib

    \#import "PSCustomViewFromXib"
    @interface LabelMadness : PSCustomViewFromXib

2. Create a new iPhone View Interface File (i.e. LabelMadness.xib)
3. Set the File's Owner to your custom class. (i.e. LabelMadness on Identity Inspector)
4. Add a empty UIView to the Storyboard or your custom .xib for a UIViewController class
5. Set the Custom Class for the UIView to your classname. (i.e. LabelMadness)

![Set File's Owner for the Custom UIView in the Interface Builder](https://raw.githubusercontent.com/PaulSolt/CustomUIView/master/CustomView/UIView%20xib%20Setup.png)
