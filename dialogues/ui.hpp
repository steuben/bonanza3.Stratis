class uiAssmanStart 
{

  idd = -1;
  movingEnable = true;
  controlsBackground[] = {"bgShape","titleHome"};
  controls[] = {"btn_reqFiremission","btn_reqFixedwing","btn_reqRotarywing","btn_reqCCP","btn_reqINFIL","btn_reqEXFIL","btn_close"};
  objects[] = {};
  
  #include "assmanStart.hpp"
};


class uiAssmanDismissArty 
{

  idd = -1;
  movingEnable = true;
  controlsBackground[] = {"bgShapeDismiss","titleBarText"};
  controls[] = {"titleDismissMortars","btn_backToStart","btn_dismissMortars","btn_close"};
  objects[] = {};
  
  #include "assmanDismissArty.hpp"
};
