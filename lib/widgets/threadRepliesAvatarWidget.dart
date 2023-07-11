import 'package:flutter/material.dart';

class ThreadRepliesAvatarWidget extends StatefulWidget {
  int repliesCount;
  ThreadRepliesAvatarWidget({Key? key, required this.repliesCount})
      : super(key: key);

  @override
  State<ThreadRepliesAvatarWidget> createState() =>
      _ThreadRepliesAvatarWidgetState();
}

class _ThreadRepliesAvatarWidgetState extends State<ThreadRepliesAvatarWidget> {
  List<Widget> widgets = [];
  @override
  Widget build(BuildContext context) {
    switch (widget.repliesCount) {
      case 1:
        setState(() {
          widgets = [
            Align(
              child: Container(
                width: 18,
                height: 18,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(shape: BoxShape.circle),
                child: Image.network(
                  'https://picsum.photos/seed/730/600',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ];
        });
        break;
      case 2:
        setState(() {
          widgets = [
            Align(
              alignment: const AlignmentDirectional(-1, 0),
              child: Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Container(
                  width: 17,
                  height: 17,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: Image.network(
                    'https://picsum.photos/seed/830/600',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Align(
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 3.3),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Container(
                    width: 25,
                    height: 25,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.network(
                      'https://picsum.photos/seed/330/1000',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ];
        });
        break;
      default:
        setState(() {
          widgets = [
            Align(
              alignment: const AlignmentDirectional(1, 0),
              child: Container(
                width: 18,
                height: 18,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(shape: BoxShape.circle),
                child: Image.network(
                  'https://picsum.photos/seed/330/1000',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-1, 0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                child: Container(
                  width: 15,
                  height: 15,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: Image.network(
                    'https://picsum.photos/seed/230/1000',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0, 1),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(8, 20, 0, 0),
                child: Container(
                  width: 12,
                  height: 12,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(shape: BoxShape.circle),
                  child: Image.network(
                    'https://picsum.photos/seed/250/1000',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ];
        });
        break;
    }
    return Stack(
      children: widgets,
    );
  }
}
