within AES_project_2023_2024.ProjectGroupWork;

model Building_thermal_electrical_comparison
  Building_ee building_ee annotation(
    Placement(transformation(origin = {146.5, -107}, extent = {{-28.5, -57}, {28.5, 57}})));
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
  AES_project_2023_2024.ProcessComponents.Building building annotation(
    Placement(transformation(origin = {130, 106}, extent = {{-40, -60}, {40, 60}})));
  AES_project_2023_2024.ProcessComponents.PowerDisturbances powerDisturbances annotation(
    Placement(transformation(origin = {110, 218}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  AES_project_2023_2024.ProcessComponents.TePrad tePrad1(Temax(displayUnit = "K"), Temin (displayUnit = "K"))  annotation(
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
  Modelica.Blocks.Sources.Sine uh(amplitude = 1.2, f = 1/1800) annotation(
    Placement(transformation(origin = {-288, -6}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Sine uc(amplitude = 1.5, f = 1/3600, phase = 1.570796326794897) annotation(
    Placement(transformation(origin = {-332, -80}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Constant const(k = 0)  annotation(
    Placement(transformation(origin = {-280, -52}, extent = {{-10, -10}, {10, 10}})));
  ProcessComponents.DoorOpenings doorOpenings(hod_start = 0.1)  annotation(
    Placement(transformation(origin = {-217, 79}, extent = {{-41, -41}, {41, 41}})));
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
    Line(points = {{18, -90}, {18, -84}, {94, -84}}, color = {0, 0, 127}));
  connect(add1.y, building_ee.P2) annotation(
    Line(points = {{16, -62}, {80, -62}, {80, -71}, {94, -71}}, color = {0, 0, 127}));
  connect(add.y, building_ee.P1) annotation(
    Line(points = {{20, -28}, {68, -28}, {68, -59}, {94, -59}}, color = {0, 0, 127}));
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
  connect(powerDisturbances.Pdr3, building.Pdr3) annotation(
    Line(points = {{104, 206}, {104, 187}, {98, 187}, {98, 170}}, color = {0, 0, 127}));
  connect(powerDisturbances.Pdr2, building.Pdr2) annotation(
    Line(points = {{110, 206}, {110, 170}}, color = {0, 0, 127}));
  connect(powerDisturbances.Pdr1, building.Pdr1) annotation(
    Line(points = {{116, 206}, {116, 198}, {122, 198}, {122, 170}}, color = {0, 0, 127}));
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
  connect(tePrad1.Te, building_ee.Te) annotation(
    Line(points = {{160, 206}, {160, 192}, {182, 192}, {182, -45}}, color = {0, 0, 127}));
  connect(tePrad1.Prad, building_ee.PRad) annotation(
    Line(points = {{148, 206}, {148, 192}, {169, 192}, {169, -45}}, color = {0, 0, 127}));
  connect(building_ee.D1, powerDisturbances.Pdr3) annotation(
    Line(points = {{109, -45}, {109, 90}, {104, 90}, {104, 206}}, color = {0, 0, 127}));
  connect(building_ee.D2, powerDisturbances.Pdr2) annotation(
    Line(points = {{123, -45}, {123, 89}, {110, 89}, {110, 206}}, color = {0, 0, 127}));
  connect(building_ee.D3, powerDisturbances.Pdr1) annotation(
    Line(points = {{136, -45}, {136, 88}, {116, 88}, {116, 206}}, color = {0, 0, 127}));
  connect(uh.y, add2.u1) annotation(
    Line(points = {{-276, -6}, {-202, -6}}, color = {0, 0, 127}));
  connect(uc.y, add3.u1) annotation(
    Line(points = {{-321, -80}, {-266.5, -80}, {-266.5, -76}, {-216, -76}}, color = {0, 0, 127}));
  connect(add2.u2, const.y) annotation(
    Line(points = {{-202, -18}, {-238, -18}, {-238, -52}, {-268, -52}}, color = {0, 0, 127}));
  connect(const.y, add3.u2) annotation(
    Line(points = {{-268, -52}, {-254, -52}, {-254, -88}, {-216, -88}}, color = {0, 0, 127}));
  connect(doorOpenings.door13open, building.door13open) annotation(
    Line(points = {{-168, 104}, {86, 104}, {86, 90}}, color = {255, 0, 255}));
  connect(doorOpenings.door23open, building.door23open) annotation(
    Line(points = {{-168, 79}, {86, 79}, {86, 78}}, color = {255, 0, 255}));
  connect(doorOpenings.door3eopen, building.door3eopen) annotation(
    Line(points = {{-168, 54}, {86, 54}, {86, 66}}, color = {255, 0, 255}));
  connect(building_ee.door1, doorOpenings.door13open) annotation(
    Line(points = {{94, -126}, {84, -126}, {84, 104}, {-168, 104}}, color = {255, 0, 255}));
  connect(building_ee.door2, doorOpenings.door23open) annotation(
    Line(points = {{94, -142}, {-168, -142}, {-168, 79}}, color = {255, 0, 255}));
  connect(building_ee.door3, doorOpenings.door3eopen) annotation(
    Line(points = {{94, -154}, {-168, -154}, {-168, 54}}, color = {255, 0, 255}));
  annotation(
    Diagram(coordinateSystem(extent = {{-300, 240}, {200, -160}})));
end Building_thermal_electrical_comparison;
