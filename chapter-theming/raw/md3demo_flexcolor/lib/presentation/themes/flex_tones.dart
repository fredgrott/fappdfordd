// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore_for_file: depend_on_referenced_packages

import 'package:flex_seed_scheme/flex_seed_scheme.dart';
import 'package:flutter/material.dart';

FlexTones appFlexTonesVivid(Brightness brightness) =>
    brightness == Brightness.light
        ? const FlexTones.light(
            primaryTone: 32,
            surfaceTintTone: 32,
            //
            primaryMinChroma: 52,
          )
        : const FlexTones.dark(
            onPrimaryTone: 15,
            primaryContainerTone: 25,
            onErrorContainerTone: 95,
            //
            primaryMinChroma: 55,
          );

FlexTones appFlexTonesHighContrast(Brightness brightness) =>
    brightness == Brightness.light
        ? const FlexTones.light(
            primaryTone: 35,
            secondaryTone: 45,
            tertiaryTone: 35,
            errorTone: 45,
            primaryContainerTone: 92,
            secondaryContainerTone: 92,
            tertiaryContainerTone: 92,
            errorContainerTone: 92,
            surfaceTintTone: 35,
            //
            primaryMinChroma: 60,
            secondaryMinChroma: 50,
            tertiaryMinChroma: 50,
          )
        : const FlexTones.dark(
            primaryTone: 85,
            secondaryTone: 85,
            tertiaryTone: 85,
            errorTone: 85,
            onPrimaryTone: 8,
            onSecondaryTone: 8,
            onTertiaryTone: 8,
            onErrorTone: 8,
            primaryContainerTone: 22,
            secondaryContainerTone: 22,
            tertiaryContainerTone: 22,
            errorContainerTone: 22,
            onErrorContainerTone: 92,
            surfaceTintTone: 82,
            //
            primaryMinChroma: 67,
            secondaryMinChroma: 57,
            tertiaryMinChroma: 57,
          );
