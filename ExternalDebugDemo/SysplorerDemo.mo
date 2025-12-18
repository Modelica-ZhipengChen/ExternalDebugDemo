model SysplorerDemo
  function myFcn "源码形式外部函数"
    input Real x;
    input Real y;
    output Real z;
  external "C" z = my_fcn(x, y) 
    annotation(Include = "#include \"my_fcn.c\"",
    IncludeDirectory = "modelica://ExternalDebugDemo/Resources/C-Source");
  end myFcn;

  function myAdd "静态库形式外部函数"
    input Real x;
    input Real y;
    output Real z;
  external "C" z = my_add(x, y) 
    annotation(Include = "#include \"my_add.h\"", Library="myAdd");
  end myAdd;

  function myDiv "动态库形式外部函数"
    input Real x;
    input Real y;
    output Real z;
  external "C" z = my_div(x, y) 
    annotation(Include = "#include \"my_div.h\"", Library="myDiv");
  end myDiv;

  Real z1;
  Real z2;
  Real z3;
equation
  z1 = myAdd(time, 1);
  z2 = myFcn(1, 1 - time);
  z3 = myDiv(z1, z2);
end SysplorerDemo;