within AES_project_2023_2024.ProjectGroupWork;

model StrictController
  AES_project_2023_2024.ProjectGroupWork.split_equalizer split_equalizer(K = 80784) annotation(
    Placement(transformation(origin = {1, 69}, extent = {{-22, -22}, {22, 22}})));
  AES_project_2023_2024.ProjectGroupWork.split_equalizer split_equalizer1(K = 53856) annotation(
    Placement(transformation(origin = {3, -43}, extent = {{-18, -18}, {18, 18}})));
  AES_project_2023_2024.ProjectGroupWork.split_equalizer split_equalizer2(K = 134640) annotation(
    Placement(transformation(origin = {6, -136}, extent = {{-17, -17}, {17, 17}})));
  Modelica.Blocks.Interfaces.RealInput y_meas1 annotation(
    Placement(transformation(origin = {-428, 110}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-100, 102}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealInput setpoint1 annotation(
    Placement(transformation(origin = {-428, 80}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-100, 66}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealInput y_meas2 annotation(
    Placement(transformation(origin = {-428, -18}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-100, 26}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealInput setpoint2 annotation(
    Placement(transformation(origin = {-430, -48}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-100, -18}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealInput y_meas3 annotation(
    Placement(transformation(origin = {-430, -92}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-100, -64}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealInput setpoint3 annotation(
  Modelica.Blocks.Interfaces.RealOutput u1 annotation(
    Placement(transformation(origin = {80, 74}, extent = {{-10, -10}, {10, 10}}, rotation = 180), iconTransformation(origin = {84, 36}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Interfaces.RealOutput u2 annotation(
    Placement(transformation(origin = {78, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 180), iconTransformation(origin = {84, -2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Interfaces.RealOutput u3 annotation(
    Placement(transformation(origin = {76, -132}, extent = {{-10, -10}, {10, 10}}, rotation = 180), iconTransformation(origin = {84, -42}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Gain gain(k = 134640/Tau) annotation(
    Placement(transformation(origin = {-280, -116}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add annotation(
    Placement(transformation(origin = {-194, -122}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Continuous.TransferFunction equalizer_cooling1(a = {30, 1}, b = {1}) annotation(
    Placement(transformation(origin = {-120, -154}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Blocks.Nonlinear.Limiter limiter11(uMax = 4000, uMin = -1000) annotation(
    Placement(transformation(origin = {-120, -122}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Gain gain1(k = 53856/Tau) annotation(
    Placement(transformation(origin = {-274, -22}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add1 annotation(
    Placement(transformation(origin = {-194, -28}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Continuous.TransferFunction equalizer_cooling11(a = {30, 1}, b = {1}) annotation(
    Placement(transformation(origin = {-120, -66}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Blocks.Nonlinear.Limiter limiter111(uMax = 4000, uMin = -1000) annotation(
    Placement(transformation(origin = {-120, -28}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Gain gain2(k = 80784/Tau) annotation(
    Placement(transformation(origin = {-290, 92}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add2 annotation(
    Placement(transformation(origin = {-192, 86}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Continuous.TransferFunction equalizer_cooling12(a = {30, 1}, b = {1}) annotation(
    Placement(transformation(origin = {-118, 54}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Blocks.Nonlinear.Limiter limiter112(uMax = 4000, uMin = -1000) annotation(
    Placement(transformation(origin = {-118, 86}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add loop_error_sum(k1 = -1) annotation(
    Placement(transformation(origin = {-350, -114}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add loop_error_sum1(k1 = -1) annotation(
    Placement(transformation(origin = {-346, -30}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add loop_error_sum2(k1 = -1) annotation(
    Placement(transformation(origin = {-358, 94}, extent = {{-10, -10}, {10, 10}})));
  parameter Real Tau=10;    
equation
  connect(split_equalizer1.actuation_signal, u2) annotation(
    Line(points = {{23.88, -38.68}, {49.76, -38.68}, {49.76, -39.68}, {77.88, -39.68}}, color = {0, 0, 127}));
  connect(u1, split_equalizer.actuation_signal) annotation(
    Line(points = {{80, 74}, {27, 74}}, color = {0, 0, 127}));
  connect(split_equalizer2.actuation_signal, u3) annotation(
    Line(points = {{26, -132}, {76, -132}}, color = {0, 0, 127}));
  connect(gain.y, add.u1) annotation(
    Line(points = {{-269, -116}, {-206, -116}}, color = {0, 0, 127}));
  connect(equalizer_cooling1.y, add.u2) annotation(
    Line(points = {{-131, -154}, {-208, -154}, {-208, -128}, {-206, -128}}, color = {0, 0, 127}));
  connect(add.y, limiter11.u) annotation(
    Line(points = {{-183, -122}, {-133, -122}}, color = {0, 0, 127}));
  connect(equalizer_cooling1.u, limiter11.y) annotation(
    Line(points = {{-108, -154}, {-54, -154}, {-54, -122}, {-109, -122}}, color = {0, 0, 127}));
  connect(gain1.y, add1.u1) annotation(
    Line(points = {{-263, -22}, {-206, -22}}, color = {0, 0, 127}));
  connect(equalizer_cooling11.y, add1.u2) annotation(
    Line(points = {{-131, -66}, {-210, -66}, {-210, -34}, {-206, -34}}, color = {0, 0, 127}));
  connect(add1.y, limiter111.u) annotation(
    Line(points = {{-183, -28}, {-132, -28}}, color = {0, 0, 127}));
  connect(equalizer_cooling11.u, limiter111.y) annotation(
    Line(points = {{-108, -66}, {-56, -66}, {-56, -28}, {-109, -28}}, color = {0, 0, 127}));
  connect(equalizer_cooling12.y, add2.u2) annotation(
    Line(points = {{-129, 54}, {-206, 54}, {-206, 80}, {-204, 80}}, color = {0, 0, 127}));
  connect(add2.y, limiter112.u) annotation(
    Line(points = {{-181, 86}, {-131, 86}}, color = {0, 0, 127}));
  connect(limiter11.y, split_equalizer2.Prequested) annotation(
    Line(points = {{-109, -122}, {-19, -122}}, color = {0, 0, 127}));
  connect(split_equalizer1.Prequested, limiter111.y) annotation(
    Line(points = {{-22.2, -27.88}, {-109.2, -27.88}}, color = {0, 0, 127}));
  connect(equalizer_cooling12.u, limiter112.y) annotation(
    Line(points = {{-106, 54}, {-50, 54}, {-50, 86}, {-106, 86}}, color = {0, 0, 127}));
  connect(split_equalizer.Prequested, limiter112.y) annotation(
    Line(points = {{-30, 87}, {-45.8, 87}, {-45.8, 86}, {-107, 86}}, color = {0, 0, 127}));
  connect(setpoint1, loop_error_sum2.u2) annotation(
    Line(points = {{-428, 80}, {-370, 80}, {-370, 88}}, color = {0, 0, 127}));
  connect(loop_error_sum2.u1, y_meas1) annotation(
    Line(points = {{-370, 100}, {-428, 100}, {-428, 110}}, color = {0, 0, 127}));
  connect(loop_error_sum1.u1, y_meas2) annotation(
    Line(points = {{-358, -24}, {-388, -24}, {-388, -18}, {-428, -18}}, color = {0, 0, 127}));
  connect(setpoint2, loop_error_sum1.u2) annotation(
    Line(points = {{-430, -48}, {-394, -48}, {-394, -36}, {-358, -36}}, color = {0, 0, 127}));
  connect(y_meas3, loop_error_sum.u1) annotation(
    Line(points = {{-430, -92}, {-362, -92}, {-362, -108}}, color = {0, 0, 127}));
  connect(setpoint3, loop_error_sum.u2) annotation(
    Line(points = {{-432, -122}, {-362, -122}, {-362, -120}}, color = {0, 0, 127}));
  connect(gain2.u, loop_error_sum2.y) annotation(
    Line(points = {{-302, 92}, {-346, 92}, {-346, 94}}, color = {0, 0, 127}));
  connect(gain1.u, loop_error_sum1.y) annotation(
    Line(points = {{-286, -22}, {-334, -22}, {-334, -30}}, color = {0, 0, 127}));
  connect(gain.u, loop_error_sum.y) annotation(
    Line(points = {{-292, -116}, {-338, -116}, {-338, -114}}, color = {0, 0, 127}));
  connect(gain2.y, add2.u1) annotation(
    Line(points = {{-278, 92}, {-204, 92}}, color = {0, 0, 127}));
  annotation(
    Diagram(graphics = {Text(origin = {-425, -34}, extent = {{-1, 2}, {1, -2}}, textString = "text")}, coordinateSystem(extent = {{-460, 140}, {100, -180}})),
    Icon(coordinateSystem(extent = {{-50, 50}, {50, -50}}), graphics = {Rectangle(origin = {-3, -1}, rotation = -90, fillColor = {0, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-121, 77}, {121, -77}}), Text(origin = {-1, 6}, extent = {{-52, 19}, {52, -19}}, textString = "StrictController")}));
end StrictController;
