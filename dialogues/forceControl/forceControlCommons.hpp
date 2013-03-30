

// BG CLASSES 
 
 
		  // MAIN BG 
		  
		  class bgShape 
		  {
			idc = -1;
			type =  0 ;  
			style = 0; 
			moving = true;
			colorText[] = { 0, 0, 0, 1 };
			colorBackground[] = { 0.0, 0.4, 0.8, 0.6 };
			font = "EtelkaMonospaceProBold";
			sizeEx = 0.023;
			x = 0.4; y = 0.2;
			w = 0.515;  h = 0.33;
			text = "";
		  };
		  
		   class headlineBG 
		  {
			idc = -1;
			type =  0 ;  
			style = 0; 
			moving = true;
			colorText[] = { 1, 1, 1, 1 };
			colorBackground[] = { 0, 0, 0, 0.7 };
			font = "EtelkaMonospaceProBold";
			sizeEx = 0.023;
			x = 0.4; y = 0.2;
			w = 0.515;  h = 0.08;
			text = "";
		  };


		  
// TITLE BAR


  class titleBarText 
  {
	idc = -1;
	type =  0 ;
	style = 0;
	moving = true;
	colorText[] = { 0.0, 0.8, 1, 1 };
	colorBackground[] = { 0.0, 0.0, 0.0, 0 };
	font = "EtelkaMonospaceProBold";
	sizeEx = 0.043;
	x = 0.415; y = 0.208;
	w = 0.515;  h = 0.07;
	text = "";
  };
  
  
// BUTTON CLASSES

		// CLOSE BUTTON
		  
		  class btn_close 
		  {
			
			idc = -1;
			type = 1;
			style = 2;
			moving = false;
			
			x = 0.78;
			y = 0.205;
			h = 0.08;
			w = 0.14;
			
			font = "EtelkaMonospaceProBold";
			sizeEx = 0.026;
			
			action = "forceControlStart = false; closeDialog 0;"	
			
			default = false;
			colorText[] = {1,1,1,1}; // white
			colorFocused[] = {0.5, 0.5, 0.5,0}; 
			colorShadow[] = {0.8,0.8,0.8,0}; 
			colorBorder[] = {0,0.0,0.0,0}; 
			colorBackground[] = {0, 0, 0,0};
			colorBackgroundActive[] = {0,0,0,0}; 
			colorDisabled[] = {0.6,0.6,0.6,1};
			colorBackgroundDisabled[] = {0.3,0.3,0.3,0};
			borderSize = 0.000;
			offsetX = 0.000;
			offsetY = 0.000;
			offsetPressedX = 0.000;
			offsetPressedY = 0.000;
			soundEnter[] = {"",0,1}; 
			soundPush[] = {"",0,1}; 
			soundClick[] = {"",0,1}; 
			soundEscape[] = {"",0,1};
			
			text = "CLOSE [X]";
			
		  };
		  
		  // MAIN MENU BUTTON
		  class ButtonControlContentWide 
		  {
			idc = -1;
			type = 1;
			style = 2;
			moving = false;
			
			
			x = 0.4;
			y = 0.4;
			w = 0.515;
			h = 0.07;
			
			
			font = "EtelkaMonospaceProBold";
			sizeEx = 0.032;
			
			action = ""
			
			default = false;
			colorText[] = {1,1,1,1};
			colorFocused[] = { 0.0, 0.7, 1, 0.6 };
			colorShadow[] = {0.8,0.8,0.8,0};
			colorBorder[] = {0.5,0.5,0.5,1}; 
			colorBackground[] = {0.0, 0.0, 0.0, 0.7};
			colorBackgroundActive[] = { 0.0, 0.7, 1, 0.6 };
			colorDisabled[] = {0.5,0.5,0.5,0.8};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,0.6};
			borderSize = 0.000;
			offsetX = 0.005;
			offsetY = 0.005;
			offsetPressedX = 0.000;
			offsetPressedY = 0.002;
			soundEnter[] = {"",0,1}; // NoSound
			soundPush[] = {"",0,1}; // NoSound
			soundClick[] = {"",0,1}; // NoSound
			soundEscape[] = {"",0,1}; // NoSound
			
			text = "";
			
		  }; 
		  
		  
		 // BACK TO MAIN MENU - BUTTON 
  
		  class btn_backToStart:ButtonControlContentWide 
			{
			
				idc = -1;
				type = 1;
				
				x = 0.4;
				y = 0.29;
				
				w = 0.515;
				h = 0.07;
				
				font = "EtelkaMonospaceProBold";
				sizeEx = 0.032;
				
				text = "BACK TO START";
				action = "closeDialog 0;  [] execVM ""extras\forceControl\forceControlStateHandler.sqf""; _ok = createDialog ""uiForceControlStart"";"	
			};
				  
