within AES_project_2023_2024.ProjectGroupWork;

model Building_thermal_electrical_comparison
  Building_ee building_ee annotation(
    Placement(transformation(origin = {145.5, -59}, extent = {{-45.5, -91}, {45.5, 91}})));
  AES_project_2023_2024.ProcessComponents.HCactuator hcRoom1 annotation(
    Placement(transformation(origin = {-36, 18}, extent = {{-10, -10}, {10, 10}})));
  AES_project_2023_2024.ProcessComponents.HCactuator hcRoom2 annotation(
    Placement(transformation(origin = {-46, -16}, extent = {{-10, -10}, {10, 10}})));
  AES_project_2023_2024.ProcessComponents.HCactuator hRoom3 annotation(
    Placement(transformation(origin = {-28, -90}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add(k2 = -1)  annotation(
    Placement(transformation(origin = {10, 16}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add1(k2 = -1) annotation(
    Placement(transformation(origin = {8, -14}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add11(k2 = -1) annotation(
    Placement(transformation(origin = {28, -88}, extent = {{-10, -10}, {10, 10}})));
  AES_project_2023_2024.ProcessComponents.Building building annotation(
    Placement(transformation(origin = {130, 106}, extent = {{-40, -60}, {40, 60}})));
  AES_project_2023_2024.ProcessComponents.PowerDisturbances powerDisturbances(Pdmax = 0)  annotation(
    Placement(transformation(origin = {110, 218}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  AES_project_2023_2024.ProcessComponents.TePrad tePrad1(Temax(displayUnit = "K"), Temin (displayUnit = "K"), Phimax = 0)  annotation(
    Placement(transformation(origin = {154, 218}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  AES_project_2023_2024.ProcessComponents.HCactuator hcRoom11 annotation(
    Placement(transformation(origin = {-26, 116}, extent = {{-10, -10}, {10, 10}})));
  AES_project_2023_2024.ProcessComponents.HCactuator hcRoom21 annotation(
    Placement(transformation(origin = {-30, 86}, extent = {{-10, -10}, {10, 10}})));
  AES_project_2023_2024.ProcessComponents.HCactuator hRoom31 annotation(
    Placement(transformation(origin = {-26, 56}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add2(k2 = -1) annotation(
    Placement(transformation(origin = {-190, -12}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add3(k2 = -1) annotation(
    Placement(transformation(origin = {-204, -82}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Constant const(k = 0)  annotation(
    Placement(transformation(origin = {-340, -18}, extent = {{-10, -10}, {10, 10}})));
  ProcessComponents.DoorOpenings doorOpenings(hod_start = 1000)  annotation(
    Placement(transformation(origin = {-337, 79}, extent = {{-41, -41}, {41, 41}})));
  Modelica.Blocks.Sources.Constant const1(k = 1)  annotation(
    Placement(transformation(origin = {-304, -52}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(hcRoom1.Ph, add.u1) annotation(
    Line(points = {{-24, 24}, {-13, 24}, {-13, 22}, {-2, 22}}, color = {0, 0, 127}));
  connect(hcRoom1.Pc, add.u2) annotation(
    Line(points = {{-24, 12}, {-13, 12}, {-13, 10}, {-2, 10}}, color = {0, 0, 127}));
  connect(hcRoom2.Ph, add1.u1) annotation(
    Line(points = {{-34, -10}, {-22, -10}, {-22, -8}, {-4, -8}}, color = {0, 0, 127}));
  connect(hcRoom2.Pc, add1.u2) annotation(
    Line(points = {{-34, -22}, {-22, -22}, {-22, -20}, {-4, -20}}, color = {0, 0, 127}));
  connect(hRoom3.Ph, add11.u1) annotation(
    Line(points = {{-16, -84}, {-1, -84}, {-1, -82}, {16, -82}}, color = {0, 0, 127}));
  connect(hRoom3.Pc, add11.u2) annotation(
    Line(points = {{-16, -96}, {-1, -96}, {-1, -94}, {16, -94}}, color = {0, 0, 127}));
  connect(add11.y, building_ee.P3) annotation(
    Line(points = {{39, -88}, {39, -23}, {62, -23}}, color = {0, 0, 127}));
  connect(add1.y, building_ee.P2) annotation(
    Line(points = {{19, -14}, {63, -14}, {63, -2}, {62, -2}}, color = {0, 0, 127}));
  connect(add.y, building_ee.P1) annotation(
    Line(points = {{21, 16}, {21, 17}, {62, 17}}, color = {0, 0, 127}));
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
    Line(points = {{160, 206}, {160, 183}, {158, 183}, {158, 170}}, color = {0, 0, 127}));
  connect(tePrad1.Prad, building.Prad) annotation(
    Line(points = {{148, 206}, {148, 183}, {146, 183}, {146, 170}}, color = {0, 0, 127}));
  connect(add3.y, hRoom3.uc01) annotation(
    Line(points = {{-192, -82}, {-72, -82}, {-72, -96}, {-40, -96}}, color = {0, 0, 127}));
  connect(hcRoom2.uc01, add3.y) annotation(
    Line(points = {{-58, -22}, {-72, -22}, {-72, -82}, {-192, -82}}, color = {0, 0, 127}));
  connect(hcRoom1.uc01, add3.y) annotation(
    Line(points = {{-48, 12}, {-72, 12}, {-72, -82}, {-192, -82}}, color = {0, 0, 127}));
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
    Line(points = {{-48, 24}, {-108, 24}, {-108, -12}, {-178, -12}}, color = {0, 0, 127}));
  connect(hcRoom2.uh01, add2.y) annotation(
    Line(points = {{-58, -10}, {-118, -10}, {-118, -12}, {-178, -12}}, color = {0, 0, 127}));
  connect(hRoom3.uh01, add2.y) annotation(
    Line(points = {{-40, -84}, {-114, -84}, {-114, -12}, {-178, -12}}, color = {0, 0, 127}));
  connect(tePrad1.Te, building_ee.Te) annotation(
    Line(points = {{160, 206}, {160, 192}, {202, 192}, {202, 40}}, color = {0, 0, 127}));
  connect(tePrad1.Prad, building_ee.PRad) annotation(
    Line(points = {{148, 206}, {148, 192}, {182, 192}, {182, 39}}, color = {0, 0, 127}));
  connect(add2.u2, const.y) annotation(
    Line(points = {{-202, -18}, {-329, -18}}, color = {0, 0, 127}));
  connect(const.y, add3.u2) annotation(
    Line(points = {{-329, -18}, {-254, -18}, {-254, -88}, {-216, -88}}, color = {0, 0, 127}));
  connect(doorOpenings.door13open, building.door13open) annotation(
    Line(points = {{-288, 104}, {-80, 104}, {-80, 90}, {86, 90}}, color = {255, 0, 255}));
  connect(doorOpenings.door23open, building.door23open) annotation(
    Line(points = {{-288, 79}, {-288, 78}, {86, 78}}, color = {255, 0, 255}));
  connect(doorOpenings.door3eopen, building.door3eopen) annotation(
    Line(points = {{-288, 54}, {-288, 66}, {86, 66}}, color = {255, 0, 255}));
  connect(powerDisturbances.Pdr3, building.Pdr3) annotation(
    Line(points = {{104, 206}, {98, 206}, {98, 170}}, color = {0, 0, 127}));
  connect(powerDisturbances.Pdr2, building.Pdr2) annotation(
    Line(points = {{110, 206}, {110, 170}}, color = {0, 0, 127}));
  connect(powerDisturbances.Pdr1, building.Pdr1) annotation(
    Line(points = {{116, 206}, {122, 206}, {122, 170}}, color = {0, 0, 127}));
  connect(powerDisturbances.Pdr1, building_ee.D1) annotation(
    Line(points = {{116, 206}, {130, 206}, {130, 40}}, color = {0, 0, 127}));
  connect(powerDisturbances.Pdr2, building_ee.D2) annotation(
    Line(points = {{110, 206}, {110, 120}, {108, 120}, {108, 40}}, color = {0, 0, 127}));
  connect(powerDisturbances.Pdr3, building_ee.D3) annotation(
    Line(points = {{104, 206}, {82, 206}, {82, 40}}, color = {0, 0, 127}));
  connect(building_ee.door1, doorOpenings.door13open) annotation(
    Line(points = {{62, -90}, {-158, -90}, {-158, 104}, {-288, 104}}, color = {255, 0, 255}));
  connect(building_ee.door2, doorOpenings.door23open) annotation(
    Line(points = {{62, -110}, {-248, -110}, {-248, 80}, {-288, 80}}, color = {255, 0, 255}));
  connect(building_ee.door3, doorOpenings.door3eopen) annotation(
    Line(points = {{62, -136}, {-242, -136}, {-242, 54}, {-288, 54}}, color = {255, 0, 255}));
  connect(add3.u1, const.y) annotation(
    Line(points = {{-216, -76}, {-328, -76}, {-328, -18}}, color = {0, 0, 127}));
  connect(add2.u1, const.y) annotation(
    Line(points = {{-202, -6}, {-328, -6}, {-328, -18}}, color = {0, 0, 127}));
  annotation(
    Diagram(coordinateSystem(extent = {{-380, 240}, {240, -160}})));
end Building_thermal_electrical_comparison;
