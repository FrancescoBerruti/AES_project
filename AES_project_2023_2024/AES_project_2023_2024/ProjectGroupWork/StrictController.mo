within AES_project_2023_2024.ProjectGroupWork;

model StrictController
  AES_project_2023_2024.ProjectGroupWork.split_equalizer split_equalizer(K = 80784) annotation(
    Placement(transformation(origin = {-1, 63}, extent = {{-22, -22}, {22, 22}})));
  AES_project_2023_2024.ProjectGroupWork.split_equalizer split_equalizer1(K = 53856) annotation(
    Placement(transformation(origin = {3, -43}, extent = {{-18, -18}, {18, 18}})));
  AES_project_2023_2024.ProjectGroupWork.split_equalizer split_equalizer2(K = 134640) annotation(
    Placement(transformation(origin = {2, -210}, extent = {{-17, -17}, {17, 17}})));
  Modelica.Blocks.Interfaces.RealInput y_meas1 annotation(
    Placement(transformation(origin = {-428, 110}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-100, 102}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealInput setpoint1 annotation(
    Placement(transformation(origin = {-428, 80}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-100, 66}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealInput y_meas2 annotation(
    Placement(transformation(origin = {-428, -18}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-100, 26}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealInput setpoint2 annotation(
    Placement(transformation(origin = {-430, -48}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-100, -18}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealInput y_meas3 annotation(
    Placement(transformation(origin = {-432, -160}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-100, -64}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealInput setpoint3 annotation(
    Placement(transformation(origin = {-434, -190}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-100, -102}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealOutput u1 annotation(
    Placement(transformation(origin = {54, 68}, extent = {{-10, -10}, {10, 10}}, rotation = 180), iconTransformation(origin = {84, 36}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Interfaces.RealOutput u2 annotation(
    Placement(transformation(origin = {78, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 180), iconTransformation(origin = {84, -2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Interfaces.RealOutput u3 annotation(
    Placement(transformation(origin = {74, -200}, extent = {{-10, -10}, {10, 10}}, rotation = 180), iconTransformation(origin = {84, -42}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Gain gain(k = 134640/Tau) annotation(
    Placement(transformation(origin = {-282, -184}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add annotation(
    Placement(transformation(origin = {-196, -190}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Continuous.TransferFunction equalizer_cooling1(a = {30, 1}, b = {1}) annotation(
    Placement(transformation(origin = {-122, -222}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Blocks.Nonlinear.Limiter limiter11(uMax = 4000, uMin = -1000) annotation(
    Placement(transformation(origin = {-122, -190}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Gain gain1(k = 53856/Tau) annotation(
    Placement(transformation(origin = {-274, -22}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add1 annotation(
    Placement(transformation(origin = {-236, -28}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Continuous.TransferFunction equalizer_cooling11(a = {30, 1}, b = {1}) annotation(
    Placement(transformation(origin = {-162, -66}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Blocks.Nonlinear.Limiter limiter111(uMax = 4000, uMin = -1000) annotation(
    Placement(transformation(origin = {-164, -22}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Gain gain2(k = 80784/Tau) annotation(
    Placement(transformation(origin = {-288, 94}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add2 annotation(
    Placement(transformation(origin = {-258, 88}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Continuous.TransferFunction equalizer_cooling12(a = {30, 1}, b = {1}) annotation(
    Placement(transformation(origin = {-184, 56}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Blocks.Nonlinear.Limiter limiter112(uMax = 4000, uMin = -1000) annotation(
    Placement(transformation(origin = {-184, 88}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add loop_error_sum(k1 = -1) annotation(
    Placement(transformation(origin = {-352, -182}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add loop_error_sum1(k1 = -1) annotation(
    Placement(transformation(origin = {-346, -30}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add loop_error_sum2(k1 = -1) annotation(
    Placement(transformation(origin = {-358, 94}, extent = {{-10, -10}, {10, 10}})));
  parameter Real Tau = 10;

  Modelica.Blocks.Interfaces.RealInput Te annotation(
    Placement(transformation(origin = {-596, 14}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-8, 140}, extent = {{-20, -20}, {20, 20}}, rotation = 90)));
  Modelica.Blocks.Math.Add add31(k2 = -1)  annotation(
    Placement(transformation(origin = {-140, 20}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add311(k2 = -154.286/2) annotation(
    Placement(transformation(origin = {-90, 82}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add312(k2 = -1) annotation(
    Placement(transformation(origin = {-118, -118}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add3111(k2 = -102.857/2) annotation(
    Placement(transformation(origin = {-58, -28}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add3112(k2 = -257.143/2) annotation(
    Placement(transformation(origin = {-52, -196}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add3121(k2 = -1) annotation(
    Placement(transformation(origin = {-142, -258}, extent = {{-10, -10}, {10, 10}})));
equation

  connect(split_equalizer1.actuation_signal, u2) annotation(
    Line(points = {{23.88, -38.68}, {49.76, -38.68}, {49.76, -39.68}, {77.88, -39.68}}, color = {0, 0, 127}));
  connect(u1, split_equalizer.actuation_signal) annotation(
    Line(points = {{54, 68}, {25, 68}}, color = {0, 0, 127}));
  connect(split_equalizer2.actuation_signal, u3) annotation(
    Line(points = {{22, -206}, {48.72, -206}, {48.72, -199.92}, {73.72, -199.92}}, color = {0, 0, 127}));
  connect(gain.y, add.u1) annotation(
    Line(points = {{-271, -184}, {-208, -184}}, color = {0, 0, 127}));
  connect(equalizer_cooling1.y, add.u2) annotation(
    Line(points = {{-133, -222}, {-210, -222}, {-210, -196}, {-208, -196}}, color = {0, 0, 127}));
  connect(add.y, limiter11.u) annotation(
    Line(points = {{-185, -190}, {-135, -190}}, color = {0, 0, 127}));
  connect(gain1.y, add1.u1) annotation(
    Line(points = {{-263, -22}, {-248, -22}}, color = {0, 0, 127}));
  connect(equalizer_cooling11.y, add1.u2) annotation(
    Line(points = {{-173, -66}, {-252, -66}, {-252, -34}, {-248, -34}}, color = {0, 0, 127}));
  connect(add1.y, limiter111.u) annotation(
    Line(points = {{-225, -28}, {-197.5, -28}, {-197.5, -22}, {-176, -22}}, color = {0, 0, 127}));
  connect(equalizer_cooling11.u, limiter111.y) annotation(
    Line(points = {{-150, -66}, {-98, -66}, {-98, -22}, {-153, -22}}, color = {0, 0, 127}));
  connect(equalizer_cooling12.y, add2.u2) annotation(
    Line(points = {{-195, 56}, {-272, 56}, {-272, 82}, {-270, 82}}, color = {0, 0, 127}));
  connect(add2.y, limiter112.u) annotation(
    Line(points = {{-247, 88}, {-196, 88}}, color = {0, 0, 127}));
  connect(equalizer_cooling12.u, limiter112.y) annotation(
    Line(points = {{-172, 56}, {-116, 56}, {-116, 88}, {-173, 88}}, color = {0, 0, 127}));
  connect(setpoint1, loop_error_sum2.u2) annotation(
    Line(points = {{-428, 80}, {-370, 80}, {-370, 88}}, color = {0, 0, 127}));
  connect(loop_error_sum2.u1, y_meas1) annotation(
    Line(points = {{-370, 100}, {-428, 100}, {-428, 110}}, color = {0, 0, 127}));
  connect(loop_error_sum1.u1, y_meas2) annotation(
    Line(points = {{-358, -24}, {-388, -24}, {-388, -18}, {-428, -18}}, color = {0, 0, 127}));
  connect(setpoint2, loop_error_sum1.u2) annotation(
    Line(points = {{-430, -48}, {-394, -48}, {-394, -36}, {-358, -36}}, color = {0, 0, 127}));
  connect(y_meas3, loop_error_sum.u1) annotation(
    Line(points = {{-432, -160}, {-364, -160}, {-364, -176}}, color = {0, 0, 127}));
  connect(setpoint3, loop_error_sum.u2) annotation(
    Line(points = {{-434, -190}, {-364, -190}, {-364, -188}}, color = {0, 0, 127}));
  connect(gain2.y, add2.u1) annotation(
    Line(points = {{-277, 94}, {-270, 94}}, color = {0, 0, 127}));
  connect(gain2.u, loop_error_sum2.y) annotation(
    Line(points = {{-300, 94}, {-346, 94}}, color = {0, 0, 127}));
  connect(gain1.u, loop_error_sum1.y) annotation(
    Line(points = {{-286, -22}, {-334, -22}, {-334, -30}}, color = {0, 0, 127}));
  connect(gain.u, loop_error_sum.y) annotation(
    Line(points = {{-294, -184}, {-340, -184}, {-340, -182}}, color = {0, 0, 127}));
  connect(add31.u1, y_meas1) annotation(
    Line(points = {{-152, 26}, {-428, 26}, {-428, 110}}, color = {0, 0, 127}));
  connect(split_equalizer.Prequested, add311.y) annotation(
    Line(points = {{-32, 81}, {-32, 79.5}, {-78, 79.5}, {-78, 82}}, color = {0, 0, 127}));
  connect(limiter112.y, add311.u1) annotation(
    Line(points = {{-172, 88}, {-102, 88}}, color = {0, 0, 127}));
  connect(add31.y, add311.u2) annotation(
    Line(points = {{-128, 20}, {-102, 20}, {-102, 76}}, color = {0, 0, 127}));
  connect(add312.u1, y_meas2) annotation(
    Line(points = {{-130, -112}, {-378, -112}, {-378, -18}, {-428, -18}}, color = {0, 0, 127}));
  connect(split_equalizer1.Prequested, add3111.y) annotation(
    Line(points = {{-22, -28}, {-46, -28}}, color = {0, 0, 127}));
  connect(add3111.u2, add312.y) annotation(
    Line(points = {{-70, -34}, {-98, -34}, {-98, -118}, {-107, -118}}, color = {0, 0, 127}));
  connect(add3111.u1, limiter111.y) annotation(
    Line(points = {{-70, -22}, {-153, -22}}, color = {0, 0, 127}));
  connect(limiter11.y, equalizer_cooling1.u) annotation(
    Line(points = {{-110, -190}, {-78, -190}, {-78, -222}, {-110, -222}}, color = {0, 0, 127}));
  connect(split_equalizer2.Prequested, add3112.y) annotation(
    Line(points = {{-22, -196}, {-41, -196}}, color = {0, 0, 127}));
  connect(add3112.u1, limiter11.y) annotation(
    Line(points = {{-64, -190}, {-110, -190}}, color = {0, 0, 127}));
  connect(add3121.y, add3112.u2) annotation(
    Line(points = {{-130, -258}, {-64, -258}, {-64, -202}}, color = {0, 0, 127}));
  connect(add3121.u1, y_meas3) annotation(
    Line(points = {{-154, -252}, {-432, -252}, {-432, -160}}, color = {0, 0, 127}));
  connect(add3121.u2, Te) annotation(
    Line(points = {{-154, -264}, {-154, -262}, {-596, -262}, {-596, 14}}, color = {0, 0, 127}));
  connect(Te, add312.u2) annotation(
    Line(points = {{-596, 14}, {-508, 14}, {-508, -124}, {-130, -124}}, color = {0, 0, 127}));
  connect(Te, add31.u2) annotation(
    Line(points = {{-596, 14}, {-152, 14}}, color = {0, 0, 127}));
  annotation(
    Diagram(graphics = {Text(origin = {-425, -34}, extent = {{-1, 2}, {1, -2}}, textString = "text")}, coordinateSystem(extent = {{-460, 140}, {100, -280}})),
    Icon(coordinateSystem(extent = {{-50, 50}, {50, -50}}), graphics = {Rectangle(origin = {-3, -1}, rotation = -90, fillColor = {0, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-121, 77}, {121, -77}}), Text(origin = {-1, 6}, extent = {{-52, 19}, {52, -19}}, textString = "StrictController")}));
end StrictController;
