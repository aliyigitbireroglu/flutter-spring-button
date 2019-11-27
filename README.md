# spring_button

[comment]: <> (Badges)
<a href="https://www.cosmossoftware.coffee">
   <img alt="Cosmos Software" src="https://img.shields.io/badge/Cosmos%20Software-Love%20Code-red" />
</a>

[![Pub](https://img.shields.io/pub/v/spring_button?color=g)](https://pub.dev/packages/spring_button)
[![License](https://img.shields.io/github/license/aliyigitbireroglu/flutter-spring-button?color=blue)](https://github.com/aliyigitbireroglu/flutter-spring-button/blob/master/LICENSE)

[comment]: <> (Introduction)
A simple widget for having child widgets that respond to gestures with a spring animation.

[comment]: <> (ToC)
[Media](#media) | [Description](#description) | [How-to-Use](#howtouse)


[comment]: <> (Media)
<a name="media"></a>
## Media

Watch on **Youtube**:

[v1.0.0](https://youtu.be/MMG1sfj43E0)
<br><br>
<img src="https://www.cosmossoftware.coffee/Common/Portfolio/GIFs/FlutterSpringButton.gif" height="450" max-height="450"/>
<br><br>


[comment]: <> (Description)
<a name="description"></a>
## Description
This is a simple widget for having child widgets that respond to gestures with a spring animation.

It is more of an extension to the GestureDetector widget than an original new widget.


[comment]: <> (How-to-Use)
<a name="howtouse"></a>
## How-to-Use
Simply create a SpringButton as shown in the example:

```
SpringButton(
    SpringButtonType.OnlyScale, //springButtonType
    uiChild(),                  //uiChild
    {Key key,
    useCache            : true,
    alignment           : Alignment.center,
    scaleCoefficient    : 0.75,
    onTapDown,
    onTapUp,
    onTap,
    onTapCancel,
    onSecondaryTapDown,
    onSecondaryTapUp,
    onSecondaryTapCancel,
    onDoubleTap,
    onLongPress,
    onLongPressStart,
    onLongPressMoveUpdate,
    onLongPressUp,
    onLongPressEnd,
    onVerticalDragDown,
    onVerticalDragStart,
    onVerticalDragUpdate,
    onVerticalDragEnd,
    onVerticalDragCancel,
    onHorizontalDragDown,
    onHorizontalDragStart,
    onHorizontalDragUpdate,
    onHorizontalDragEnd,
    onHorizontalDragCancel,
    onForcePressStart,
    onForcePressPeak,
    onForcePressUpdate,
    onForcePressEnd,
    onPanDown,
    onPanStart,
    onPanUpdate,
    onPanEnd,
    onPanCancel,
    onScaleStart,
    onScaleUpdate,
    onScaleEnd})
    
Widget uiChild() {}
```

**Further Explanations:**

*For a complete set of descriptions for all parameters and methods, see the [documentation](https://pub.dev/documentation/spring_button/latest/).*

* SpringButton, as you can see, is very similar to a GestureDetector widget so it should be familiar.


[comment]: <> (Notes)
## Notes
I started using and learning Flutter only some weeks ago so this package might have some parts that don't make sense, that should be completely 
different, that could be much better, etc. Please let me know! Nicely! 

Any help, suggestion or criticism is appreciated! 

Cheers.

[comment]: <> (CosmosSoftware)
<br><br>
<img align="right" src="https://www.cosmossoftware.coffee/Common/Images/CosmosSoftwareIconTransparent.png" width="150" height="150"/>
<br><br>
