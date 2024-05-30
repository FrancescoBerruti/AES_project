within AES_project_2023_2024.ProjectGroupWork;

model StrictController
  AES_project_2023_2024.ProjectGroupWork.split_equalizer split_equalizer(K = 80784, TauHC = TauHC) annotation(
    Placement(transformation(origin = {119, 101}, extent = {{-22, -22}, {22, 22}})));
  AES_project_2023_2024.ProjectGroupWork.split_equalizer split_equalizer1(K = 53856, TauHC = TauHC) annotation(
    Placement(transformation(origin = {125, -1}, extent = {{-18, -18}, {18, 18}})));
  AES_project_2023_2024.ProjectGroupWork.split_equalizer split_equalizer2(K = 134640, TauHC = TauHC) annotation(
    Placement(transformation(origin = {82, -200}, extent = {{-17, -17}, {17, 17}})));
  Modelica.Blocks.Interfaces.RealInput y_meas1 annotation(
    Placement(transformation(origin = {-250, 146}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-100, 102}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealInput setpoint1 annotation(
    Placement(transformation(origin = {-250, 116}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-100, 66}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealInput y_meas2 annotation(
    Placement(transformation(origin = {-276, 14}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-100, 26}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealInput setpoint2 annotation(
    Placement(transformation(origin = {-278, -16}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-100, -18}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealInput y_meas3 annotation(
    Placement(transformation(origin = {-278, -190}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-100, -64}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealInput setpoint3 annotation(
    Placement(transformation(origin = {-278, -218}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-100, -102}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealOutput u1 annotation(
    Placement(transformation(origin = {174, 106}, extent = {{-10, -10}, {10, 10}}, rotation = 180), iconTransformation(origin = {84, 36}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Interfaces.RealOutput u2 annotation(
    Placement(transformation(origin = {188, 6}, extent = {{-10, -10}, {10, 10}}, rotation = 180), iconTransformation(origin = {84, -2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Interfaces.RealOutput u3 annotation(
    Placement(transformation(origin = {136, -198}, extent = {{-10, -10}, {10, 10}}, rotation = 180), iconTransformation(origin = {84, -42}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Gain gain3(k = 134640/Tau) annotation(
    Placement(transformation(origin = {-160, -212}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Gain gain2(k = 53856/Tau) annotation(
    Placement(transformation(origin = {-122, 10}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Gain gain1(k = 80784/Tau) annotation(
    Placement(transformation(origin = {-82, 130}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add loop_error_sum(k1 = -1) annotation(
    Placement(transformation(origin = {-198, -212}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add loop_error_sum1(k1 = -1) annotation(
    Placement(transformation(origin = {-194, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add loop_error_sum2(k1 = -1) annotation(
    Placement(transformation(origin = {-180, 130}, extent = {{-10, -10}, {10, 10}})));
  parameter Real Tau = 10;
  parameter Real TauHC = 120;
  Modelica.Blocks.Interfaces.RealInput Te annotation(
    Placement(transformation(origin = {-106, -92}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-8, 140}, extent = {{-20, -20}, {20, 20}}, rotation = 90)));
  Modelica.Blocks.Math.Add CompensatorTe1(k2 = 83.071) annotation(
    Placement(transformation(origin = {-2, 124}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add CompensatorTe2(k2 = 55.385) annotation(
    Placement(transformation(origin = {-44, -4}, extent = {{-18, -18}, {18, 18}})));
  Modelica.Blocks.Math.Add CompensatorTe3(k2 = 138.462) annotation(
    Placement(transformation(origin = {-95, -217}, extent = {{-19, -19}, {19, 19}})));
  Modelica.Blocks.Math.Add3 add32(k1 = (154.286)/2, k2 = (102.857)/2) annotation(
    Placement(transformation(origin = {31, -199}, extent = {{-21, -21}, {21, 21}})));
  Modelica.Blocks.Math.Add add5(k2 = (102.857)/2) annotation(
    Placement(transformation(origin = {62, -4}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add51(k1 = +1, k2 = (154.286)/2) annotation(
    Placement(transformation(origin = {60, 118}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.RealExpression DeltaR13(y = y_meas1 - y_meas3) annotation(
    Placement(transformation(origin = {8, 75}, extent = {{-22, -21}, {22, 21}})));
  Modelica.Blocks.Sources.RealExpression DeltaR23(y = y_meas2 - y_meas3) annotation(
    Placement(transformation(origin = {6, -27}, extent = {{-22, -21}, {22, 21}})));
  Modelica.Blocks.Sources.RealExpression DeltaR31(y = y_meas3 -y_meas1) annotation(
    Placement(transformation(origin = {-34, -161}, extent = {{-22, -21}, {22, 21}})));
  Modelica.Blocks.Sources.RealExpression DeltaR32(y = y_meas3 -y_meas2) annotation(
    Placement(transformation(origin = {-40, -201}, extent = {{-22, -21}, {22, 21}})));
  Modelica.Blocks.Sources.RealExpression DeltaR2Te(y = y_meas2 - Te) annotation(
    Placement(transformation(origin = {-106, -35}, extent = {{-24, -21}, {24, 21}})));
  Modelica.Blocks.Sources.RealExpression DeltaR1Te(y = y_meas1 - Te) annotation(
    Placement(transformation(origin = {-88, 80}, extent = {{-24, -20}, {24, 20}})));
  Modelica.Blocks.Sources.RealExpression DeltaR3Te(y = y_meas3 - Te) annotation(
    Placement(transformation(origin = {-153, -264}, extent = {{-29, -24}, {29, 24}})));
equation
  connect(split_equalizer1.actuation_signal, u2) annotation(
    Line(points = {{146, 3}, {159.64, 3}, {159.64, 6}, {188, 6}}, color = {0, 0, 127}));
  connect(u1, split_equalizer.actuation_signal) annotation(
    Line(points = {{174, 106}, {145, 106}}, color = {0, 0, 127}));
  connect(split_equalizer2.actuation_signal, u3) annotation(
    Line(points = {{101.72, -195.92}, {116.72, -195.92}, {116.72, -197.92}, {135.72, -197.92}}, color = {0, 0, 127}));
  connect(setpoint1, loop_error_sum2.u2) annotation(
    Line(points = {{-250, 116}, {-192, 116}, {-192, 124}}, color = {0, 0, 127}));
  connect(loop_error_sum2.u1, y_meas1) annotation(
    Line(points = {{-192, 136}, {-250, 136}, {-250, 146}}, color = {0, 0, 127}));
  connect(loop_error_sum1.u1, y_meas2) annotation(
    Line(points = {{-206, 8}, {-236, 8}, {-236, 14}, {-276, 14}}, color = {0, 0, 127}));
  connect(setpoint2, loop_error_sum1.u2) annotation(
    Line(points = {{-278, -16}, {-242, -16}, {-242, -4}, {-206, -4}}, color = {0, 0, 127}));
  connect(y_meas3, loop_error_sum.u1) annotation(
    Line(points = {{-278, -190}, {-210, -190}, {-210, -206}}, color = {0, 0, 127}));
  connect(setpoint3, loop_error_sum.u2) annotation(
    Line(points = {{-278, -218}, {-210, -218}}, color = {0, 0, 127}));
  connect(gain2.u, loop_error_sum1.y) annotation(
    Line(points = {{-134, 10}, {-182, 10}, {-182, 2}}, color = {0, 0, 127}));
  connect(gain3.u, loop_error_sum.y) annotation(
    Line(points = {{-172, -212}, {-187, -212}}, color = {0, 0, 127}));
  connect(CompensatorTe3.y, add32.u3) annotation(
    Line(points = {{-74, -217}, {-37.5, -217}, {-37.5, -216}, {6, -216}}, color = {0, 0, 127}));
  connect(add32.y, split_equalizer2.Prequested) annotation(
    Line(points = {{54.1, -199}, {54.1, -193.5}, {58.1, -193.5}, {58.1, -186}}, color = {0, 0, 127}));
  connect(CompensatorTe1.y, add51.u1) annotation(
    Line(points = {{9, 124}, {48, 124}}, color = {0, 0, 127}));
  connect(add51.y, split_equalizer.Prequested) annotation(
    Line(points = {{71, 118}, {80, 118}, {80, 120}, {87, 120}}, color = {0, 0, 127}));
  connect(CompensatorTe2.y, add5.u1) annotation(
    Line(points = {{-24, -4}, {13, -4}, {13, 2}, {50, 2}}, color = {0, 0, 127}));
  connect(add5.y, split_equalizer1.Prequested) annotation(
    Line(points = {{73, -4}, {100, -4}, {100, 14}}, color = {0, 0, 127}));
  connect(loop_error_sum2.y, gain1.u) annotation(
    Line(points = {{-169, 130}, {-95, 130}}, color = {0, 0, 127}));
  connect(DeltaR13.y, add51.u2) annotation(
    Line(points = {{32, 75}, {48, 75}, {48, 112}}, color = {0, 0, 127}));
  connect(add5.u2, DeltaR23.y) annotation(
    Line(points = {{50, -10}, {30, -10}, {30, -27}}, color = {0, 0, 127}));
  connect(add32.u1, DeltaR31.y) annotation(
    Line(points = {{6, -182}, {-10, -182}, {-10, -161}}, color = {0, 0, 127}));
  connect(add32.u2, DeltaR32.y) annotation(
    Line(points = {{5.8, -199}, {-16.2, -199}, {-16.2, -201}}, color = {0, 0, 127}));
  connect(DeltaR2Te.y, CompensatorTe2.u2) annotation(
    Line(points = {{-80, -35}, {-76.5, -35}, {-76.5, -15}, {-66, -15}}, color = {0, 0, 127}));
  connect(DeltaR1Te.y, CompensatorTe1.u2) annotation(
    Line(points = {{-62, 80}, {-30.5, 80}, {-30.5, 118}, {-14, 118}}, color = {0, 0, 127}));
  connect(CompensatorTe1.u1, gain1.y) annotation(
    Line(points = {{-14, 130}, {-70, 130}}, color = {0, 0, 127}));
  connect(CompensatorTe2.u1, gain2.y) annotation(
    Line(points = {{-66, 7}, {-89.5, 7}, {-89.5, 10}, {-111, 10}}, color = {0, 0, 127}));
  connect(gain3.y, CompensatorTe3.u1) annotation(
    Line(points = {{-149, -212}, {-128.5, -212}, {-128.5, -206}, {-118, -206}}, color = {0, 0, 127}));
  connect(DeltaR3Te.y, CompensatorTe3.u2) annotation(
    Line(points = {{-121, -264}, {-121, -228}, {-118, -228}}, color = {0, 0, 127}));
  annotation(
    Diagram(graphics = {Text(origin = {-273, -2}, extent = {{-1, 2}, {1, -2}}, textString = "text")}, coordinateSystem(extent = {{-300, 180}, {200, -300}})),
    Icon(coordinateSystem(extent = {{-50, 50}, {50, -50}}), graphics = {Rectangle(origin = {-3, -1}, rotation = -90, fillColor = {0, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-121, 77}, {121, -77}}), Text(origin = {-1, 6}, extent = {{-52, 19}, {52, -19}}, textString = "StrictController")}));
end StrictController;
