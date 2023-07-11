import 'package:flutter/material.dart';
import 'package:flutter_threads_clone/utils/flutter_flow_theme.dart';
import 'package:flutter_threads_clone/widgets/threadRepliesAvatarWidget.dart';

class ThreadFooterWidget extends StatefulWidget {
  int repliesCount;
  int likesCount;
  ThreadFooterWidget(
      {Key? key, required this.repliesCount, required this.likesCount})
      : super(key: key);

  @override
  State<ThreadFooterWidget> createState() => _ThreadFooterWidgetState();
}

class _ThreadFooterWidgetState extends State<ThreadFooterWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(
            width: 34,
            child: ThreadRepliesAvatarWidget(
              repliesCount: widget.repliesCount,
            )),
        Align(
          alignment: const AlignmentDirectional(-1, 0),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
            child: Text(
              '${widget.repliesCount} ${widget.repliesCount == 1 ? 'reply' : 'replies'} • ${widget.likesCount} like${widget.likesCount > 1 ? 's' : ''}',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Readex Pro',
                    fontSize: 12,
                  ),
            ),
          ),
        ),
      ],
    );
  }
}
