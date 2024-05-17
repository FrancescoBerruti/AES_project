within AES_project_2023_2024.ProcessComponents;

model HCactuator
  parameter Power Phmax = 4000 "max heating power";
  parameter Power Pcmax = 1000 "max cooling power";
  parameter Time  tauh  =   30 "heating time constant";
  parameter Time  tauc  =  120 "cooling time constant";
  
  Modelica.Blocks.Interfaces.RealInput uh01 annotation(
    Placement(transformation(origin = {-120, 0}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-120, 60}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Interfaces.RealInput uc01 annotation(
    Placement(transformation(origin = {-110, 10}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-120, -60}, extent = {{-20, -20}, {20, 20}})));  Modelica.Blocks.Interfaces.RealOutput Ph(start=0,fixed=true) annotation(
    Placement(transformation(origin = {-206, 10}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {120, 60}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Interfaces.RealOutput Pc(start=0,fixed=true) annotation(
    Placement(transformation(origin = {-196, 20}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {120, -60}, extent = {{-20, -20}, {20, 20}})));

equation
  Ph+tauh*der(Ph) = Phmax*max(0,min(1,uh01));
  Pc+tauc*der(Pc) = Pcmax*max(0,min(1,uc01));
annotation(
    Icon(graphics = {Rectangle(fillColor = {255, 200, 255}, fillPattern = FillPattern.Solid, extent = {{-100, 100}, {100, -100}}), Text(origin = {-2, -7}, extent = {{-68, 61}, {68, -61}}, textString = "HC")}),
  experiment(StartTime = 0, StopTime = 1, Tolerance = 1e-6, Interval = 0.002),
  __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
  __OpenModelica_simulationFlags(lv = "LOG_STDOUT,LOG_ASSERT,LOG_STATS", s = "dassl", variableFilter = ".*"));
end HCactuator;
