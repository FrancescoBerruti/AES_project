within AES_project_2023_2024.ProjectGroupWork;

model Controlled_Building_2
  Building_ee building_ee(Tstart = 285)  annotation(
    Placement(transformation(origin = {711.5, -13}, extent = {{-137.5, -275}, {137.5, 275}})));
  ProcessComponents.DoorOpenings doorOpenings annotation(
    Placement(transformation(origin = {280, -178}, extent = {{-42, -42}, {42, 42}})));
  Modelica.Blocks.Sources.RealExpression realExpression12(y = building_ee.T3) annotation(
    Placement(transformation(origin = {-994, -44}, extent = {{-92, -42}, {92, 42}})));
  AES_project_2023_2024.ProcessComponents.PowerDisturbances powerDisturbances annotation(
    Placement(transformation(origin = {522, 444}, extent = {{-40, -40}, {40, 40}}, rotation = -90)));
  AES_project_2023_2024.ProcessComponents.TePrad tePrad1(Temax(displayUnit = "degC"), Temin (displayUnit = "degC")) annotation(
    Placement(transformation(origin = {706, 486}, extent = {{-38, -38}, {38, 38}}, rotation = -90)));
  Loose_Controller loose_Controller(h3_loose(fixed = false))  annotation(
    Placement(transformation(origin = {-730.333, -114.5}, extent = {{-89.6667, -134.5}, {89.6667, 134.5}})));
  Scheduler scheduler annotation(
    Placement(transformation(origin = {-382, 96}, extent = {{-116, -174}, {116, 174}})));
  Modelica.Blocks.Sources.Constant const(k = 0) annotation(
    Placement(transformation(origin = {-637, 193}, extent = {{-39, -39}, {39, 39}})));
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
<<<<<<< Updated upstream
    Placement(transformation(origin = {254, 4}, extent = {{-46, -46}, {46, 46}})));
  Modelica.Blocks.Sources.CombiTimeTable SetPointTable(columns = {2, 3, 4}, extrapolation = Modelica.Blocks.Types.Extrapolation.Periodic, offset = {273.15}, table = {{0, 10, 10, 15}, {5, 10, 10, 15}, {6, 10, 18, 15}, {7, 20, 18, 15}, {8, 20, 18, 16.5}, {9, 20, 18, 18}, {17, 20, 18, 18}, {18, 15, 18, 18}, {20, 15, 10, 18}, {21, 15, 10, 18}, {22, 10, 10, 15}, {24, 10, 10, 15}}, timeEvents = Modelica.Blocks.Types.TimeEvents.Always, timeScale = 3600) annotation(
    Placement(transformation(origin = {-949, -223}, extent = {{-45, -45}, {45, 45}}))); Real Etot(start=0.0);
=======
    Placement(transformation(origin = {254, 4}, extent = {{-46, -46}, {46, 46}}))); 
    Real Etot(start=0.0);
    Real Ecool(start=0.0);
    Real Eheat(start=0.0);
>>>>>>> Stashed changes
  AES.ControlBlocks.ActuationSchemes.SplitRange01 splitRange1 annotation(
    Placement(transformation(origin = {-97, 221}, extent = {{-39, -41}, {39, 41}})));
  AES.ControlBlocks.ActuationSchemes.SplitRange01 splitRange11 annotation(
    Placement(transformation(origin = {-82, 117}, extent = {{-44, -35}, {44, 35}})));
  AES.ControlBlocks.ActuationSchemes.SplitRange01 splitRange12 annotation(
    Placement(transformation(origin = {-99, 31}, extent = {{-41, -45}, {41, 45}})));
equation
  der(Etot) = abs(P1.y) + abs(P2.y) + abs(P3.y);
  der(Eheat)= abs(HC1.Ph) + abs(HC2.Ph) + abs(HC3.Ph);
  der(Ecool) = abs(HC1.Pc) + abs(HC2.Pc) + abs(HC3.Pc);

  connect(doorOpenings.door3eopen, building_ee.door3) annotation(
    Line(points = {{330, -203}, {330, -244}, {458.5, -244}}, color = {255, 0, 255}));
  connect(doorOpenings.door23open, building_ee.door2) annotation(
    Line(points = {{330, -178}, {443.4, -178}, {443.4, -192}, {458.5, -192}}, color = {255, 0, 255}));
  connect(doorOpenings.door13open, building_ee.door1) annotation(
    Line(points = {{330, -153}, {413.4, -153}, {413.4, -104}, {458.5, -104}}, color = {255, 0, 255}));
  connect(tePrad1.Te, building_ee.Te) annotation(
    Line(points = {{728.8, 440.4}, {728.8, 358.9}, {882, 358.9}, {882, 287}}, color = {0, 0, 127}));
  connect(tePrad1.Prad, building_ee.PRad) annotation(
    Line(points = {{683.2, 440.4}, {683.2, 358.4}, {821.5, 358.4}, {821.5, 284}}, color = {0, 0, 127}));
  connect(powerDisturbances.Pdr1, building_ee.D1) annotation(
    Line(points = {{546, 396}, {546, 272.7}, {662, 272.7}, {662, 284}}, color = {0, 0, 127}));
  connect(powerDisturbances.Pdr3, building_ee.D3) annotation(
    Line(points = {{498, 396}, {498, 272.7}, {522, 272.7}, {522, 284}}, color = {0, 0, 127}));
  connect(powerDisturbances.Pdr2, building_ee.D2) annotation(
    Line(points = {{522, 396}, {522, 346}, {596, 346}, {596, 284}}, color = {0, 0, 127}));
  connect(const.y, scheduler.h1_strict) annotation(
    Line(points = {{-594, 193}, {-540.6, 193}, {-540.6, 250}, {-511, 250}}, color = {0, 0, 127}));
  connect(scheduler.h2_strict, const.y) annotation(
    Line(points = {{-511, 222}, {-532.26, 222}, {-532.26, 193}, {-594, 193}}, color = {0, 0, 127}));
  connect(scheduler.h3_strict, const.y) annotation(
    Line(points = {{-511, 195}, {-562.5, 195}, {-562.5, 193}, {-594, 193}}, color = {0, 0, 127}));
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
    Line(points = {{-511, -52}, {-565, -52}, {-565, -94}, {-629, -94}}, color = {0, 0, 127}));
  connect(realExpression12.y, loose_Controller.T3) annotation(
    Line(points = {{-893, -44}, {-893, -43}, {-830.8, -43}}, color = {0, 0, 127}));
  connect(SetPointTable.y[3], loose_Controller.Tdes3) annotation(
    Line(points = {{-899.5, -223}, {-829, -223}, {-829, -214}}, color = {0, 0, 127}));
  connect(scheduler.h1out, splitRange1.CSi01) annotation(
    Line(points = {{-244, 200}, {-144, 200}, {-144, 221}}, color = {0, 0, 127}));
  connect(splitRange1.CSo01_pos, HC1.uh01) annotation(
    Line(points = {{-50, 246}, {-50, 256}, {58, 256}}, color = {0, 0, 127}));
  connect(HC1.uc01, splitRange1.CSo01_neg) annotation(
    Line(points = {{58, 212}, {-38, 212}, {-38, 196}, {-50, 196}}, color = {0, 0, 127}));
  connect(scheduler.h2out, splitRange11.CSi01) annotation(
    Line(points = {{-243, 142}, {-152, 142}, {-152, 117}, {-135, 117}}, color = {0, 0, 127}));
  connect(splitRange11.CSo01_neg, HC2.uc01) annotation(
    Line(points = {{-29, 96}, {-9.5, 96}, {-9.5, 100}, {70, 100}}, color = {0, 0, 127}));
  connect(HC2.uh01, splitRange11.CSo01_pos) annotation(
    Line(points = {{70, 144}, {-6.5, 144}, {-6.5, 138}, {-29, 138}}, color = {0, 0, 127}));
  connect(scheduler.h3out, splitRange12.CSi01) annotation(
    Line(points = {{-243, 65}, {-190.5, 65}, {-190.5, 31}, {-148, 31}}, color = {0, 0, 127}));
  connect(HC3.uh01, splitRange12.CSo01_pos) annotation(
    Line(points = {{60, 28}, {6, 28}, {6, 58}, {-50, 58}}, color = {0, 0, 127}));
  connect(splitRange12.CSo01_neg, HC3.uc01) annotation(
    Line(points = {{-50, 4}, {60, 4}, {60, -16}}, color = {0, 0, 127}));
  annotation(
    Diagram(coordinateSystem(extent = {{-1140, 520}, {960, -300}})));
end Controlled_Building_2;
