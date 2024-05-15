within AES_project_2023_2024.ProjectGroupWork;

model Controlled_Building_2
  Building_ee building_ee(Tstart = 285)  annotation(
    Placement(transformation(origin = {711.5, -13}, extent = {{-137.5, -275}, {137.5, 275}})));
  ProcessComponents.DoorOpenings doorOpenings annotation(
    Placement(transformation(origin = {280, -178}, extent = {{-42, -42}, {42, 42}})));
  Modelica.Blocks.Sources.RealExpression realExpression12(y = building_ee.T3) annotation(
    Placement(transformation(origin = {-934, -8}, extent = {{-92, -42}, {92, 42}})));
  AES_project_2023_2024.ProcessComponents.PowerDisturbances powerDisturbances annotation(
    Placement(transformation(origin = {594, 440}, extent = {{-40, -40}, {40, 40}}, rotation = -90)));
  AES_project_2023_2024.ProcessComponents.TePrad tePrad1(Temax(displayUnit = "degC"), Temin (displayUnit = "degC")) annotation(
    Placement(transformation(origin = {854, 434}, extent = {{-38, -38}, {38, 38}}, rotation = -90)));
  Loose_Controller loose_Controller(h3_loose(fixed = false))  annotation(
    Placement(transformation(origin = {-676.333, -78.5}, extent = {{-89.6667, -134.5}, {89.6667, 134.5}})));
  Scheduler scheduler(hod_start_strict = 0, hod_end_strict = 24, hod_start_loose = 0, hod_end_loose = 0)  annotation(
    Placement(transformation(origin = {-386, 96}, extent = {{-116, -174}, {116, 174}})));
  ProcessComponents.HCactuator HC1(Ph(fixed = false), Pc(fixed = false))  annotation(
    Placement(transformation(origin = {102, 234}, extent = {{-36, -36}, {36, 36}})));
  AES_project_2023_2024.ProcessComponents.HCactuator HC2(Ph(fixed = false), Pc(fixed = false))  annotation(
    Placement(transformation(origin = {114, 122}, extent = {{-36, -36}, {36, 36}})));
  ProcessComponents.HCactuator HC3(Ph(fixed = false), Pc(fixed = false))  annotation(
    Placement(transformation(origin = {106, 6}, extent = {{-38, -38}, {38, 38}})));
  Modelica.Blocks.Math.Add P1(k2 = -1)  annotation(
    Placement(transformation(origin = {258, 228}, extent = {{-46, -46}, {46, 46}})));
  Modelica.Blocks.Math.Add P2(k2 = -1) annotation(
    Placement(transformation(origin = {274, 116}, extent = {{-46, -46}, {46, 46}})));
  Modelica.Blocks.Math.Add P3(k2 = -1) annotation(
    Placement(transformation(origin = {254, 4}, extent = {{-46, -46}, {46, 46}}))); Real Etot(start=0.0);
  AES.ControlBlocks.ActuationSchemes.SplitRange01 splitRange1 annotation(
    Placement(transformation(origin = {-101, 231}, extent = {{-39, -41}, {39, 41}})));
  AES.ControlBlocks.ActuationSchemes.SplitRange01 splitRange11 annotation(
    Placement(transformation(origin = {-86, 127}, extent = {{-44, -35}, {44, 35}})));
  AES.ControlBlocks.ActuationSchemes.SplitRange01 splitRange12 annotation(
    Placement(transformation(origin = {-103, 41}, extent = {{-41, -45}, {41, 45}})));
  StrictController strictController annotation(
    Placement(transformation(origin = {-758, 252}, extent = {{-73, -73}, {73, 73}})));
  Modelica.Blocks.Sources.RealExpression realExpression121(y = building_ee.T3) annotation(
    Placement(transformation(origin = {-1130, 156}, extent = {{-92, -42}, {92, 42}})));
  Modelica.Blocks.Sources.RealExpression realExpression1211(y = building_ee.T2) annotation(
    Placement(transformation(origin = {-1130, 274}, extent = {{-92, -42}, {92, 42}})));
  Modelica.Blocks.Sources.RealExpression realExpression1212(y = building_ee.T1) annotation(
    Placement(transformation(origin = {-1138, 396}, extent = {{-92, -42}, {92, 42}})));
  Modelica.Blocks.Sources.CombiTimeTable SetPointTable1(columns = {2, 3, 4}, extrapolation = Modelica.Blocks.Types.Extrapolation.Periodic, offset = {273.15}, table = {{0, 10, 10, 2}, {5, 10, 10, 15}, {6, 10, 18, 15}, {7, 20, 18, 15}, {8, 20, 18, 16.5}, {9, 20, 18, 18}, {17, 20, 18, 18}, {18, 15, 18, 18}, {20, 15, 10, 18}, {21, 15, 10, 18}, {22, 10, 10, 15}, {24, 10, 10, 15}}, timeEvents = Modelica.Blocks.Types.TimeEvents.Always, timeScale = 3600) annotation(
    Placement(transformation(origin = {-1829, -107}, extent = {{-51, -51}, {51, 51}})));
  Modelica.Blocks.Continuous.FirstOrder system1(T = 1000, initType = Modelica.Blocks.Types.Init.InitialOutput, k = 1, y_start = 273.15) annotation(
    Placement(transformation(origin = {-1403, 163}, extent = {{-45, -45}, {45, 45}})));
  Modelica.Blocks.Continuous.FirstOrder system2(T = 2000, initType = Modelica.Blocks.Types.Init.InitialOutput, k = 1, y_start = 273.15) annotation(
    Placement(transformation(origin = {-1367, 13}, extent = {{-47, -47}, {47, 47}})));
  Modelica.Blocks.Continuous.FirstOrder system3(T = 3000, initType = Modelica.Blocks.Types.Init.InitialOutput, k = 1, y_start = 273.15) annotation(
    Placement(transformation(origin = {-1362, -142}, extent = {{-52, -52}, {52, 52}})));
  Modelica.Blocks.Routing.DeMultiplex3 deMultiplex3 annotation(
    Placement(transformation(origin = {-1639, -103}, extent = {{-73, -73}, {73, 73}})));
equation
  der(Etot) = abs(P1.y) + abs(P2.y) + abs(P3.y);
  connect(doorOpenings.door3eopen, building_ee.door3) annotation(
    Line(points = {{330, -203}, {330, -244}, {458.5, -244}}, color = {255, 0, 255}));
  connect(doorOpenings.door23open, building_ee.door2) annotation(
    Line(points = {{330, -178}, {443.4, -178}, {443.4, -192}, {458.5, -192}}, color = {255, 0, 255}));
  connect(doorOpenings.door13open, building_ee.door1) annotation(
    Line(points = {{330, -153}, {413.4, -153}, {413.4, -104}, {458.5, -104}}, color = {255, 0, 255}));
  connect(tePrad1.Te, building_ee.Te) annotation(
    Line(points = {{877, 388}, {877, 358.9}, {882, 358.9}, {882, 287}}, color = {0, 0, 127}));
  connect(tePrad1.Prad, building_ee.PRad) annotation(
    Line(points = {{831, 388}, {831, 358.4}, {821.5, 358.4}, {821.5, 284}}, color = {0, 0, 127}));
  connect(powerDisturbances.Pdr1, building_ee.D1) annotation(
    Line(points = {{618, 392}, {618, 272.7}, {662, 272.7}, {662, 284}}, color = {0, 0, 127}));
  connect(powerDisturbances.Pdr3, building_ee.D3) annotation(
    Line(points = {{570, 392}, {570, 272.7}, {522, 272.7}, {522, 284}}, color = {0, 0, 127}));
  connect(powerDisturbances.Pdr2, building_ee.D2) annotation(
    Line(points = {{594, 392}, {594, 358}, {596, 358}, {596, 284}}, color = {0, 0, 127}));
  connect(HC1.Ph, P1.u1) annotation(
    Line(points = {{145.2, 255.6}, {201.2, 255.6}}, color = {0, 0, 127}));
  connect(HC1.Pc, P1.u2) annotation(
    Line(points = {{145.2, 212.4}, {201.2, 212.4}, {201.2, 200.4}}, color = {0, 0, 127}));
  connect(P1.y, building_ee.P1) annotation(
    Line(points = {{308.6, 228}, {396.3, 228}, {396.3, 218}, {458.5, 218}}, color = {0, 0, 127}));
  connect(P2.u1, HC2.Ph) annotation(
    Line(points = {{218.8, 143.6}, {158.8, 143.6}}, color = {0, 0, 127}));
  connect(P2.u2, HC2.Pc) annotation(
    Line(points = {{218.8, 88.4}, {160.8, 88.4}, {160.8, 100.4}, {158.8, 100.4}}, color = {0, 0, 127}));
  connect(P2.y, building_ee.P2) annotation(
    Line(points = {{324.6, 116}, {372.6, 116}, {372.6, 160}, {458.5, 160}}, color = {0, 0, 127}));
  connect(HC3.Ph, P3.u1) annotation(
    Line(points = {{151.6, 28.8}, {172.6, 28.8}, {172.6, 32.8}, {197.6, 32.8}}, color = {0, 0, 127}));
  connect(HC3.Pc, P3.u2) annotation(
    Line(points = {{151.6, -16.8}, {197.6, -16.8}, {197.6, -24.8}}, color = {0, 0, 127}));
  connect(P3.y, building_ee.P3) annotation(
    Line(points = {{304.6, 4}, {388.6, 4}, {388.6, 97}, {458.5, 97}}, color = {0, 0, 127}));
  connect(scheduler.h3_loose, loose_Controller.h3_loose) annotation(
    Line(points = {{-515, -52}, {-541, -52}, {-541, -58}, {-575, -58}}, color = {0, 0, 127}));
  connect(realExpression12.y, loose_Controller.T3) annotation(
    Line(points = {{-832.8, -8}, {-832.8, -7}, {-777, -7}}, color = {0, 0, 127}));
  connect(scheduler.h1out, splitRange1.CSi01) annotation(
    Line(points = {{-248, 200}, {-148, 200}, {-148, 231}}, color = {0, 0, 127}));
  connect(splitRange1.CSo01_pos, HC1.uh01) annotation(
    Line(points = {{-54, 256}, {58, 256}}, color = {0, 0, 127}));
  connect(HC1.uc01, splitRange1.CSo01_neg) annotation(
    Line(points = {{58, 212}, {-38, 212}, {-38, 206}, {-54, 206}}, color = {0, 0, 127}));
  connect(scheduler.h2out, splitRange11.CSi01) annotation(
    Line(points = {{-247, 142}, {-152, 142}, {-152, 127}, {-139, 127}}, color = {0, 0, 127}));
  connect(splitRange11.CSo01_neg, HC2.uc01) annotation(
    Line(points = {{-33, 106}, {-9.5, 106}, {-9.5, 100}, {70, 100}}, color = {0, 0, 127}));
  connect(HC2.uh01, splitRange11.CSo01_pos) annotation(
    Line(points = {{70, 144}, {-6.5, 144}, {-6.5, 148}, {-33, 148}}, color = {0, 0, 127}));
  connect(scheduler.h3out, splitRange12.CSi01) annotation(
    Line(points = {{-247, 65}, {-190.5, 65}, {-190.5, 41}, {-152, 41}}, color = {0, 0, 127}));
  connect(HC3.uh01, splitRange12.CSo01_pos) annotation(
    Line(points = {{60, 28}, {6, 28}, {6, 68}, {-54, 68}}, color = {0, 0, 127}));
  connect(splitRange12.CSo01_neg, HC3.uc01) annotation(
    Line(points = {{-54, 14}, {60, 14}, {60, -16}}, color = {0, 0, 127}));
  connect(strictController.u3, scheduler.h3_strict) annotation(
    Line(points = {{-635, 191}, {-515, 191}, {-515, 195}}, color = {0, 0, 127}));
  connect(scheduler.h2_strict, strictController.u2) annotation(
    Line(points = {{-515, 222}, {-635, 222}, {-635, 249}}, color = {0, 0, 127}));
  connect(strictController.u1, scheduler.h1_strict) annotation(
    Line(points = {{-635, 305}, {-515, 305}, {-515, 250}}, color = {0, 0, 127}));
  connect(realExpression121.y, strictController.y_meas3) annotation(
    Line(points = {{-1028, 156}, {-904, 156}, {-904, 158}}, color = {0, 0, 127}));
  connect(realExpression1211.y, strictController.y_meas2) annotation(
    Line(points = {{-1028, 274}, {-906, 274}, {-906, 290}, {-904, 290}}, color = {0, 0, 127}));
  connect(realExpression1212.y, strictController.y_meas1) annotation(
    Line(points = {{-1037, 396}, {-970.5, 396}, {-970.5, 400}, {-904, 400}}, color = {0, 0, 127}));
  connect(system3.y, strictController.setpoint3) annotation(
    Line(points = {{-1305, -142}, {-1050, -142}, {-1050, 104}, {-904, 104}}, color = {0, 0, 127}));
  connect(system2.y, strictController.setpoint2) annotation(
    Line(points = {{-1315, 13}, {-1224, 13}, {-1224, 226}, {-904, 226}}, color = {0, 0, 127}));
  connect(system1.y, strictController.setpoint1) annotation(
    Line(points = {{-1354, 164}, {-1316, 164}, {-1316, 348}, {-904, 348}}, color = {0, 0, 127}));
  connect(loose_Controller.Tdes3, system3.y) annotation(
    Line(points = {{-774, -178}, {-1305, -178}, {-1305, -142}}, color = {0, 0, 127}));
  connect(SetPointTable1.y, deMultiplex3.u) annotation(
    Line(points = {{-1773, -107}, {-1726, -107}, {-1726, -102}}, color = {0, 0, 127}, thickness = 0.5));
  connect(deMultiplex3.y1[1], system1.u) annotation(
    Line(points = {{-1558, -52}, {-1550, -52}, {-1550, 164}, {-1456, 164}}, color = {0, 0, 127}));
  connect(deMultiplex3.y2[1], system2.u) annotation(
    Line(points = {{-1558, -102}, {-1502, -102}, {-1502, 13}, {-1423, 13}}, color = {0, 0, 127}));
  connect(deMultiplex3.y3[1], system3.u) annotation(
    Line(points = {{-1558, -154}, {-1424, -154}, {-1424, -142}}, color = {0, 0, 127}));
  annotation(
    Diagram(coordinateSystem(extent = {{-1900, 480}, {960, -300}})));
end Controlled_Building_2;
