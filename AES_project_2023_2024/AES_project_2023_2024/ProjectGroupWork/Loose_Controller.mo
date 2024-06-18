within AES_project_2023_2024.ProjectGroupWork;

model Loose_Controller
  Modelica.Blocks.Math.Add add(k2 = -1) annotation(
    Placement(transformation(origin = {-179, -43}, extent = {{-29, -29}, {29, 29}})));
  Modelica.Blocks.Math.Gain gain3(k = 134640/4000) annotation(
    Placement(transformation(origin = {-380, -18}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add213(k2 = -1) annotation(
    Placement(transformation(origin = {-418, -22}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Gain gain22(k = 134640/1000) annotation(
    Placement(transformation(origin = {-386, -72}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add2112(k2 = -1) annotation(
    Placement(transformation(origin = {-422, -72}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Interfaces.RealInput T3 annotation(
    Placement(transformation(origin = {-458, -46}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-224, 160}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealInput Tdes3 annotation(
    Placement(transformation(origin = {-532, -42}, extent = {{-28, -28}, {28, 28}}, rotation = 180), iconTransformation(origin = {-220, -222}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealOutput h3_loose annotation(
    Placement(transformation(origin = {-55, -35}, extent = {{-45, -45}, {45, 45}}), iconTransformation(origin = {227, 45}, extent = {{-25, -25}, {25, 25}})));
  Modelica.Blocks.Nonlinear.Limiter limiter12(uMax = 1, uMin = 0) annotation(
    Placement(transformation(origin = {-293, -73}, extent = {{-19, -19}, {19, 19}})));
  Modelica.Blocks.Nonlinear.Limiter limiter22(uMax = 1, uMin = 0) annotation(
    Placement(transformation(origin = {-293, -17}, extent = {{-19, -19}, {19, 19}})));
  Modelica.Blocks.Sources.RealExpression realExpression(y = Tdes3 +2)  annotation(
    Placement(transformation(origin = {-517, -7}, extent = {{-23, -13}, {23, 13}})));
  Modelica.Blocks.Sources.RealExpression realExpression1(y = Tdes3-2) annotation(
    Placement(transformation(origin = {-519, -77}, extent = {{-21, -13}, {21, 13}})));
equation
  connect(add213.y, gain3.u) annotation(
    Line(points = {{-407, -22}, {-397.5, -22}, {-397.5, -18}, {-392, -18}}, color = {0, 0, 127}));
  connect(add2112.y, gain22.u) annotation(
    Line(points = {{-411, -72}, {-399, -72}}, color = {0, 0, 127}));
  connect(T3, add2112.u1) annotation(
    Line(points = {{-458, -46}, {-434, -46}, {-434, -66}}, color = {0, 0, 127}));
  connect(add213.u2, T3) annotation(
    Line(points = {{-430, -28}, {-458, -28}, {-458, -46}}, color = {0, 0, 127}));
  connect(add.y, h3_loose) annotation(
    Line(points = {{-147, -43}, {-101.1, -43}, {-101.1, -36}, {-54.1, -36}}, color = {0, 0, 127}));
  connect(limiter22.y, add.u1) annotation(
    Line(points = {{-272, -17}, {-220, -17}, {-220, -26}, {-214, -26}}, color = {0, 0, 127}));
  connect(add.u2, limiter12.y) annotation(
    Line(points = {{-214, -60}, {-214, -72.4}, {-271.8, -72.4}}, color = {0, 0, 127}));
  connect(limiter12.u, gain22.y) annotation(
    Line(points = {{-315.8, -73}, {-373.8, -73}}, color = {0, 0, 127}));
  connect(limiter22.u, gain3.y) annotation(
    Line(points = {{-316, -17}, {-369.8, -17}, {-369.8, -18}, {-369, -18}}, color = {0, 0, 127}));
  connect(realExpression.y, add213.u1) annotation(
    Line(points = {{-492, -7}, {-430, -7}, {-430, -16}}, color = {0, 0, 127}));
  connect(realExpression1.y, add2112.u2) annotation(
    Line(points = {{-496, -77}, {-462, -77}, {-462, -78}, {-434, -78}}, color = {0, 0, 127}));
  annotation(
    Icon(coordinateSystem(extent = {{-200, -300}, {200, 300}}), graphics = {Rectangle(origin = {-1, -1}, fillColor = {0, 0, 255}, fillPattern = FillPattern.Solid, extent = {{-200, 300}, {200, -300}}), Text(origin = {-4, 1}, extent = {{-116, 163}, {116, -163}}, textString = "Loose_controller")}),
    Diagram(coordinateSystem(extent = {{-560, 20}, {0, -100}})));
end Loose_Controller;
