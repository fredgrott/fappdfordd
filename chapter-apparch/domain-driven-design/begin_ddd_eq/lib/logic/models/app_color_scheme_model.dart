// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.


import 'package:begin_ddd_eq/logic/entities/app_color_scheme_entity.dart';
import 'package:flutter/material.dart';





class AppColorSchemeModel extends AppColorSchemeEntity {
  const AppColorSchemeModel({
    required super.entityId,
    required super.appColorScheme,
  });

  factory AppColorSchemeModel.fromEntity(AppColorSchemeEntity entity) {
    return AppColorSchemeModel(
      entityId: entity.entityId,
      appColorScheme: entity.appColorScheme,
    );
  }

  factory AppColorSchemeModel.fromJson(Map<String, dynamic> json) {
    return AppColorSchemeModel(
      entityId: json["entityId"] as String,
      appColorScheme: json["appColorScheme"] as ColorScheme,
      
    );
  }

   Map<String, dynamic> toJson() {
    return <String, dynamic>{
      "entityId": entityId,
      "appColorScheme": appColorScheme,
      
    };
  }

  

  AppColorSchemeEntity toEntity() {
    return AppColorSchemeEntity(
      entityId: entityId,
      appColorScheme: appColorScheme,
    );
  }
}
