import 'package:flutter/material.dart';

class ItemWidget<T> extends StatefulWidget {
  const ItemWidget({
    Key? key,
    required this.onTapDeleteWidget,
    required this.itemChild,
  }) : super(key: key);

  final void Function() onTapDeleteWidget;
  final Widget itemChild;

  @override
  State<ItemWidget> createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget>
    with SingleTickerProviderStateMixin {
  late final Animation<double> _opacityAnimation;
  late final Animation<Offset> _offsetAnimation;
  late final AnimationController _controller;
  late final double width;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this,
        duration: const Duration(
          milliseconds: 200,
        ));
    _opacityAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
    _offsetAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(-0.2, 0),
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (_controller.isDismissed) {
          _controller.forward();
        } else if (_controller.isCompleted) {
          _controller.reverse();
        }
      },
      child: Stack(
        children: [
          Positioned(
            right: 0,
            top: 0,
            child: Opacity(
              opacity: _opacityAnimation.value,
              child: DeleteItemButtonWidget(
                onTap: widget.onTapDeleteWidget,
              ),
            ),
          ),
          SlideTransition(
            position: _offsetAnimation,
            child: widget.itemChild,
          ),
        ],
      ),
    );
  }
}

class DeleteItemButtonWidget extends StatelessWidget {
  const DeleteItemButtonWidget({
    super.key,
    required this.onTap,
  });

  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 96,
      width: 55,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: CardTheme.of(context).color,
        ),
        onPressed: onTap,
        child: const Icon(
          Icons.delete_outline,
          color: Colors.white,
        ),
      ),
    );
  }
}
