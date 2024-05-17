within AES_project_2023_2024.ProjectGroupWork;

model Building_controlled
  Building_ee building_ee annotation(
    Placement(transformation(origin = {147.5, -59}, extent = {{-45.5, -91}, {45.5, 91}})));
  AES_project_2023_2024.ProcessComponents.PowerDisturbances powerDisturbances annotation(
    Placement(transformation(origin = {108, 106}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  AES_project_2023_2024.ProcessComponents.TePrad tePrad1(Temax(displayUnit = "degC"), Temin(displayUnit = "degC")) annotation(
    Placement(transformation(origin = {192, 96}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  ProcessComponents.DoorOpenings doorOpenings annotation(
    Placement(transformation(origin = {-92, -114}, extent = {{-22, -22}, {22, 22}})));
  Modelica.Blocks.Sources.CombiTimeTable SetPointTable(columns = {2, 3, 4}, extrapolation = Modelica.Blocks.Types.Extrapolation.Periodic, offset = {273.15}, table = {{0, 10, 10, 15}, {5, 10, 10, 15}, {6, 10, 18, 15}, {7, 20, 18, 15}, {8, 20, 18, 16.5}, {9, 20, 18, 18}, {17, 20, 18, 18}, {18, 15, 18, 18}, {20, 15, 10, 18}, {21, 15, 10, 18}, {22, 10, 10, 15}, {24, 10, 10, 15}}, timeEvents = Modelica.Blocks.Types.TimeEvents.Always, timeScale = 3600) annotation(
    Placement(transformation(origin = {-434, 12}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.MatrixGain K (K = [2269.23400000000, 0, 154.286000000000; 0, 435.703000000000, 102.857000000000; 154.286000000000, 102.857000000000, -122.503000000000]) annotation(
    Placement(transformation(origin = {36, 158}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
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
    Placement(transformation(origin = {-226, 14}, extent = {{-33, -33}, {33, 33}})));
  Modelica.Blocks.Sources.RealExpression T1(y = building_ee.T1)  annotation(
    Placement(transformation(origin = {-360, 84}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.RealExpression T11(y = building_ee.T2) annotation(
    Placement(transformation(origin = {-330, 36}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.RealExpression T111(y = building_ee.T3) annotation(
    Placement(transformation(origin = {-334, -28}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Routing.DeMultiplex3 deMultiplex3 annotation(
    Placement(transformation(origin = {-100, 158}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Routing.Multiplex3 multiplex3 annotation(
    Placement(transformation(origin = {254, 36}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
equation
  connect(tePrad1.Te, building_ee.Te) annotation(
    Line(points = {{198, 84}, {198, 62}, {204, 62}, {204, 40}}, color = {0, 0, 127}));
  connect(tePrad1.Prad, building_ee.PRad) annotation(
    Line(points = {{186, 84}, {186, 59.5}, {184, 59.5}, {184, 39}}, color = {0, 0, 127}));
  connect(powerDisturbances.Pdr1, building_ee.D1) annotation(
    Line(points = {{114, 94}, {114, 39}, {131, 39}}, color = {0, 0, 127}));
  connect(powerDisturbances.Pdr2, building_ee.D2) annotation(
    Line(points = {{108, 94}, {108, 67}, {109, 67}, {109, 39}}, color = {0, 0, 127}));
  connect(powerDisturbances.Pdr3, building_ee.D3) annotation(
    Line(points = {{102, 94}, {102, 57}, {85, 57}, {85, 39}}, color = {0, 0, 127}));
  connect(building_ee.door1, doorOpenings.door13open) annotation(
    Line(points = {{64, -89}, {5, -89}, {5, -101}, {-66, -101}}, color = {255, 0, 255}));
  connect(building_ee.door3, doorOpenings.door3eopen) annotation(
    Line(points = {{64, -135}, {3.5, -135}, {3.5, -127}, {-66, -127}}, color = {255, 0, 255}));
  connect(doorOpenings.door23open, building_ee.door2) annotation(
    Line(points = {{-66, -114}, {13, -114}, {13, -118}, {64, -118}}, color = {255, 0, 255}));
  connect(K.u, multiplex3.y) annotation(
    Line(points = {{48, 158}, {254, 158}, {254, 47}}, color = {0, 0, 127}, thickness = 0.5));
  connect(K.y, deMultiplex3.u) annotation(
    Line(points = {{25, 158}, {-76, 158}}, color = {0, 0, 127}, thickness = 0.5));
  connect(building_ee.T1, multiplex3.u1[1]) annotation(
    Line(points = {{224, 15}, {224, 24}, {247, 24}}, color = {0, 0, 127}));
  connect(building_ee.T2, multiplex3.u2[1]) annotation(
    Line(points = {{225, -5}, {225, 24}, {254, 24}}, color = {0, 0, 127}));
  connect(building_ee.T3, multiplex3.u3[1]) annotation(
    Line(points = {{225, -24}, {261, -24}, {261, 24}}, color = {0, 0, 127}));
  connect(hcRoom1.Ph, add.u1) annotation(
    Line(points = {{6, 90}, {24, 90}}, color = {0, 0, 127}));
  connect(hcRoom1.Pc, add.u2) annotation(
    Line(points = {{6, 78}, {24, 78}}, color = {0, 0, 127}));
  connect(splitRange01.CSo01_neg, hcRoom1.uc01) annotation(
    Line(points = {{-32, 78}, {-18, 78}}, color = {0, 0, 127}));
  connect(hcRoom1.uh01, splitRange01.CSo01_pos) annotation(
    Line(points = {{-18, 90}, {-32, 90}}, color = {0, 0, 127}));
  connect(add.y, building_ee.P1) annotation(
    Line(points = {{48, 84}, {48, 17}, {64, 17}}, color = {0, 0, 127}));
  connect(hcRoom11.Ph, add1.u1) annotation(
    Line(points = {{0, 12}, {18, 12}}, color = {0, 0, 127}));
  connect(hcRoom11.Pc, add1.u2) annotation(
    Line(points = {{0, 0}, {18, 0}}, color = {0, 0, 127}));
  connect(splitRange011.CSo01_neg, hcRoom11.uc01) annotation(
    Line(points = {{-38, 0}, {-24, 0}}, color = {0, 0, 127}));
  connect(hcRoom11.uh01, splitRange011.CSo01_pos) annotation(
    Line(points = {{-24, 12}, {-38, 12}}, color = {0, 0, 127}));
  connect(add1.y, building_ee.P2) annotation(
    Line(points = {{42, 6}, {62, 6}, {62, -2}, {64, -2}}, color = {0, 0, 127}));
  connect(hcRoom12.Ph, add2.u1) annotation(
    Line(points = {{8, -62}, {26, -62}}, color = {0, 0, 127}));
  connect(hcRoom12.Pc, add2.u2) annotation(
    Line(points = {{8, -74}, {26, -74}}, color = {0, 0, 127}));
  connect(splitRange012.CSo01_neg, hcRoom12.uc01) annotation(
    Line(points = {{-30, -74}, {-16, -74}}, color = {0, 0, 127}));
  connect(hcRoom12.uh01, splitRange012.CSo01_pos) annotation(
    Line(points = {{-16, -62}, {-30, -62}}, color = {0, 0, 127}));
  connect(add2.y, building_ee.P3) annotation(
    Line(points = {{50, -68}, {50, -23}, {64, -23}}, color = {0, 0, 127}));
  connect(strictController.u1, splitRange01.CSi01) annotation(
    Line(points = {{-171, 38}, {-106, 38}, {-106, 84}, {-56, 84}}, color = {0, 0, 127}));
  connect(strictController.u2, splitRange011.CSi01) annotation(
    Line(points = {{-171, 13}, {-62, 13}, {-62, 6}}, color = {0, 0, 127}));
  connect(splitRange012.CSi01, strictController.u3) annotation(
    Line(points = {{-54, -68}, {-171, -68}, {-171, -14}}, color = {0, 0, 127}));
  connect(deMultiplex3.y3[1], strictController.Gained_T1) annotation(
    Line(points = {{-122, 172}, {-263, 172}, {-263, 106}}, color = {0, 0, 127}));
  connect(deMultiplex3.y2[1], strictController.Gained_T2) annotation(
    Line(points = {{-122, 158}, {-234, 158}, {-234, 106}}, color = {0, 0, 127}));
  connect(deMultiplex3.y1[1], strictController.Gained_T3) annotation(
    Line(points = {{-122, 144}, {-197, 144}, {-197, 106}}, color = {0, 0, 127}));
  connect(strictController.y_meas2, T11.y) annotation(
    Line(points = {{-292, 31}, {-319, 31}, {-319, 36}}, color = {0, 0, 127}));
  connect(strictController.y_meas3, T111.y) annotation(
    Line(points = {{-292, -28}, {-322, -28}}, color = {0, 0, 127}));
  connect(strictController.y_meas1, T1.y) annotation(
    Line(points = {{-292, 81}, {-348, 81}, {-348, 84}}, color = {0, 0, 127}));
  connect(SetPointTable.y[1], strictController.setpoint1) annotation(
    Line(points = {{-422, 12}, {-378, 12}, {-378, 58}, {-292, 58}}, color = {0, 0, 127}));
  connect(strictController.setpoint2, SetPointTable.y[2]) annotation(
    Line(points = {{-292, 2}, {-422, 2}, {-422, 12}}, color = {0, 0, 127}));
  connect(strictController.setpoint3, SetPointTable.y[3]) annotation(
    Line(points = {{-292, -54}, {-422, -54}, {-422, 12}}, color = {0, 0, 127}));
  connect(T1.y, strictController.y_meas1) annotation(
    Line(points = {{-348, 84}, {-292, 84}, {-292, 82}}, color = {0, 0, 127}));
  annotation(
    Diagram(coordinateSystem(extent = {{-420, 180}, {260, -160}})));
end Building_controlled;
