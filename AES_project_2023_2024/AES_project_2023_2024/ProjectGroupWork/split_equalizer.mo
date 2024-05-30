within AES_project_2023_2024.ProjectGroupWork;

model split_equalizer
  parameter Real K = 80000;
  parameter Real TauHC = 120;
  Modelica.Blocks.Interfaces.RealOutput actuation_signal annotation(
    Placement(transformation(origin = {154, 50}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {58, 12}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Interfaces.RealInput Prequested annotation(
    Placement(transformation(origin = {-122, 38}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-70, 42}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Math.Add loop_error_sum1(k1 = 1/4000, k2 = 1/1000)  annotation(
    Placement(transformation(origin = {122, 50}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Nonlinear.Limiter limiter1(uMax = 4000, uMin = 0) annotation(
    Placement(transformation(origin = {18, 56}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Nonlinear.Limiter limiter(uMax = 0, uMin = -1000) annotation(
    Placement(transformation(origin = {16, -24}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add loop_error_sum11(k1 = 1, k2 = -1) annotation(
    Placement(transformation(origin = {-44, 60}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Continuous.TransferFunction transferFunction(a = {30, 1}, b = {1}) annotation(
    Placement(transformation(origin = {6, 32}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Blocks.Continuous.TransferFunction transferFunction1(a = {120, 1}, b = {1}) annotation(
    Placement(transformation(origin = {-2, -58}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Blocks.Math.Add loop_error_sum111(k2 = -1) annotation(
    Placement(transformation(origin = {-52, -22}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add loop_error_sum112(k1 = 1/TauHC) annotation(
    Placement(transformation(origin = {-12, 56}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add loop_error_sum113(k1 = 1/TauHC) annotation(
    Placement(transformation(origin = {-16, -24}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(limiter.y, loop_error_sum1.u2) annotation(
    Line(points = {{27, -24}, {59.75, -24}, {59.75, -22}, {94.5, -22}, {94.5, -6}, {95.25, -6}, {95.25, 44}, {110, 44}}, color = {0, 0, 127}));
  connect(actuation_signal, loop_error_sum1.y) annotation(
    Line(points = {{154, 50}, {133, 50}}, color = {0, 0, 127}));
  connect(loop_error_sum11.u1, Prequested) annotation(
    Line(points = {{-56, 66}, {-66, 66}, {-66, 38}, {-122, 38}}, color = {0, 0, 127}));
  connect(transferFunction1.u, limiter.y) annotation(
    Line(points = {{10, -58}, {44, -58}, {44, -24}, {28, -24}}, color = {0, 0, 127}));
  connect(loop_error_sum111.u1, Prequested) annotation(
    Line(points = {{-64, -16}, {-64, 38}, {-122, 38}}, color = {0, 0, 127}));
  connect(limiter1.u, loop_error_sum112.y) annotation(
    Line(points = {{6, 56}, {-1, 56}}, color = {0, 0, 127}));
  connect(loop_error_sum112.u1, loop_error_sum11.y) annotation(
    Line(points = {{-24, 62}, {-33, 62}, {-33, 60}}, color = {0, 0, 127}));
  connect(loop_error_sum112.u2, transferFunction.y) annotation(
    Line(points = {{-24, 50}, {-26, 50}, {-26, 32}, {-5, 32}}, color = {0, 0, 127}));
  connect(loop_error_sum11.u2, limiter1.y) annotation(
    Line(points = {{-56, 54}, {-56, 18}, {46, 18}, {46, 56}, {30, 56}}, color = {0, 0, 127}));
  connect(loop_error_sum111.u2, limiter.y) annotation(
    Line(points = {{-64, -28}, {-76, -28}, {-76, -84}, {44, -84}, {44, -24}, {28, -24}}, color = {0, 0, 127}));
  connect(loop_error_sum113.y, limiter.u) annotation(
    Line(points = {{-5, -24}, {3, -24}}, color = {0, 0, 127}));
  connect(transferFunction1.y, loop_error_sum113.u2) annotation(
    Line(points = {{-13, -58}, {-29, -58}, {-29, -30}}, color = {0, 0, 127}));
  connect(loop_error_sum113.u1, loop_error_sum111.y) annotation(
    Line(points = {{-28, -18}, {-41, -18}, {-41, -22}}, color = {0, 0, 127}));
  connect(loop_error_sum1.u1, limiter1.y) annotation(
    Line(points = {{110, 56}, {30, 56}}, color = {0, 0, 127}));
  connect(transferFunction.u, limiter1.y) annotation(
    Line(points = {{18, 32}, {46, 32}, {46, 56}, {30, 56}}, color = {0, 0, 127}));
  annotation(
    Diagram(coordinateSystem(extent = {{-140, 80}, {160, -80}})),
    Icon(coordinateSystem(extent = {{-50, 50}, {50, -50}}), graphics = {Rectangle(origin = {-1, 13}, rotation = -90, fillColor = {255, 0, 0}, fillPattern = FillPattern.Solid, extent = {{-71, 49}, {71, -49}}), Text(origin = {-1, 8}, rotation = -90, extent = {{-52, 19}, {52, -19}}, textString = "Split Equalizer")}));
end split_equalizer;
