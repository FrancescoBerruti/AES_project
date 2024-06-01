within AES_project_2023_2024.ProjectGroupWork;

model StrictController
  AES_project_2023_2024.ProjectGroupWork.split_equalizer split_equalizer(K = 80784, TauHC = TauHC) annotation(
    Placement(transformation(origin = {177, 55}, extent = {{-22, -22}, {22, 22}})));
  AES_project_2023_2024.ProjectGroupWork.split_equalizer split_equalizer1(K = 53856, TauHC = TauHC) annotation(
    Placement(transformation(origin = {169, -47}, extent = {{-18, -18}, {18, 18}})));
  AES_project_2023_2024.ProjectGroupWork.split_equalizer split_equalizer2(K = 134640, TauHC = TauHC) annotation(
    Placement(transformation(origin = {168, -178}, extent = {{-17, -17}, {17, 17}})));
  Modelica.Blocks.Interfaces.RealInput y_meas1 annotation(
    Placement(transformation(origin = {-314, 96}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-100, 102}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealInput setpoint1 annotation(
    Placement(transformation(origin = {-314, 66}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-100, 66}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealInput y_meas2 annotation(
    Placement(transformation(origin = {-274, -26}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-100, 26}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealInput setpoint2 annotation(
    Placement(transformation(origin = {-276, -56}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-100, -18}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealInput y_meas3 annotation(
    Placement(transformation(origin = {-302, -128}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-100, -64}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealInput setpoint3 annotation(
    Placement(transformation(origin = {-302, -156}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-100, -102}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealOutput u1 annotation(
    Placement(transformation(origin = {232, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 180), iconTransformation(origin = {84, 36}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Interfaces.RealOutput u2 annotation(
    Placement(transformation(origin = {232, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 180), iconTransformation(origin = {84, -2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Interfaces.RealOutput u3 annotation(
    Placement(transformation(origin = {228, -174}, extent = {{-10, -10}, {10, 10}}, rotation = 180), iconTransformation(origin = {84, -42}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Gain gain3(k = 134640/Tau) annotation(
    Placement(transformation(origin = {-152, -152}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add3 annotation(
    Placement(transformation(origin = {-110, -156}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Continuous.TransferFunction Ti3(a = {101, 1}, b = {1}) annotation(
    Placement(transformation(origin = {-36, -188}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Blocks.Math.Gain gain2(k = 53856/Tau) annotation(
    Placement(transformation(origin = {-154, -36}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add2 annotation(
    Placement(transformation(origin = {-122, -42}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Continuous.TransferFunction Ti2(a = {101, 1}, b = {1}) annotation(
    Placement(transformation(origin = {-48, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Blocks.Math.Gain gain1(k = 80784/Tau) annotation(
    Placement(transformation(origin = {-180, 80}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add1 annotation(
    Placement(transformation(origin = {-144, 74}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Continuous.TransferFunction Ti1(a = {101, 1}, b = {1}) annotation(
    Placement(transformation(origin = {-70, 42}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Blocks.Math.Add LoopErrorSumR3(k1 = -1) annotation(
    Placement(transformation(origin = {-222, -150}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add LoopErrorSumR2(k1 = -1) annotation(
    Placement(transformation(origin = {-192, -38}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add LoopErrorSumR1(k1 = -1) annotation(
    Placement(transformation(origin = {-244, 80}, extent = {{-10, -10}, {10, 10}})));
  parameter Real Tau = 10;
  parameter Real TauHC = 120;
  Modelica.Blocks.Interfaces.RealInput Te annotation(
    Placement(transformation(origin = {-326, 6}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-8, 140}, extent = {{-20, -20}, {20, 20}}, rotation = 90)));
  Modelica.Blocks.Math.Add AddCompensationR2 annotation(
    Placement(transformation(origin = {102, -38}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add AddCompensationR1 annotation(
    Placement(transformation(origin = {118, 72}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Nonlinear.VariableLimiter variableLimiter annotation(
    Placement(transformation(origin = {-68, 74}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.RealExpression realExpression(y = 4000 - CompensatorsR1.y) annotation(
    Placement(transformation(origin = {-108, 88}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.RealExpression realExpression1(y = -1000 - CompensatorsR1.y) annotation(
    Placement(transformation(origin = {-110, 62}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Nonlinear.VariableLimiter variableLimiter1 annotation(
    Placement(transformation(origin = {-32, -38}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.RealExpression realExpression2(y = 4000 - CompensatorsR2.y) annotation(
    Placement(transformation(origin = {-72, -24}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.RealExpression realExpression11(y = -1000 - CompensatorsR2.y) annotation(
    Placement(transformation(origin = {-74, -50}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Nonlinear.VariableLimiter variableLimiter11 annotation(
    Placement(transformation(origin = {-20, -154}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.RealExpression realExpression21(y = 4000 - CompensatorsR3.y) annotation(
    Placement(transformation(origin = {-60, -138}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.RealExpression realExpression111(y = -1000 - CompensatorsR3.y) annotation(
    Placement(transformation(origin = {-62, -166}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.RealExpression CompensatorsR1(y = (y_meas1 - Te)*83.071 + (y_meas1 - y_meas3)*154.286/2) annotation(
    Placement(transformation(origin = {44, 66}, extent = {{-30, -22}, {30, 22}})));
  Modelica.Blocks.Sources.RealExpression CompensatorsR2(y = (y_meas2 - Te)*55.385 + (y_meas2 - y_meas3)*102.857/2) annotation(
    Placement(transformation(origin = {42, -58}, extent = {{-30, -22}, {30, 22}})));
  Modelica.Blocks.Sources.RealExpression CompensatorsR3(y = (y_meas3 - Te)*138.462 + (y_meas3 - y_meas2)*102.857/2 + (y_meas3 - y_meas1)*154.286/2) annotation(
    Placement(transformation(origin = {46, -174}, extent = {{-30, -22}, {30, 22}})));
  Modelica.Blocks.Math.Add AddCompensationR3 annotation(
    Placement(transformation(origin = {110, -164}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(split_equalizer1.actuation_signal, u2) annotation(
    Line(points = {{189.88, -42.68}, {203.64, -42.68}, {203.64, -39.68}, {231.88, -39.68}}, color = {0, 0, 127}));
  connect(u1, split_equalizer.actuation_signal) annotation(
    Line(points = {{232, 60}, {203, 60}}, color = {0, 0, 127}));
  connect(split_equalizer2.actuation_signal, u3) annotation(
    Line(points = {{187.72, -173.92}, {227.72, -173.92}}, color = {0, 0, 127}));
  connect(gain3.y, add3.u1) annotation(
    Line(points = {{-141, -152}, {-130.5, -152}, {-130.5, -150}, {-122, -150}}, color = {0, 0, 127}));
  connect(Ti3.y, add3.u2) annotation(
    Line(points = {{-47, -188}, {-124, -188}, {-124, -162}, {-122, -162}}, color = {0, 0, 127}));
  connect(gain2.y, add2.u1) annotation(
    Line(points = {{-143, -36}, {-134, -36}}, color = {0, 0, 127}));
  connect(Ti2.y, add2.u2) annotation(
    Line(points = {{-59, -80}, {-138, -80}, {-138, -48}, {-134, -48}}, color = {0, 0, 127}));
  connect(Ti1.y, add1.u2) annotation(
    Line(points = {{-81, 42}, {-158, 42}, {-158, 68}, {-156, 68}}, color = {0, 0, 127}));
  connect(setpoint1, LoopErrorSumR1.u2) annotation(
    Line(points = {{-314, 66}, {-256, 66}, {-256, 74}}, color = {0, 0, 127}));
  connect(LoopErrorSumR1.u1, y_meas1) annotation(
    Line(points = {{-256, 86}, {-314, 86}, {-314, 96}}, color = {0, 0, 127}));
  connect(LoopErrorSumR2.u1, y_meas2) annotation(
    Line(points = {{-204, -32}, {-234, -32}, {-234, -26}, {-274, -26}}, color = {0, 0, 127}));
  connect(setpoint2, LoopErrorSumR2.u2) annotation(
    Line(points = {{-276, -56}, {-240, -56}, {-240, -44}, {-204, -44}}, color = {0, 0, 127}));
  connect(y_meas3, LoopErrorSumR3.u1) annotation(
    Line(points = {{-302, -128}, {-234, -128}, {-234, -144}}, color = {0, 0, 127}));
  connect(setpoint3, LoopErrorSumR3.u2) annotation(
    Line(points = {{-302, -156}, {-234, -156}}, color = {0, 0, 127}));
  connect(gain1.y, add1.u1) annotation(
    Line(points = {{-169, 80}, {-156, 80}}, color = {0, 0, 127}));
  connect(gain1.u, LoopErrorSumR1.y) annotation(
    Line(points = {{-192, 80}, {-232, 80}}, color = {0, 0, 127}));
  connect(gain2.u, LoopErrorSumR2.y) annotation(
    Line(points = {{-166, -36}, {-181.5, -36}, {-181.5, -38}, {-181, -38}}, color = {0, 0, 127}));
  connect(gain3.u, LoopErrorSumR3.y) annotation(
    Line(points = {{-164, -152}, {-210, -152}, {-210, -150}}, color = {0, 0, 127}));
  connect(AddCompensationR1.y, split_equalizer.Prequested) annotation(
    Line(points = {{129, 72}, {138, 72}, {138, 74}, {145, 74}}, color = {0, 0, 127}));
  connect(AddCompensationR2.y, split_equalizer1.Prequested) annotation(
    Line(points = {{113, -38}, {141, -38}, {141, -32}, {144, -32}}, color = {0, 0, 127}));
  connect(variableLimiter.limit1, realExpression.y) annotation(
    Line(points = {{-80, 82}, {-86, 82}, {-86, 88}, {-96, 88}}, color = {0, 0, 127}));
  connect(realExpression1.y, variableLimiter.limit2) annotation(
    Line(points = {{-99, 62}, {-89, 62}, {-89, 66}, {-81, 66}}, color = {0, 0, 127}));
  connect(variableLimiter.u, add1.y) annotation(
    Line(points = {{-80, 74}, {-132, 74}}, color = {0, 0, 127}));
  connect(Ti1.u, variableLimiter.y) annotation(
    Line(points = {{-58, 42}, {-28, 42}, {-28, 74}, {-56, 74}}, color = {0, 0, 127}));
  connect(variableLimiter1.limit1, realExpression2.y) annotation(
    Line(points = {{-44, -30}, {-50, -30}, {-50, -24}, {-60, -24}}, color = {0, 0, 127}));
  connect(realExpression11.y, variableLimiter1.limit2) annotation(
    Line(points = {{-63, -50}, {-53, -50}, {-53, -46}, {-45, -46}}, color = {0, 0, 127}));
  connect(add2.y, variableLimiter1.u) annotation(
    Line(points = {{-111, -42}, {-45, -42}, {-45, -38}}, color = {0, 0, 127}));
  connect(Ti2.u, variableLimiter1.y) annotation(
    Line(points = {{-36, -80}, {2, -80}, {2, -38}, {-20, -38}}, color = {0, 0, 127}));
  connect(variableLimiter11.limit1, realExpression21.y) annotation(
    Line(points = {{-32, -146}, {-38, -146}, {-38, -138}, {-49, -138}}, color = {0, 0, 127}));
  connect(realExpression111.y, variableLimiter11.limit2) annotation(
    Line(points = {{-51, -166}, {-41, -166}, {-41, -162}, {-33, -162}}, color = {0, 0, 127}));
  connect(add3.y, variableLimiter11.u) annotation(
    Line(points = {{-99, -156}, {-37, -156}, {-37, -154}, {-33, -154}}, color = {0, 0, 127}));
  connect(Ti3.u, variableLimiter11.y) annotation(
    Line(points = {{-24, -188}, {8, -188}, {8, -154}, {-8, -154}}, color = {0, 0, 127}));
  connect(CompensatorsR1.y, AddCompensationR1.u2) annotation(
    Line(points = {{77, 66}, {106, 66}}, color = {0, 0, 127}));
  connect(CompensatorsR2.y, AddCompensationR2.u2) annotation(
    Line(points = {{75, -58}, {90, -58}, {90, -44}}, color = {0, 0, 127}));
  connect(AddCompensationR3.y, split_equalizer2.Prequested) annotation(
    Line(points = {{121, -164}, {144, -164}}, color = {0, 0, 127}));
  connect(CompensatorsR3.y, AddCompensationR3.u2) annotation(
    Line(points = {{79, -174}, {88.5, -174}, {88.5, -170}, {98, -170}}, color = {0, 0, 127}));
  connect(variableLimiter.y, AddCompensationR1.u1) annotation(
    Line(points = {{-56, 74}, {106, 74}, {106, 78}}, color = {0, 0, 127}));
  connect(variableLimiter1.y, AddCompensationR2.u1) annotation(
    Line(points = {{-20, -38}, {90, -38}, {90, -32}}, color = {0, 0, 127}));
  connect(variableLimiter11.y, AddCompensationR3.u1) annotation(
    Line(points = {{-9, -154}, {97, -154}, {97, -158}}, color = {0, 0, 127}));
  annotation(
    Diagram(graphics = {Text(origin = {-271, -42}, extent = {{-1, 2}, {1, -2}}, textString = "text")}, coordinateSystem(extent = {{-360, 120}, {360, -340}})),
    Icon(coordinateSystem(extent = {{-50, 50}, {50, -50}}), graphics = {Rectangle(origin = {-3, -1}, rotation = -90, fillColor = {0, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-121, 77}, {121, -77}}), Text(origin = {-1, 6}, extent = {{-52, 19}, {52, -19}}, textString = "StrictController")}));
end StrictController;
