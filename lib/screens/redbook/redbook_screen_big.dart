import 'package:flutter/material.dart';
import '../redbook_list.dart';

class RedbookDetailsScreenBig extends StatelessWidget {
  final BirdRedbookDataModel bird;
  final String pic;
  const RedbookDetailsScreenBig(
      {Key? key, required this.bird, required this.pic})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isLandScape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Scaffold(
      appBar: isLandScape
          ? null
          : AppBar(
              title: Text(bird.name),
            ),
      body: Body(
        bird: bird,
        pic: pic,
      ),
    );
  }
}

class Body extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final bird;
  final String pic;

  Body({super.key, required this.bird, required this.pic});

  @override
  Widget build(BuildContext context) {
    TransformationController transformationController =
        TransformationController();
    transformationController.value = Matrix4.identity()
      ..translate(-400.0, 0.0); // translate(x,y);
    Size size = MediaQuery.of(context).size;

    return OrientationBuilder(builder: (context, orientation) {
      if (orientation == Orientation.portrait) {
        return Column(
          children: <Widget>[
            SizedBox(
              height: 800,
              child: InteractiveViewer(
                alignment: Alignment.center,
                panEnabled: true,
                transformationController: transformationController,
                constrained: false,
                //            boundaryMargin: EdgeInsets.all(100),
                minScale: 0.2,
                maxScale: 2,
                child: Image.asset("assets/images/big/${bird.imageUrl}$pic.jpg",
                    height: size.height * 0.89, fit: BoxFit.fitHeight),
              ),
            ),
          ],
        );
      } else {
        return DoubleTappableInteractiveViewer(
            scaleDuration: const Duration(milliseconds: 600),
            child: InteractiveViewer(
              constrained: false,
              scaleEnabled: true,
              minScale: 0.5,
              maxScale: 2,
              child: Image.asset(
                "assets/images/big/${bird.imageUrl}$pic.jpg",
                fit: BoxFit.cover,
              ),
            ));
      }
    });
  }
}

class DoubleTappableInteractiveViewer extends StatefulWidget {
  final double scale;
  final Duration scaleDuration;
  final Curve curve;
  final Widget child;

  const DoubleTappableInteractiveViewer({
    super.key,
    this.scale = 2,
    this.curve = Curves.fastLinearToSlowEaseIn,
    required this.scaleDuration,
    required this.child,
  });

  @override
  State<DoubleTappableInteractiveViewer> createState() =>
      _DoubleTappableInteractiveViewerState();
}

class _DoubleTappableInteractiveViewerState
    extends State<DoubleTappableInteractiveViewer>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  Animation<Matrix4>? _zoomAnimation;
  late TransformationController _transformationController;
  TapDownDetails? _doubleTapDetails;

  @override
  void initState() {
    super.initState();
    _transformationController = TransformationController();
    _animationController = AnimationController(
      vsync: this,
      duration: widget.scaleDuration,
    )..addListener(() {
        _transformationController.value = _zoomAnimation!.value;
      });
  }

  @override
  void dispose() {
    _transformationController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  void _handleDoubleTapDown(TapDownDetails details) {
    _doubleTapDetails = details;
  }

  void _handleDoubleTap() {
    final newValue = _transformationController.value.isIdentity()
        ? _applyZoom()
        : _revertZoom();

    _zoomAnimation = Matrix4Tween(
      begin: _transformationController.value,
      end: newValue,
    ).animate(CurveTween(curve: widget.curve).animate(_animationController));
    _animationController.forward(from: 0);
  }

  Matrix4 _applyZoom() {
    final tapPosition = _doubleTapDetails!.localPosition;
    final translationCorrection = widget.scale - 1;
    final zoomed = Matrix4.identity()
      ..translate(
        -tapPosition.dx * translationCorrection,
        -tapPosition.dy * translationCorrection,
      )
      ..scale(widget.scale);
    return zoomed;
  }

  Matrix4 _revertZoom() => Matrix4.identity();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTapDown: _handleDoubleTapDown,
      onDoubleTap: _handleDoubleTap,
      child: InteractiveViewer(
        transformationController: _transformationController,
        child: widget.child,
      ),
    );
  }
}
