within AES_project_2023_2024.ProjectGroupWork;

model Controlled_Building_2
  Building_ee building_ee annotation(
    Placement(transformation(origin = {378, -18}, extent = {{-86, -172}, {86, 172}})));
  ProcessComponents.DoorOpenings doorOpenings annotation(
    Placement(transformation(origin = {58, -120}, extent = {{-42, -42}, {42, 42}})));
  Modelica.Blocks.Sources.RealExpression realExpression(y = building_ee.T1) annotation(
    Placement(transformation(origin = {-874, 48}, extent = {{-80, -46}, {80, 46}})));
  Modelica.Blocks.Sources.RealExpression realExpression2(y = building_ee.T2) annotation(
    Placement(transformation(origin = {-861, -11}, extent = {{-87, -45}, {87, 45}})));
  Modelica.Blocks.Sources.RealExpression realExpression12(y = building_ee.T3) annotation(
    Placement(transformation(origin = {-862, -64}, extent = {{-92, -42}, {92, 42}})));
  AES_project_2023_2024.ProcessComponents.PowerDisturbances powerDisturbances annotation(
    Placement(transformation(origin = {292, 356}, extent = {{-40, -40}, {40, 40}}, rotation = -90)));
  AES_project_2023_2024.ProcessComponents.TePrad tePrad1(Temax(displayUnit = "degC"), S = 0, Temin (displayUnit = "degC")) annotation(
    Placement(transformation(origin = {460, 378}, extent = {{-38, -38}, {38, 38}}, rotation = -90)));
  Modelica.Blocks.Sources.CombiTimeTable SetPointTable(columns = {2, 3, 4}, extrapolation = Modelica.Blocks.Types.Extrapolation.Periodic, offset = {273.15}, table = {{0, 10, 10, 15}, {5, 10, 10, 15}, {6, 10, 18, 15}, {7, 20, 18, 15}, {8, 20, 18, 16.5}, {9, 20, 18, 18}, {17, 20, 18, 18}, {18, 15, 18, 18}, {20, 15, 10, 18}, {21, 15, 10, 18}, {22, 10, 10, 15}, {24, 10, 10, 15}}, timeEvents = Modelica.Blocks.Types.TimeEvents.Always, timeScale = 3600) annotation(
    Placement(transformation(origin = {-826, -178}, extent = {{-48, -48}, {48, 48}})));
  Loose_Controller loose_Controller annotation(
    Placement(transformation(origin = {-527.333, -94}, extent = {{-98.6667, -148}, {98.6667, 148}})));
  Scheduler scheduler annotation(
    Placement(transformation(origin = {-142, 84}, extent = {{-116, -174}, {116, 174}})));
  Modelica.Blocks.Sources.Constant const(k = 0)  annotation(
    Placement(transformation(origin = {-425, 209}, extent = {{-39, -39}, {39, 39}})));
  ComputeEnergies computeEnergies annotation(
    Placement(transformation(origin = {99, 338.5}, extent = {{-51, -76.5}, {51, 76.5}})));
equation
  connect(doorOpenings.door3eopen, building_ee.door3) annotation(
    Line(points = {{108, -145}, {108, -162}, {220, -162}}, color = {255, 0, 255}));
  connect(doorOpenings.door23open, building_ee.door2) annotation(
    Line(points = {{108, -120}, {164, -120}, {164, -130}, {220, -130}}, color = {255, 0, 255}));
  connect(doorOpenings.door13open, building_ee.door1) annotation(
    Line(points = {{108, -95}, {167, -95}, {167, -75}, {220, -75}}, color = {255, 0, 255}));
  connect(tePrad1.Te, building_ee.Te) annotation(
    Line(points = {{483, 332}, {483, 250.5}, {485, 250.5}, {485, 169}}, color = {0, 0, 127}));
  connect(tePrad1.Prad, building_ee.PRad) annotation(
    Line(points = {{437, 332}, {437, 250}, {447, 250}, {447, 168}}, color = {0, 0, 127}));
  connect(powerDisturbances.Pdr1, building_ee.D1) annotation(
    Line(points = {{316, 308}, {316, 164.7}, {347, 164.7}, {347, 168}}, color = {0, 0, 127}));
  connect(powerDisturbances.Pdr3, building_ee.D3) annotation(
    Line(points = {{268, 308}, {268, 164.7}, {259, 164.7}, {259, 168}}, color = {0, 0, 127}));
  connect(powerDisturbances.Pdr2, building_ee.D2) annotation(
    Line(points = {{292, 308}, {292, 244}, {306, 244}, {306, 168}}, color = {0, 0, 127}));
  connect(realExpression.y, loose_Controller.T1) annotation(
    Line(points = {{-786, 48}, {-709, 48}, {-709, 34}, {-636, 34}}, color = {0, 0, 127}));
  connect(realExpression2.y, loose_Controller.T2) annotation(
    Line(points = {{-765.3, -11}, {-697.3, -11}, {-697.3, 9}, {-636.3, 9}}, color = {0, 0, 127}));
  connect(realExpression12.y, loose_Controller.T3) annotation(
    Line(points = {{-760.8, -64}, {-680.8, -64}, {-680.8, -15}, {-638.8, -15}}, color = {0, 0, 127}));
  connect(SetPointTable.y[1], loose_Controller.Tdes1) annotation(
    Line(points = {{-773, -178}, {-695.7, -178}, {-695.7, -158}, {-636.2, -158}}, color = {0, 0, 127}));
  connect(SetPointTable.y[2], loose_Controller.Tdes2) annotation(
    Line(points = {{-773, -178}, {-693.2, -178}, {-693.2, -180}, {-635.2, -180}}, color = {0, 0, 127}));
  connect(SetPointTable.y[3], loose_Controller.Tdes3) annotation(
    Line(points = {{-773, -178}, {-691.1, -178}, {-691.1, -204}, {-635.2, -204}}, color = {0, 0, 127}));
  connect(loose_Controller.h1_loose, scheduler.h1_loose) annotation(
    Line(points = {{-419, 9}, {-271, 9}, {-271, -9}}, color = {0, 0, 127}));
  connect(loose_Controller.h2_loose, scheduler.h2_loose) annotation(
    Line(points = {{-416, -36}, {-274, -36}, {-274, -37}, {-271, -37}}, color = {0, 0, 127}));
  connect(loose_Controller.h3_loose, scheduler.h3_loose) annotation(
    Line(points = {{-415, -72}, {-344, -72}, {-344, -64}, {-271, -64}}, color = {0, 0, 127}));
  connect(scheduler.h3out, building_ee.P3) annotation(
    Line(points = {{-3, 53}, {220, 53}, {220, 50}}, color = {0, 0, 127}));
  connect(scheduler.h2out, building_ee.P2) annotation(
    Line(points = {{-3, 130}, {135.5, 130}, {135.5, 90}, {220, 90}}, color = {0, 0, 127}));
  connect(scheduler.h1out, building_ee.P1) annotation(
    Line(points = {{-4, 188}, {220, 188}, {220, 126}}, color = {0, 0, 127}));
  connect(const.y, scheduler.h1_strict) annotation(
    Line(points = {{-382, 210}, {-290, 210}, {-290, 238}, {-271, 238}}, color = {0, 0, 127}));
  connect(scheduler.h2_strict, const.y) annotation(
    Line(points = {{-271, 210}, {-382, 210}}, color = {0, 0, 127}));
  connect(scheduler.h3_strict, const.y) annotation(
    Line(points = {{-271, 183}, {-292, 183}, {-292, 210}, {-382, 210}}, color = {0, 0, 127}));
  connect(scheduler.h1out, computeEnergies.h1) annotation(
    Line(points = {{-4, 188}, {4, 188}, {4, 374}, {42, 374}}, color = {0, 0, 127}));
  connect(scheduler.h2out, computeEnergies.h2) annotation(
    Line(points = {{-2, 130}, {26, 130}, {26, 352}, {42, 352}}, color = {0, 0, 127}));
  connect(scheduler.h3out, computeEnergies.h3) annotation(
    Line(points = {{-2, 52}, {16, 52}, {16, 332}, {42, 332}}, color = {0, 0, 127}));
  annotation(
    Diagram(coordinateSystem(extent = {{-1000, 420}, {540, -240}})));
end Controlled_Building_2;
