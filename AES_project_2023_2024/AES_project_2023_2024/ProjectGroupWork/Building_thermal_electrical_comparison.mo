within AES_project_2023_2024.ProjectGroupWork;

model Building_thermal_electrical_comparison
  ProjectIntroExamples.Example_002_building_open_loop example_002_building_open_loop annotation(
    Placement(transformation(origin = {-87, 61}, extent = {{-51, -41}, {51, 41}})));
  Building_ee building_ee annotation(
    Placement(transformation(origin = {98.5, -63}, extent = {{-28.5, -57}, {28.5, 57}})));
  AES_project_2023_2024.ProcessComponents.HCactuator hcRoom1 annotation(
    Placement(transformation(origin = {-114, -26}, extent = {{-10, -10}, {10, 10}})));
  AES_project_2023_2024.ProcessComponents.HCactuator hcRoom2 annotation(
    Placement(transformation(origin = {-114, -58}, extent = {{-10, -10}, {10, 10}})));
  AES_project_2023_2024.ProcessComponents.HCactuator hRoom3 annotation(
    Placement(transformation(origin = {-114, -86}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Sine uh(amplitude = 1.2, f = 1/1800) annotation(
    Placement(transformation(origin = {-234, -52}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Sine uc(amplitude = 1.5, f = 1/3600, phase = 1.570796326794897) annotation(
    Placement(transformation(origin = {-234, -92}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add(k2 = -1)  annotation(
    Placement(transformation(origin = {-78, -24}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add1(k2 = -1) annotation(
    Placement(transformation(origin = {-82, -58}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add11(k2 = -1) annotation(
    Placement(transformation(origin = {-80, -86}, extent = {{-10, -10}, {10, 10}})));
  AES_project_2023_2024.ProcessComponents.PowerDisturbances powerDisturbances4 annotation(
    Placement(transformation(origin = {74, 80}, extent = {{-16, -16}, {16, 16}}, rotation = -90)));
  AES_project_2023_2024.ProcessComponents.DoorOpenings doorOpenings annotation(
    Placement(transformation(origin = {-48, -104}, extent = {{-10, -10}, {10, 10}})));
  AES_project_2023_2024.ProcessComponents.TePrad tePrad annotation(
    Placement(transformation(origin = {128, 42}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
equation
  connect(uh.y, hcRoom1.uh01) annotation(
    Line(points = {{-223, -52}, {-144, -52}, {-144, -20}, {-126, -20}}, color = {0, 0, 127}));
  connect(uh.y, hcRoom2.uh01) annotation(
    Line(points = {{-223, -52}, {-126, -52}}, color = {0, 0, 127}));
  connect(uh.y, hRoom3.uh01) annotation(
    Line(points = {{-223, -52}, {-144, -52}, {-144, -80}, {-126, -80}}, color = {0, 0, 127}));
  connect(uc.y, hcRoom1.uc01) annotation(
    Line(points = {{-223, -92}, {-150, -92}, {-150, -32}, {-126, -32}}, color = {0, 0, 127}));
  connect(uc.y, hcRoom2.uc01) annotation(
    Line(points = {{-223, -92}, {-150, -92}, {-150, -64}, {-126, -64}}, color = {0, 0, 127}));
  connect(uc.y, hRoom3.uc01) annotation(
    Line(points = {{-223, -92}, {-126, -92}}, color = {0, 0, 127}));
  connect(hcRoom1.Ph, add.u1) annotation(
    Line(points = {{-102, -20}, {-97, -20}, {-97, -18}, {-90, -18}}, color = {0, 0, 127}));
  connect(hcRoom1.Pc, add.u2) annotation(
    Line(points = {{-102, -32}, {-97, -32}, {-97, -30}, {-90, -30}}, color = {0, 0, 127}));
  connect(hRoom3.Ph, add11.u1) annotation(
    Line(points = {{-102, -80}, {-92, -80}}, color = {0, 0, 127}));
  connect(hRoom3.Pc, add11.u2) annotation(
    Line(points = {{-102, -92}, {-92, -92}}, color = {0, 0, 127}));
  connect(hcRoom2.Pc, add1.u2) annotation(
    Line(points = {{-102, -64}, {-94, -64}}, color = {0, 0, 127}));
  connect(hcRoom2.Ph, add1.u1) annotation(
    Line(points = {{-102, -52}, {-94, -52}}, color = {0, 0, 127}));
  connect(add.y, building_ee.P1) annotation(
    Line(points = {{-67, -24}, {-25.5, -24}, {-25.5, -17}, {46, -17}}, color = {0, 0, 127}));
  connect(add1.y, building_ee.P2) annotation(
    Line(points = {{-70, -58}, {-26, -58}, {-26, -31}, {46, -31}}, color = {0, 0, 127}));
  connect(add11.y, building_ee.P3) annotation(
    Line(points = {{-68, -86}, {-4, -86}, {-4, -42}, {46, -42}, {46, -44}}, color = {0, 0, 127}));
  connect(add1.y, building_ee.P2) annotation(
    Line(points = {{-70, -58}, {-26, -58}, {-26, -32}, {20, -32}}, color = {0, 0, 127}));
  connect(add11.y, building_ee.P3) annotation(
    Line(points = {{-68, -86}, {-4, -86}, {-4, -42}, {20, -42}, {20, -44}}, color = {0, 0, 127}));
  connect(powerDisturbances4.Pdr3, building_ee.d3) annotation(
    Line(points = {{64, 61}, {64, 33.5}, {58, 33.5}, {58, -2}}, color = {0, 0, 127}));
  connect(powerDisturbances4.Pdr2, building_ee.d2) annotation(
    Line(points = {{74, 61}, {74, 0}}, color = {0, 0, 127}));
  connect(powerDisturbances4.Pdr1, building_ee.d1) annotation(
    Line(points = {{84, 61}, {84, 25.5}, {90, 25.5}, {90, -2}}, color = {0, 0, 127}));
  connect(tePrad.Prad, building_ee.Prad) annotation(
    Line(points = {{122, 30}, {120, 30}, {120, 0}}, color = {0, 0, 127}));
  connect(tePrad.Te, building_ee.Te) annotation(
    Line(points = {{134, 30}, {134, 0}}, color = {0, 0, 127}));
  connect(doorOpenings.door13open, building_ee.door13) annotation(
    Line(points = {{-36, -98}, {46, -98}, {46, -86}}, color = {255, 0, 255}));
  connect(doorOpenings.door23open, building_ee.door23) annotation(
    Line(points = {{-36, -104}, {46, -104}, {46, -98}}, color = {255, 0, 255}));
  connect(doorOpenings.door3eopen, building_ee.door3e) annotation(
    Line(points = {{-36, -110}, {46, -110}}, color = {255, 0, 255}));
end Building_thermal_electrical_comparison;
