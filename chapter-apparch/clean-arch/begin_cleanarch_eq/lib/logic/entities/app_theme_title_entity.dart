// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:equatable/equatable.dart';

class AppThemeTitleEntity extends Equatable {
  final String entityId;
  final String appThemeTitle;

  const AppThemeTitleEntity({
    required this.entityId,
    required this.appThemeTitle,
  });

  @override
  List<Object?> get props => [
        entityId,
        appThemeTitle,
      ];
}
