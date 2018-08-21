import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class ZoomableStack extends StatefulWidget {
  ZoomableStack({this.children, this.initialRect});

  final List<Widget> children;
  final Rect initialRect;

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

  void _calculateInitialPositions(BoxConstraints constraints) {
    double xScale = constraints.maxWidth / widget.initialRect.width;
    double yScale = constraints.maxHeight / widget.initialRect.height;
    _scale = min(xScale, yScale);
    _position = -(widget.initialRect.center -
                Offset(constraints.maxWidth, constraints.maxHeight) / 2.0) *
            _scale ;
  }

  Widget _getStack() {
    return LayoutBuilder(builder: (context, constraints) {
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

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        _getStack(),
      ],
    );
  }
}
