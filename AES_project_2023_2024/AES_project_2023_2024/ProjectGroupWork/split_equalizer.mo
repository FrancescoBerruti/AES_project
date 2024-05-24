within AES_project_2023_2024.ProjectGroupWork;

model split_equalizer
  Modelica.Blocks.Interfaces.RealOutput actuation_signal annotation(
    Placement(transformation(origin = {144, -2}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {58, 12}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Interfaces.RealInput Prequested annotation(
    Placement(transformation(origin = {-92, 4}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-70, 42}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Math.Add loop_error_sum1 annotation(
    Placement(transformation(origin = {114, -4}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Nonlinear.Limiter limiter1(uMax = 1, uMin = 0) annotation(
    Placement(transformation(origin = {44, 20}, extent = {{-10, -10}, {10, 10}})));
  parameter Real K = 80000;
  Modelica.Blocks.Continuous.TransferFunction equalizer_cooling(a = {30, 1}, b = {0.12, 0.001}) annotation(
    Placement(transformation(origin = {10, -26}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Nonlinear.Limiter limiter(uMax = 0, uMin = -1) annotation(
    Placement(transformation(origin = {44, -26}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Gain gain(k = 1/4000)  annotation(
    Placement(transformation(origin = {10, 20}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(equalizer_cooling.y, limiter.u) annotation(
    Line(points = {{21, -26}, {32, -26}}, color = {0, 0, 127}));
  connect(limiter.y, loop_error_sum1.u2) annotation(
    Line(points = {{55, -26}, {80.5, -26}, {80.5, -10}, {102, -10}}, color = {0, 0, 127}));
  connect(limiter1.y, loop_error_sum1.u1) annotation(
    Line(points = {{55, 20}, {74, 20}, {74, 2}, {102, 2}}, color = {0, 0, 127}));
  connect(actuation_signal, loop_error_sum1.y) annotation(
    Line(points = {{144, -2}, {126.5, -2}, {126.5, -4}, {125, -4}}, color = {0, 0, 127}));
  connect(equalizer_cooling.u, Prequested) annotation(
    Line(points = {{-2, -26}, {-34, -26}, {-34, 4}, {-92, 4}}, color = {0, 0, 127}));
  connect(limiter1.u, gain.y) annotation(
    Line(points = {{32, 20}, {21, 20}}, color = {0, 0, 127}));
  connect(gain.u, Prequested) annotation(
    Line(points = {{-2, 20}, {-34, 20}, {-34, 4}, {-92, 4}}, color = {0, 0, 127}));
  annotation(
    Diagram(coordinateSystem(extent = {{-120, 40}, {160, -40}})),
    Icon(coordinateSystem(extent = {{-50, 50}, {50, -50}}), graphics = {Rectangle(origin = {-1, 13}, rotation = -90, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, extent = {{-71, 49}, {71, -49}}), Text(origin = {-1, 8}, rotation = -90, extent = {{-52, 19}, {52, -19}}, textString = "Split Equalizer")}));
end split_equalizer;
