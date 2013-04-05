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
  controls[] = {"titleDismissArty","btn_backToStart","btn_dismissArty","btn_close"};
  objects[] = {};
  
  #include "assmanDismissArty.hpp"
};

class uiAssmanDismissRotarywing 
{

  idd = -1;
  movingEnable = true;
  controlsBackground[] = {"bgShapeDismiss","titleBarText"};
  controls[] = {"titleDismissRotarywing","btn_backToStart","btn_dismissRotarywing","btn_close"};
  objects[] = {};
  
  #include "assmanDismissRotarywing.hpp"
};

class uiAssmanHandleCCP 
{

  idd = -1;
  movingEnable = true;
  controlsBackground[] = {"bgShapeDismiss","titleBarText"};
  controls[] = {"titleBarText","btn_backToStart","btn_deployCCP","btn_deconstructCCP","btn_close"};
  objects[] = {};
  
  #include "assmanHandleCCP.hpp"
};

