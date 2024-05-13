within AES_project_2023_2024.ProjectIntroExamples;

model Example_001_signals_from_CombiTimeTable
  extends Modelica.Icons.Example;
  Modelica.Blocks.Sources.CombiTimeTable SetPointTable(table = {{0, 10, 10, 15}, {5, 10, 10, 15}, {6, 10, 18, 15}, {7, 20, 18, 15}, {8, 20, 18, 16.5}, {9, 20, 18, 18}, {17, 20, 18, 18}, {18, 15, 18, 18}, {20, 15, 10, 18}, {21, 15, 10, 18}, {22, 10, 10, 15}, {24, 10, 10, 15}}, columns = {2, 3, 4}, extrapolation = Modelica.Blocks.Types.Extrapolation.Periodic, timeScale = 3600, offset = {273.15}, timeEvents = Modelica.Blocks.Types.TimeEvents.Always) annotation(
    Placement(transformation(origin = {-50, 50}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Continuous.FirstOrder system1(k = 1, T = 1000, initType = Modelica.Blocks.Types.Init.InitialOutput, y_start = 273.15)  annotation(
    Placement(transformation(origin = {10, 50}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Continuous.FirstOrder system2(k = 1, T = 2000, initType = Modelica.Blocks.Types.Init.InitialOutput, y_start = 273.15)  annotation(
    Placement(transformation(origin = {10, 10}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Continuous.FirstOrder system3(k = 1, T = 3000, initType = Modelica.Blocks.Types.Init.InitialOutput, y_start = 273.15)  annotation(
    Placement(transformation(origin = {10, -30}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(SetPointTable.y[1], system1.u) annotation(
    Line(points = {{-39, 50}, {-2, 50}}, color = {0, 0, 127}));
  connect(SetPointTable.y[2], system2.u) annotation(
    Line(points = {{-39, 50}, {-20, 50}, {-20, 10}, {-2, 10}}, color = {0, 0, 127}));
  connect(SetPointTable.y[3], system3.u) annotation(
    Line(points = {{-39, 50}, {-20, 50}, {-20, -30}, {-2, -30}}, color = {0, 0, 127}));
  annotation(
    experiment(StartTime = 0, StopTime = 864000, Tolerance = 1e-06, Interval = 10),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STDOUT,LOG_ASSERT,LOG_STATS", s = "dassl", variableFilter = ".*"));
end Example_001_signals_from_CombiTimeTable;
