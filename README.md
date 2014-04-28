Load a Custom UIView from .xib File
============

Unlike a UIViewController, you can't load custom UIView's from .xib files without writing code. I created the **PSCustomViewFromXib** class to do the loading and setup for you. It lets you load the UIView subclass programmatically or by embedding your UIView subclass into another interface file. 

Note: Your subclass and .xib file must have the same name. (i.e. LabelMadness.h and LabelMadness.xib) 

From Interface Builder to iPhone App
----

![Storyboard with embedded UIViews](https://raw.githubusercontent.com/PaulSolt/CustomUIView/master/CustomView/Storyboard.png)

![Loaded UIViews for iPhone](https://raw.githubusercontent.com/PaulSolt/CustomUIView/master/CustomView/Custom%20UIView%20on%20iPhone.png)

Custom UIView Layouts from Xcode's Interface Builder
----
![SubclassView](https://raw.githubusercontent.com/PaulSolt/CustomUIView/master/CustomView/SubclassView.png)
![LabelMadness](https://raw.githubusercontent.com/PaulSolt/CustomUIView/master/CustomView/LabelMadness.png)



Setup UIView Loading in Xcode 5
----

1. Create a new Objective-C class and subclass PSCustomViewFromXib


        #import "PSCustomViewFromXib"
        @interface LabelMadness : PSCustomViewFromXib
        
2. Create a new iPhone View Interface File (i.e. LabelMadness.xib)
3. Set the File's Owner to your custom class. (i.e. LabelMadness on Identity Inspector)

Embedded UIView in View (Option A)
----

1. Add a empty UIView to the Storyboard or ViewController.xib file
2. Set the view's "File's Owner" to a "Custom Class" (i.e. LabelMadness)

![Set File's Owner for the Custom UIView in the Interface Builder](https://raw.githubusercontent.com/PaulSolt/CustomUIView/master/CustomView/UIView%20xib%20Setup.png)

Programmatically Loaded UIView (Option B)
------
Use the code below to create and add a custom view to some position in your app.

        @implementation ViewController
        
        - (void)viewDidLoad {
            [super viewDidLoad];
            
            LabelMadness *labelMadness = [[LabelMadness alloc] init];
            labelMadness.center = CGPointMake(60 + 100, 370 + 50);
            labelMadness.backgroundColor = [UIColor greenColor];
            [self.view addSubview:labelMadness];
        }
        @end
