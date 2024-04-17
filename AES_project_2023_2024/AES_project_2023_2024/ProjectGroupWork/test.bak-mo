within AES_project_2023_2024.ProjectGroupWork;

model test
  Building_ee building_ee annotation(
    Placement(transformation(origin = {175, -8}, extent = {{-27, -54}, {27, 54}})));
  AES_project_2023_2024.ProcessComponents.Building building annotation(
    Placement(transformation(origin = {-84, 58}, extent = {{-40, -60}, {40, 60}})));
  AES_project_2023_2024.ProcessComponents.DoorOpenings doorOpenings annotation(
    Placement(transformation(origin = {-272, 16}, extent = {{-10, -10}, {10, 10}})));
  AES_project_2023_2024.ProcessComponents.PowerDisturbances powerDisturbances annotation(
    Placement(transformation(origin = {-104, 198}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  AES_project_2023_2024.ProcessComponents.TePrad tePrad annotation(
    Placement(transformation(origin = {26, 190}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  AES_project_2023_2024.ProcessComponents.HCactuator hcRoom1 annotation(
    Placement(transformation(origin = {-272, 106}, extent = {{-10, -10}, {10, 10}})));
  AES_project_2023_2024.ProcessComponents.HCactuator hcRoom2 annotation(
    Placement(transformation(origin = {-272, 74}, extent = {{-10, -10}, {10, 10}})));
  AES_project_2023_2024.ProcessComponents.HCactuator hRoom3 annotation(
    Placement(transformation(origin = {-272, 46}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Sine uh(amplitude = 1.2, f = 1/1800) annotation(
    Placement(transformation(origin = {-392, 80}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Sine uc(amplitude = 1.5, f = 1/3600, phase = 1.570796326794897) annotation(
    Placement(transformation(origin = {-392, 40}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add(k2 = -1)  annotation(
    Placement(transformation(origin = {20, 32}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add1(k2 = -1) annotation(
    Placement(transformation(origin = {20, 4}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add11(k2 = -1) annotation(
    Placement(transformation(origin = {20, -20}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(tePrad.Prad, building.Prad) annotation(
    Line(points = {{20, 178}, {20, 150}, {-68, 150}, {-68, 122}}, color = {0, 0, 127}));
  connect(powerDisturbances.Pdr1, building.Pdr1) annotation(
    Line(points = {{-98, 186}, {-98, 155}, {-92, 155}, {-92, 122}}, color = {0, 0, 127}));
  connect(powerDisturbances.Pdr2, building.Pdr2) annotation(
    Line(points = {{-104, 186}, {-104, 122}}, color = {0, 0, 127}));
  connect(powerDisturbances.Pdr3, building.Pdr3) annotation(
    Line(points = {{-110, 186}, {-110, 152}, {-116, 152}, {-116, 122}}, color = {0, 0, 127}));
  connect(hcRoom1.Ph, building.Phr1) annotation(
    Line(points = {{-260, 112}, {-221, 112}, {-221, 106}, {-128, 106}}, color = {0, 0, 127}));
  connect(hcRoom1.Pc, building.Pcr1) annotation(
    Line(points = {{-260, 100}, {-219, 100}, {-219, 98}, {-128, 98}}, color = {0, 0, 127}));
  connect(hcRoom2.Ph, building.Phr2) annotation(
    Line(points = {{-260, 80}, {-242, 80}, {-242, 86}, {-128, 86}}, color = {0, 0, 127}));
  connect(building.door3eopen, doorOpenings.door3eopen) annotation(
    Line(points = {{-128, 18}, {-237, 18}, {-237, 10}, {-260, 10}}, color = {255, 0, 255}));
  connect(building.door23open, doorOpenings.door23open) annotation(
    Line(points = {{-128, 30}, {-239, 30}, {-239, 16}, {-260, 16}}, color = {255, 0, 255}));
  connect(building.door13open, doorOpenings.door13open) annotation(
    Line(points = {{-128, 42}, {-240, 42}, {-240, 22}, {-260, 22}}, color = {255, 0, 255}));
  connect(building.Pcr3, hRoom3.Pc) annotation(
    Line(points = {{-128, 58}, {-244, 58}, {-244, 40}, {-260, 40}}, color = {0, 0, 127}));
  connect(building.Phr3, hRoom3.Ph) annotation(
    Line(points = {{-128, 66}, {-239, 66}, {-239, 52}, {-260, 52}}, color = {0, 0, 127}));
  connect(building.Pcr2, hcRoom2.Pc) annotation(
    Line(points = {{-128, 78}, {-238, 78}, {-238, 68}, {-260, 68}}, color = {0, 0, 127}));
  connect(uh.y, hcRoom1.uh01) annotation(
    Line(points = {{-381, 80}, {-302, 80}, {-302, 112}, {-284, 112}}, color = {0, 0, 127}));
  connect(uh.y, hcRoom2.uh01) annotation(
    Line(points = {{-381, 80}, {-284, 80}}, color = {0, 0, 127}));
  connect(uh.y, hRoom3.uh01) annotation(
    Line(points = {{-381, 80}, {-302, 80}, {-302, 52}, {-284, 52}}, color = {0, 0, 127}));
  connect(uc.y, hcRoom1.uc01) annotation(
    Line(points = {{-381, 40}, {-308, 40}, {-308, 100}, {-284, 100}}, color = {0, 0, 127}));
  connect(uc.y, hcRoom2.uc01) annotation(
    Line(points = {{-381, 40}, {-308, 40}, {-308, 68}, {-284, 68}}, color = {0, 0, 127}));
  connect(uc.y, hRoom3.uc01) annotation(
    Line(points = {{-381, 40}, {-284, 40}}, color = {0, 0, 127}));
  connect(building_ee.door3e, doorOpenings.door3eopen) annotation(
    Line(points = {{125.32, -53.36}, {-259.68, -53.36}, {-259.68, 9.64}}, color = {255, 0, 255}));
  connect(building_ee.door23, doorOpenings.door23open) annotation(
    Line(points = {{125.32, -40.94}, {-52.68, -40.94}, {-52.68, 16.06}, {-259.68, 16.06}}, color = {255, 0, 255}));
  connect(building_ee.door13, doorOpenings.door13open) annotation(
    Line(points = {{125.86, -29.6}, {-54.14, -29.6}, {-54.14, 22.4}, {-260.14, 22.4}}, color = {255, 0, 255}));
  connect(building_ee.Te, tePrad.Te) annotation(
    Line(points = {{209.56, 50.86}, {47.56, 50.86}, {47.56, 159.86}, {31.56, 159.86}, {31.56, 177.86}}, color = {0, 0, 127}));
  connect(building_ee.Prad, tePrad.Prad) annotation(
    Line(points = {{194.98, 50.86}, {43.98, 50.86}, {43.98, 99.86}, {19.98, 99.86}, {19.98, 177.86}}, color = {0, 0, 127}));
  connect(building.Te, tePrad.Te) annotation(
    Line(points = {{-56, 122}, {32, 122}, {32, 178}}, color = {0, 0, 127}));
  connect(building_ee.d1, powerDisturbances.Pdr1) annotation(
    Line(points = {{167.44, 50.32}, {-97.56, 50.32}, {-97.56, 186.32}}, color = {0, 0, 127}));
  connect(building_ee.d2, powerDisturbances.Pdr2) annotation(
    Line(points = {{151.78, 50.86}, {-104.22, 50.86}, {-104.22, 185.86}}, color = {0, 0, 127}));
  connect(building_ee.d3, powerDisturbances.Pdr3) annotation(
    Line(points = {{137.2, 50.32}, {-109.8, 50.32}, {-109.8, 186.32}}, color = {0, 0, 127}));
  connect(hcRoom1.Ph, add.u1) annotation(
    Line(points = {{-260, 112}, {8, 112}, {8, 38}}, color = {0, 0, 127}));
  connect(hcRoom1.Pc, add.u2) annotation(
    Line(points = {{-260, 100}, {8, 100}, {8, 26}}, color = {0, 0, 127}));
  connect(add.y, building_ee.P1) annotation(
    Line(points = {{31, 32}, {125, 32}, {125, 36}}, color = {0, 0, 127}));
  connect(hcRoom2.Ph, add1.u1) annotation(
    Line(points = {{-260, 80}, {8, 80}, {8, 10}}, color = {0, 0, 127}));
  connect(hcRoom2.Pc, add1.u2) annotation(
    Line(points = {{-260, 68}, {8, 68}, {8, -2}}, color = {0, 0, 127}));
  connect(add1.y, building_ee.P2) annotation(
    Line(points = {{31, 4}, {125, 4}, {125, 22}}, color = {0, 0, 127}));
  connect(hRoom3.Ph, add11.u1) annotation(
    Line(points = {{-260, 52}, {8, 52}, {8, -14}}, color = {0, 0, 127}));
  connect(hRoom3.Pc, add11.u2) annotation(
    Line(points = {{-260, 40}, {8, 40}, {8, -26}}, color = {0, 0, 127}));
  connect(add11.y, building_ee.P3) annotation(
    Line(points = {{32, -20}, {126, -20}, {126, 8}}, color = {0, 0, 127}));
end test;
