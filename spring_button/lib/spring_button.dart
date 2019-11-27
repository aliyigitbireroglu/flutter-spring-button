//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// © Cosmos Software | Ali Yigit Bireroglu                                                                                                           /
// All material used in the making of this code, project, program, application, software et cetera (the "Intellectual Property")                     /
// belongs completely and solely to Ali Yigit Bireroglu. This includes but is not limited to the source code, the multimedia and                     /
// other asset files. If you were granted this Intellectual Property for personal use, you are obligated to include this copyright                   /
// text at all times.                                                                                                                                /
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

import 'package:flutter/material.dart';

enum SpringButtonType {
  OnlyScale,
  WithOpacity,
}

class SpringButton extends StatefulWidget {
  ///Use this value to determine the type of animation to be played.
  final SpringButtonType springButtonType;

  ///The widget that is to be displayed on your regular UI.
  final Widget uiChild;

  ///Set this to true if your [uiChild] doesn't change at runtime.
  final bool useCache;

  ///Use this value to determine the alignment of the animation.
  final Alignment alignment;

  ///Use this value to determine the scaling factor while the animation is being played. Choose a value between 0.0 and 1.0.
  final double scaleCoefficient;

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

  const SpringButton(
    this.springButtonType,
    this.uiChild, {
    Key key,
    this.useCache: true,
    this.alignment: Alignment.center,
    this.scaleCoefficient: 0.75,
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
    this.onScaleEnd,
  })  : assert(scaleCoefficient >= 0.0 && scaleCoefficient <= 1.0),
        super(key: key);

  @override
  SpringButtonState createState() => SpringButtonState(
        springButtonType,
        useCache,
        alignment,
        scaleCoefficient,
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
        onScaleEnd,
      );
}

class SpringButtonState extends State<SpringButton> with SingleTickerProviderStateMixin {
  final SpringButtonType springButtonType;
  Widget uiChild;
  final bool useCache;
  final Alignment alignment;
  final double scaleCoefficient;

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

  ///The [AnimationController] used to create the spring effect.
  AnimationController animationController;
  Animation<double> animation;

  bool isSpringDown = false;

  bool isEnabled = true;

  ///Use this value to determine the depth of debug logging that is actually only here for myself and the Swiss scientists.
  final int _debugLevel = 0;

  SpringButtonState(
    this.springButtonType,
    this.useCache,
    this.alignment,
    this.scaleCoefficient,
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
    this.onScaleEnd,
  );

  @override
  void initState() {
    super.initState();

    if (useCache) uiChild = wrapper();

    animationController = AnimationController(
      vsync: this,
      lowerBound: 0.0,
      upperBound: 1.0,
      duration: const Duration(milliseconds: 1000),
    );
    animationController.value = 1;
    animation = Tween(
      begin: scaleCoefficient,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.elasticOut,
      ),
    );
  }

  @override
  void dispose() {
    animationController.dispose();

    super.dispose();
  }

  bool get hasMultiple {
    List<bool> list = [hasTap, hasSecondaryTap, hasDoubleTap, hasLongPress, hasVerticalDrag, hasHorizontalDrag, hasForcePress, hasPan, hasScale];
    return list.where((bool b) => b).length > 1;
  }

  bool get hasTap => onTapDown != null || onTapUp != null || onTap != null || onTapCancel != null;
  bool get hasSecondaryTap => onSecondaryTapDown != null || onSecondaryTapUp != null || onSecondaryTapCancel != null;
  bool get hasDoubleTap => onDoubleTap != null;
  bool get hasLongPress => onLongPress != null || onLongPressStart != null || onLongPressMoveUpdate != null || onLongPressUp != null || onLongPressEnd != null;
  bool get hasVerticalDrag => onVerticalDragDown != null || onVerticalDragStart != null || onVerticalDragUpdate != null || onVerticalDragEnd != null || onVerticalDragCancel != null;
  bool get hasHorizontalDrag => onHorizontalDragDown != null || onHorizontalDragStart != null || onHorizontalDragUpdate != null || onHorizontalDragEnd != null || onHorizontalDragCancel != null;
  bool get hasForcePress => onForcePressStart != null || onForcePressPeak != null || onForcePressUpdate != null || onForcePressEnd != null;
  bool get hasPan => onPanDown != null || onPanStart != null || onPanUpdate != null || onPanCancel != null;
  bool get hasScale => onScaleStart != null || onScaleUpdate != null || onScaleEnd != null;

  void enable() {
    if (!isEnabled) {
      animationController.value = 1.0;
      isSpringDown = false;
      isEnabled = true;
    }
  }

  void disable() {
    if (isEnabled) {
      animationController.value = 1.0;
      isSpringDown = false;
      isEnabled = false;
    }
  }

  void springDown() {
    if (!isEnabled) return;

    if (_debugLevel > 0) print("springDown");

    isSpringDown = true;
    animationController.value = 0;
  }

  Future spring() async {
    if (!isEnabled) return;

    if (_debugLevel > 0) print("spring-1");

    isSpringDown = false;

    if (hasMultiple) await Future.delayed(const Duration(milliseconds: 5));

    if (_debugLevel > 0) print("spring-2");

    if (!isSpringDown) animationController.forward();
  }

  Future springUp() async {
    if (!isEnabled) return;

    if (_debugLevel > 0) print("springUp-1");

    isSpringDown = false;

    if (hasMultiple) await Future.delayed(const Duration(milliseconds: 500));

    if (_debugLevel > 0) print("springUp-2");

    if (!isSpringDown) animationController.value = 1;
  }

  Widget wrapper() {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTapDown: !hasTap
          ? null
          : (_) {
              springDown();
              if (onTapDown != null && isEnabled) onTapDown(_);
            },
      onTapUp: !hasTap
          ? null
          : (_) {
              spring();
              if (onTapUp != null && isEnabled) onTapUp(_);
            },
      onTap: !hasTap
          ? null
          : () {
              if (onTap != null && isEnabled) onTap();
            },
      onTapCancel: !hasTap
          ? null
          : () {
              springUp();
              if (onTapCancel != null && isEnabled) onTapCancel();
            },
      onSecondaryTapDown: !hasSecondaryTap
          ? null
          : (_) {
              springDown();
              if (onSecondaryTapDown != null && isEnabled) onSecondaryTapDown(_);
            },
      onSecondaryTapUp: !hasSecondaryTap
          ? null
          : (_) {
              spring();
              if (onSecondaryTapUp != null && isEnabled) onSecondaryTapUp(_);
            },
      onSecondaryTapCancel: !hasSecondaryTap
          ? null
          : () {
              springUp();
              if (onSecondaryTapCancel != null && isEnabled) onSecondaryTapCancel();
            },
      onDoubleTap: !hasDoubleTap
          ? null
          : () {
              springDown();
              spring();
              if (onDoubleTap != null && isEnabled) onDoubleTap();
            },
      onLongPress: !hasLongPress
          ? null
          : () {
              if (onLongPress != null && isEnabled) onLongPress();
            },
      onLongPressStart: !hasLongPress
          ? null
          : (_) {
              springDown();
              if (onLongPressStart != null && isEnabled) onLongPressStart(_);
            },
      onLongPressMoveUpdate: !hasLongPress
          ? null
          : (_) {
              if (onLongPressMoveUpdate != null && isEnabled) onLongPressMoveUpdate(_);
            },
      onLongPressUp: !hasLongPress
          ? null
          : () {
              spring();
              if (onLongPressUp != null && isEnabled) onLongPressUp();
            },
      onLongPressEnd: !hasLongPress
          ? null
          : (_) {
              if (onLongPressEnd != null && isEnabled) onLongPressEnd(_);
            },
      onVerticalDragDown: !hasVerticalDrag
          ? null
          : (_) {
              if (onVerticalDragDown != null && isEnabled) onVerticalDragDown(_);
            },
      onVerticalDragStart: !hasVerticalDrag
          ? null
          : (_) {
              springDown();
              if (onVerticalDragStart != null && isEnabled) onVerticalDragStart(_);
            },
      onVerticalDragUpdate: !hasVerticalDrag
          ? null
          : (_) {
              if (onVerticalDragUpdate != null && isEnabled) onVerticalDragUpdate(_);
            },
      onVerticalDragEnd: !hasVerticalDrag
          ? null
          : (_) {
              spring();
              if (onVerticalDragEnd != null && isEnabled) onVerticalDragEnd(_);
            },
      onVerticalDragCancel: !hasVerticalDrag
          ? null
          : () {
              springUp();
              if (onVerticalDragCancel != null && isEnabled) onVerticalDragCancel();
            },
      onHorizontalDragDown: !hasHorizontalDrag
          ? null
          : (_) {
              if (onHorizontalDragDown != null && isEnabled) onHorizontalDragDown(_);
            },
      onHorizontalDragStart: !hasHorizontalDrag
          ? null
          : (_) {
              springDown();
              if (onHorizontalDragStart != null && isEnabled) onHorizontalDragStart(_);
            },
      onHorizontalDragUpdate: !hasHorizontalDrag
          ? null
          : (_) {
              if (onHorizontalDragUpdate != null && isEnabled) onHorizontalDragUpdate(_);
            },
      onHorizontalDragEnd: !hasHorizontalDrag
          ? null
          : (_) {
              spring();
              if (onHorizontalDragEnd != null && isEnabled) onHorizontalDragEnd(_);
            },
      onHorizontalDragCancel: !hasHorizontalDrag
          ? null
          : () {
              springUp();
              if (onHorizontalDragCancel != null && isEnabled) onHorizontalDragCancel();
            },
      onForcePressStart: !hasForcePress
          ? null
          : (_) {
              springDown();
              if (onForcePressStart != null && isEnabled) onForcePressStart(_);
            },
      onForcePressPeak: !hasForcePress
          ? null
          : (_) {
              if (onForcePressPeak != null && isEnabled) onForcePressPeak(_);
            },
      onForcePressUpdate: !hasForcePress
          ? null
          : (_) {
              if (onForcePressUpdate != null && isEnabled) onForcePressUpdate(_);
            },
      onForcePressEnd: !hasForcePress
          ? null
          : (_) {
              spring();
              if (onForcePressEnd != null && isEnabled) onForcePressEnd(_);
            },
      onPanDown: !hasPan
          ? null
          : (_) {
              if (onPanDown != null && isEnabled) onPanDown(_);
            },
      onPanStart: !hasPan
          ? null
          : (_) {
              springDown();
              if (onPanStart != null && isEnabled) onPanStart(_);
            },
      onPanUpdate: !hasPan
          ? null
          : (_) {
              if (onPanUpdate != null && isEnabled) onPanUpdate(_);
            },
      onPanEnd: !hasPan
          ? null
          : (_) {
              spring();
              if (onPanEnd != null && isEnabled) onPanEnd(_);
            },
      onPanCancel: !hasPan
          ? null
          : () {
              springUp();
              if (onPanCancel != null && isEnabled) onPanCancel();
            },
      onScaleStart: !hasScale
          ? null
          : (_) {
              springDown();
              if (onScaleStart != null && isEnabled) onScaleStart(_);
            },
      onScaleUpdate: !hasScale
          ? null
          : (_) {
              if (onScaleUpdate != null && isEnabled) onScaleUpdate(_);
            },
      onScaleEnd: !hasScale
          ? null
          : (_) {
              spring();
              if (onScaleEnd != null && isEnabled) onScaleEnd(_);
            },
      child: widget.uiChild,
    );
  }

  @override
  Widget build(BuildContext context) {
    if (springButtonType == SpringButtonType.WithOpacity)
      return AnimatedBuilder(
        animation: animation,
        child: useCache ? uiChild : null,
        builder: (BuildContext context, Widget cachedChild) {
          return Opacity(
            opacity: animation.value.clamp(0.5, 1.0),
            child: Transform.scale(
              scale: animation.value,
              alignment: alignment,
              child: useCache ? cachedChild : wrapper(),
            ),
          );
        },
      );
    return AnimatedBuilder(
      animation: animation,
      child: useCache ? uiChild : null,
      builder: (BuildContext context, Widget cachedChild) {
        return Transform.scale(
          scale: animation.value,
          child: useCache ? cachedChild : wrapper(),
        );
      },
    );
  }
}
