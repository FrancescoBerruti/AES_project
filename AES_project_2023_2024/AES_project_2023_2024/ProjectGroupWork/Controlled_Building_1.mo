within AES_project_2023_2024.ProjectGroupWork;

model Controlled_Building_1
  parameter Real dead_zone = 0.1;
  Building_ee building_ee annotation(
    Placement(transformation(origin = {145.5, -59}, extent = {{-45.5, -91}, {45.5, 91}})));
  AES_project_2023_2024.ProcessComponents.PowerDisturbances powerDisturbances annotation(
    Placement(transformation(origin = {108, 106}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  AES_project_2023_2024.ProcessComponents.TePrad tePrad1(Temax(displayUnit = "K"), Temin(displayUnit = "K")) annotation(
    Placement(transformation(origin = {196, 134}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  ProcessComponents.DoorOpenings doorOpenings annotation(
    Placement(transformation(origin = {-92, -114}, extent = {{-22, -22}, {22, 22}})));
  AES_project_2023_2024.ProcessComponents.HCactuator HC1 annotation(
    Placement(transformation(origin = {-14, 58}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add P1(k2 = -1) annotation(
    Placement(transformation(origin = {26, 58}, extent = {{-10, -10}, {10, 10}})));
  AES.ControlBlocks.ActuationSchemes.SplitRange01 splitRange01(DeadZone = dead_zone)  annotation(
    Placement(transformation(origin = {-54, 58}, extent = {{-10, -10}, {10, 10}})));
  AES_project_2023_2024.ProcessComponents.HCactuator HC2 annotation(
    Placement(transformation(origin = {-14, -2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add P2(k2 = -1) annotation(
    Placement(transformation(origin = {26, -2}, extent = {{-10, -10}, {10, 10}})));
  AES.ControlBlocks.ActuationSchemes.SplitRange01 splitRange011(DeadZone = dead_zone)  annotation(
    Placement(transformation(origin = {-54, -2}, extent = {{-10, -10}, {10, 10}})));
  AES_project_2023_2024.ProcessComponents.HCactuator HC3 annotation(
    Placement(transformation(origin = {-12, -62}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add P3(k2 = -1) annotation(
    Placement(transformation(origin = {30, -62}, extent = {{-10, -10}, {10, 10}})));
  AES.ControlBlocks.ActuationSchemes.SplitRange01 splitRange012(DeadZone = dead_zone)  annotation(
    Placement(transformation(origin = {-54, -60}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.RealExpression T1(y = building_ee.T1) annotation(
    Placement(transformation(origin = {-364, 68}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.RealExpression T11(y = building_ee.T2) annotation(
    Placement(transformation(origin = {-348, -4}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.RealExpression T111(y = building_ee.T3) annotation(
    Placement(transformation(origin = {-344, -102}, extent = {{-10, -10}, {10, 10}})));
  Real Etot(quantity="Energy",unit="kWh") "total energy consumed";
  Real Eheat(quantity="Energy",unit="kWh") "Energy used for heating";
  Real Ecool(quantity="Energy",unit="kWh") "Enegy used for cooling";
  Modelica.Blocks.Sources.CombiTimeTable SetPointTable(columns = {2, 3, 4}, extrapolation = Modelica.Blocks.Types.Extrapolation.Periodic, offset = {273.15}, table = {{0, 10, 10, 15}, {5, 10, 10, 15}, {6, 10, 18, 15}, {7, 20, 18, 15}, {8, 20, 18, 16.5}, {9, 20, 18, 18}, {17, 20, 18, 18}, {18, 15, 18, 18}, {20, 15, 10, 18}, {21, 15, 10, 18}, {22, 10, 10, 15}, {24, 10, 10, 15}}, timeEvents = Modelica.Blocks.Types.TimeEvents.Always, timeScale = 3600) annotation(
    Placement(transformation(origin = {-410, 16}, extent = {{-10, -10}, {10, 10}})));
  Loose_Controller loose_Controller annotation(
    Placement(transformation(origin = {-242, 98}, extent = {{-20, -30}, {20, 30}})));
  Loose_Controller loose_Controller1 annotation(
    Placement(transformation(origin = {-234, -6}, extent = {{-20, -30}, {20, 30}})));
  Loose_Controller loose_Controller2 annotation(
    Placement(transformation(origin = {-242, -94}, extent = {{-20, -30}, {20, 30}})));
equation
//  der(Etot) = (abs(P1.y) + abs(P2.y) + abs(P3.y))/(3.6*10^6);
//  der(Eheat) = abs(HC1.Ph) + abs(HC2.Ph) + abs(HC3.Ph);
//  der(Ecool) = abs(HC1.Pc) + abs(HC2.Pc) + abs(HC3.Pc);
  der(Etot) = (abs(P1.y) + abs(P2.y) + abs(P3.y))/(3.6*10^6);
  der(Eheat) = (abs(HC1.Ph) + abs(HC2.Ph) + abs(HC3.Ph))/(3.6*10^6);
  der(Ecool) = (abs(HC1.Pc) + abs(HC2.Pc) + abs(HC3.Pc))/(3.6*10^6);
  connect(tePrad1.Te, building_ee.Te) annotation(
    Line(points = {{202, 122}, {202, 40}}, color = {0, 0, 127}));
  connect(tePrad1.Prad, building_ee.PRad) annotation(
    Line(points = {{190, 122}, {190, 59.5}, {182, 59.5}, {182, 39}}, color = {0, 0, 127}));
  connect(powerDisturbances.Pdr1, building_ee.D1) annotation(
    Line(points = {{114, 94}, {114, 40}, {130, 40}}, color = {0, 0, 127}));
  connect(powerDisturbances.Pdr2, building_ee.D2) annotation(
    Line(points = {{108, 94}, {108, 40}}, color = {0, 0, 127}));
  connect(powerDisturbances.Pdr3, building_ee.D3) annotation(
    Line(points = {{102, 94}, {102, 57}, {82, 57}, {82, 40}}, color = {0, 0, 127}));
  connect(building_ee.door1, doorOpenings.door13open) annotation(
    Line(points = {{64, -89}, {5, -89}, {5, -101}, {-66, -101}}, color = {255, 0, 255}));
  connect(building_ee.door3, doorOpenings.door3eopen) annotation(
    Line(points = {{64, -135}, {3.5, -135}, {3.5, -127}, {-66, -127}}, color = {255, 0, 255}));
  connect(doorOpenings.door23open, building_ee.door2) annotation(
    Line(points = {{-66, -114}, {13, -114}, {13, -118}, {64, -118}}, color = {255, 0, 255}));
  connect(HC1.Ph, P1.u1) annotation(
    Line(points = {{-2, 64}, {14, 64}}, color = {0, 0, 127}));
  connect(HC1.Pc, P1.u2) annotation(
    Line(points = {{-2, 52}, {14, 52}}, color = {0, 0, 127}));
  connect(splitRange01.CSo01_neg, HC1.uc01) annotation(
    Line(points = {{-42, 52}, {-26, 52}}, color = {0, 0, 127}));
  connect(HC1.uh01, splitRange01.CSo01_pos) annotation(
    Line(points = {{-26, 64}, {-42, 64}}, color = {0, 0, 127}));
  connect(P1.y, building_ee.P1) annotation(
    Line(points = {{37, 58}, {37, 17}, {64, 17}}, color = {0, 0, 127}));
  connect(HC2.Ph, P2.u1) annotation(
    Line(points = {{-2, 4}, {14, 4}}, color = {0, 0, 127}));
  connect(HC2.Pc, P2.u2) annotation(
    Line(points = {{-2, -8}, {14, -8}}, color = {0, 0, 127}));
  connect(splitRange011.CSo01_neg, HC2.uc01) annotation(
    Line(points = {{-42, -8}, {-26, -8}}, color = {0, 0, 127}));
  connect(HC2.uh01, splitRange011.CSo01_pos) annotation(
    Line(points = {{-26, 4}, {-42, 4}}, color = {0, 0, 127}));
  connect(P2.y, building_ee.P2) annotation(
    Line(points = {{37, -2}, {64, -2}}, color = {0, 0, 127}));
  connect(HC3.Ph, P3.u1) annotation(
    Line(points = {{0, -56}, {18, -56}}, color = {0, 0, 127}));
  connect(HC3.Pc, P3.u2) annotation(
    Line(points = {{0, -68}, {18, -68}}, color = {0, 0, 127}));
  connect(splitRange012.CSo01_neg, HC3.uc01) annotation(
    Line(points = {{-42, -66}, {-33, -66}, {-33, -68}, {-24, -68}}, color = {0, 0, 127}));
  connect(HC3.uh01, splitRange012.CSo01_pos) annotation(
    Line(points = {{-24, -56}, {-33, -56}, {-33, -54}, {-42, -54}}, color = {0, 0, 127}));
  connect(P3.y, building_ee.P3) annotation(
    Line(points = {{41, -62}, {41, -23}, {64, -23}}, color = {0, 0, 127}));
  connect(T111.y, loose_Controller2.T3) annotation(
    Line(points = {{-332, -102}, {-316, -102}, {-316, -78}, {-264, -78}}, color = {0, 0, 127}));
  connect(T11.y, loose_Controller1.T3) annotation(
    Line(points = {{-336, -4}, {-300, -4}, {-300, 10}, {-256, 10}}, color = {0, 0, 127}));
  connect(loose_Controller1.Tdes3, SetPointTable.y[2]) annotation(
    Line(points = {{-256, -28}, {-302, -28}, {-302, 16}, {-398, 16}}, color = {0, 0, 127}));
  connect(loose_Controller.T3, T1.y) annotation(
    Line(points = {{-264, 114}, {-352, 114}, {-352, 68}}, color = {0, 0, 127}));
  connect(loose_Controller.Tdes3, SetPointTable.y[1]) annotation(
    Line(points = {{-264, 76}, {-294, 76}, {-294, 16}, {-398, 16}}, color = {0, 0, 127}));
  connect(SetPointTable.y[3], loose_Controller2.Tdes3) annotation(
    Line(points = {{-398, 16}, {-264, 16}, {-264, -116}}, color = {0, 0, 127}));
  connect(loose_Controller.h3_loose, splitRange01.CSi01) annotation(
    Line(points = {{-220, 102}, {-66, 102}, {-66, 58}}, color = {0, 0, 127}));
  connect(loose_Controller1.h3_loose, splitRange011.CSi01) annotation(
    Line(points = {{-211, -1.5}, {-147, -1.5}, {-147, -2}, {-66, -2}}, color = {0, 0, 127}));
  connect(splitRange012.CSi01, loose_Controller2.h3_loose) annotation(
    Line(points = {{-66, -60}, {-260, -60}, {-260, -89.5}, {-219, -89.5}}, color = {0, 0, 127}));
  annotation(
    Diagram(coordinateSystem(extent = {{-420, 180}, {260, -160}})));

end Controlled_Building_1;
