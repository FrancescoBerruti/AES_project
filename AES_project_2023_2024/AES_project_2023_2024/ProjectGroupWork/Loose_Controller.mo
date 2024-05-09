within AES_project_2023_2024.ProjectGroupWork;

model Loose_Controller
  AES_project_2023_2024.ProcessComponents.HCactuator hCactuator annotation(
    Placement(transformation(origin = {-283, -179}, extent = {{-29, -29}, {29, 29}})));
  Modelica.Blocks.Math.Add add(k2 = -1) annotation(
    Placement(transformation(origin = {-187, -177}, extent = {{-29, -29}, {29, 29}})));
  AES_project_2023_2024.ProcessComponents.HCactuator hCactuator1 annotation(
    Placement(transformation(origin = {-330, -20}, extent = {{-34, -34}, {34, 34}})));
  Modelica.Blocks.Math.Add add1(k2 = -1) annotation(
    Placement(transformation(origin = {-196, -20}, extent = {{-38, -38}, {38, 38}})));
  AES_project_2023_2024.ProcessComponents.HCactuator hCactuator2 annotation(
    Placement(transformation(origin = {-319, 85}, extent = {{-39, -39}, {39, 39}})));
  Modelica.Blocks.Math.Add add2(k2 = -1) annotation(
    Placement(transformation(origin = {-192, 86}, extent = {{-36, -36}, {36, 36}})));
  Modelica.Blocks.Math.Gain gain(k = 80784/4000) annotation(
    Placement(transformation(origin = {-394, 114}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add21(k2 = -1) annotation(
    Placement(transformation(origin = {-448, 114}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Gain gain2(k = 80784/1000) annotation(
    Placement(transformation(origin = {-404, 62}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add211(k2 = -1) annotation(
    Placement(transformation(origin = {-438, 62}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Gain gain1(k = 53856/4000) annotation(
    Placement(transformation(origin = {-400, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add212(k2 = -1) annotation(
    Placement(transformation(origin = {-438, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Gain gain21(k = 53856/1000) annotation(
    Placement(transformation(origin = {-402, -86}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add2111(k2 = -1) annotation(
    Placement(transformation(origin = {-436, -88}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Gain gain3(k = 134640/4000) annotation(
    Placement(transformation(origin = {-382, -162}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add213(k2 = -1) annotation(
    Placement(transformation(origin = {-422, -164}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Gain gain22(k = 134640/1000) annotation(
    Placement(transformation(origin = {-390, -214}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add2112(k2 = -1) annotation(
    Placement(transformation(origin = {-426, -214}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add22 annotation(
    Placement(transformation(origin = {-544, 124}, extent = {{-24, -24}, {24, 24}})));
  Modelica.Blocks.Sources.Constant const(k = -4) annotation(
    Placement(transformation(origin = {-776, 18}, extent = {{-38, -38}, {38, 38}})));
  Modelica.Blocks.Math.Add add221 annotation(
    Placement(transformation(origin = {-543, 65}, extent = {{-23, -23}, {23, 23}})));
  Modelica.Blocks.Sources.Constant const1(k = 4) annotation(
    Placement(transformation(origin = {-735, -231}, extent = {{-41, -41}, {41, 41}})));
  Modelica.Blocks.Math.Add add222 annotation(
    Placement(transformation(origin = {-545, 1}, extent = {{-27, -27}, {27, 27}})));
  Modelica.Blocks.Math.Add add2211 annotation(
    Placement(transformation(origin = {-545, -81}, extent = {{-27, -27}, {27, 27}})));
  Modelica.Blocks.Math.Add add2221 annotation(
    Placement(transformation(origin = {-541, -151}, extent = {{-23, -23}, {23, 23}})));
  Modelica.Blocks.Math.Add add22111 annotation(
    Placement(transformation(origin = {-535, -221}, extent = {{-23, -23}, {23, 23}})));
  Modelica.Blocks.Interfaces.RealInput T1 annotation(
    Placement(transformation(origin = {-472, 102}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-220, 260}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealInput T2 annotation(
    Placement(transformation(origin = {-472, -34}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-222, 210}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealInput T3 annotation(
    Placement(transformation(origin = {-462, -188}, extent = {{-20, -20}, {20, 20}}, rotation = 180), iconTransformation(origin = {-224, 160}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealOutput h1_loose annotation(
    Placement(transformation(origin = {-56, 86}, extent = {{-40, -40}, {40, 40}}), iconTransformation(origin = {220, 208}, extent = {{-22, -22}, {22, 22}})));
  Modelica.Blocks.Interfaces.RealOutput h2_loose annotation(
    Placement(transformation(origin = {-54, -20}, extent = {{-40, -40}, {40, 40}}), iconTransformation(origin = {226, 118}, extent = {{-24, -24}, {24, 24}})));
  Modelica.Blocks.Interfaces.RealInput Tdes1 annotation(
    Placement(transformation(origin = {-607, 109}, extent = {{-31, -31}, {31, 31}}, rotation = 180), iconTransformation(origin = {-222, -130}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealInput Tdes2 annotation(
    Placement(transformation(origin = {-607, -15}, extent = {{-31, -31}, {31, 31}}, rotation = 180), iconTransformation(origin = {-220, -174}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealInput Tdes3 annotation(
    Placement(transformation(origin = {-606, -170}, extent = {{-28, -28}, {28, 28}}, rotation = 180), iconTransformation(origin = {-220, -222}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealOutput h3_loose annotation(
    Placement(transformation(origin = {-59, -177}, extent = {{-45, -45}, {45, 45}}), iconTransformation(origin = {227, 45}, extent = {{-25, -25}, {25, 25}})));
equation
  connect(hCactuator.Ph, add.u1) annotation(
    Line(points = {{-248, -162}, {-248, -160}, {-222, -160}}, color = {0, 0, 127}));
  connect(hCactuator.Pc, add.u2) annotation(
    Line(points = {{-248, -196}, {-248, -194}, {-222, -194}}, color = {0, 0, 127}));
  connect(hCactuator1.Ph, add1.u1) annotation(
    Line(points = {{-289, 0}, {-259.5, 0}, {-259.5, 3}, {-242, 3}}, color = {0, 0, 127}));
  connect(hCactuator1.Pc, add1.u2) annotation(
    Line(points = {{-289, -40}, {-258, -40}, {-258, -43}, {-242, -43}}, color = {0, 0, 127}));
  connect(hCactuator2.Ph, add2.u1) annotation(
    Line(points = {{-272, 108}, {-235, 108}}, color = {0, 0, 127}));
  connect(hCactuator2.Pc, add2.u2) annotation(
    Line(points = {{-272, 62}, {-252.5, 62}, {-252.5, 64}, {-235, 64}}, color = {0, 0, 127}));
  connect(add21.y, gain.u) annotation(
    Line(points = {{-437, 114}, {-406, 114}}, color = {0, 0, 127}));
  connect(gain.y, hCactuator2.uh01) annotation(
    Line(points = {{-383, 114}, {-371.5, 114}, {-371.5, 108}, {-366, 108}}, color = {0, 0, 127}));
  connect(add211.y, gain2.u) annotation(
    Line(points = {{-427, 62}, {-416, 62}}, color = {0, 0, 127}));
  connect(gain2.y, hCactuator2.uc01) annotation(
    Line(points = {{-393, 62}, {-366, 62}}, color = {0, 0, 127}));
  connect(add212.y, gain1.u) annotation(
    Line(points = {{-427, 0}, {-412, 0}}, color = {0, 0, 127}));
  connect(add2111.y, gain21.u) annotation(
    Line(points = {{-425, -88}, {-419.5, -88}, {-419.5, -86}, {-414, -86}}, color = {0, 0, 127}));
  connect(gain1.y, hCactuator1.uh01) annotation(
    Line(points = {{-389, 0}, {-371, 0}}, color = {0, 0, 127}));
  connect(gain21.y, hCactuator1.uc01) annotation(
    Line(points = {{-391, -86}, {-373.5, -86}, {-373.5, -40}, {-371, -40}}, color = {0, 0, 127}));
  connect(add213.y, gain3.u) annotation(
    Line(points = {{-411, -164}, {-401.5, -164}, {-401.5, -162}, {-394, -162}}, color = {0, 0, 127}));
  connect(add2112.y, gain22.u) annotation(
    Line(points = {{-415, -214}, {-403, -214}}, color = {0, 0, 127}));
  connect(gain3.y, hCactuator.uh01) annotation(
    Line(points = {{-371, -162}, {-318, -162}}, color = {0, 0, 127}));
  connect(gain22.y, hCactuator.uc01) annotation(
    Line(points = {{-379, -214}, {-335, -214}, {-335, -196}, {-318, -196}}, color = {0, 0, 127}));
  connect(add221.y, add211.u2) annotation(
    Line(points = {{-518, 65}, {-479.5, 65}, {-479.5, 56}, {-450, 56}}, color = {0, 0, 127}));
  connect(add2211.y, add2111.u2) annotation(
    Line(points = {{-515, -81}, {-475.5, -81}, {-475.5, -94}, {-448, -94}}, color = {0, 0, 127}));
  connect(add222.y, add212.u1) annotation(
    Line(points = {{-515, 1}, {-493.5, 1}, {-493.5, 6}, {-450, 6}}, color = {0, 0, 127}));
  connect(add2221.y, add213.u1) annotation(
    Line(points = {{-516, -151}, {-516, -158}, {-435, -158}}, color = {0, 0, 127}));
  connect(T1, add21.u2) annotation(
    Line(points = {{-472, 102}, {-460, 102}, {-460, 108}}, color = {0, 0, 127}));
  connect(T2, add212.u2) annotation(
    Line(points = {{-472, -34}, {-450, -34}, {-450, -6}}, color = {0, 0, 127}));
  connect(T3, add2112.u1) annotation(
    Line(points = {{-462, -188}, {-438, -188}, {-438, -208}}, color = {0, 0, 127}));
  connect(add211.u1, T1) annotation(
    Line(points = {{-450, 68}, {-472, 68}, {-472, 102}}, color = {0, 0, 127}));
  connect(add2111.u1, T2) annotation(
    Line(points = {{-448, -82}, {-472, -82}, {-472, -34}}, color = {0, 0, 127}));
  connect(add213.u2, T3) annotation(
    Line(points = {{-434, -170}, {-462, -170}, {-462, -188}}, color = {0, 0, 127}));
  connect(add22111.y, add2112.u2) annotation(
    Line(points = {{-510, -221}, {-439, -221}, {-439, -220}}, color = {0, 0, 127}));
  connect(add2.y, h1_loose) annotation(
    Line(points = {{-152, 86}, {-56, 86}}, color = {0, 0, 127}));
  connect(add1.y, h2_loose) annotation(
    Line(points = {{-154, -20}, {-54, -20}}, color = {0, 0, 127}));
  connect(Tdes1, add22.u2) annotation(
    Line(points = {{-607, 109}, {-572, 109}, {-572, 110}}, color = {0, 0, 127}));
  connect(add221.u1, Tdes1) annotation(
    Line(points = {{-571, 79}, {-571, 110}, {-606, 110}}, color = {0, 0, 127}));
  connect(Tdes2, add222.u2) annotation(
    Line(points = {{-606, -14}, {-578, -14}, {-578, -16}}, color = {0, 0, 127}));
  connect(add2211.u1, Tdes2) annotation(
    Line(points = {{-578, -64}, {-606, -64}, {-606, -14}}, color = {0, 0, 127}));
  connect(Tdes3, add2221.u2) annotation(
    Line(points = {{-606, -170}, {-568, -170}, {-568, -164}}, color = {0, 0, 127}));
  connect(add22111.u1, Tdes3) annotation(
    Line(points = {{-562, -208}, {-606, -208}, {-606, -170}}, color = {0, 0, 127}));
  connect(const1.y, add22111.u2) annotation(
    Line(points = {{-690, -231}, {-642, -231}, {-642, -234}, {-562, -234}}, color = {0, 0, 127}));
  connect(const1.y, add2211.u2) annotation(
    Line(points = {{-690, -231}, {-690, -96}, {-578, -96}, {-578, -98}}, color = {0, 0, 127}));
  connect(const1.y, add221.u2) annotation(
    Line(points = {{-690, -231}, {-690, 46}, {-571, 46}, {-571, 51}}, color = {0, 0, 127}));
  connect(const.y, add2221.u1) annotation(
    Line(points = {{-734, 18}, {-664, 18}, {-664, -138}, {-568, -138}}, color = {0, 0, 127}));
  connect(const.y, add222.u1) annotation(
    Line(points = {{-734, 18}, {-578, 18}}, color = {0, 0, 127}));
  connect(const.y, add22.u1) annotation(
    Line(points = {{-734, 18}, {-664, 18}, {-664, 138}, {-572, 138}}, color = {0, 0, 127}));
  connect(add.y, h3_loose) annotation(
    Line(points = {{-156, -176}, {-106, -176}, {-106, -177}, {-59, -177}}, color = {0, 0, 127}));
  connect(add22.y, add21.u1) annotation(
    Line(points = {{-518, 124}, {-460, 124}, {-460, 120}}, color = {0, 0, 127}));
  annotation(
    Icon(coordinateSystem(extent = {{-200, -300}, {200, 300}}), graphics = {Rectangle(origin = {-1, -1}, fillColor = {0, 0, 255}, fillPattern = FillPattern.Solid, extent = {{-200, 300}, {200, -300}}), Text(origin = {-4, 1}, extent = {{-116, 163}, {116, -163}}, textString = "Loose_controller")}),
    Diagram(coordinateSystem(extent = {{-820, 160}, {0, -280}})));
end Loose_Controller;
