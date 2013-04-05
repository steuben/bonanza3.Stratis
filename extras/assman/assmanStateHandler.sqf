sleep 0.02;

// BUTTON STATES (Main Menu) 

		// ARTY
		ctrlEnable [100, true];

		// FIXED WING
		ctrlEnable [101, false];

		// ROTARY WING
		ctrlEnable [102, true];

		// CCP
		ctrlEnable [103, true];
				
				// DEPLOY / REDEPLOY
				
				ctrlEnable [40, true];
				
				if (isNil "gnrf_ccpObj") then 
				{
					ctrlSetText [40, "DEPLOY"];
				};
				if (!isNil "gnrf_ccpObj") then 
				{
					ctrlSetText [40, "REDEPLOY"];
				};
				
				// DECONSTRUCT
				ctrlEnable [41, true];

		// INFIL
		ctrlEnable [104, false];

		// EXFIL
		ctrlEnable [105, false];