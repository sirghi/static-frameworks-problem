# static-frameworks-problem

There's a workspace containing a FrameworkA, dependent on FrameworkB. FrameworkA has the Mach-O type set to dynamic, FrameworkB to static. In the FrameworkA folder, there's already the resulting built framework (there's a script phase that copies it over).

The App in the test folder links and embeds this framework. Try at first to build the app. You'll get a build failure on the line of import FrameworkA saying missing required module FrameworkB. This is the main problem.

P.S. If you open the Static.workspace, build the framework, then the app will start building. But I assume that's because of Xcode looking into the DerivedData somehow and finding FrameworkB. If you delete the Static's project derived data, this error will pop up again when trying to build the app.
