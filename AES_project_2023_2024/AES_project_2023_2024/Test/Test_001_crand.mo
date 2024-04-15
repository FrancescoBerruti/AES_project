within AES_project_2023_2024.Test;

model Test_001_crand
  extends Icons.TestModel;
  discrete Real ymin,ymax,y;
algorithm
  when sample(0,0.01) then
       y := Functions.crand(ymin,ymax);
  end when;
  when sample(0,1) then 
       ymin := ymin+2;
       ymax := ymax+2;
  end when;
  
initial algorithm
  ymin := -1;
  ymax :=  1;  
annotation(
    experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-6, Interval = 0.02),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian",
    __OpenModelica_simulationFlags(lv = "LOG_STDOUT,LOG_ASSERT,LOG_STATS", s = "dassl", variableFilter = ".*"));
end Test_001_crand;