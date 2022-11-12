// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class AppColorSchemeEntity extends Equatable {
  final String entityId;
  final ColorScheme appColorScheme;

  const AppColorSchemeEntity({
    required this.entityId,
    required this.appColorScheme,
  });

  @override
  List<Object?> get props => [entityId, appColorScheme,];
}
