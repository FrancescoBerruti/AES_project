within AES_project_2023_2024.ProjectGroupWork;

model Building_controlled
  Building_ee building_ee annotation(
    Placement(transformation(origin = {145.5, -59}, extent = {{-45.5, -91}, {45.5, 91}})));
  AES_project_2023_2024.ProcessComponents.HCactuator hcRoom1 annotation(
    Placement(transformation(origin = {-48, 54}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add(k2 = -1) annotation(
    Placement(transformation(origin = {4, 54}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add1(k2 = -1) annotation(
    Placement(transformation(origin = {4, -28}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add11(k2 = -1) annotation(
    Placement(transformation(origin = {8, -86}, extent = {{-10, -10}, {10, 10}})));
  AES_project_2023_2024.ProcessComponents.PowerDisturbances powerDisturbances annotation(
    Placement(transformation(origin = {88, 84}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  AES_project_2023_2024.ProcessComponents.TePrad tePrad1(Temax(displayUnit = "K"), Temin(displayUnit = "K")) annotation(
    Placement(transformation(origin = {188, 92}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  ProcessComponents.DoorOpenings doorOpenings annotation(
    Placement(transformation(origin = {-7, -197}, extent = {{-41, -41}, {41, 41}})));
  Modelica.Blocks.Sources.CombiTimeTable SetPointTable(columns = {2, 3, 4}, extrapolation = Modelica.Blocks.Types.Extrapolation.Periodic, offset = {273.15}, table = {{0, 10, 10, 15}, {5, 10, 10, 15}, {6, 10, 18, 15}, {7, 20, 18, 15}, {8, 20, 18, 16.5}, {9, 20, 18, 18}, {17, 20, 18, 18}, {18, 15, 18, 18}, {20, 15, 10, 18}, {21, 15, 10, 18}, {22, 10, 10, 15}, {24, 10, 10, 15}}, timeEvents = Modelica.Blocks.Types.TimeEvents.Always, timeScale = 3600) annotation(
    Placement(transformation(origin = {-354, -42}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Continuous.FirstOrder system1(T = 1000, initType = Modelica.Blocks.Types.Init.InitialOutput, k = 1, y_start = 273.15) annotation(
    Placement(transformation(origin = {-276, 80}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Continuous.FirstOrder system2(T = 2000, initType = Modelica.Blocks.Types.Init.InitialOutput, k = 1, y_start = 273.15) annotation(
    Placement(transformation(origin = {-290, -34}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Continuous.FirstOrder system3(T = 3000, initType = Modelica.Blocks.Types.Init.InitialOutput, k = 1, y_start = 273.15) annotation(
    Placement(transformation(origin = {-294, -82}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add loop_error_sum(k1 = -1) annotation(
    Placement(transformation(origin = {-232, 54}, extent = {{-10, -10}, {10, 10}})));
  AES.ControlBlocks.ActuationSchemes.SplitRange01 splitRange01 annotation(
    Placement(transformation(origin = {-128, 54}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Continuous.TransferFunction equalizer annotation(
    Placement(transformation(origin = {-86, 80}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Continuous.TransferFunction equalizer1 annotation(
    Placement(transformation(origin = {-86, 32}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Gain controller_placeholder(k = 1) annotation(
    Placement(transformation(origin = {-178, 54}, extent = {{-10, -10}, {10, 10}})));
  AES_project_2023_2024.ProcessComponents.HCactuator hcRoom11 annotation(
    Placement(transformation(origin = {-46, -28}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add loop_error_sum1(k1 = -1) annotation(
    Placement(transformation(origin = {-230, -28}, extent = {{-10, -10}, {10, 10}})));
  AES.ControlBlocks.ActuationSchemes.SplitRange01 splitRange011 annotation(
    Placement(transformation(origin = {-126, -28}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Continuous.TransferFunction equalizer2 annotation(
    Placement(transformation(origin = {-84, -2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Continuous.TransferFunction equalizer11 annotation(
    Placement(transformation(origin = {-84, -50}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Gain controller_placeholder1(k = 1) annotation(
    Placement(transformation(origin = {-176, -28}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(hcRoom1.Ph, add.u1) annotation(
    Line(points = {{-36, 60}, {-8, 60}}, color = {0, 0, 127}));
  connect(hcRoom1.Pc, add.u2) annotation(
    Line(points = {{-36, 48}, {-8, 48}}, color = {0, 0, 127}));
  connect(add.y, building_ee.P1) annotation(
    Line(points = {{15, 54}, {15, 17}, {62, 17}}, color = {0, 0, 127}));
  connect(tePrad1.Te, building_ee.Te) annotation(
    Line(points = {{194, 80}, {194, 81}, {202, 81}, {202, 40}}, color = {0, 0, 127}));
  connect(tePrad1.Prad, building_ee.PRad) annotation(
    Line(points = {{182, 80}, {182, 39}}, color = {0, 0, 127}));
  connect(powerDisturbances.Pdr1, building_ee.D1) annotation(
    Line(points = {{94, 72}, {94, 40}, {130, 40}}, color = {0, 0, 127}));
  connect(powerDisturbances.Pdr2, building_ee.D2) annotation(
    Line(points = {{88, 72}, {108, 72}, {108, 40}}, color = {0, 0, 127}));
  connect(powerDisturbances.Pdr3, building_ee.D3) annotation(
    Line(points = {{82, 72}, {82, 40}}, color = {0, 0, 127}));
  connect(building_ee.door1, doorOpenings.door13open) annotation(
    Line(points = {{62, -90}, {42, -90}, {42, -172}}, color = {255, 0, 255}));
  connect(building_ee.door2, doorOpenings.door23open) annotation(
    Line(points = {{62, -110}, {42, -110}, {42, -197}}, color = {255, 0, 255}));
  connect(building_ee.door3, doorOpenings.door3eopen) annotation(
    Line(points = {{62, -136}, {42, -136}, {42, -222}}, color = {255, 0, 255}));
  connect(SetPointTable.y[1], system1.u) annotation(
    Line(points = {{-343, -42}, {-325, -42}, {-325, 80}, {-288, 80}}, color = {0, 0, 127}));
  connect(SetPointTable.y[2], system2.u) annotation(
    Line(points = {{-343, -42}, {-325, -42}, {-325, -34}, {-302, -34}}, color = {0, 0, 127}));
  connect(SetPointTable.y[3], system3.u) annotation(
    Line(points = {{-343, -42}, {-325, -42}, {-325, -82}, {-307, -82}}, color = {0, 0, 127}));
  connect(add11.y, building_ee.P3) annotation(
    Line(points = {{19, -86}, {30, -86}, {30, -22}, {62, -22}}, color = {0, 0, 127}));
  connect(system1.y, loop_error_sum.u2) annotation(
    Line(points = {{-264, 80}, {-255, 80}, {-255, 48}, {-244, 48}}, color = {0, 0, 127}));
  connect(loop_error_sum.u1, building_ee.T1) annotation(
    Line(points = {{-244, 60}, {-252, 60}, {-252, 110}, {236, 110}, {236, 14}, {222, 14}}, color = {0, 0, 127}));
  connect(splitRange01.CSo01_pos, equalizer.u) annotation(
    Line(points = {{-116, 60}, {-108, 60}, {-108, 80}, {-98, 80}}, color = {0, 0, 127}));
  connect(equalizer.y, hcRoom1.uh01) annotation(
    Line(points = {{-75, 80}, {-69, 80}, {-69, 60}, {-61, 60}}, color = {0, 0, 127}));
  connect(splitRange01.CSo01_neg, equalizer1.u) annotation(
    Line(points = {{-116, 48}, {-108, 48}, {-108, 32}, {-98, 32}}, color = {0, 0, 127}));
  connect(equalizer1.y, hcRoom1.uc01) annotation(
    Line(points = {{-75, 32}, {-69, 32}, {-69, 48}, {-61, 48}}, color = {0, 0, 127}));
  connect(loop_error_sum.y, controller_placeholder.u) annotation(
    Line(points = {{-221, 54}, {-191, 54}}, color = {0, 0, 127}));
  connect(controller_placeholder.y, splitRange01.CSi01) annotation(
    Line(points = {{-167, 54}, {-141, 54}}, color = {0, 0, 127}));
  connect(splitRange011.CSo01_pos, equalizer2.u) annotation(
    Line(points = {{-114, -22}, {-106, -22}, {-106, -2}, {-96, -2}}, color = {0, 0, 127}));
  connect(equalizer2.y, hcRoom11.uh01) annotation(
    Line(points = {{-73, -2}, {-67, -2}, {-67, -22}, {-59, -22}}, color = {0, 0, 127}));
  connect(splitRange011.CSo01_neg, equalizer11.u) annotation(
    Line(points = {{-114, -34}, {-106, -34}, {-106, -50}, {-96, -50}}, color = {0, 0, 127}));
  connect(equalizer11.y, hcRoom11.uc01) annotation(
    Line(points = {{-73, -50}, {-67, -50}, {-67, -34}, {-59, -34}}, color = {0, 0, 127}));
  connect(loop_error_sum1.y, controller_placeholder1.u) annotation(
    Line(points = {{-219, -28}, {-189, -28}}, color = {0, 0, 127}));
  connect(controller_placeholder1.y, splitRange011.CSi01) annotation(
    Line(points = {{-165, -28}, {-139, -28}}, color = {0, 0, 127}));
  connect(add1.u1, hcRoom11.Ph) annotation(
    Line(points = {{-8, -22}, {-34, -22}}, color = {0, 0, 127}));
  connect(add1.u2, hcRoom11.Pc) annotation(
    Line(points = {{-8, -34}, {-34, -34}}, color = {0, 0, 127}));
  connect(add1.y, building_ee.P2) annotation(
    Line(points = {{15, -28}, {15, -2}, {62, -2}}, color = {0, 0, 127}));
  connect(loop_error_sum1.u1, building_ee.T2) annotation(
    Line(points = {{-242, -22}, {-248, -22}, {-248, 8}, {-294, 8}, {-294, 118}, {246, 118}, {246, -6}, {222, -6}}, color = {0, 0, 127}));
  connect(system2.y, loop_error_sum1.u2) annotation(
    Line(points = {{-278, -34}, {-242, -34}}, color = {0, 0, 127}));
  annotation(
    Diagram(coordinateSystem(extent = {{-380, 240}, {240, -160}})));
end Building_controlled;
