import 'package:flutter/material.dart';

class CloudScreen extends StatelessWidget {
  final imageUrl = {
    'background':
        'http://www.testomic.com/public/codepen-assets/img/paralax/background.jpg',
    'foreground':
        'http://www.testomic.com/public/codepen-assets/img/paralax/foreground.png',
    'hills':
        'http://www.testomic.com/public/codepen-assets/img/paralax/hills.png',
    'rock1':
        'http://www.testomic.com/public/codepen-assets/img/paralax/rocks1.png',
    'rock2':
        'http://www.testomic.com/public/codepen-assets/img/paralax/rocks2.png'
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            imageUrl['background'],
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          ParallaxImage(
            animationDurationSecond: 240,
            tweenEnd: -50,
            imageUrl: imageUrl['rock2'],
            alignmentHeight: 0.15,
            scale: 0.25,
            height: 0.4,
          ),
          ParallaxImage(
            animationDurationSecond: 120,
            tweenEnd: -50,
            imageUrl: imageUrl['rock1'],
            alignmentHeight: 0.25,
            scale: 0.25,
            height: 0.35,
          ),
          ParallaxImage(
            animationDurationSecond: 60,
            tweenEnd: -5,
            imageUrl: imageUrl['hills'],
            alignmentHeight: 0.45,
            scale: 0.25,
            height: 0.4,
          ),
          ParallaxImage(
            animationDurationSecond: 30,
            tweenEnd: -50,
            imageUrl: imageUrl['foreground'],
            alignmentHeight: 1.0,
            height: 0.25,
            scale: 0.5,
          ),
        ],
      ),
    );
  }
}

class ParallaxImage extends StatelessWidget {
  final int animationDurationSecond;
  final double tweenEnd;
  final String imageUrl;
  final double alignmentHeight;
  final double scale;
  final double height;

  ParallaxImage(
      {this.animationDurationSecond,
      this.tweenEnd,
      this.imageUrl,
      this.alignmentHeight,
      this.scale,
      this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TweenAnimationBuilder(
        duration: Duration(seconds: animationDurationSecond),
        tween: Tween<double>(begin: 0, end: tweenEnd),
        builder: (context, value, child) => Image.network(
          imageUrl,
          repeat: ImageRepeat.repeatX,
          width: MediaQuery.of(context).size.width * 4,
          height: height,
          alignment: Alignment(value, alignmentHeight),
          scale: scale,
        ),
      ),
    );
  }
}
