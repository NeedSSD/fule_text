import 'package:flutter/widgets.dart';

class FuleText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final TextAlign textAlign;
  final TextDirection textDirection;

  const FuleText(this.text,
      {this.style,
      this.textAlign = TextAlign.center,
      this.textDirection = TextDirection.ltr,
      Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //创建一个TextPainter用于获取文本宽度
    TextPainter _textPainter = TextPainter(
        text: TextSpan(text: this.text, style: this.style),
        textAlign: this.textAlign,
        textDirection: this.textDirection);
    _textPainter.layout();

    //使用LayoutBuilder获取父容器宽度
    return LayoutBuilder(
      builder: (context, constraints) {
        return Text(
          this.text,
          style: this.style,
          textAlign: this.textAlign,
          textDirection: this.textDirection,
          textScaleFactor: constraints.maxWidth < _textPainter.width
              ? (constraints.maxWidth / _textPainter.width) * 0.99
              : 1,
        );
      },
    );
  }
}
