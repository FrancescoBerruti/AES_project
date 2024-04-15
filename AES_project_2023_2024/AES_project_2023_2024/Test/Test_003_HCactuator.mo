within AES_project_2023_2024.Test;

model Test_003_HCactuator
  extends Icons.TestModel;
  ProcessComponents.HCactuator hc annotation(
    Placement(transformation(origin = {30, 10}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Sine uh(amplitude = 1.5, f = 1/1800) annotation(
    Placement(transformation(origin = {-30, 30}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Sine uc(amplitude = 1.5, f = 1/3600, phase = 0.7853981633974483) annotation(
    Placement(transformation(origin = {-30, -10}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(uh.y, hc.uh01) annotation(
    Line(points = {{-18, 30}, {0, 30}, {0, 16}, {18, 16}}, color = {0, 0, 127}));
  connect(uc.y, hc.uc01) annotation(
    Line(points = {{-18, -10}, {0, -10}, {0, 4}, {18, 4}}, color = {0, 0, 127}));
  annotation(
    experiment(StartTime = 0, StopTime = 86400, Tolerance = 1e-06, Interval = 10),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STDOUT,LOG_ASSERT,LOG_STATS", s = "dassl", variableFilter = ".*"));
end Test_003_HCactuator;
