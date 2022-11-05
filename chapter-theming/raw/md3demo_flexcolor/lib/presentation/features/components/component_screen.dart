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

import 'package:flutter/material.dart';
import 'package:md3demo_flexcolor/domain/entities/divider.dart';
import 'package:md3demo_flexcolor/presentation/features/components/buttons.dart';
import 'package:md3demo_flexcolor/presentation/features/components/cards.dart';
import 'package:md3demo_flexcolor/presentation/features/components/checkboxes.dart';
import 'package:md3demo_flexcolor/presentation/features/components/chips.dart';
import 'package:md3demo_flexcolor/presentation/features/components/dialogs.dart';
import 'package:md3demo_flexcolor/presentation/features/components/floating_action_buttons.dart';
import 'package:md3demo_flexcolor/presentation/features/components/icon_toggle_buttons.dart';
import 'package:md3demo_flexcolor/presentation/features/components/navigation_stuff.dart';
import 'package:md3demo_flexcolor/presentation/features/components/progress_indicators.dart';
import 'package:md3demo_flexcolor/presentation/features/components/radios.dart';
import 'package:md3demo_flexcolor/presentation/features/components/switches.dart';
import 'package:md3demo_flexcolor/presentation/features/components/text_fields.dart';

class ComponentScreen extends StatelessWidget {
  const ComponentScreen({
    super.key,
    required this.showNavBottomBar,
  });

  final bool showNavBottomBar;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Align(
          alignment: Alignment.topCenter,
          child: SizedBox(
            width: maxWidthConstraint,
            child: ListView(
              shrinkWrap: true,
              children: [
                colDivider,
                colDivider,
                const Buttons(),
                colDivider,
                colDivider,
                const IconToggleButtons(),
                colDivider,
                const FloatingActionButtons(),
                colDivider,
                const Chips(),
                colDivider,
                const Cards(),
                colDivider,
                const TextFields(),
                colDivider,
                const Dialogs(),
                colDivider,
                const Switches(),
                colDivider,
                const Checkboxes(),
                colDivider,
                const Radios(),
                colDivider,
                const ProgressIndicators(),
                colDivider,
                //
                // ignore: prefer_if_elements_to_conditional_expressions
                showNavBottomBar
                    ? const NavigationBars(
                        selectedIndex: 0,
                        isExampleBar: true,
                      )
                    : Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void Function()? handlePressed(
  BuildContext context,
  bool isDisabled,
  String buttonName,
) {
  return isDisabled
      ? null
      : () {
          final snackBar = SnackBar(
            content: Text(
              'Yay! $buttonName is clicked!',
              style: TextStyle(color: Theme.of(context).colorScheme.surface),
            ),
            action: SnackBarAction(
              textColor: Theme.of(context).colorScheme.surface,
              label: 'Close',
              //
              // ignore: no-empty-block
              onPressed: () {},
            ),
          );

          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        };
}
