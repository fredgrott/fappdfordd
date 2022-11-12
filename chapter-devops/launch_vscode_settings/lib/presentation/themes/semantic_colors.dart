// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

class SemanticColors extends ThemeExtension<SemanticColors> {
  final Color? semanticOne;
  final Color? onSemanticOne;
  final Color? semanticContainerOne;
  final Color? onSemanticContainerOne;

  final Color? semanticTwo;
  final Color? onSemanticTwo;
  final Color? semanticContainerTwo;
  final Color? onSemanticContainerTwo;

  final Color? semanticThree;
  final Color? onSemanticThree;
  final Color? semanticContainerThree;
  final Color? onSemanticContainerThree;

  SemanticColors({
    required this.semanticThree,
    required this.onSemanticThree,
    required this.semanticContainerThree,
    required this.onSemanticContainerThree,
    required this.semanticTwo,
    required this.onSemanticTwo,
    required this.semanticContainerTwo,
    required this.onSemanticContainerTwo,
    required this.semanticOne,
    required this.onSemanticOne,
    required this.semanticContainerOne,
    required this.onSemanticContainerOne,
  });

  @override
  //
  // ignore: long-parameter-list
  ThemeExtension<SemanticColors> copyWith({
    Color? semanticOne,
    Color? onSemanticOne,
    Color? semanticContainerOne,
    Color? onSemanticContainerOne,
    Color? semanticTwo,
    Color? onSemanticTwo,
    Color? semanticContainerTwo,
    Color? onSemanticContainerTwo,
    Color? semanticThree,
    Color? onSemanticThree,
    Color? semanticContainerThree,
    Color? onSemanticContainerThree,
  }) {
    return SemanticColors(
      semanticOne: semanticOne ?? this.semanticOne,
      onSemanticOne: onSemanticOne ?? this.onSemanticOne,
      semanticContainerOne: semanticContainerOne ?? this.semanticContainerOne,
      onSemanticContainerOne:
          onSemanticContainerOne ?? this.onSemanticContainerOne,
      semanticTwo: semanticTwo ?? this.semanticTwo,
      onSemanticTwo: onSemanticTwo ?? this.onSemanticTwo,
      semanticContainerTwo: semanticContainerTwo ?? this.semanticContainerTwo,
      onSemanticContainerTwo:
          onSemanticContainerTwo ?? this.onSemanticContainerTwo,
      semanticThree: semanticThree ?? this.semanticThree,
      onSemanticThree: onSemanticThree ?? this.onSemanticThree,
      semanticContainerThree:
          semanticContainerThree ?? this.semanticContainerThree,
      onSemanticContainerThree:
          onSemanticContainerThree ?? this.onSemanticContainerThree,
    );
  }

  @override
  ThemeExtension<SemanticColors> lerp(
      covariant ThemeExtension<SemanticColors>? other, double t,) {
    if (other is! SemanticColors) {
      return this;
    }

    return SemanticColors(
      semanticOne: Color.lerp(semanticOne, other.semanticOne, t,),
      onSemanticOne: Color.lerp(onSemanticOne, other.onSemanticOne, t,),
      semanticContainerOne:
          Color.lerp(semanticContainerOne, other.semanticContainerOne, t,),
      onSemanticContainerOne:
          Color.lerp(onSemanticContainerOne, other.onSemanticContainerOne, t,),
      semanticTwo: Color.lerp(semanticTwo, other.semanticTwo, t,),
      onSemanticTwo: Color.lerp(onSemanticTwo, other.onSemanticTwo, t,),
      semanticContainerTwo:
          Color.lerp(semanticContainerTwo, other.semanticContainerTwo, t,),
      onSemanticContainerTwo:
          Color.lerp(onSemanticContainerTwo, other.onSemanticContainerTwo, t,),
      semanticThree: Color.lerp(semanticThree, other.semanticThree, t,),
      onSemanticThree: Color.lerp(onSemanticThree, other.onSemanticThree, t,),
      semanticContainerThree:
          Color.lerp(semanticContainerThree, other.semanticContainerThree, t,),
      onSemanticContainerThree: Color.lerp(
          onSemanticContainerThree, other.onSemanticContainerThree, t,),
    );
  }
}
