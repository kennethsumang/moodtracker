import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_quill/quill_delta.dart';
import 'package:moodtracker/models/mood_model.dart';

class RecordForm extends StatefulWidget {
  final Mood initialData;

  const RecordForm({ super.key, required this.initialData });

  @override
  State<RecordForm> createState() => _RecordFormState();
}

class _RecordFormState extends State<RecordForm> {
  final _quillController = QuillController.basic();
  final _quillConfig = const QuillSimpleToolbarConfigurations(
    showAlignmentButtons: false,
    showCenterAlignment: false,
    showBackgroundColorButton: false,
    showCodeBlock: false,
    showFontFamily: false,
    showFontSize: false,
    showInlineCode: false,
    showIndent: false,
    showJustifyAlignment: false,
    showLeftAlignment: false,
    showRightAlignment: false,
    showLineHeightButton: false,
    showLink: false,
    showUndo: false,
    showRedo: false,
    showColorButton: false,
    showHeaderStyle: false,
    showClipboardCut: false,
    showClipboardCopy: false,
    showClipboardPaste: false,
    showClearFormat: false,
    showListCheck: false,
    showSearchButton: false,
    showDirection: false,
    showListBullets: false,
    showListNumbers: false,
    showQuote: false,
    showDividers: false,
  );

  @override
  Widget build(BuildContext context) {
    _quillController.setContents(Delta.fromJson([{ 'insert': '${widget.initialData.content}\n' }]));

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
            ),
            initialValue: widget.initialData.title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: QuillSimpleToolbar(
              controller: _quillController,
              configurations: _quillConfig,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: QuillEditor.basic(
              controller: _quillController,
              configurations: const QuillEditorConfigurations(),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _quillController.dispose();
    super.dispose();
  }
}
