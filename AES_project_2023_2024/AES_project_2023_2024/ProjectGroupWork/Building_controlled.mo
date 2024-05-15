within AES_project_2023_2024.ProjectGroupWork;

model Building_controlled
  Building_ee building_ee annotation(
    Placement(transformation(origin = {145.5, -59}, extent = {{-45.5, -91}, {45.5, 91}})));
  AES_project_2023_2024.ProcessComponents.PowerDisturbances powerDisturbances annotation(
    Placement(transformation(origin = {108, 106}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  AES_project_2023_2024.ProcessComponents.TePrad tePrad1(Temax(displayUnit = "K"), Temin(displayUnit = "K")) annotation(
    Placement(transformation(origin = {192, 96}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  ProcessComponents.DoorOpenings doorOpenings annotation(
    Placement(transformation(origin = {-54, -172}, extent = {{-22, -22}, {22, 22}})));
  Modelica.Blocks.Sources.CombiTimeTable SetPointTable(columns = {2, 3, 4}, extrapolation = Modelica.Blocks.Types.Extrapolation.Periodic, offset = {273.15}, table = {{0, 10, 10, 15}, {5, 10, 10, 15}, {6, 10, 18, 15}, {7, 20, 18, 15}, {8, 20, 18, 16.5}, {9, 20, 18, 18}, {17, 20, 18, 18}, {18, 15, 18, 18}, {20, 15, 10, 18}, {21, 15, 10, 18}, {22, 10, 10, 15}, {24, 10, 10, 15}}, timeEvents = Modelica.Blocks.Types.TimeEvents.Always, timeScale = 3600) annotation(
    Placement(transformation(origin = {-402, 16}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Continuous.FirstOrder system1(T = 1000, initType = Modelica.Blocks.Types.Init.InitialOutput, k = 1, y_start = 273.15) annotation(
    Placement(transformation(origin = {-338, 56}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Continuous.FirstOrder system2(T = 2000, initType = Modelica.Blocks.Types.Init.InitialOutput, k = 1, y_start = 273.15) annotation(
    Placement(transformation(origin = {-338, 16}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Continuous.FirstOrder system3(T = 3000, initType = Modelica.Blocks.Types.Init.InitialOutput, k = 1, y_start = 273.15) annotation(
    Placement(transformation(origin = {-338, -62}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.MatrixGain K (K = [1, 0, 0; 0, 1, 0; 0, 0, 1]) annotation(
    Placement(transformation(origin = {52, 152}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Blocks.Routing.DeMultiplex3 deMultiplex3 annotation(
    Placement(transformation(origin = {-92, 152}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Routing.Multiplex3 multiplex3 annotation(
    Placement(transformation(origin = {250, 54}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  AES_project_2023_2024.ProcessComponents.HCactuator hcRoom1 annotation(
    Placement(transformation(origin = {-6, 84}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add(k2 = -1) annotation(
    Placement(transformation(origin = {36, 84}, extent = {{-10, -10}, {10, 10}})));
  AES.ControlBlocks.ActuationSchemes.SplitRange01 splitRange01(DeadZone = 0.0) annotation(
    Placement(transformation(origin = {-44, 84}, extent = {{-10, -10}, {10, 10}})));
  AES_project_2023_2024.ProcessComponents.HCactuator hcRoom11 annotation(
    Placement(transformation(origin = {-12, 6}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add1(k2 = -1) annotation(
    Placement(transformation(origin = {30, 6}, extent = {{-10, -10}, {10, 10}})));
  AES.ControlBlocks.ActuationSchemes.SplitRange01 splitRange011(DeadZone = 0.0) annotation(
    Placement(transformation(origin = {-50, 6}, extent = {{-10, -10}, {10, 10}})));
  AES_project_2023_2024.ProcessComponents.HCactuator hcRoom12 annotation(
    Placement(transformation(origin = {-4, -68}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add add2(k2 = -1) annotation(
    Placement(transformation(origin = {38, -68}, extent = {{-10, -10}, {10, 10}})));
  AES.ControlBlocks.ActuationSchemes.SplitRange01 splitRange012(DeadZone = 0.0) annotation(
    Placement(transformation(origin = {-42, -68}, extent = {{-10, -10}, {10, 10}})));
  StrictController strictController annotation(
    Placement(transformation(origin = {-228, 14}, extent = {{-33, -33}, {33, 33}})));
equation
  connect(tePrad1.Te, building_ee.Te) annotation(
    Line(points = {{198, 84}, {198, 62}, {202, 62}, {202, 40}}, color = {0, 0, 127}));
  connect(tePrad1.Prad, building_ee.PRad) annotation(
    Line(points = {{186, 84}, {186, 59.5}, {182, 59.5}, {182, 39}}, color = {0, 0, 127}));
  connect(powerDisturbances.Pdr1, building_ee.D1) annotation(
    Line(points = {{114, 94}, {114, 40}, {130, 40}}, color = {0, 0, 127}));
  connect(powerDisturbances.Pdr2, building_ee.D2) annotation(
    Line(points = {{108, 94}, {108, 40}}, color = {0, 0, 127}));
  connect(powerDisturbances.Pdr3, building_ee.D3) annotation(
    Line(points = {{102, 94}, {102, 57}, {82, 57}, {82, 40}}, color = {0, 0, 127}));
  connect(building_ee.door1, doorOpenings.door13open) annotation(
    Line(points = {{62, -90}, {5, -90}, {5, -159}, {-28, -159}}, color = {255, 0, 255}));
  connect(building_ee.door3, doorOpenings.door3eopen) annotation(
    Line(points = {{62, -136}, {3.5, -136}, {3.5, -185}, {-28, -185}}, color = {255, 0, 255}));
  connect(SetPointTable.y[1], system1.u) annotation(
    Line(points = {{-391, 16}, {-373, 16}, {-373, 56}, {-350, 56}}, color = {0, 0, 127}));
  connect(SetPointTable.y[2], system2.u) annotation(
    Line(points = {{-391, 16}, {-350, 16}}, color = {0, 0, 127}));
  connect(SetPointTable.y[3], system3.u) annotation(
    Line(points = {{-391, 16}, {-373, 16}, {-373, -62}, {-350, -62}}, color = {0, 0, 127}));
  connect(doorOpenings.door23open, building_ee.door2) annotation(
    Line(points = {{-28, -172}, {15, -172}, {15, -118}, {62, -118}}, color = {255, 0, 255}));
  connect(K.u, multiplex3.y) annotation(
    Line(points = {{64, 152}, {248, 152}, {248, 66}, {250, 66}}, color = {0, 0, 127}, thickness = 0.5));
  connect(K.y, deMultiplex3.u) annotation(
    Line(points = {{41, 152}, {-68, 152}}, color = {0, 0, 127}, thickness = 0.5));
  connect(building_ee.T1, multiplex3.u1[1]) annotation(
    Line(points = {{222, 14}, {244, 14}, {244, 42}}, color = {0, 0, 127}));
  connect(building_ee.T2, multiplex3.u2[1]) annotation(
    Line(points = {{222, -6}, {250, -6}, {250, 42}}, color = {0, 0, 127}));
  connect(building_ee.T3, multiplex3.u3[1]) annotation(
    Line(points = {{222, -24}, {258, -24}, {258, 42}}, color = {0, 0, 127}));
  connect(hcRoom1.Ph, add.u1) annotation(
    Line(points = {{6, 90}, {24, 90}}, color = {0, 0, 127}));
  connect(hcRoom1.Pc, add.u2) annotation(
    Line(points = {{6, 78}, {24, 78}}, color = {0, 0, 127}));
  connect(splitRange01.CSo01_neg, hcRoom1.uc01) annotation(
    Line(points = {{-32, 78}, {-18, 78}}, color = {0, 0, 127}));
  connect(hcRoom1.uh01, splitRange01.CSo01_pos) annotation(
    Line(points = {{-18, 90}, {-32, 90}}, color = {0, 0, 127}));
  connect(add.y, building_ee.P1) annotation(
    Line(points = {{48, 84}, {62, 84}, {62, 18}}, color = {0, 0, 127}));
  connect(hcRoom11.Ph, add1.u1) annotation(
    Line(points = {{0, 12}, {18, 12}}, color = {0, 0, 127}));
  connect(hcRoom11.Pc, add1.u2) annotation(
    Line(points = {{0, 0}, {18, 0}}, color = {0, 0, 127}));
  connect(splitRange011.CSo01_neg, hcRoom11.uc01) annotation(
    Line(points = {{-38, 0}, {-24, 0}}, color = {0, 0, 127}));
  connect(hcRoom11.uh01, splitRange011.CSo01_pos) annotation(
    Line(points = {{-24, 12}, {-38, 12}}, color = {0, 0, 127}));
  connect(add1.y, building_ee.P2) annotation(
    Line(points = {{42, 6}, {62, 6}, {62, -2}}, color = {0, 0, 127}));
  connect(hcRoom12.Ph, add2.u1) annotation(
    Line(points = {{8, -62}, {26, -62}}, color = {0, 0, 127}));
  connect(hcRoom12.Pc, add2.u2) annotation(
    Line(points = {{8, -74}, {26, -74}}, color = {0, 0, 127}));
  connect(splitRange012.CSo01_neg, hcRoom12.uc01) annotation(
    Line(points = {{-30, -74}, {-16, -74}}, color = {0, 0, 127}));
  connect(hcRoom12.uh01, splitRange012.CSo01_pos) annotation(
    Line(points = {{-16, -62}, {-30, -62}}, color = {0, 0, 127}));
  connect(add2.y, building_ee.P3) annotation(
    Line(points = {{50, -68}, {62, -68}, {62, -22}}, color = {0, 0, 127}));
  connect(system1.y, strictController.setpoint1) annotation(
    Line(points = {{-327, 56}, {-312, 56}, {-312, 58}, {-295, 58}}, color = {0, 0, 127}));
  connect(system2.y, strictController.setpoint2) annotation(
    Line(points = {{-327, 16}, {-295, 16}, {-295, 2}}, color = {0, 0, 127}));
  connect(system3.y, strictController.setpoint3) annotation(
    Line(points = {{-327, -62}, {-295, -62}, {-295, -54}}, color = {0, 0, 127}));
  connect(deMultiplex3.y1[1], strictController.y_meas1) annotation(
    Line(points = {{-114, 138}, {-294, 138}, {-294, 81}}, color = {0, 0, 127}));
  connect(deMultiplex3.y2[1], strictController.y_meas2) annotation(
    Line(points = {{-114, 152}, {-294, 152}, {-294, 31}}, color = {0, 0, 127}));
  connect(deMultiplex3.y3[1], strictController.y_meas3) annotation(
    Line(points = {{-114, 166}, {-294, 166}, {-294, -28}}, color = {0, 0, 127}));
  connect(strictController.u1, splitRange01.CSi01) annotation(
    Line(points = {{-172, 38}, {-106, 38}, {-106, 84}, {-56, 84}}, color = {0, 0, 127}));
  connect(strictController.u2, splitRange011.CSi01) annotation(
    Line(points = {{-172, 12}, {-62, 12}, {-62, 6}}, color = {0, 0, 127}));
  connect(splitRange012.CSi01, strictController.u3) annotation(
    Line(points = {{-54, -68}, {-172, -68}, {-172, -14}}, color = {0, 0, 127}));
  annotation(
    Diagram(coordinateSystem(extent = {{-180, 160}, {260, -240}})));
end Building_controlled;
