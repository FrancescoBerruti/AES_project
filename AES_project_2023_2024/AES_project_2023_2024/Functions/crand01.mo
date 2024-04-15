within AES_project_2023_2024.Functions;

function crand01
  extends Modelica.Icons.Function;
  output Real y;
  external "C" y=crand01() annotation(
     IncludeDirectory="modelica://AES_project_2023_2024/Resources/",
     Include="#include \"crand01.c\""); 
end crand01;
