// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Originally the MD3Demo code from the Flutter Samples
// experimental folder authored by the Flutter SDK team
// under BSD clause 3 license. Modifications by Fredrick
// Grott changed to the adaptive constructors for
// crossplatform functionality which pertains to such
// widgets as CircleProgressIndicator.

import 'package:color_one_sdk/presentation/themes/semantic_colors.dart';
import 'package:flutter/material.dart';

class Dialogs extends StatefulWidget {
  const Dialogs({super.key});

  @override
  State<Dialogs> createState() => _DialogsState();
}

class _DialogsState extends State<Dialogs> {
  void openDialog(BuildContext context) {
    final semanticColors = Theme.of(context).extension<SemanticColors>();

    showDialog<void>(
      barrierColor: semanticColors?.semanticThree?.withOpacity(0.25),
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: semanticColors?.semanticContainerTwo,
        title: Text(
          'Basic Dialog Title',
          style: TextStyle(color: semanticColors?.onSemanticContainerTwo),
        ),
        content: Text(
          'A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made.',
          style: TextStyle(
            color: semanticColors?.onSemanticContainerTwo,
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: Text(
              'Dismiss',
              style: TextStyle(
                color: semanticColors?.onSemanticContainerTwo,
              ),
              ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          TextButton(
            child: Text(
              'Action',
              style: TextStyle(
                color: semanticColors?.onSemanticContainerTwo,
              ),
              ),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextButton(
        child: const Text(
          'Open Dialog',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        onPressed: () => openDialog(context),
      ),
    );
  }
}
