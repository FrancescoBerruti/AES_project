within AES_project_2023_2024.ProjectGroupWork;

model Building_thermal_electrical_comparison
  Building_ee building_ee annotation(
    Placement(transformation(origin = {147.5, -69}, extent = {{-45.5, -91}, {45.5, 91}})));
  AES_project_2023_2024.ProcessComponents.HCactuator hcRoom1 annotation(
    Placement(transformation(origin = {-36, 18}, extent = {{-10, -10}, {10, 10}})));
  AES_project_2023_2024.ProcessComponents.HCactuator hcRoom2 annotation(
    Placement(transformation(origin = {-46, -16}, extent = {{-10, -10}, {10, 10}})));
  AES_project_2023_2024.ProcessComponents.HCactuator hRoom3 annotation(
    Placement(transformation(origin = {-50, -54}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add(k2 = -1) annotation(
    Placement(transformation(origin = {10, 16}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add1(k2 = -1) annotation(
    Placement(transformation(origin = {8, -14}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add11(k2 = -1) annotation(
    Placement(transformation(origin = {2, -54}, extent = {{-10, -10}, {10, 10}})));
  AES_project_2023_2024.ProcessComponents.Building building annotation(
    Placement(transformation(origin = {130, 106}, extent = {{-40, -60}, {40, 60}})));
  AES_project_2023_2024.ProcessComponents.PowerDisturbances powerDisturbances annotation(
    Placement(transformation(origin = {98, 284}, extent = {{-24, -24}, {24, 24}}, rotation = -90)));
  AES_project_2023_2024.ProcessComponents.TePrad tePrad1(Temax(displayUnit = "K"), Temin(displayUnit = "K")) annotation(
    Placement(transformation(origin = {200, 298}, extent = {{-26, -26}, {26, 26}}, rotation = -90)));
  AES_project_2023_2024.ProcessComponents.HCactuator hcRoom11 annotation(
    Placement(transformation(origin = {-34, 156}, extent = {{-10, -10}, {10, 10}})));
  AES_project_2023_2024.ProcessComponents.HCactuator hcRoom21 annotation(
    Placement(transformation(origin = {-38, 126}, extent = {{-10, -10}, {10, 10}})));
  AES_project_2023_2024.ProcessComponents.HCactuator hRoom31 annotation(
    Placement(transformation(origin = {-34, 96}, extent = {{-10, -10}, {10, 10}})));
  ProcessComponents.DoorOpenings doorOpenings annotation(
    Placement(transformation(origin = {-40, 64}, extent = {{-14, -14}, {14, 14}})));
  Modelica.Blocks.Sources.Sine uh(amplitude = 1.2, f = 1/1800) annotation(
    Placement(transformation(origin = {-334, -8}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Sine uc(amplitude = 1.5, f = 1/3600, phase = 1.570796326794897) annotation(
    Placement(transformation(origin = {-334, -78}, extent = {{-10, -10}, {10, 10}})));
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
    Line(points = {{-38, -48}, {-10, -48}}, color = {0, 0, 127}));
  connect(hRoom3.Pc, add11.u2) annotation(
    Line(points = {{-38, -60}, {-10, -60}}, color = {0, 0, 127}));
  connect(add11.y, building_ee.P3) annotation(
    Line(points = {{13, -54}, {13, -33}, {64, -33}}, color = {0, 0, 127}));
  connect(add1.y, building_ee.P2) annotation(
    Line(points = {{19, -14}, {63, -14}, {63, -12}, {64, -12}}, color = {0, 0, 127}));
  connect(add.y, building_ee.P1) annotation(
    Line(points = {{21, 16}, {21, 7}, {64, 7}}, color = {0, 0, 127}));
  connect(hRoom31.Pc, building.Pcr3) annotation(
    Line(points = {{-22, 90}, {66, 90}, {66, 106}, {86, 106}}, color = {0, 0, 127}));
  connect(hRoom31.Ph, building.Phr3) annotation(
    Line(points = {{-22, 102}, {31, 102}, {31, 114}, {86, 114}}, color = {0, 0, 127}));
  connect(hcRoom21.Pc, building.Pcr2) annotation(
    Line(points = {{-26, 120}, {30, 120}, {30, 126}, {86, 126}}, color = {0, 0, 127}));
  connect(hcRoom21.Ph, building.Phr2) annotation(
    Line(points = {{-26, 132}, {30, 132}, {30, 134}, {86, 134}}, color = {0, 0, 127}));
  connect(hcRoom11.Pc, building.Pcr1) annotation(
    Line(points = {{-22, 150}, {32, 150}, {32, 146}, {86, 146}}, color = {0, 0, 127}));
  connect(hcRoom11.Ph, building.Phr1) annotation(
    Line(points = {{-22, 162}, {34, 162}, {34, 154}, {86, 154}}, color = {0, 0, 127}));
  connect(tePrad1.Te, building.Te) annotation(
    Line(points = {{216, 267}, {216, 197}, {158, 197}, {158, 170}}, color = {0, 0, 127}));
  connect(tePrad1.Prad, building.Prad) annotation(
    Line(points = {{184, 267}, {184, 215.5}, {146, 215.5}, {146, 170}}, color = {0, 0, 127}));
  connect(tePrad1.Te, building_ee.Te) annotation(
    Line(points = {{216, 267}, {216, 148.5}, {204, 148.5}, {204, 30}}, color = {0, 0, 127}));
  connect(tePrad1.Prad, building_ee.PRad) annotation(
    Line(points = {{184, 267}, {184, 29}}, color = {0, 0, 127}));
  connect(powerDisturbances.Pdr3, building.Pdr3) annotation(
    Line(points = {{84, 255}, {84, 193.5}, {98, 193.5}, {98, 170}}, color = {0, 0, 127}));
  connect(powerDisturbances.Pdr2, building.Pdr2) annotation(
    Line(points = {{98, 255}, {98, 198}, {110, 198}, {110, 170}}, color = {0, 0, 127}));
  connect(powerDisturbances.Pdr1, building.Pdr1) annotation(
    Line(points = {{112, 255}, {122, 255}, {122, 170}}, color = {0, 0, 127}));
  connect(powerDisturbances.Pdr1, building_ee.D1) annotation(
    Line(points = {{112, 255}, {112, 29}, {131, 29}}, color = {0, 0, 127}));
  connect(powerDisturbances.Pdr2, building_ee.D2) annotation(
    Line(points = {{98, 255}, {98, 131}, {109, 131}, {109, 29}}, color = {0, 0, 127}));
  connect(powerDisturbances.Pdr3, building_ee.D3) annotation(
    Line(points = {{84, 255}, {84, 146.5}, {85, 146.5}, {85, 29}}, color = {0, 0, 127}));
  connect(building.door13open, doorOpenings.door13open) annotation(
    Line(points = {{86, 90}, {72, 90}, {72, 72}, {-23, 72}}, color = {255, 0, 255}));
  connect(doorOpenings.door23open, building.door23open) annotation(
    Line(points = {{-23, 64}, {76, 64}, {76, 78}, {86, 78}}, color = {255, 0, 255}));
  connect(building.door3eopen, doorOpenings.door3eopen) annotation(
    Line(points = {{86, 66}, {84, 66}, {84, 56}, {-23, 56}}, color = {255, 0, 255}));
  connect(uc.y, hRoom3.uc01) annotation(
    Line(points = {{-322, -78}, {-191, -78}, {-191, -60}, {-62, -60}}, color = {0, 0, 127}));
  connect(hcRoom2.uc01, uc.y) annotation(
    Line(points = {{-58, -22}, {-292, -22}, {-292, -78}, {-322, -78}}, color = {0, 0, 127}));
  connect(hcRoom1.uc01, uc.y) annotation(
    Line(points = {{-48, 12}, {-292, 12}, {-292, -78}, {-322, -78}}, color = {0, 0, 127}));
  connect(hRoom31.uc01, uc.y) annotation(
    Line(points = {{-46, 90}, {-292, 90}, {-292, -78}, {-322, -78}}, color = {0, 0, 127}));
  connect(hcRoom21.uc01, uc.y) annotation(
    Line(points = {{-50, 120}, {-292, 120}, {-292, -78}, {-322, -78}}, color = {0, 0, 127}));
  connect(hcRoom11.uc01, uc.y) annotation(
    Line(points = {{-46, 150}, {-292, 150}, {-292, -78}, {-322, -78}}, color = {0, 0, 127}));
  connect(hcRoom11.uh01, uh.y) annotation(
    Line(points = {{-46, 162}, {-310, 162}, {-310, -8}, {-322, -8}}, color = {0, 0, 127}));
  connect(hcRoom21.uh01, uh.y) annotation(
    Line(points = {{-50, 132}, {-310, 132}, {-310, -8}, {-322, -8}}, color = {0, 0, 127}));
  connect(hRoom31.uh01, uh.y) annotation(
    Line(points = {{-46, 102}, {-310, 102}, {-310, -8}, {-322, -8}}, color = {0, 0, 127}));
  connect(hcRoom1.uh01, uh.y) annotation(
    Line(points = {{-48, 24}, {-310, 24}, {-310, -8}, {-322, -8}}, color = {0, 0, 127}));
  connect(hcRoom2.uh01, uh.y) annotation(
    Line(points = {{-58, -10}, {-310, -10}, {-310, -8}, {-322, -8}}, color = {0, 0, 127}));
  connect(hRoom3.uh01, uh.y) annotation(
    Line(points = {{-62, -48}, {-310, -48}, {-310, -8}, {-322, -8}}, color = {0, 0, 127}));
  connect(doorOpenings.door13open, building_ee.door1) annotation(
    Line(points = {{-23, 72}, {24, 72}, {24, -100}, {64, -100}}, color = {255, 0, 255}));
  connect(doorOpenings.door23open, building_ee.door2) annotation(
    Line(points = {{-23, 64}, {30, 64}, {30, -128}, {64, -128}}, color = {255, 0, 255}));
  connect(doorOpenings.door3eopen, building_ee.door3) annotation(
    Line(points = {{-23, 56}, {42, 56}, {42, -146}, {64, -146}}, color = {255, 0, 255}));
  annotation(
    Diagram(coordinateSystem(extent = {{-380, 260}, {260, -280}})));
end Building_thermal_electrical_comparison;
