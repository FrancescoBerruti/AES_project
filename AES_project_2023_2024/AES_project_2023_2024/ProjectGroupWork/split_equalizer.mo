within AES_project_2023_2024.ProjectGroupWork;

model split_equalizer
  parameter Real K = 80000;
  parameter Real TauHC = 120;
  Modelica.Blocks.Interfaces.RealOutput actuation_signal annotation(
    Placement(transformation(origin = {214, -2}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {58, 12}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Interfaces.RealInput Prequested annotation(
    Placement(transformation(origin = {-92, 4}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-70, 42}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Math.Add loop_error_sum1 annotation(
    Placement(transformation(origin = {182, -2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Nonlinear.Limiter limiter1(uMax = 1, uMin = 0) annotation(
    Placement(transformation(origin = {48, 22}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Nonlinear.Limiter limiter(uMax = 0, uMin = -1) annotation(
    Placement(transformation(origin = {44, -50}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add loop_error_sum11(k1 = 1/4000, k2 = -1) annotation(
    Placement(transformation(origin = {-14, 26}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Continuous.TransferFunction transferFunction(a = {30, 1}, b = {1}) annotation(
    Placement(transformation(origin = {36, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Blocks.Continuous.TransferFunction transferFunction1(a = {120, 1}, b = {1}) annotation(
    Placement(transformation(origin = {26, -84}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Blocks.Math.Add loop_error_sum111(k1 = 1/1000, k2 = -1) annotation(
    Placement(transformation(origin = {-24, -48}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add loop_error_sum112(k1 = 1/TauHC) annotation(
    Placement(transformation(origin = {18, 22}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add loop_error_sum113(k1 = 1/TauHC) annotation(
    Placement(transformation(origin = {12, -50}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(limiter.y, loop_error_sum1.u2) annotation(
    Line(points = {{55, -50}, {126.5, -50}, {126.5, -40}, {125.25, -40}, {125.25, -8}, {170, -8}}, color = {0, 0, 127}));
  connect(actuation_signal, loop_error_sum1.y) annotation(
    Line(points = {{214, -2}, {193, -2}}, color = {0, 0, 127}));
  connect(loop_error_sum11.u1, Prequested) annotation(
    Line(points = {{-26, 32}, {-36, 32}, {-36, 4}, {-92, 4}}, color = {0, 0, 127}));
  connect(limiter1.y, loop_error_sum1.u1) annotation(
    Line(points = {{59, 22}, {110, 22}, {110, 4}, {170, 4}}, color = {0, 0, 127}));
  connect(transferFunction.u, limiter1.y) annotation(
    Line(points = {{48, -2}, {88, -2}, {88, 22}, {59, 22}}, color = {0, 0, 127}));
  connect(transferFunction1.u, limiter.y) annotation(
    Line(points = {{38, -84}, {72, -84}, {72, -50}, {56, -50}}, color = {0, 0, 127}));
  connect(loop_error_sum111.u1, Prequested) annotation(
    Line(points = {{-36, -42}, {-36, 4}, {-92, 4}}, color = {0, 0, 127}));
  connect(limiter1.u, loop_error_sum112.y) annotation(
    Line(points = {{36, 22}, {29, 22}}, color = {0, 0, 127}));
  connect(loop_error_sum112.u1, loop_error_sum11.y) annotation(
    Line(points = {{6, 28}, {-3, 28}, {-3, 26}}, color = {0, 0, 127}));
  connect(loop_error_sum112.u2, transferFunction.y) annotation(
    Line(points = {{6, 16}, {4, 16}, {4, -2}, {25, -2}}, color = {0, 0, 127}));
  connect(loop_error_sum11.u2, limiter1.y) annotation(
    Line(points = {{-26, 20}, {-26, -16}, {76, -16}, {76, 22}, {60, 22}}, color = {0, 0, 127}));
  connect(loop_error_sum111.u2, limiter.y) annotation(
    Line(points = {{-36, -54}, {-48, -54}, {-48, -110}, {72, -110}, {72, -50}, {56, -50}}, color = {0, 0, 127}));
  connect(loop_error_sum113.y, limiter.u) annotation(
    Line(points = {{23, -50}, {31, -50}}, color = {0, 0, 127}));
  connect(transferFunction1.y, loop_error_sum113.u2) annotation(
    Line(points = {{15, -84}, {-1, -84}, {-1, -56}}, color = {0, 0, 127}));
  connect(loop_error_sum113.u1, loop_error_sum111.y) annotation(
    Line(points = {{0, -44}, {-13, -44}, {-13, -48}}, color = {0, 0, 127}));
  annotation(
    Diagram(coordinateSystem(extent = {{-120, 40}, {160, -40}})),
    Icon(coordinateSystem(extent = {{-50, 50}, {50, -50}}), graphics = {Rectangle(origin = {-1, 13}, rotation = -90, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, extent = {{-71, 49}, {71, -49}}), Text(origin = {-1, 8}, rotation = -90, extent = {{-52, 19}, {52, -19}}, textString = "Split Equalizer")}));
end split_equalizer;
