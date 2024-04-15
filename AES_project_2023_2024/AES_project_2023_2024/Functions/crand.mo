within AES_project_2023_2024.Functions;

function crand
  extends Modelica.Icons.Function;
  input Real ymin=0;
  input Real ymax=1;
  output Real y;
algorithm
  y := ymin+(ymax-ymin)*crand01();
end crand;