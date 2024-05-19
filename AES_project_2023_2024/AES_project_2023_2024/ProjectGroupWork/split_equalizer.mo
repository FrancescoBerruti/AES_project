within AES_project_2023_2024.ProjectGroupWork;

model split_equalizer
  Modelica.Blocks.Math.Add loop_error_sum(k1 = -1) annotation(
    Placement(transformation(origin = {-312, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Continuous.TransferFunction equalizer_heating(a = {30, 1}, b = {0.0075, 0.00025}) annotation(
    Placement(transformation(origin = {8, 22}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Interfaces.RealInput y_ref annotation(
    Placement(transformation(origin = {-376, -32}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-70, -20}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealOutput actuation_signal annotation(
    Placement(transformation(origin = {144, -2}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {58, 12}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Interfaces.RealInput y_meas annotation(
    Placement(transformation(origin = {-376, 2}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-70, 42}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Math.Gain gain(k = K) annotation(
    Placement(transformation(origin = {-274, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add loop_error_sum1 annotation(
    Placement(transformation(origin = {114, -4}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Nonlinear.Limiter limiter1(uMax = 1, uMin = 0) annotation(
    Placement(transformation(origin = {42, 20}, extent = {{-10, -10}, {10, 10}})));
  parameter Real K = 80000;
  Modelica.Blocks.Continuous.TransferFunction equalizer_cooling(a = {30, 1}, b = {0.12, 0.001}) annotation(
    Placement(transformation(origin = {10, -26}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Nonlinear.Limiter limiter(uMax = 0, uMin = -1) annotation(
    Placement(transformation(origin = {44, -26}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add annotation(
    Placement(transformation(origin = {-242, -6}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Continuous.TransferFunction equalizer_cooling1(a = {30, 1}, b = {1}) annotation(
    Placement(transformation(origin = {-168, -38}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Blocks.Nonlinear.Limiter limiter11(uMax = 4000, uMin = -1000) annotation(
    Placement(transformation(origin = {-168, -6}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(y_ref, loop_error_sum.u2) annotation(
    Line(points = {{-376, -32}, {-336, -32}, {-336, -6}, {-324, -6}}, color = {0, 0, 127}));
  connect(y_meas, loop_error_sum.u1) annotation(
    Line(points = {{-376, 2}, {-349, 2}, {-349, 6}, {-324, 6}}, color = {0, 0, 127}));
  connect(loop_error_sum.y, gain.u) annotation(
    Line(points = {{-301, 0}, {-286, 0}}, color = {0, 0, 127}));
  connect(equalizer_cooling.y, limiter.u) annotation(
    Line(points = {{21, -26}, {32, -26}}, color = {0, 0, 127}));
  connect(limiter.y, loop_error_sum1.u2) annotation(
    Line(points = {{55, -26}, {80.5, -26}, {80.5, -10}, {102, -10}}, color = {0, 0, 127}));
  connect(equalizer_heating.y, limiter1.u) annotation(
    Line(points = {{19, 22}, {24.5, 22}, {24.5, 20}, {30, 20}}, color = {0, 0, 127}));
  connect(limiter1.y, loop_error_sum1.u1) annotation(
    Line(points = {{53, 20}, {74, 20}, {74, 2}, {102, 2}}, color = {0, 0, 127}));
  connect(actuation_signal, loop_error_sum1.y) annotation(
    Line(points = {{144, -2}, {126.5, -2}, {126.5, -4}, {125, -4}}, color = {0, 0, 127}));
  connect(gain.y, add.u1) annotation(
    Line(points = {{-263, 0}, {-255, 0}}, color = {0, 0, 127}));
  connect(equalizer_cooling1.y, add.u2) annotation(
    Line(points = {{-179, -38}, {-256, -38}, {-256, -12}, {-254, -12}}, color = {0, 0, 127}));
  connect(add.y, limiter11.u) annotation(
    Line(points = {{-230, -6}, {-180, -6}}, color = {0, 0, 127}));
  connect(limiter11.y, equalizer_heating.u) annotation(
    Line(points = {{-157, -6}, {-26, -6}, {-26, 22}, {-4, 22}}, color = {0, 0, 127}));
  connect(equalizer_cooling.u, limiter11.y) annotation(
    Line(points = {{-2, -26}, {-26, -26}, {-26, -6}, {-157, -6}}, color = {0, 0, 127}));
  connect(equalizer_cooling1.u, limiter11.y) annotation(
    Line(points = {{-156, -38}, {-102, -38}, {-102, -6}, {-157, -6}}, color = {0, 0, 127}));
  annotation(
    Diagram(coordinateSystem(extent = {{-280, 60}, {200, -60}})),
    Icon(coordinateSystem(extent = {{-50, 50}, {50, -50}}), graphics = {Rectangle(origin = {-1, 13}, rotation = -90, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, extent = {{-71, 49}, {71, -49}}), Text(origin = {-1, 8}, rotation = -90, extent = {{-52, 19}, {52, -19}}, textString = "Split Equalizer")}));
end split_equalizer;
