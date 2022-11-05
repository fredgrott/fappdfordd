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

// ignore_for_file: noop_primitive_operations

import 'package:flutter/material.dart';
import 'package:md3demo_flexcolor/domain/entities/narrow_screen_width.dart';

class ElevationScreen extends StatelessWidget {
  const ElevationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Color shadowColor = Theme.of(context).colorScheme.shadow;
    Color surfaceTint = Theme.of(context).colorScheme.primary;

    return Expanded(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              top: 20,
              right: 16.0,
            ),
            child: Text(
              'Surface Tint only',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          ElevationGrid(surfaceTintColor: surfaceTint),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              top: 8.0,
              right: 16.0,
            ),
            child: Text(
              'Surface Tint and Shadow',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          ElevationGrid(
            shadowColor: shadowColor,
            surfaceTintColor: surfaceTint,
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              top: 8.0,
              right: 16.0,
            ),
            child: Text(
              'Shadow only',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          ElevationGrid(shadowColor: shadowColor),
        ],
      ),
    );
  }
}

class ElevationGrid extends StatelessWidget {
  const ElevationGrid({
    super.key,
    this.shadowColor,
    this.surfaceTintColor,
  });

  final Color? shadowColor;
  final Color? surfaceTintColor;

  List<ElevationCard> elevationCards(
    Color? shadowColor,
    Color? surfaceTintColor,
  ) {
    return elevations
        .map(
          (elevationInfo) => ElevationCard(
            info: elevationInfo,
            shadowColor: shadowColor,
            surfaceTint: surfaceTintColor,
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: LayoutBuilder(
        builder: (
          context,
          constraints,
        ) {
          if (constraints.maxWidth < narrowScreenWidthThreshold) {
            return GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              children: elevationCards(shadowColor, surfaceTintColor),
            );
          } else {
            return GridView.count(
              shrinkWrap: true,
              crossAxisCount: 6,
              children: elevationCards(
                shadowColor,
                surfaceTintColor,
              ),
            );
          }
        },
      ),
    );
  }
}

class ElevationCard extends StatefulWidget {
  const ElevationCard({
    super.key,
    required this.info,
    this.shadowColor,
    this.surfaceTint,
  });

  final ElevationInfo info;
  final Color? shadowColor;
  final Color? surfaceTint;

  @override
  State<ElevationCard> createState() => _ElevationCardState();
}

class _ElevationCardState extends State<ElevationCard> {
  late double _elevation;

  @override
  Widget build(BuildContext context) {
    const BorderRadius borderRadius = BorderRadius.all(Radius.circular(4.0));
    final bool showOpacity = _elevation == widget.info.elevation;
    final Color color = Theme.of(context).colorScheme.surface;
    final Color cardTextColor = Theme.of(context).colorScheme.onSurface;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        borderRadius: borderRadius,
        elevation: _elevation,
        color: color,
        shadowColor: widget.shadowColor,
        surfaceTintColor: widget.surfaceTint,
        type: MaterialType.card,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Level ${widget.info.level}',
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: cardTextColor,
                    ),
              ),
              Text(
                '${widget.info.level.toInt()} dp',
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: cardTextColor,
                    ),
              ),
              if (showOpacity)
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      '${widget.info.overlayPercent}%',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: cardTextColor,
                          ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _elevation = widget.info.elevation;
  }
}

class ElevationInfo {
  const ElevationInfo(
    this.level,
    this.elevation,
    this.overlayPercent,
  );
  final int level;
  final double elevation;
  final int overlayPercent;
}

const List<ElevationInfo> elevations = <ElevationInfo>[
  ElevationInfo(
    0,
    0.0,
    0,
  ),
  ElevationInfo(
    1,
    1.0,
    5,
  ),
  ElevationInfo(
    2,
    3.0,
    8,
  ),
  ElevationInfo(
    3,
    6.0,
    11,
  ),
  ElevationInfo(
    4,
    8.0,
    12,
  ),
  ElevationInfo(
    5,
    12.0,
    14,
  ),
];
