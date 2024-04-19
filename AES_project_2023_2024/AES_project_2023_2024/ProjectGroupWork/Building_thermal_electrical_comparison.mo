within AES_project_2023_2024.ProjectGroupWork;

model Building_thermal_electrical_comparison
  Building_ee building_ee annotation(
    Placement(transformation(origin = {148.5, -107}, extent = {{-28.5, -57}, {28.5, 57}})));
  AES_project_2023_2024.ProcessComponents.HCactuator hcRoom1 annotation(
    Placement(transformation(origin = {-28, -28}, extent = {{-10, -10}, {10, 10}})));
  AES_project_2023_2024.ProcessComponents.HCactuator hcRoom2 annotation(
    Placement(transformation(origin = {-28, -62}, extent = {{-10, -10}, {10, 10}})));
  AES_project_2023_2024.ProcessComponents.HCactuator hRoom3 annotation(
    Placement(transformation(origin = {-28, -90}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add(k2 = -1)  annotation(
    Placement(transformation(origin = {8, -28}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add1(k2 = -1) annotation(
    Placement(transformation(origin = {4, -62}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add11(k2 = -1) annotation(
    Placement(transformation(origin = {6, -90}, extent = {{-10, -10}, {10, 10}})));
  AES_project_2023_2024.ProcessComponents.DoorOpenings doorOpenings annotation(
    Placement(transformation(origin = {-10, -140}, extent = {{-10, -10}, {10, 10}})));
  AES_project_2023_2024.ProcessComponents.Building building annotation(
    Placement(transformation(origin = {130, 106}, extent = {{-40, -60}, {40, 60}})));
  AES_project_2023_2024.ProcessComponents.PowerDisturbances powerDisturbances annotation(
    Placement(transformation(origin = {108, 216}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  AES_project_2023_2024.ProcessComponents.TePrad tePrad1 annotation(
    Placement(transformation(origin = {152, 204}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  AES_project_2023_2024.ProcessComponents.HCactuator hcRoom11 annotation(
    Placement(transformation(origin = {-26, 116}, extent = {{-10, -10}, {10, 10}})));
  AES_project_2023_2024.ProcessComponents.HCactuator hcRoom21 annotation(
    Placement(transformation(origin = {-30, 86}, extent = {{-10, -10}, {10, 10}})));
  AES_project_2023_2024.ProcessComponents.HCactuator hRoom31 annotation(
    Placement(transformation(origin = {-26, 56}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Constant const(k = 0)  annotation(
    Placement(transformation(origin = {-288, 20}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add2(k2 = -1) annotation(
    Placement(transformation(origin = {-190, -12}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add3(k2 = -1) annotation(
    Placement(transformation(origin = {-204, -82}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Sine uh(amplitude = 1.2, f = 1/1800) annotation(
    Placement(transformation(origin = {-290, -22}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Sine uc(amplitude = 1.5, f = 1/3600, phase = 1.570796326794897) annotation(
    Placement(transformation(origin = {-262, -74}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(hcRoom1.Ph, add.u1) annotation(
    Line(points = {{-16, -22}, {-4, -22}}, color = {0, 0, 127}));
  connect(hcRoom1.Pc, add.u2) annotation(
    Line(points = {{-16, -34}, {-4, -34}}, color = {0, 0, 127}));
  connect(hcRoom2.Ph, add1.u1) annotation(
    Line(points = {{-16, -56}, {-8, -56}}, color = {0, 0, 127}));
  connect(hcRoom2.Pc, add1.u2) annotation(
    Line(points = {{-16, -68}, {-8, -68}}, color = {0, 0, 127}));
  connect(hRoom3.Ph, add11.u1) annotation(
    Line(points = {{-16, -84}, {-6, -84}}, color = {0, 0, 127}));
  connect(hRoom3.Pc, add11.u2) annotation(
    Line(points = {{-16, -96}, {-6, -96}}, color = {0, 0, 127}));
  connect(add11.y, building_ee.P3) annotation(
    Line(points = {{18, -90}, {18, -84}, {96, -84}}, color = {0, 0, 127}));
  connect(add1.y, building_ee.P2) annotation(
    Line(points = {{16, -62}, {80, -62}, {80, -71}, {96, -71}}, color = {0, 0, 127}));
  connect(add.y, building_ee.P1) annotation(
    Line(points = {{20, -28}, {68, -28}, {68, -59}, {96, -59}}, color = {0, 0, 127}));
  connect(doorOpenings.door13open, building_ee.door1) annotation(
    Line(points = {{2, -134}, {92, -134}, {92, -126}, {96, -126}}, color = {255, 0, 255}));
  connect(doorOpenings.door23open, building_ee.door2) annotation(
    Line(points = {{2, -140}, {48, -140}, {48, -142}, {96, -142}}, color = {255, 0, 255}));
  connect(doorOpenings.door3eopen, building_ee.door3) annotation(
    Line(points = {{2, -146}, {92, -146}, {92, -155}, {96, -155}}, color = {255, 0, 255}));
  connect(hRoom31.Pc, building.Pcr3) annotation(
    Line(points = {{-14, 50}, {66, 50}, {66, 106}, {86, 106}}, color = {0, 0, 127}));
  connect(hRoom31.Ph, building.Phr3) annotation(
    Line(points = {{-14, 62}, {48, 62}, {48, 114}, {86, 114}}, color = {0, 0, 127}));
  connect(hcRoom21.Pc, building.Pcr2) annotation(
    Line(points = {{-18, 80}, {32, 80}, {32, 126}, {86, 126}}, color = {0, 0, 127}));
  connect(hcRoom21.Ph, building.Phr2) annotation(
    Line(points = {{-18, 92}, {28, 92}, {28, 134}, {86, 134}}, color = {0, 0, 127}));
  connect(hcRoom11.Pc, building.Pcr1) annotation(
    Line(points = {{-14, 110}, {12, 110}, {12, 146}, {86, 146}}, color = {0, 0, 127}));
  connect(hcRoom11.Ph, building.Phr1) annotation(
    Line(points = {{-14, 122}, {2, 122}, {2, 154}, {86, 154}}, color = {0, 0, 127}));
  connect(tePrad1.Te, building.Te) annotation(
    Line(points = {{158, 192}, {158, 170}}, color = {0, 0, 127}));
  connect(tePrad1.Prad, building.Prad) annotation(
    Line(points = {{146, 192}, {146, 170}}, color = {0, 0, 127}));
  connect(powerDisturbances.Pdr3, building.Pdr3) annotation(
    Line(points = {{102, 204}, {102, 187}, {98, 187}, {98, 170}}, color = {0, 0, 127}));
  connect(powerDisturbances.Pdr2, building.Pdr2) annotation(
    Line(points = {{108, 204}, {108, 187}, {110, 187}, {110, 170}}, color = {0, 0, 127}));
  connect(powerDisturbances.Pdr1, building.Pdr1) annotation(
    Line(points = {{114, 204}, {122, 204}, {122, 170}}, color = {0, 0, 127}));
  connect(add3.y, hRoom3.uc01) annotation(
    Line(points = {{-192, -82}, {-72, -82}, {-72, -96}, {-40, -96}}, color = {0, 0, 127}));
  connect(hcRoom2.uc01, add3.y) annotation(
    Line(points = {{-40, -68}, {-72, -68}, {-72, -82}, {-192, -82}}, color = {0, 0, 127}));
  connect(hcRoom1.uc01, add3.y) annotation(
    Line(points = {{-40, -34}, {-72, -34}, {-72, -82}, {-192, -82}}, color = {0, 0, 127}));
  connect(hRoom31.uc01, add3.y) annotation(
    Line(points = {{-38, 50}, {-72, 50}, {-72, -82}, {-192, -82}}, color = {0, 0, 127}));
  connect(hcRoom21.uc01, add3.y) annotation(
    Line(points = {{-42, 80}, {-72, 80}, {-72, -82}, {-192, -82}}, color = {0, 0, 127}));
  connect(hcRoom11.uc01, add3.y) annotation(
    Line(points = {{-38, 110}, {-72, 110}, {-72, -82}, {-192, -82}}, color = {0, 0, 127}));
  connect(add2.y, hcRoom11.uh01) annotation(
    Line(points = {{-178, -12}, {-114, -12}, {-114, 122}, {-38, 122}}, color = {0, 0, 127}));
  connect(hcRoom21.uh01, add2.y) annotation(
    Line(points = {{-42, 92}, {-114, 92}, {-114, -12}, {-178, -12}}, color = {0, 0, 127}));
  connect(hRoom31.uh01, add2.y) annotation(
    Line(points = {{-38, 62}, {-114, 62}, {-114, -12}, {-178, -12}}, color = {0, 0, 127}));
  connect(hcRoom1.uh01, add2.y) annotation(
    Line(points = {{-40, -22}, {-114, -22}, {-114, -12}, {-178, -12}}, color = {0, 0, 127}));
  connect(hcRoom2.uh01, add2.y) annotation(
    Line(points = {{-40, -56}, {-114, -56}, {-114, -12}, {-178, -12}}, color = {0, 0, 127}));
  connect(hRoom3.uh01, add2.y) annotation(
    Line(points = {{-40, -84}, {-114, -84}, {-114, -12}, {-178, -12}}, color = {0, 0, 127}));
  connect( const.y, add2.u2) annotation(
    Line(points = {{-277, 20}, {-277, -16}, {-202, -16}, {-202, -18}}, color = {0, 0, 127}));
  connect( const.y, add3.u2) annotation(
    Line(points = {{-277, 20}, {-238, 20}, {-238, -88}, {-216, -88}}, color = {0, 0, 127}));
  connect(add3.u1, uc.y) annotation(
    Line(points = {{-216, -76}, {-250, -76}, {-250, -74}}, color = {0, 0, 127}));
  connect(uh.y, add2.u1) annotation(
    Line(points = {{-278, -22}, {-224, -22}, {-224, -6}, {-202, -6}}, color = {0, 0, 127}));
  connect(tePrad1.Te, building_ee.Te) annotation(
    Line(points = {{158, 192}, {184, 192}, {184, -44}}, color = {0, 0, 127}));
  connect(tePrad1.Prad, building_ee.PRad) annotation(
    Line(points = {{146, 192}, {172, 192}, {172, -46}}, color = {0, 0, 127}));
  connect(building_ee.D1, powerDisturbances.Pdr3) annotation(
    Line(points = {{110, -46}, {102, -46}, {102, 204}}, color = {0, 0, 127}));
  connect(building_ee.D2, powerDisturbances.Pdr2) annotation(
    Line(points = {{124, -46}, {108, -46}, {108, 204}}, color = {0, 0, 127}));
  connect(building_ee.D3, powerDisturbances.Pdr1) annotation(
    Line(points = {{138, -44}, {114, -44}, {114, 204}}, color = {0, 0, 127}));
  connect(building.door3eopen, doorOpenings.door3eopen) annotation(
    Line(points = {{86, 66}, {68, 66}, {68, -146}, {2, -146}}, color = {255, 0, 255}));
  connect(building.door23open, doorOpenings.door23open) annotation(
    Line(points = {{86, 78}, {72, 78}, {72, -140}, {2, -140}}, color = {255, 0, 255}));
  connect(building.door13open, doorOpenings.door13open) annotation(
    Line(points = {{86, 90}, {64, 90}, {64, -134}, {2, -134}}, color = {255, 0, 255}));
  annotation(
    Diagram(coordinateSystem(extent = {{-300, 240}, {200, -160}})));
end Building_thermal_electrical_comparison;
