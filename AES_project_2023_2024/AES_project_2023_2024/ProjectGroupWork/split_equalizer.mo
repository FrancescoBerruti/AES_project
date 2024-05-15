within AES_project_2023_2024.ProjectGroupWork;

model Split_Equalizer
  Modelica.Blocks.Math.Add loop_error_sum(k1 = -1) annotation(
    Placement(transformation(origin = {-108, -2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Continuous.TransferFunction equalizer_heating(a = {30, 1}, b = {0.0075, 0.00025}) annotation(
    Placement(transformation(origin = {-34, 24}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Continuous.TransferFunction equalizer_cooling(a = {30, 1}, b = {0.12, 0.001}) annotation(
    Placement(transformation(origin = {-34, -24}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Interfaces.RealInput y_ref annotation(
    Placement(transformation(origin = {-172, -34}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-70, -20}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealOutput actuation_signal annotation(
    Placement(transformation(origin = {188, 0}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {58, 12}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Interfaces.RealInput y_meas annotation(
    Placement(transformation(origin = {-172, 34}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-70, 42}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Math.Gain gain(k = 134640) annotation(
    Placement(transformation(origin = {-72, -2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add loop_error_sum1 annotation(
    Placement(transformation(origin = {44, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Nonlinear.Limiter limiter(uMax = 0, uMin = -1) annotation(
    Placement(transformation(origin = {2, -24}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Nonlinear.Limiter limiter1(uMax = 1, uMin = 0) annotation(
    Placement(transformation(origin = {2, 24}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(y_ref, loop_error_sum.u2) annotation(
    Line(points = {{-172, -34}, {-132, -34}, {-132, -8}, {-120, -8}}, color = {0, 0, 127}));
  connect(y_meas, loop_error_sum.u1) annotation(
    Line(points = {{-172, 34}, {-132, 34}, {-132, 4}, {-120, 4}}, color = {0, 0, 127}));
  connect(loop_error_sum.y, gain.u) annotation(
    Line(points = {{-97, -2}, {-84, -2}}, color = {0, 0, 127}));
  connect(gain.y, equalizer_heating.u) annotation(
    Line(points = {{-61, -2}, {-46, -2}, {-46, 24}}, color = {0, 0, 127}));
  connect(equalizer_cooling.u, gain.y) annotation(
    Line(points = {{-46, -24}, {-46, -2}, {-61, -2}}, color = {0, 0, 127}));
  connect(equalizer_cooling.y, limiter.u) annotation(
    Line(points = {{-23, -24}, {-10, -24}}, color = {0, 0, 127}));
  connect(limiter.y, loop_error_sum1.u2) annotation(
    Line(points = {{13, -24}, {32, -24}, {32, -6}}, color = {0, 0, 127}));
  connect(equalizer_heating.y, limiter1.u) annotation(
    Line(points = {{-23, 24}, {-10, 24}}, color = {0, 0, 127}));
  connect(limiter1.y, loop_error_sum1.u1) annotation(
    Line(points = {{13, 24}, {32, 24}, {32, 6}}, color = {0, 0, 127}));
  connect(actuation_signal, loop_error_sum1.y) annotation(
    Line(points = {{188, 0}, {56, 0}}, color = {0, 0, 127}));
  annotation(
    Diagram(graphics = {Text(origin = {-79, -4}, extent = {{-1, 2}, {1, -2}}, textString = "text")}, coordinateSystem(extent = {{-200, 60}, {200, -60}})),
    Icon(coordinateSystem(extent = {{-50, 50}, {50, -50}}), graphics = {Rectangle(origin = {-1, 13}, rotation = -90, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, extent = {{-71, 49}, {71, -49}}), Text(origin = {-1, 8}, rotation = -90, extent = {{-52, 19}, {52, -19}}, textString = "Split Equalizer")}));
end Split_Equalizer;
