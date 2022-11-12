// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:begin_cleanarch_eq/logic/entities/app_theme_title_entity.dart';

class AppThemeTitleModel extends AppThemeTitleEntity {
  const AppThemeTitleModel({
    required super.entityId,
    required super.appThemeTitle,
  });

  factory AppThemeTitleModel.fromEntity(AppThemeTitleEntity entity) {
    return AppThemeTitleModel(
        entityId: entity.entityId, appThemeTitle: entity.appThemeTitle,);
  }

   factory AppThemeTitleModel.fromJson(Map<String, dynamic> json) {
    return AppThemeTitleModel(
      entityId: json["entityId"] as String,
      appThemeTitle: json["appThemeTitle"] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      "entityId": entityId,
      "appColorScheme": appThemeTitle,
    };
  }

  AppThemeTitleEntity toEntity() {
    return AppThemeTitleEntity(
      entityId: entityId,
      appThemeTitle: appThemeTitle,
    );
  }
}
