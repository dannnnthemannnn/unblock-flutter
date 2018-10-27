import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class ZoomableStack extends StatefulWidget {
  ZoomableStack(
      {this.children,
      this.initialRect,
      this.showPointScreenOffset,
      this.showPointContentOffset});

  final List<Widget> children;
  final Rect initialRect;
  final Offset showPointScreenOffset;
  final Offset showPointContentOffset;

  @override
  createState() => _ZoomableStackState();
}

class _ZoomableStackState extends State<ZoomableStack> {
  double _scale = 1.0;
  double _currentScale = 1.0;
  Offset _position = Offset.zero;
  Offset _startingPosition = Offset.zero;
  Offset _scaleCenter = Offset.zero;
  bool _initialPositionsSet = false;
  Offset _showPointContentOffset;
  Offset _oldPosition = Offset.zero;
  double _oldScale = 1.0;

  void _calculateInitialPositions(BoxConstraints constraints) {
    double xScale = constraints.maxWidth / widget.initialRect.width;
    double yScale = constraints.maxHeight / widget.initialRect.height;
    _scale = min(xScale, yScale);
    _position = -(widget.initialRect.center -
            Offset(constraints.maxWidth, constraints.maxHeight) / 2.0) *
        _scale;
  }

  Widget _getStack() {
    return LayoutBuilder(builder: (context, constraints) {
      _checkShowPoint(constraints);
      if (!_initialPositionsSet) {
        _calculateInitialPositions(constraints);
        _initialPositionsSet = true;
      }
      return Transform.translate(
        offset: _position + _scaleCenter - _startingPosition,
        child: Transform.scale(
          scale: _scale * _currentScale,
          child: GestureDetector(
            onScaleStart: (details) {
              setState(() {
                _startingPosition = details.focalPoint;
                _scaleCenter = details.focalPoint;
              });
            },
            onScaleUpdate: (details) {
              setState(() {
                _currentScale =
                    details.scale * _scale > 1.0 ? details.scale : 1.0 / _scale;

                Offset newPosition =
                    _position + details.focalPoint - _startingPosition;
                double adjustedScale = _currentScale * _scale;

                double x = details.focalPoint.dx;
                double y = details.focalPoint.dy;
                if (-constraints.maxWidth / 2 * adjustedScale + newPosition.dx >
                    -constraints.maxWidth / 2) {
                  x = constraints.maxWidth / 2 * adjustedScale -
                      constraints.maxWidth / 2 -
                      _position.dx +
                      _startingPosition.dx;
                }
                if (constraints.maxWidth / 2 * adjustedScale + newPosition.dx <
                    constraints.maxWidth / 2) {
                  x = -constraints.maxWidth / 2 * adjustedScale +
                      constraints.maxWidth / 2 -
                      _position.dx +
                      _startingPosition.dx;
                }

                if (-constraints.maxHeight / 2 * adjustedScale +
                        newPosition.dy >
                    -constraints.maxHeight / 2) {
                  y = constraints.maxHeight / 2 * adjustedScale -
                      constraints.maxHeight / 2 -
                      _position.dy +
                      _startingPosition.dy;
                }
                if (constraints.maxHeight / 2 * adjustedScale + newPosition.dy <
                    constraints.maxHeight / 2) {
                  y = -constraints.maxHeight / 2 * adjustedScale +
                      constraints.maxHeight / 2 -
                      _position.dy +
                      _startingPosition.dy;
                }

                _scaleCenter = Offset(x, y);
              });
            },
            onScaleEnd: (details) {
              setState(() {
                _scale *= _currentScale;
                _position += _scaleCenter - _startingPosition;
                _scaleCenter = Offset.zero;
                _startingPosition = Offset.zero;
                _currentScale = 1.0;
              });
            },
            child: Stack(
              children: widget.children,
            ),
          ),
        ),
      );
    });
  }

  void _resetToShowPoint(BoxConstraints constraints) {
    _oldPosition = _position;
    _oldScale = _scale;
    Offset constraintsOffset =
        Offset(constraints.maxWidth, constraints.maxHeight);
    _position = constraintsOffset / 2.0 * _scale -
        constraintsOffset / 2.0 -
        widget.showPointContentOffset * _scale +
        widget.showPointScreenOffset;

    double newScale;
    if ((constraints.maxHeight - widget.showPointScreenOffset.dy) >
        (constraints.maxHeight - widget.showPointContentOffset.dy) * _scale) {
      newScale = (constraints.maxHeight - widget.showPointScreenOffset.dy) /
          (constraints.maxHeight - widget.showPointContentOffset.dy);
    }
    if ((constraints.maxWidth - widget.showPointScreenOffset.dx) >
        (constraints.maxWidth - widget.showPointContentOffset.dx) * _scale) {
      newScale = max(
          newScale,
          (constraints.maxWidth - widget.showPointScreenOffset.dx) /
              (constraints.maxWidth - widget.showPointContentOffset.dx));
    }
    if (widget.showPointScreenOffset.dy >
        (widget.showPointContentOffset.dy * _scale)) {
      newScale = max(
          newScale,(widget.showPointScreenOffset.dy /
          widget.showPointContentOffset.dy));
    }
    if (widget.showPointScreenOffset.dx >
        (widget.showPointContentOffset.dx * _scale)) {
      newScale = max(
          newScale,
          (widget.showPointScreenOffset.dx /
              widget.showPointContentOffset.dx));
    }
    if (newScale != null) {
      _scale = newScale;
    }
  }

  void _checkShowPoint(BoxConstraints constraints) {
    if (_showPointContentOffset != widget.showPointContentOffset) {
      _showPointContentOffset = widget.showPointContentOffset;
      if (_showPointContentOffset == null) {
        _position = _oldPosition;
        _scale = _oldScale;
      } else {
        _resetToShowPoint(constraints);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        _getStack(),
      ],
    );
  }
}
