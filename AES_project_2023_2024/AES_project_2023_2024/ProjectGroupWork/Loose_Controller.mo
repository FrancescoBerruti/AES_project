within AES_project_2023_2024.ProjectGroupWork;

model Loose_Controller
  Modelica.Blocks.Math.Add add(k2 = -1) annotation(
    Placement(transformation(origin = {-47, -45}, extent = {{-29, -29}, {29, 29}})));
  Modelica.Blocks.Math.Add add213(k2 = -1) annotation(
    Placement(transformation(origin = {-418, -22}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add2112(k2 = -1) annotation(
    Placement(transformation(origin = {-426, -146}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Constant const(k = -4) annotation(
    Placement(transformation(origin = {-736, 28}, extent = {{-38, -38}, {38, 38}})));
  Modelica.Blocks.Sources.Constant const1(k = 4) annotation(
    Placement(transformation(origin = {-731, -89}, extent = {{-41, -41}, {41, 41}})));
  Modelica.Blocks.Math.Add add2221 annotation(
    Placement(transformation(origin = {-537, -9}, extent = {{-23, -23}, {23, 23}})));
  Modelica.Blocks.Math.Add add22111 annotation(
    Placement(transformation(origin = {-531, -79}, extent = {{-23, -23}, {23, 23}})));
  Modelica.Blocks.Interfaces.RealInput T3 annotation(
    Placement(transformation(origin = {-458, -46}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-224, 160}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealInput Tdes3 annotation(
    Placement(transformation(origin = {-602, -28}, extent = {{-28, -28}, {28, 28}}, rotation = 180), iconTransformation(origin = {-220, -222}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealOutput h3_loose annotation(
    Placement(transformation(origin = {77, -37}, extent = {{-45, -45}, {45, 45}}), iconTransformation(origin = {227, 45}, extent = {{-25, -25}, {25, 25}})));
  Modelica.Blocks.Nonlinear.Limiter limiter12(uMax = 1, uMin = 0) annotation(
    Placement(transformation(origin = {-165, -149}, extent = {{-19, -19}, {19, 19}})));
  Modelica.Blocks.Nonlinear.Limiter limiter22(uMax = 1, uMin = 0) annotation(
    Placement(transformation(origin = {-207, -25}, extent = {{-19, -19}, {19, 19}})));
  Modelica.Blocks.Math.Gain gain1(k = 134640/4000/Tau) annotation(
    Placement(transformation(origin = {-362, -20}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Gain gain11(k = 134640/1000/Tau) annotation(
    Placement(transformation(origin = {-388, -144}, extent = {{-10, -10}, {10, 10}})));
  parameter Real Tau=120;
equation
  connect(add2221.y, add213.u1) annotation(
    Line(points = {{-511.7, -9}, {-511.7, -16}, {-430.7, -16}}, color = {0, 0, 127}));
  connect(T3, add2112.u1) annotation(
    Line(points = {{-458, -46}, {-458, -48}, {-438, -48}, {-438, -140}}, color = {0, 0, 127}));
  connect(add213.u2, T3) annotation(
    Line(points = {{-430, -28}, {-458, -28}, {-458, -46}}, color = {0, 0, 127}));
  connect(add22111.y, add2112.u2) annotation(
    Line(points = {{-505.7, -79}, {-505.7, -152}, {-438, -152}}, color = {0, 0, 127}));
  connect(Tdes3, add2221.u2) annotation(
    Line(points = {{-602, -28}, {-564, -28}, {-564, -22}}, color = {0, 0, 127}));
  connect(add22111.u1, Tdes3) annotation(
    Line(points = {{-558.6, -65.2}, {-602.6, -65.2}, {-602.6, -27.2}}, color = {0, 0, 127}));
  connect(const1.y, add22111.u2) annotation(
    Line(points = {{-685.9, -89}, {-637.9, -89}, {-637.9, -92}, {-557.9, -92}}, color = {0, 0, 127}));
  connect(add.y, h3_loose) annotation(
    Line(points = {{-15.1, -45}, {30.8, -45}, {30.8, -38}, {77.8, -38}}, color = {0, 0, 127}));
  connect(limiter22.y, add.u1) annotation(
    Line(points = {{-186, -25}, {-88.1, -25}, {-88.1, -28}, {-82.1, -28}}, color = {0, 0, 127}));
  connect(add.u2, limiter12.y) annotation(
    Line(points = {{-81.8, -62.4}, {-81.8, -149}, {-144, -149}}, color = {0, 0, 127}));
  connect(const.y, add2221.u1) annotation(
    Line(points = {{-694.2, 28}, {-564.2, 28}, {-564.2, 4}}, color = {0, 0, 127}));
  connect(add213.y, gain1.u) annotation(
    Line(points = {{-406, -22}, {-374, -22}, {-374, -20}}, color = {0, 0, 127}));
  connect(add2112.y, gain11.u) annotation(
    Line(points = {{-414, -146}, {-400, -146}, {-400, -144}}, color = {0, 0, 127}));
  connect(gain1.y, limiter22.u) annotation(
    Line(points = {{-350, -20}, {-230, -20}, {-230, -25}}, color = {0, 0, 127}));
  connect(gain11.y, limiter12.u) annotation(
    Line(points = {{-376, -144}, {-188, -144}, {-188, -148}}, color = {0, 0, 127}));
  annotation(
    Icon(coordinateSystem(extent = {{-200, -300}, {200, 300}}), graphics = {Rectangle(origin = {-1, -1}, fillColor = {0, 0, 255}, fillPattern = FillPattern.Solid, extent = {{-200, 300}, {200, -300}}), Text(origin = {-4, 1}, extent = {{-116, 163}, {116, -163}}, textString = "Loose_controller")}),
    Diagram(coordinateSystem(extent = {{-820, 160}, {0, -280}})));
end Loose_Controller;
