// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

const Color primaryBrandKeyColor = Color(0xffcca0a4);
const Color secondaryBrandKeyColor = Color(0xffddcfcf);
const Color tertiaryBrandKeyColor = Color(0xfff77f7f);

const Color shadowOneLightColor = Color.fromARGB(
  255,
  131,
  122,
  122,
);
const Color shadowTwoLightColor = Color.fromARGB(
  255,
  88,
  42,
  42,
);
const Color shadowOneDarkColor = Color.fromARGB(
  255,
  250,
  234,
  234,
);
const Color shadowTwoDarkColor = Color.fromARGB(
  255,
  250,
  161,
  161,
);

final List<Shadow> lightBrandShadows = [
  const Shadow(color: shadowOneLightColor),
  const Shadow(color: shadowTwoLightColor),
];

final List<Shadow> darkBrandShadows = [
  const Shadow(color: shadowOneDarkColor),
  const Shadow(color: shadowTwoDarkColor),
];
