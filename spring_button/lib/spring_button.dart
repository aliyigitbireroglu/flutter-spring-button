//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// © Cosmos Software | Ali Yigit Bireroglu                                                                                                           /
// All material used in the making of this code, project, program, application, software et cetera (the "Intellectual Property")                     /
// belongs completely and solely to Ali Yigit Bireroglu. This includes but is not limited to the source code, the multimedia and                     /
// other asset files. If you were granted this Intellectual Property for personal use, you are obligated to include this copyright                   /
// text at all times.                                                                                                                                /
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//@formatter:off
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum SpringButtonType { OnlyScale, WithOpacity }

class SpringButton extends StatefulWidget {
  ///Use this value to determine the type of animation to be played.
  final SpringButtonType springButtonType;

  ///The widget that is to be displayed on your regular UI.
  final Widget uiChild;

  ///Set this to true if your [uiChild] doesn't change at runtime.
  final bool useCache;

  final GestureTapDownCallback onTapDown;
  final GestureTapUpCallback onTapUp;
  final GestureTapCallback onTap;
  final GestureTapCancelCallback onTapCancel;
  final GestureTapDownCallback onSecondaryTapDown;
  final GestureTapUpCallback onSecondaryTapUp;
  final GestureTapCancelCallback onSecondaryTapCancel;
  final GestureTapCallback onDoubleTap;
  final GestureLongPressCallback onLongPress;
  final GestureLongPressStartCallback onLongPressStart;
  final GestureLongPressMoveUpdateCallback onLongPressMoveUpdate;
  final GestureLongPressUpCallback onLongPressUp;
  final GestureLongPressEndCallback onLongPressEnd;
  final GestureDragDownCallback onVerticalDragDown;
  final GestureDragStartCallback onVerticalDragStart;
  final GestureDragUpdateCallback onVerticalDragUpdate;
  final GestureDragEndCallback onVerticalDragEnd;
  final GestureDragCancelCallback onVerticalDragCancel;
  final GestureDragDownCallback onHorizontalDragDown;
  final GestureDragStartCallback onHorizontalDragStart;
  final GestureDragUpdateCallback onHorizontalDragUpdate;
  final GestureDragEndCallback onHorizontalDragEnd;
  final GestureDragCancelCallback onHorizontalDragCancel;
  final GestureDragDownCallback onPanDown;
  final GestureDragStartCallback onPanStart;
  final GestureDragUpdateCallback onPanUpdate;
  final GestureDragEndCallback onPanEnd;
  final GestureDragCancelCallback onPanCancel;
  final GestureScaleStartCallback onScaleStart;
  final GestureScaleUpdateCallback onScaleUpdate;
  final GestureScaleEndCallback onScaleEnd;
  final GestureForcePressStartCallback onForcePressStart;
  final GestureForcePressPeakCallback onForcePressPeak;
  final GestureForcePressUpdateCallback onForcePressUpdate;
  final GestureForcePressEndCallback onForcePressEnd;

  const SpringButton(this.springButtonType, this.uiChild,
      {Key key,
      this.useCache: true,
      this.onTapDown,
      this.onTapUp,
      this.onTap,
      this.onTapCancel,
      this.onSecondaryTapDown,
      this.onSecondaryTapUp,
      this.onSecondaryTapCancel,
      this.onDoubleTap,
      this.onLongPress,
      this.onLongPressStart,
      this.onLongPressMoveUpdate,
      this.onLongPressUp,
      this.onLongPressEnd,
      this.onVerticalDragDown,
      this.onVerticalDragStart,
      this.onVerticalDragUpdate,
      this.onVerticalDragEnd,
      this.onVerticalDragCancel,
      this.onHorizontalDragDown,
      this.onHorizontalDragStart,
      this.onHorizontalDragUpdate,
      this.onHorizontalDragEnd,
      this.onHorizontalDragCancel,
      this.onForcePressStart,
      this.onForcePressPeak,
      this.onForcePressUpdate,
      this.onForcePressEnd,
      this.onPanDown,
      this.onPanStart,
      this.onPanUpdate,
      this.onPanEnd,
      this.onPanCancel,
      this.onScaleStart,
      this.onScaleUpdate,
      this.onScaleEnd})
      : super(key: key);

  @override
  SpringButtonState createState() => SpringButtonState(
      springButtonType,
      useCache,
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
      onScaleEnd);
}

class SpringButtonState extends State<SpringButton>
    with SingleTickerProviderStateMixin {
  final SpringButtonType springButtonType;
  Widget uiChild;
  final bool useCache;

  final GestureTapDownCallback onTapDown;
  final GestureTapUpCallback onTapUp;
  final GestureTapCallback onTap;
  final GestureTapCancelCallback onTapCancel;
  final GestureTapDownCallback onSecondaryTapDown;
  final GestureTapUpCallback onSecondaryTapUp;
  final GestureTapCancelCallback onSecondaryTapCancel;
  final GestureTapCallback onDoubleTap;
  final GestureLongPressCallback onLongPress;
  final GestureLongPressStartCallback onLongPressStart;
  final GestureLongPressMoveUpdateCallback onLongPressMoveUpdate;
  final GestureLongPressUpCallback onLongPressUp;
  final GestureLongPressEndCallback onLongPressEnd;
  final GestureDragDownCallback onVerticalDragDown;
  final GestureDragStartCallback onVerticalDragStart;
  final GestureDragUpdateCallback onVerticalDragUpdate;
  final GestureDragEndCallback onVerticalDragEnd;
  final GestureDragCancelCallback onVerticalDragCancel;
  final GestureDragDownCallback onHorizontalDragDown;
  final GestureDragStartCallback onHorizontalDragStart;
  final GestureDragUpdateCallback onHorizontalDragUpdate;
  final GestureDragEndCallback onHorizontalDragEnd;
  final GestureDragCancelCallback onHorizontalDragCancel;
  final GestureDragDownCallback onPanDown;
  final GestureDragStartCallback onPanStart;
  final GestureDragUpdateCallback onPanUpdate;
  final GestureDragEndCallback onPanEnd;
  final GestureDragCancelCallback onPanCancel;
  final GestureScaleStartCallback onScaleStart;
  final GestureScaleUpdateCallback onScaleUpdate;
  final GestureScaleEndCallback onScaleEnd;
  final GestureForcePressStartCallback onForcePressStart;
  final GestureForcePressPeakCallback onForcePressPeak;
  final GestureForcePressUpdateCallback onForcePressUpdate;
  final GestureForcePressEndCallback onForcePressEnd;

  AnimationController animationController;
  Animation<double> animation;

  SpringButtonState(
      this.springButtonType,
      this.useCache,
      this.onTapDown,
      this.onTapUp,
      this.onTap,
      this.onTapCancel,
      this.onSecondaryTapDown,
      this.onSecondaryTapUp,
      this.onSecondaryTapCancel,
      this.onDoubleTap,
      this.onLongPress,
      this.onLongPressStart,
      this.onLongPressMoveUpdate,
      this.onLongPressUp,
      this.onLongPressEnd,
      this.onVerticalDragDown,
      this.onVerticalDragStart,
      this.onVerticalDragUpdate,
      this.onVerticalDragEnd,
      this.onVerticalDragCancel,
      this.onHorizontalDragDown,
      this.onHorizontalDragStart,
      this.onHorizontalDragUpdate,
      this.onHorizontalDragEnd,
      this.onHorizontalDragCancel,
      this.onForcePressStart,
      this.onForcePressPeak,
      this.onForcePressUpdate,
      this.onForcePressEnd,
      this.onPanDown,
      this.onPanStart,
      this.onPanUpdate,
      this.onPanEnd,
      this.onPanCancel,
      this.onScaleStart,
      this.onScaleUpdate,
      this.onScaleEnd);

  @override
  void initState() {
    super.initState();

    if (useCache) uiChild = wrapper();

    animationController = AnimationController(
        vsync: this,
        lowerBound: 0.0,
        upperBound: 1.0,
        duration: const Duration(milliseconds: 1000));
    animationController.value = 1;
    animation = Tween(begin: 0.75, end: 1.0).animate(
        CurvedAnimation(parent: animationController, curve: Curves.elasticOut));
  }

  @override
  void dispose() {
    animationController.dispose();

    super.dispose();
  }

  Widget wrapper() {
    return GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTapDown: (_) {
          animationController.value = 0;
          if (onTapDown != null) onTapDown(_);
        },
        onTap: () {
          animationController.forward();
          if (onTap != null) onTap();
        },
        onTapCancel: () {
          animationController.value = 1;
          if (onTapCancel != null) onTapCancel();
        },
        onTapUp: onTapUp,
        onSecondaryTapDown: onSecondaryTapDown,
        onSecondaryTapUp: onSecondaryTapUp,
        onSecondaryTapCancel: onSecondaryTapCancel,
        onDoubleTap: onDoubleTap,
        onLongPress: onLongPress,
        onLongPressStart: onLongPressStart,
        onLongPressMoveUpdate: onLongPressMoveUpdate,
        onLongPressUp: onLongPressUp,
        onLongPressEnd: onLongPressEnd,
        onVerticalDragDown: onVerticalDragDown,
        onVerticalDragStart: onVerticalDragStart,
        onVerticalDragUpdate: onVerticalDragUpdate,
        onVerticalDragEnd: onVerticalDragEnd,
        onVerticalDragCancel: onVerticalDragCancel,
        onHorizontalDragDown: onHorizontalDragDown,
        onHorizontalDragStart: onHorizontalDragStart,
        onHorizontalDragUpdate: onHorizontalDragUpdate,
        onHorizontalDragEnd: onHorizontalDragEnd,
        onHorizontalDragCancel: onHorizontalDragCancel,
        onForcePressStart: onForcePressStart,
        onForcePressPeak: onForcePressPeak,
        onForcePressUpdate: onForcePressUpdate,
        onForcePressEnd: onForcePressEnd,
        onPanDown: onPanDown,
        onPanStart: onPanStart,
        onPanUpdate: onPanUpdate,
        onPanEnd: onPanEnd,
        onPanCancel: onPanCancel,
        onScaleStart: onScaleStart,
        onScaleUpdate: onScaleUpdate,
        onScaleEnd: onScaleEnd,
        child: widget.uiChild);
  }

  @override
  Widget build(BuildContext context) {
    switch (springButtonType) {
      case SpringButtonType.OnlyScale:
        return AnimatedBuilder(
            animation: animation,
            child: useCache ? uiChild : null,
            builder: (BuildContext context, Widget cachedChild) {
              return Transform.scale(
                  scale: animation.value,
                  child: useCache ? cachedChild : wrapper());
            });
        break;
      case SpringButtonType.WithOpacity:
        return AnimatedBuilder(
            animation: animation,
            child: useCache ? uiChild : null,
            builder: (BuildContext context, Widget cachedChild) {
              return Opacity(
                  opacity: animation.value.clamp(0.5, 1.0),
                  child: Transform.scale(
                      scale: animation.value,
                      child: useCache ? cachedChild : wrapper()));
            });
        break;
    }
  }
}
