within AES_project_2023_2024.ProjectGroupWork;

model Building_controlled
  Building_ee building_ee annotation(
    Placement(transformation(origin = {145.5, -59}, extent = {{-45.5, -91}, {45.5, 91}})));
  AES_project_2023_2024.ProcessComponents.PowerDisturbances powerDisturbances annotation(
    Placement(transformation(origin = {108, 106}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  AES_project_2023_2024.ProcessComponents.TePrad tePrad1(Temax(displayUnit = "K"), Temin(displayUnit = "K")) annotation(
    Placement(transformation(origin = {192, 96}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  ProcessComponents.DoorOpenings doorOpenings annotation(
    Placement(transformation(origin = {-101, -219}, extent = {{-41, -41}, {41, 41}})));
  Modelica.Blocks.Sources.CombiTimeTable SetPointTable(columns = {2, 3, 4}, extrapolation = Modelica.Blocks.Types.Extrapolation.Periodic, offset = {273.15}, table = {{0, 10, 10, 15}, {5, 10, 10, 15}, {6, 10, 18, 15}, {7, 20, 18, 15}, {8, 20, 18, 16.5}, {9, 20, 18, 18}, {17, 20, 18, 18}, {18, 15, 18, 18}, {20, 15, 10, 18}, {21, 15, 10, 18}, {22, 10, 10, 15}, {24, 10, 10, 15}}, timeEvents = Modelica.Blocks.Types.TimeEvents.Always, timeScale = 3600) annotation(
    Placement(transformation(origin = {-158, -14}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Continuous.FirstOrder system1(T = 1000, initType = Modelica.Blocks.Types.Init.InitialOutput, k = 1, y_start = 273.15) annotation(
    Placement(transformation(origin = {-96, 68}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Continuous.FirstOrder system2(T = 2000, initType = Modelica.Blocks.Types.Init.InitialOutput, k = 1, y_start = 273.15) annotation(
    Placement(transformation(origin = {-94, -14}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Continuous.FirstOrder system3(T = 3000, initType = Modelica.Blocks.Types.Init.InitialOutput, k = 1, y_start = 273.15) annotation(
    Placement(transformation(origin = {-94, -92}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.MatrixGain K (K = [134640, 0, 0; 0, 80000, 0; 0, 0, 80000]) annotation(
    Placement(transformation(origin = {52, 142}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Split_Equalizer split_Equalizer annotation(
    Placement(transformation(origin = {-9, 75}, extent = {{-18, -18}, {18, 18}})));
  Split_Equalizer split_Equalizer1 annotation(
    Placement(transformation(origin = {-9, -7}, extent = {{-18, -18}, {18, 18}})));
  Split_Equalizer split_Equalizer2 annotation(
    Placement(transformation(origin = {-8, -82}, extent = {{-17, -17}, {17, 17}})));
  Modelica.Blocks.Routing.DeMultiplex3 deMultiplex3 annotation(
    Placement(transformation(origin = {0, 142}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Routing.Multiplex3 multiplex3 annotation(
    Placement(transformation(origin = {250, 54}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
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
    Line(points = {{62, -90}, {42, -90}, {42, -194}, {-52, -194}}, color = {255, 0, 255}));
  connect(building_ee.door3, doorOpenings.door3eopen) annotation(
    Line(points = {{62, -136}, {42, -136}, {42, -244}, {-52, -244}}, color = {255, 0, 255}));
  connect(SetPointTable.y[1], system1.u) annotation(
    Line(points = {{-147, -14}, {-129, -14}, {-129, 68}, {-108, 68}}, color = {0, 0, 127}));
  connect(SetPointTable.y[2], system2.u) annotation(
    Line(points = {{-147, -14}, {-106, -14}}, color = {0, 0, 127}));
  connect(SetPointTable.y[3], system3.u) annotation(
    Line(points = {{-147, -14}, {-129, -14}, {-129, -92}, {-106, -92}}, color = {0, 0, 127}));
  connect(doorOpenings.door23open, building_ee.door2) annotation(
    Line(points = {{-52, -219}, {42, -219}, {42, -118}, {62, -118}}, color = {255, 0, 255}));
  connect(system1.y, split_Equalizer.y_ref) annotation(
    Line(points = {{-85, 68}, {-35, 68}}, color = {0, 0, 127}));
  connect(split_Equalizer.actuation_signal, building_ee.P1) annotation(
    Line(points = {{12, 79}, {64, 79}, {64, 18}, {62, 18}}, color = {0, 0, 127}));
  connect(system2.y, split_Equalizer1.y_ref) annotation(
    Line(points = {{-83, -14}, {-34, -14}}, color = {0, 0, 127}));
  connect(split_Equalizer1.actuation_signal, building_ee.P2) annotation(
    Line(points = {{12, -3}, {20, -3}, {20, -2}, {62, -2}}, color = {0, 0, 127}));
  connect(system3.y, split_Equalizer2.y_ref) annotation(
    Line(points = {{-83, -92}, {-33, -92}, {-33, -88}}, color = {0, 0, 127}));
  connect(split_Equalizer2.actuation_signal, building_ee.P3) annotation(
    Line(points = {{12, -78}, {28, -78}, {28, -22}, {62, -22}}, color = {0, 0, 127}));
  connect(K.u, multiplex3.y) annotation(
    Line(points = {{64, 142}, {250, 142}, {250, 66}}, color = {0, 0, 127}, thickness = 0.5));
  connect(K.y, deMultiplex3.u) annotation(
    Line(points = {{42, 142}, {24, 142}}, color = {0, 0, 127}, thickness = 0.5));
  connect(deMultiplex3.y1[1], split_Equalizer.y_meas) annotation(
    Line(points = {{-22, 128}, {-56, 128}, {-56, 90}, {-34, 90}}, color = {0, 0, 127}));
  connect(deMultiplex3.y2[1], split_Equalizer1.y_meas) annotation(
    Line(points = {{-22, 142}, {-66, 142}, {-66, 8}, {-34, 8}}, color = {0, 0, 127}));
  connect(deMultiplex3.y3[1], split_Equalizer2.y_meas) annotation(
    Line(points = {{-22, 156}, {-76, 156}, {-76, -68}, {-32, -68}}, color = {0, 0, 127}));
  connect(building_ee.T1, multiplex3.u1[1]) annotation(
    Line(points = {{222, 14}, {244, 14}, {244, 42}}, color = {0, 0, 127}));
  connect(building_ee.T2, multiplex3.u2[1]) annotation(
    Line(points = {{222, -6}, {250, -6}, {250, 42}}, color = {0, 0, 127}));
  connect(building_ee.T3, multiplex3.u3[1]) annotation(
    Line(points = {{222, -24}, {258, -24}, {258, 42}}, color = {0, 0, 127}));
  annotation(
    Diagram);
end Building_controlled;
