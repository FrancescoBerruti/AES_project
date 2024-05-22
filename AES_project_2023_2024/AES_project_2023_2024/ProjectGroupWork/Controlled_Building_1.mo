within AES_project_2023_2024.ProjectGroupWork;

model Controlled_Building_1
  Building_ee building_ee annotation(
    Placement(transformation(origin = {145.5, -59}, extent = {{-45.5, -91}, {45.5, 91}})));
  AES_project_2023_2024.ProcessComponents.PowerDisturbances powerDisturbances annotation(
    Placement(transformation(origin = {108, 106}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  AES_project_2023_2024.ProcessComponents.TePrad tePrad1(Temax(displayUnit = "K"), Temin(displayUnit = "K")) annotation(
    Placement(transformation(origin = {196, 134}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  ProcessComponents.DoorOpenings doorOpenings annotation(
    Placement(transformation(origin = {-92, -114}, extent = {{-22, -22}, {22, 22}})));
  AES_project_2023_2024.ProcessComponents.HCactuator HC1 annotation(
    Placement(transformation(origin = {-6, 84}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add P1(k2 = -1) annotation(
    Placement(transformation(origin = {36, 84}, extent = {{-10, -10}, {10, 10}})));
  AES.ControlBlocks.ActuationSchemes.SplitRange01 splitRange01 annotation(
    Placement(transformation(origin = {-44, 84}, extent = {{-10, -10}, {10, 10}})));
  AES_project_2023_2024.ProcessComponents.HCactuator HC2 annotation(
    Placement(transformation(origin = {-12, 6}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add P2(k2 = -1) annotation(
    Placement(transformation(origin = {30, 6}, extent = {{-10, -10}, {10, 10}})));
  AES.ControlBlocks.ActuationSchemes.SplitRange01 splitRange011 annotation(
    Placement(transformation(origin = {-50, 6}, extent = {{-10, -10}, {10, 10}})));
  AES_project_2023_2024.ProcessComponents.HCactuator HC3 annotation(
    Placement(transformation(origin = {-4, -68}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add P3(k2 = -1) annotation(
    Placement(transformation(origin = {38, -68}, extent = {{-10, -10}, {10, 10}})));
  AES.ControlBlocks.ActuationSchemes.SplitRange01 splitRange012 annotation(
    Placement(transformation(origin = {-42, -68}, extent = {{-10, -10}, {10, 10}})));
  StrictController strictController( Tau = 120)  annotation(
    Placement(transformation(origin = {-210, -2}, extent = {{-33, -33}, {33, 33}})));
  Modelica.Blocks.Sources.RealExpression T1(y = building_ee.T1) annotation(
    Placement(transformation(origin = {-364, 68}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.RealExpression T11(y = building_ee.T2) annotation(
    Placement(transformation(origin = {-364, 30}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.RealExpression T111(y = building_ee.T3) annotation(
    Placement(transformation(origin = {-332, -44}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.CombiTimeTable SetPointTable(columns = {2, 3, 4}, extrapolation = Modelica.Blocks.Types.Extrapolation.Periodic, offset = {273.15}, table = {{0, 10, 10, 15}, {5, 10, 10, 15}, {6, 10, 18, 15}, {7, 20, 18, 15}, {8, 20, 18, 16.5}, {9, 20, 18, 18}, {17, 20, 18, 18}, {18, 15, 18, 18}, {20, 15, 10, 18}, {21, 15, 10, 18}, {22, 10, 10, 15}, {24, 10, 10, 15}}, timeEvents = Modelica.Blocks.Types.TimeEvents.Always, timeScale = 3600) annotation(
    Placement(transformation(origin = {-478, 40}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Continuous.FirstOrder system1(T = 1000, initType = Modelica.Blocks.Types.Init.InitialOutput, k = 1, y_start = 273.15) annotation(
    Placement(transformation(origin = {-418, 40}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Continuous.FirstOrder system2(T = 2000, initType = Modelica.Blocks.Types.Init.InitialOutput, k = 1, y_start = 273.15) annotation(
    Placement(transformation(origin = {-418, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Continuous.FirstOrder system3(T = 3000, initType = Modelica.Blocks.Types.Init.InitialOutput, k = 1, y_start = 273.15) annotation(
    Placement(transformation(origin = {-418, -40}, extent = {{-10, -10}, {10, 10}})));
  Real Etot(quantity="Energy",unit="kWh") "total energy consumed";
  Real Eheat(quantity="Energy",unit="kWh") "Energy used for heating";
  Real Ecool(quantity="Energy",unit="kWh") "Enegy used for cooling";
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
    Line(points = {{6, 90}, {24, 90}}, color = {0, 0, 127}));
  connect(HC1.Pc, P1.u2) annotation(
    Line(points = {{6, 78}, {24, 78}}, color = {0, 0, 127}));
  connect(splitRange01.CSo01_neg, HC1.uc01) annotation(
    Line(points = {{-32, 78}, {-18, 78}}, color = {0, 0, 127}));
  connect(HC1.uh01, splitRange01.CSo01_pos) annotation(
    Line(points = {{-18, 90}, {-32, 90}}, color = {0, 0, 127}));
  connect(P1.y, building_ee.P1) annotation(
    Line(points = {{48, 84}, {48, 17}, {64, 17}}, color = {0, 0, 127}));
  connect(HC2.Ph, P2.u1) annotation(
    Line(points = {{0, 12}, {18, 12}}, color = {0, 0, 127}));
  connect(HC2.Pc, P2.u2) annotation(
    Line(points = {{0, 0}, {18, 0}}, color = {0, 0, 127}));
  connect(splitRange011.CSo01_neg, HC2.uc01) annotation(
    Line(points = {{-38, 0}, {-24, 0}}, color = {0, 0, 127}));
  connect(HC2.uh01, splitRange011.CSo01_pos) annotation(
    Line(points = {{-24, 12}, {-38, 12}}, color = {0, 0, 127}));
  connect(P2.y, building_ee.P2) annotation(
    Line(points = {{42, 6}, {62, 6}, {62, -2}, {64, -2}}, color = {0, 0, 127}));
  connect(HC3.Ph, P3.u1) annotation(
    Line(points = {{8, -62}, {26, -62}}, color = {0, 0, 127}));
  connect(HC3.Pc, P3.u2) annotation(
    Line(points = {{8, -74}, {26, -74}}, color = {0, 0, 127}));
  connect(splitRange012.CSo01_neg, HC3.uc01) annotation(
    Line(points = {{-30, -74}, {-16, -74}}, color = {0, 0, 127}));
  connect(HC3.uh01, splitRange012.CSo01_pos) annotation(
    Line(points = {{-16, -62}, {-30, -62}}, color = {0, 0, 127}));
  connect(P3.y, building_ee.P3) annotation(
    Line(points = {{50, -68}, {50, -23}, {64, -23}}, color = {0, 0, 127}));
  connect(strictController.u1, splitRange01.CSi01) annotation(
    Line(points = {{-155, 22}, {-106, 22}, {-106, 84}, {-56, 84}}, color = {0, 0, 127}));
  connect(strictController.u2, splitRange011.CSi01) annotation(
    Line(points = {{-155, -3}, {-155, -5}, {-62, -5}, {-62, 6}}, color = {0, 0, 127}));
  connect(splitRange012.CSi01, strictController.u3) annotation(
    Line(points = {{-54, -68}, {-54, -66}, {-155, -66}, {-155, -30}}, color = {0, 0, 127}));
  connect(strictController.y_meas2, T11.y) annotation(
    Line(points = {{-276, 15}, {-353, 15}, {-353, 30}}, color = {0, 0, 127}));
  connect(strictController.y_meas3, T111.y) annotation(
    Line(points = {{-276, -44}, {-321, -44}}, color = {0, 0, 127}));
  connect(T1.y, strictController.y_meas1) annotation(
    Line(points = {{-353, 68}, {-353, 65}, {-276, 65}}, color = {0, 0, 127}));
  connect(SetPointTable.y[1], system1.u) annotation(
    Line(points = {{-467, 40}, {-430, 40}}, color = {0, 0, 127}));
  connect(SetPointTable.y[2], system2.u) annotation(
    Line(points = {{-467, 40}, {-448, 40}, {-448, 0}, {-430, 0}}, color = {0, 0, 127}));
  connect(SetPointTable.y[3], system3.u) annotation(
    Line(points = {{-467, 40}, {-448, 40}, {-448, -40}, {-430, -40}}, color = {0, 0, 127}));
  connect(system1.y, strictController.setpoint1) annotation(
    Line(points = {{-406, 40}, {-341, 40}, {-341, 42}, {-276, 42}}, color = {0, 0, 127}));
  connect(strictController.setpoint2, system2.y) annotation(
    Line(points = {{-276, -14}, {-345, -14}, {-345, 0}, {-406, 0}}, color = {0, 0, 127}));
  connect(strictController.setpoint3, system3.y) annotation(
    Line(points = {{-276, -69}, {-276, -54}, {-406, -54}, {-406, -40}}, color = {0, 0, 127}));
  connect(strictController.Te, tePrad1.Te) annotation(
    Line(points = {{-216, 90}, {-218, 90}, {-218, 122}, {202, 122}}, color = {0, 0, 127}));
  annotation(
    Diagram(coordinateSystem(extent = {{-420, 180}, {260, -160}})));

end Controlled_Building_1;
