within AES_project_2023_2024.ProjectGroupWork;

model StrictController
  AES_project_2023_2024.ProjectGroupWork.split_equalizer split_equalizer(K = 80784, TauHC = TauHC) annotation(
    Placement(transformation(origin = {177, 55}, extent = {{-22, -22}, {22, 22}})));
  AES_project_2023_2024.ProjectGroupWork.split_equalizer split_equalizer1(K = 53856, TauHC = TauHC) annotation(
    Placement(transformation(origin = {169, -47}, extent = {{-18, -18}, {18, 18}})));
  AES_project_2023_2024.ProjectGroupWork.split_equalizer split_equalizer2(K = 134640, TauHC = TauHC) annotation(
    Placement(transformation(origin = {236, -250}, extent = {{-17, -17}, {17, 17}})));
  Modelica.Blocks.Interfaces.RealInput y_meas1 annotation(
    Placement(transformation(origin = {-314, 96}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-100, 102}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealInput setpoint1 annotation(
    Placement(transformation(origin = {-314, 66}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-100, 66}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealInput y_meas2 annotation(
    Placement(transformation(origin = {-314, -32}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-100, 26}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealInput setpoint2 annotation(
    Placement(transformation(origin = {-316, -62}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-100, -18}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealInput y_meas3 annotation(
    Placement(transformation(origin = {-278, -198}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-100, -64}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealInput setpoint3 annotation(
    Placement(transformation(origin = {-278, -226}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-100, -102}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealOutput u1 annotation(
    Placement(transformation(origin = {232, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 180), iconTransformation(origin = {84, 36}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Interfaces.RealOutput u2 annotation(
    Placement(transformation(origin = {232, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 180), iconTransformation(origin = {84, -2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Interfaces.RealOutput u3 annotation(
    Placement(transformation(origin = {296, -246}, extent = {{-10, -10}, {10, 10}}, rotation = 180), iconTransformation(origin = {84, -42}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Gain gain3(k = 134640/Tau) annotation(
    Placement(transformation(origin = {-128, -222}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add3 annotation(
    Placement(transformation(origin = {-42, -228}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Continuous.TransferFunction Ti3(a = {101, 1}, b = {1}) annotation(
    Placement(transformation(origin = {32, -260}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Blocks.Math.Gain gain2(k = 53856/Tau) annotation(
    Placement(transformation(origin = {-160, -36}, extent = {{-10, -10}, {10, 10}})));
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
  Modelica.Blocks.Math.Add loop_error_sum(k1 = -1) annotation(
    Placement(transformation(origin = {-198, -220}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add loop_error_sum1(k1 = -1) annotation(
    Placement(transformation(origin = {-232, -44}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add loop_error_sum2(k1 = -1) annotation(
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
    Placement(transformation(origin = {48, -226}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.RealExpression realExpression21(y = 4000 - CompensatorsR3.y) annotation(
    Placement(transformation(origin = {8, -210}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.RealExpression realExpression111(y = -1000 - CompensatorsR3.y) annotation(
    Placement(transformation(origin = {6, -238}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.RealExpression CompensatorsR1(y = (y_meas1 - Te)*83.071 + (y_meas1 - y_meas3)*154.286/2) 
annotation(
    Placement(transformation(origin = {44, 66}, extent = {{-30, -22}, {30, 22}})));
  
  Modelica.Blocks.Sources.RealExpression CompensatorsR2(y = (y_meas2 - Te)*55.385 + (y_meas2 - y_meas3)*102.857/2) annotation(
    Placement(transformation(origin = {42, -58}, extent = {{-30, -22}, {30, 22}})));
  Modelica.Blocks.Sources.RealExpression CompensatorsR3(y = (y_meas3 - Te)*138.462 + (y_meas3 - y_meas2)*102.857/2 + (y_meas3 - y_meas1)*154.286/2) annotation(
    Placement(transformation(origin = {114, -246}, extent = {{-30, -22}, {30, 22}})));
  Modelica.Blocks.Math.Add AddCompensationR3 annotation(
    Placement(transformation(origin = {178, -236}, extent = {{-10, -10}, {10, 10}})));

equation
  connect(split_equalizer1.actuation_signal, u2) annotation(
    Line(points = {{189.88, -42.68}, {203.64, -42.68}, {203.64, -39.68}, {231.88, -39.68}}, color = {0, 0, 127}));
  connect(u1, split_equalizer.actuation_signal) annotation(
    Line(points = {{232, 60}, {203, 60}}, color = {0, 0, 127}));
  connect(split_equalizer2.actuation_signal, u3) annotation(
    Line(points = {{255.72, -245.92}, {295.72, -245.92}}, color = {0, 0, 127}));
  connect(gain3.y, add3.u1) annotation(
    Line(points = {{-117, -222}, {-54, -222}}, color = {0, 0, 127}));
  connect(Ti3.y, add3.u2) annotation(
    Line(points = {{21, -260}, {-56, -260}, {-56, -234}, {-54, -234}}, color = {0, 0, 127}));
  connect(gain2.y, add2.u1) annotation(
    Line(points = {{-149, -36}, {-134, -36}}, color = {0, 0, 127}));
  connect(Ti2.y, add2.u2) annotation(
    Line(points = {{-59, -80}, {-138, -80}, {-138, -48}, {-134, -48}}, color = {0, 0, 127}));
  connect(Ti1.y, add1.u2) annotation(
    Line(points = {{-81, 42}, {-158, 42}, {-158, 68}, {-156, 68}}, color = {0, 0, 127}));
  connect(setpoint1, loop_error_sum2.u2) annotation(
    Line(points = {{-314, 66}, {-256, 66}, {-256, 74}}, color = {0, 0, 127}));
  connect(loop_error_sum2.u1, y_meas1) annotation(
    Line(points = {{-256, 86}, {-314, 86}, {-314, 96}}, color = {0, 0, 127}));
  connect(loop_error_sum1.u1, y_meas2) annotation(
    Line(points = {{-244, -38}, {-274, -38}, {-274, -32}, {-314, -32}}, color = {0, 0, 127}));
  connect(setpoint2, loop_error_sum1.u2) annotation(
    Line(points = {{-316, -62}, {-280, -62}, {-280, -50}, {-244, -50}}, color = {0, 0, 127}));
  connect(y_meas3, loop_error_sum.u1) annotation(
    Line(points = {{-278, -198}, {-210, -198}, {-210, -214}}, color = {0, 0, 127}));
  connect(setpoint3, loop_error_sum.u2) annotation(
    Line(points = {{-278, -226}, {-210, -226}}, color = {0, 0, 127}));
  connect(gain1.y, add1.u1) annotation(
    Line(points = {{-169, 80}, {-156, 80}}, color = {0, 0, 127}));
  connect(gain1.u, loop_error_sum2.y) annotation(
    Line(points = {{-192, 80}, {-232, 80}}, color = {0, 0, 127}));
  connect(gain2.u, loop_error_sum1.y) annotation(
    Line(points = {{-172, -36}, {-220, -36}, {-220, -44}}, color = {0, 0, 127}));
  connect(gain3.u, loop_error_sum.y) annotation(
    Line(points = {{-140, -222}, {-186, -222}, {-186, -220}}, color = {0, 0, 127}));
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
    Line(points = {{36, -218}, {30, -218}, {30, -210}, {19, -210}}, color = {0, 0, 127}));
  connect(realExpression111.y, variableLimiter11.limit2) annotation(
    Line(points = {{17, -238}, {27, -238}, {27, -234}, {35, -234}}, color = {0, 0, 127}));
  connect(add3.y, variableLimiter11.u) annotation(
    Line(points = {{-31, -228}, {31, -228}, {31, -226}, {35, -226}}, color = {0, 0, 127}));
  connect(Ti3.u, variableLimiter11.y) annotation(
    Line(points = {{44, -260}, {76, -260}, {76, -226}, {60, -226}}, color = {0, 0, 127}));
  connect(CompensatorsR1.y, AddCompensationR1.u2) annotation(
    Line(points = {{77, 66}, {106, 66}}, color = {0, 0, 127}));
  connect(CompensatorsR2.y, AddCompensationR2.u2) annotation(
    Line(points = {{75, -58}, {90, -58}, {90, -44}}, color = {0, 0, 127}));
  connect(AddCompensationR3.y, split_equalizer2.Prequested) annotation(
    Line(points = {{189, -236}, {212, -236}}, color = {0, 0, 127}));
  connect(CompensatorsR3.y, AddCompensationR3.u2) annotation(
    Line(points = {{147, -246}, {156.5, -246}, {156.5, -242}, {166, -242}}, color = {0, 0, 127}));
  connect(variableLimiter.y, AddCompensationR1.u1) annotation(
    Line(points = {{-56, 74}, {106, 74}, {106, 78}}, color = {0, 0, 127}));
  connect(variableLimiter1.y, AddCompensationR2.u1) annotation(
    Line(points = {{-20, -38}, {90, -38}, {90, -32}}, color = {0, 0, 127}));
  connect(variableLimiter11.y, AddCompensationR3.u1) annotation(
    Line(points = {{60, -226}, {166, -226}, {166, -230}}, color = {0, 0, 127}));
  annotation(
    Diagram(graphics = {Text(origin = {-311, -48}, extent = {{-1, 2}, {1, -2}}, textString = "text")}, coordinateSystem(extent = {{-360, 120}, {360, -340}})),
    Icon(coordinateSystem(extent = {{-50, 50}, {50, -50}}), graphics = {Rectangle(origin = {-3, -1}, rotation = -90, fillColor = {0, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-121, 77}, {121, -77}}), Text(origin = {-1, 6}, extent = {{-52, 19}, {52, -19}}, textString = "StrictController")}));
end StrictController;
