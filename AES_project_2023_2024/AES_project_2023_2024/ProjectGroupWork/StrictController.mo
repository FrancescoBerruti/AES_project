within AES_project_2023_2024.ProjectGroupWork;

model StrictController
  AES_project_2023_2024.ProjectGroupWork.split_equalizer split_equalizer(K = 80784) annotation(
    Placement(transformation(origin = {273, 55}, extent = {{-22, -22}, {22, 22}})));
  AES_project_2023_2024.ProjectGroupWork.split_equalizer split_equalizer1(K = 53856) annotation(
    Placement(transformation(origin = {287, -45}, extent = {{-18, -18}, {18, 18}})));
  AES_project_2023_2024.ProjectGroupWork.split_equalizer split_equalizer2(K = 134640) annotation(
    Placement(transformation(origin = {232, -250}, extent = {{-17, -17}, {17, 17}})));
  Modelica.Blocks.Interfaces.RealInput y_meas1 annotation(
    Placement(transformation(origin = {-428, 110}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-100, 102}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealInput setpoint1 annotation(
    Placement(transformation(origin = {-428, 80}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-100, 66}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealInput y_meas2 annotation(
    Placement(transformation(origin = {-428, -18}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-100, 26}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealInput setpoint2 annotation(
    Placement(transformation(origin = {-430, -48}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-100, -18}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealInput y_meas3 annotation(
    Placement(transformation(origin = {-426, -192}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-100, -64}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealInput setpoint3 annotation(
    Placement(transformation(origin = {-426, -220}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-100, -102}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealOutput u1 annotation(
    Placement(transformation(origin = {328, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 180), iconTransformation(origin = {84, 36}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Interfaces.RealOutput u2 annotation(
    Placement(transformation(origin = {342, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 180), iconTransformation(origin = {84, -2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Interfaces.RealOutput u3 annotation(
    Placement(transformation(origin = {304, -240}, extent = {{-10, -10}, {10, 10}}, rotation = 180), iconTransformation(origin = {84, -42}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Gain gain3(k = 134640/Tau) annotation(
    Placement(transformation(origin = {-276, -216}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add3 annotation(
    Placement(transformation(origin = {-190, -222}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Continuous.TransferFunction Ti3(a = {30, 1}, b = {1}) annotation(
    Placement(transformation(origin = {-116, -254}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Blocks.Math.Gain gain2(k = 53856/Tau) annotation(
    Placement(transformation(origin = {-274, -22}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add2 annotation(
    Placement(transformation(origin = {-236, -28}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Continuous.TransferFunction Ti2(a = {30, 1}, b = {1}) annotation(
    Placement(transformation(origin = {-162, -66}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Blocks.Math.Gain gain1(k = 80784/Tau) annotation(
    Placement(transformation(origin = {-294, 94}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add1 annotation(
    Placement(transformation(origin = {-258, 88}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Continuous.TransferFunction Ti1(a = {30, 1}, b = {1}) annotation(
    Placement(transformation(origin = {-184, 56}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Blocks.Math.Add loop_error_sum(k1 = -1) annotation(
    Placement(transformation(origin = {-346, -214}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add loop_error_sum1(k1 = -1) annotation(
    Placement(transformation(origin = {-346, -30}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add loop_error_sum2(k1 = -1) annotation(
    Placement(transformation(origin = {-358, 94}, extent = {{-10, -10}, {10, 10}})));
  parameter Real Tau = 10;
  Modelica.Blocks.Interfaces.RealInput Te annotation(
    Placement(transformation(origin = {-596, 14}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-8, 140}, extent = {{-20, -20}, {20, 20}}, rotation = 90)));
  Modelica.Blocks.Math.Add add31(k2 = -1) annotation(
    Placement(transformation(origin = {-140, 20}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add CompensatorTe1(k2 = 83.071) annotation(
    Placement(transformation(origin = {-76, 82}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add312(k2 = -1) annotation(
    Placement(transformation(origin = {-118, -118}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add CompensatorTe2(k2 = 55.385) annotation(
    Placement(transformation(origin = {-58, -28}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add CompensatorTe3(k2 = 138.462) annotation(
    Placement(transformation(origin = {-46, -228}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add3121(k2 = -1) annotation(
    Placement(transformation(origin = {-136, -290}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add(k2 = -1) annotation(
    Placement(transformation(origin = {164, 70}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add4(k2 = -1) annotation(
    Placement(transformation(origin = {162, -46}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add3 add32(k1 = (-154.286/2)*1, k2 = (-102.857/2)*1) annotation(
    Placement(transformation(origin = {174, -234}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add5(k2 = (102.857/2)*1) annotation(
    Placement(transformation(origin = {216, -50}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add51(k1 = +1, k2 = (154.286/2)*1) annotation(
    Placement(transformation(origin = {214, 72}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Nonlinear.VariableLimiter variableLimiter annotation(
    Placement(transformation(origin = {-182, 88}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.RealExpression realExpression(y = 4000 - add31.y*83.071 - add51.u2*add51.k2) annotation(
    Placement(transformation(origin = {-222, 102}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.RealExpression realExpression1(y = -1000 - add31.y*83.071 - add51.u2*add51.k2) annotation(
    Placement(transformation(origin = {-224, 76}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Nonlinear.VariableLimiter variableLimiter1 annotation(
    Placement(transformation(origin = {-146, -24}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.RealExpression realExpression2(y = 4000 - add312.y*55.385 - add5.u2*add5.k2) annotation(
    Placement(transformation(origin = {-186, -10}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.RealExpression realExpression11(y = -1000 - add312.y*55.385 - add5.u2*add5.k2) annotation(
    Placement(transformation(origin = {-188, -36}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Nonlinear.VariableLimiter variableLimiter11 annotation(
    Placement(transformation(origin = {-100, -220}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.RealExpression realExpression21(y = 4000 - add3121.y*138.462 - add32.k1*add32.u1 - add32.k2*add32.u2) annotation(
    Placement(transformation(origin = {-140, -206}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.RealExpression realExpression111(y = -1000 - add3121.y*138.462) annotation(
    Placement(transformation(origin = {-142, -232}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(split_equalizer1.actuation_signal, u2) annotation(
    Line(points = {{308, -41}, {313.76, -41}, {313.76, -40}, {342, -40}}, color = {0, 0, 127}));
  connect(u1, split_equalizer.actuation_signal) annotation(
    Line(points = {{328, 60}, {299, 60}}, color = {0, 0, 127}));
  connect(split_equalizer2.actuation_signal, u3) annotation(
    Line(points = {{251.72, -245.92}, {278.44, -245.92}, {278.44, -239.84}, {303.44, -239.84}}, color = {0, 0, 127}));
  connect(gain3.y, add3.u1) annotation(
    Line(points = {{-265, -216}, {-202, -216}}, color = {0, 0, 127}));
  connect(Ti3.y, add3.u2) annotation(
    Line(points = {{-127, -254}, {-204, -254}, {-204, -228}, {-202, -228}}, color = {0, 0, 127}));
  connect(gain2.y, add2.u1) annotation(
    Line(points = {{-263, -22}, {-248, -22}}, color = {0, 0, 127}));
  connect(Ti2.y, add2.u2) annotation(
    Line(points = {{-173, -66}, {-252, -66}, {-252, -34}, {-248, -34}}, color = {0, 0, 127}));
  connect(Ti1.y, add1.u2) annotation(
    Line(points = {{-195, 56}, {-272, 56}, {-272, 82}, {-270, 82}}, color = {0, 0, 127}));
  connect(setpoint1, loop_error_sum2.u2) annotation(
    Line(points = {{-428, 80}, {-370, 80}, {-370, 88}}, color = {0, 0, 127}));
  connect(loop_error_sum2.u1, y_meas1) annotation(
    Line(points = {{-370, 100}, {-428, 100}, {-428, 110}}, color = {0, 0, 127}));
  connect(loop_error_sum1.u1, y_meas2) annotation(
    Line(points = {{-358, -24}, {-388, -24}, {-388, -18}, {-428, -18}}, color = {0, 0, 127}));
  connect(setpoint2, loop_error_sum1.u2) annotation(
    Line(points = {{-430, -48}, {-394, -48}, {-394, -36}, {-358, -36}}, color = {0, 0, 127}));
  connect(y_meas3, loop_error_sum.u1) annotation(
    Line(points = {{-426, -192}, {-358, -192}, {-358, -208}}, color = {0, 0, 127}));
  connect(setpoint3, loop_error_sum.u2) annotation(
    Line(points = {{-426, -220}, {-358, -220}}, color = {0, 0, 127}));
  connect(gain1.y, add1.u1) annotation(
    Line(points = {{-283, 94}, {-270, 94}}, color = {0, 0, 127}));
  connect(gain1.u, loop_error_sum2.y) annotation(
    Line(points = {{-306, 94}, {-346, 94}}, color = {0, 0, 127}));
  connect(gain2.u, loop_error_sum1.y) annotation(
    Line(points = {{-286, -22}, {-334, -22}, {-334, -30}}, color = {0, 0, 127}));
  connect(gain3.u, loop_error_sum.y) annotation(
    Line(points = {{-288, -216}, {-334, -216}, {-334, -214}}, color = {0, 0, 127}));
  connect(add31.y, CompensatorTe1.u2) annotation(
    Line(points = {{-128, 20}, {-128, 22}, {-88, 22}, {-88, 76}}, color = {0, 0, 127}));
  connect(add312.u1, y_meas2) annotation(
    Line(points = {{-130, -112}, {-378, -112}, {-378, -18}, {-428, -18}}, color = {0, 0, 127}));
  connect(CompensatorTe2.u2, add312.y) annotation(
    Line(points = {{-70, -34}, {-98, -34}, {-98, -118}, {-107, -118}}, color = {0, 0, 127}));
  connect(add3121.y, CompensatorTe3.u2) annotation(
    Line(points = {{-125, -290}, {-59, -290}, {-59, -234}}, color = {0, 0, 127}));
  connect(add3121.u1, y_meas3) annotation(
    Line(points = {{-148, -284}, {-426, -284}, {-426, -192}}, color = {0, 0, 127}));
  connect(Te, add312.u2) annotation(
    Line(points = {{-596, 14}, {-508, 14}, {-508, -124}, {-130, -124}}, color = {0, 0, 127}));
  connect(Te, add31.u2) annotation(
    Line(points = {{-596, 14}, {-152, 14}}, color = {0, 0, 127}));
  connect(add3121.u2, Te) annotation(
    Line(points = {{-148, -296}, {-574, -296}, {-574, 14}, {-596, 14}}, color = {0, 0, 127}));
  connect(y_meas1, add.u1) annotation(
    Line(points = {{-428, 110}, {122, 110}, {122, 76}, {152, 76}}, color = {0, 0, 127}));
  connect(y_meas2, add4.u1) annotation(
    Line(points = {{-428, -18}, {-418, -18}, {-418, 0}, {122, 0}, {122, -40}, {150, -40}}, color = {0, 0, 127}));
  connect(y_meas3, add4.u2) annotation(
    Line(points = {{-426, -192}, {122, -192}, {122, -52}, {150, -52}}, color = {0, 0, 127}));
  connect(y_meas3, add.u2) annotation(
    Line(points = {{-426, -192}, {136, -192}, {136, 64}, {152, 64}}, color = {0, 0, 127}));
  connect(CompensatorTe3.y, add32.u3) annotation(
    Line(points = {{-34, -228}, {-24, -228}, {-24, -242}, {162, -242}}, color = {0, 0, 127}));
  connect(add32.y, split_equalizer2.Prequested) annotation(
    Line(points = {{186, -234}, {208, -234}, {208, -236}}, color = {0, 0, 127}));
  connect(add.y, add51.u2) annotation(
    Line(points = {{176, 70}, {202, 70}, {202, 66}}, color = {0, 0, 127}));
  connect(CompensatorTe1.y, add51.u1) annotation(
    Line(points = {{-65, 82}, {66.5, 82}, {66.5, 78}, {202, 78}}, color = {0, 0, 127}));
  connect(add51.y, split_equalizer.Prequested) annotation(
    Line(points = {{226, 72}, {235, 72}, {235, 74}, {242, 74}}, color = {0, 0, 127}));
  connect(CompensatorTe2.y, add5.u1) annotation(
    Line(points = {{-46, -28}, {204, -28}, {204, -44}}, color = {0, 0, 127}));
  connect(add4.y, add5.u2) annotation(
    Line(points = {{174, -46}, {196, -46}, {196, -56}, {204, -56}}, color = {0, 0, 127}));
  connect(add5.y, split_equalizer1.Prequested) annotation(
    Line(points = {{227, -46}, {240.5, -46}, {240.5, -30}, {262, -30}}, color = {0, 0, 127}));
  connect(add4.y, add32.u2) annotation(
    Line(points = {{174, -46}, {178, -46}, {178, -204}, {120, -204}, {120, -234}, {162, -234}}, color = {0, 0, 127}));
  connect(add.y, add32.u1) annotation(
    Line(points = {{176, 70}, {184, 70}, {184, -208}, {128, -208}, {128, -226}, {162, -226}}, color = {0, 0, 127}));
  connect(setpoint1, add31.u1) annotation(
    Line(points = {{-428, 80}, {-426, 80}, {-426, 26}, {-152, 26}}, color = {0, 0, 127}));
  connect(variableLimiter.limit1, realExpression.y) annotation(
    Line(points = {{-194, 96}, {-200, 96}, {-200, 102}, {-210, 102}}, color = {0, 0, 127}));
  connect(realExpression1.y, variableLimiter.limit2) annotation(
    Line(points = {{-212, 76}, {-202, 76}, {-202, 80}, {-194, 80}}, color = {0, 0, 127}));
  connect(variableLimiter.u, add1.y) annotation(
    Line(points = {{-194, 88}, {-246, 88}}, color = {0, 0, 127}));
  connect(variableLimiter.y, CompensatorTe1.u1) annotation(
    Line(points = {{-170, 88}, {-88, 88}}, color = {0, 0, 127}));
  connect(Ti1.u, variableLimiter.y) annotation(
    Line(points = {{-172, 56}, {-142, 56}, {-142, 88}, {-170, 88}}, color = {0, 0, 127}));
  connect(variableLimiter1.limit1, realExpression2.y) annotation(
    Line(points = {{-158, -16}, {-164, -16}, {-164, -10}, {-174, -10}}, color = {0, 0, 127}));
  connect(realExpression11.y, variableLimiter1.limit2) annotation(
    Line(points = {{-177, -36}, {-167, -36}, {-167, -32}, {-159, -32}}, color = {0, 0, 127}));
  connect(add2.y, variableLimiter1.u) annotation(
    Line(points = {{-224, -28}, {-158, -28}, {-158, -24}}, color = {0, 0, 127}));
  connect(variableLimiter1.y, CompensatorTe2.u1) annotation(
    Line(points = {{-134, -24}, {-70, -24}, {-70, -22}}, color = {0, 0, 127}));
  connect(Ti2.u, variableLimiter1.y) annotation(
    Line(points = {{-150, -66}, {-112, -66}, {-112, -24}, {-134, -24}}, color = {0, 0, 127}));
  connect(variableLimiter11.limit1, realExpression21.y) annotation(
    Line(points = {{-112, -212}, {-118, -212}, {-118, -206}, {-128, -206}}, color = {0, 0, 127}));
  connect(realExpression111.y, variableLimiter11.limit2) annotation(
    Line(points = {{-131, -232}, {-121, -232}, {-121, -228}, {-113, -228}}, color = {0, 0, 127}));
  connect(add3.y, variableLimiter11.u) annotation(
    Line(points = {{-178, -222}, {-116, -222}, {-116, -220}, {-112, -220}}, color = {0, 0, 127}));
  connect(CompensatorTe3.u1, variableLimiter11.y) annotation(
    Line(points = {{-58, -222}, {-88, -222}, {-88, -220}}, color = {0, 0, 127}));
  connect(Ti3.u, variableLimiter11.y) annotation(
    Line(points = {{-104, -254}, {-72, -254}, {-72, -220}, {-88, -220}}, color = {0, 0, 127}));
  annotation(
    Diagram(graphics = {Text(origin = {-425, -34}, extent = {{-1, 2}, {1, -2}}, textString = "text")}, coordinateSystem(extent = {{-620, 140}, {320, -300}})),
    Icon(coordinateSystem(extent = {{-50, 50}, {50, -50}}), graphics = {Rectangle(origin = {-3, -1}, rotation = -90, fillColor = {0, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-121, 77}, {121, -77}}), Text(origin = {-1, 6}, extent = {{-52, 19}, {52, -19}}, textString = "StrictController")}));
end StrictController;
