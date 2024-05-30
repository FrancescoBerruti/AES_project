within AES_project_2023_2024.ProjectGroupWork;

model Controlled_Building_2
  Building_ee building_ee(Tstart = 285) annotation(
    Placement(transformation(origin = {1101.5, -17}, extent = {{-137.5, -275}, {137.5, 275}})));
  ProcessComponents.DoorOpenings doorOpenings annotation(
    Placement(transformation(origin = {670, -192}, extent = {{-42, -42}, {42, 42}})));
  Modelica.Blocks.Sources.RealExpression realExpression12(y = building_ee.T3) annotation(
    Placement(transformation(origin = {-604, -58}, extent = {{-92, -42}, {92, 42}})));
  AES_project_2023_2024.ProcessComponents.PowerDisturbances powerDisturbances annotation(
    Placement(transformation(origin = {1004, 494}, extent = {{-40, -40}, {40, 40}}, rotation = -90)));
  AES_project_2023_2024.ProcessComponents.TePrad tePrad1(Temax(displayUnit = "degC"), Temin(displayUnit = "degC")) annotation(
    Placement(transformation(origin = {1242, 662}, extent = {{-38, -38}, {38, 38}}, rotation = -90)));
  Loose_Controller loose_Controller(h3_loose(fixed = false), Tau = 1) annotation(
    Placement(transformation(origin = {-336.333, -120.5}, extent = {{-89.6667, -134.5}, {89.6667, 134.5}})));
  Scheduler scheduler annotation(
    Placement(transformation(origin = {4, 82}, extent = {{-116, -174}, {116, 174}})));
  ProcessComponents.HCactuator HC1(Ph(fixed = false), Pc(fixed = false)) annotation(
    Placement(transformation(origin = {492, 220}, extent = {{-36, -36}, {36, 36}})));
  AES_project_2023_2024.ProcessComponents.HCactuator HC2(Ph(fixed = false), Pc(fixed = false)) annotation(
    Placement(transformation(origin = {504, 108}, extent = {{-36, -36}, {36, 36}})));
  ProcessComponents.HCactuator HC3(Ph(fixed = false), Pc(fixed = false)) annotation(
    Placement(transformation(origin = {496, -8}, extent = {{-38, -38}, {38, 38}})));
  Modelica.Blocks.Math.Add P1(k2 = -1) annotation(
    Placement(transformation(origin = {648, 214}, extent = {{-46, -46}, {46, 46}})));
  Modelica.Blocks.Math.Add P2(k2 = -1) annotation(
    Placement(transformation(origin = {664, 102}, extent = {{-46, -46}, {46, 46}})));
  Modelica.Blocks.Math.Add P3(k2 = -1) annotation(
    Placement(transformation(origin = {644, -10}, extent = {{-46, -46}, {46, 46}})));
  Real Etot(start = 0.0);
  Real Ecool(start = 0.0);
  Real Eheat(start = 0.0);
  AES.ControlBlocks.ActuationSchemes.SplitRange01 splitRange1 annotation(
    Placement(transformation(origin = {307, 215}, extent = {{-39, -41}, {39, 41}})));
  AES.ControlBlocks.ActuationSchemes.SplitRange01 splitRange11 annotation(
    Placement(transformation(origin = {308, 103}, extent = {{-44, -35}, {44, 35}})));
  AES.ControlBlocks.ActuationSchemes.SplitRange01 splitRange12 annotation(
    Placement(transformation(origin = {313, -13}, extent = {{-41, -45}, {41, 45}})));
  StrictController strictController(Tau = 1, TauHC = 100) annotation(
    Placement(transformation(origin = {-384, 194}, extent = {{-61, -61}, {61, 61}})));
  Modelica.Blocks.Sources.RealExpression realExpression121(y = if Functions.hod(time) >= scheduler.hod_start_strict and Functions.hod(time) < scheduler.hod_end_strict then building_ee.T1 else SetPointTable.y[1]) annotation(
    Placement(transformation(origin = {-784, 328}, extent = {{-92, -42}, {92, 42}})));
  Modelica.Blocks.Sources.RealExpression realExpression122(y = if Functions.hod(time) >= scheduler.hod_start_strict and Functions.hod(time) < scheduler.hod_end_strict then building_ee.T2 else SetPointTable.y[2]) annotation(
    Placement(transformation(origin = {-780, 220}, extent = {{-92, -42}, {92, 42}})));
  Modelica.Blocks.Sources.RealExpression realExpression1211(y = if Functions.hod(time) >= scheduler.hod_start_strict and Functions.hod(time) < scheduler.hod_end_strict then building_ee.T3 else SetPointTable.y[3]) annotation(
    Placement(transformation(origin = {-780, 104}, extent = {{-92, -42}, {92, 42}})));
  Modelica.Blocks.Sources.CombiTimeTable SetPointTable(columns = {2, 3, 4}, extrapolation = Modelica.Blocks.Types.Extrapolation.Periodic, offset = {273.15}, table = {{0, 10, 10, 15}, {5, 10, 10, 15}, {6, 10, 18, 15}, {7, 20, 18, 15}, {8, 20, 18, 16.5}, {9, 20, 18, 18}, {17, 20, 18, 18}, {18, 15, 18, 18}, {20, 15, 10, 18}, {21, 15, 10, 18}, {22, 10, 10, 15}, {24, 10, 10, 15}}, timeEvents = Modelica.Blocks.Types.TimeEvents.Always, timeScale = 3600) annotation(
    Placement(transformation(origin = {-1253, 281}, extent = {{-51, -51}, {51, 51}})));
  Modelica.Blocks.Sources.RealExpression Te(y = tePrad1.Te) annotation(
    Placement(transformation(origin = {-590, 393}, extent = {{-48, -31}, {48, 31}})));
equation
  der(Etot) = abs(P1.y) + abs(P2.y) + abs(P3.y);
  der(Eheat) = abs(HC1.Ph) + abs(HC2.Ph) + abs(HC3.Ph);
  der(Ecool) = abs(HC1.Pc) + abs(HC2.Pc) + abs(HC3.Pc);
  connect(doorOpenings.door3eopen, building_ee.door3) annotation(
    Line(points = {{720.4, -217.2}, {720.4, -248}, {848.5, -248}}, color = {255, 0, 255}));
  connect(doorOpenings.door23open, building_ee.door2) annotation(
    Line(points = {{720.4, -192}, {833.8, -192}, {833.8, -196}, {848.5, -196}}, color = {255, 0, 255}));
  connect(doorOpenings.door13open, building_ee.door1) annotation(
    Line(points = {{720.4, -166.8}, {803.8, -166.8}, {803.8, -108}, {848.5, -108}}, color = {255, 0, 255}));
  connect(tePrad1.Te, building_ee.Te) annotation(
    Line(points = {{1265, 616}, {1265, 354.9}, {1272, 354.9}, {1272, 283}}, color = {0, 0, 127}));
  connect(tePrad1.Prad, building_ee.PRad) annotation(
    Line(points = {{1219, 616}, {1219, 354.4}, {1211.5, 354.4}, {1211.5, 280}}, color = {0, 0, 127}));
  connect(powerDisturbances.Pdr1, building_ee.D1) annotation(
    Line(points = {{1028, 446}, {1028, 268.7}, {1052, 268.7}, {1052, 280}}, color = {0, 0, 127}));
  connect(powerDisturbances.Pdr3, building_ee.D3) annotation(
    Line(points = {{980, 446}, {980, 343}, {912, 343}, {912, 280}}, color = {0, 0, 127}));
  connect(powerDisturbances.Pdr2, building_ee.D2) annotation(
    Line(points = {{1004, 446}, {1004, 342}, {986, 342}, {986, 280}}, color = {0, 0, 127}));
  connect(HC1.Ph, P1.u1) annotation(
    Line(points = {{535.2, 241.6}, {591.2, 241.6}}, color = {0, 0, 127}));
  connect(HC1.Pc, P1.u2) annotation(
    Line(points = {{535.2, 198.4}, {591.2, 198.4}, {591.2, 186.4}}, color = {0, 0, 127}));
  connect(P1.y, building_ee.P1) annotation(
    Line(points = {{698.6, 214}, {848.5, 214}}, color = {0, 0, 127}));
  connect(P2.u1, HC2.Ph) annotation(
    Line(points = {{608.8, 129.6}, {548.8, 129.6}}, color = {0, 0, 127}));
  connect(P2.u2, HC2.Pc) annotation(
    Line(points = {{608.8, 74.4}, {550.8, 74.4}, {550.8, 86.4}, {548.8, 86.4}}, color = {0, 0, 127}));
  connect(P2.y, building_ee.P2) annotation(
    Line(points = {{714.6, 102}, {762.6, 102}, {762.6, 156}, {848.5, 156}}, color = {0, 0, 127}));
  connect(HC3.Ph, P3.u1) annotation(
    Line(points = {{541.6, 14.8}, {562.6, 14.8}, {562.6, 18.8}, {587.6, 18.8}}, color = {0, 0, 127}));
  connect(HC3.Pc, P3.u2) annotation(
    Line(points = {{541.6, -30.8}, {587.6, -30.8}, {587.6, -38.8}}, color = {0, 0, 127}));
  connect(P3.y, building_ee.P3) annotation(
    Line(points = {{694.6, -10}, {778.6, -10}, {778.6, 93}, {848.5, 93}}, color = {0, 0, 127}));
  connect(scheduler.h3_loose, loose_Controller.h3_loose) annotation(
    Line(points = {{-125, -66}, {-174.76, -66}, {-174.76, -100}, {-235, -100}}, color = {0, 0, 127}));
  connect(realExpression12.y, loose_Controller.T3) annotation(
    Line(points = {{-502.8, -58}, {-502.8, -49}, {-437, -49}}, color = {0, 0, 127}));
  connect(scheduler.h1out, splitRange1.CSi01) annotation(
    Line(points = {{142, 186}, {142, 215}, {260, 215}}, color = {0, 0, 127}));
  connect(splitRange1.CSo01_pos, HC1.uh01) annotation(
    Line(points = {{354, 240}, {354, 241.6}, {447.8, 241.6}}, color = {0, 0, 127}));
  connect(HC1.uc01, splitRange1.CSo01_neg) annotation(
    Line(points = {{448.8, 198.4}, {352.8, 198.4}, {352.8, 190}, {354, 190}}, color = {0, 0, 127}));
  connect(scheduler.h2out, splitRange11.CSi01) annotation(
    Line(points = {{143, 128}, {238.2, 128}, {238.2, 103.4}, {255.2, 103.4}}, color = {0, 0, 127}));
  connect(splitRange11.CSo01_neg, HC2.uc01) annotation(
    Line(points = {{360.8, 82}, {380.3, 82}, {380.3, 86}, {459.8, 86}}, color = {0, 0, 127}));
  connect(HC2.uh01, splitRange11.CSo01_pos) annotation(
    Line(points = {{460.8, 129.6}, {384.3, 129.6}, {384.3, 123.6}, {361.8, 123.6}}, color = {0, 0, 127}));
  connect(scheduler.h3out, splitRange12.CSi01) annotation(
    Line(points = {{143, 51}, {199.7, 51}, {199.7, -13}, {264, -13}}, color = {0, 0, 127}));
  connect(HC3.uh01, splitRange12.CSo01_pos) annotation(
    Line(points = {{450.4, 14.8}, {396.4, 14.8}, {396.4, 14}, {362, 14}}, color = {0, 0, 127}));
  connect(splitRange12.CSo01_neg, HC3.uc01) annotation(
    Line(points = {{362, -40}, {402.1, -40}, {402.1, -30}, {450.2, -30}}, color = {0, 0, 127}));
  connect(strictController.u3, scheduler.h3_strict) annotation(
    Line(points = {{-281.52, 142.76}, {-281.52, 181}, {-125, 181}}, color = {0, 0, 127}));
  connect(scheduler.h2_strict, strictController.u2) annotation(
    Line(points = {{-125, 208}, {-125, 192.44}, {-282.76, 192.44}}, color = {0, 0, 127}));
  connect(strictController.u1, scheduler.h1_strict) annotation(
    Line(points = {{-281.52, 237.92}, {-203.52, 237.92}, {-203.52, 236}, {-125, 236}}, color = {0, 0, 127}));
  connect(realExpression1211.y, strictController.y_meas3) annotation(
    Line(points = {{-678.8, 104}, {-506.8, 104}, {-506.8, 116}}, color = {0, 0, 127}));
  connect(strictController.y_meas2, realExpression122.y) annotation(
    Line(points = {{-506, 225.72}, {-506, 220}, {-679, 220}}, color = {0, 0, 127}));
  connect(realExpression121.y, strictController.y_meas1) annotation(
    Line(points = {{-682.8, 328}, {-506.8, 328}, {-506.8, 318}}, color = {0, 0, 127}));
  connect(SetPointTable.y[1], strictController.setpoint1) annotation(
    Line(points = {{-1196, 282}, {-506, 282}, {-506, 274}}, color = {0, 0, 127}));
  connect(SetPointTable.y[2], strictController.setpoint2) annotation(
    Line(points = {{-1196, 282}, {-996, 282}, {-996, 172}, {-506, 172}}, color = {0, 0, 127}));
  connect(SetPointTable.y[3], strictController.setpoint3) annotation(
    Line(points = {{-1196, 282}, {-996, 282}, {-996, 70}, {-506, 70}}, color = {0, 0, 127}));
  connect(SetPointTable.y[3], loose_Controller.Tdes3) annotation(
    Line(points = {{-1196, 282}, {-996, 282}, {-996, -220}, {-434, -220}}, color = {0, 0, 127}));
  connect(strictController.Te, Te.y) annotation(
    Line(points = {{-394, 364}, {-392, 364}, {-392, 394}, {-538, 394}}, color = {0, 0, 127}));
  annotation(
    Diagram(coordinateSystem(extent = {{-1340, 520}, {1360, -300}})));
end Controlled_Building_2;
