class CfgNotifications
{
	class Default
	{
		title = ""; 		// Titeltext wird auf schwarzem Untergrund angezeigt.
		iconPicture = ""; 	// Kleines Icon welches Links neben der Beschreibung angezeigt wird. Benutzt die Farbe die bei "color" angegeben wird.
		iconText = ""; 		// Kurzer Text der über dem Icon angezeigt wird. Benutzt die Farbe die bei "color" angegeben wird.
		description = ""; 	// kurze Beschreibung, wird als structured Text angezeigt.  Benutzt die Farbe die bei "color" angegeben wird.
		color[] = {1,1,1,1};// Icon und Text Farbe
		duration = 5; 		// Gibt an wie lange es angezeigt werden soll
		priority = 0; 		// Prioität; Sollen mehrere in Reihe angezeigt werden kommt zuerst die mit der höchsten Zahl usw.
		difficulty[] = {};  // Benötigter Schwierigkeitsgrad. Alle die hier eingetragen werden müssen erfüllt sein.
	};

	// General Notification

	class alert
			{
				title = "Be Advised:";
				iconPicture = "\A3\ui_f\data\map\MapControl\lighthouse_ca.paa";
				description = "%1";
				color[] = {1,0.65,0.65,1};
				duration = 7;
				priority = 4;
			};


	// Task Notifications
	
			class TaskComplete
			{
				title = "Task Completed.";
				iconPicture = "\A3\ui_f\data\map\MapControl\taskicondone_ca.paa";
				description = "%2:<br/>%1";
				priority = 7;
			};
			class TaskFailed
			{
				title = "Task Failed.";
				iconPicture = "\A3\ui_f\data\map\MapControl\taskiconfailed_ca.paa";
				description = "%1";
				priority = 6;
			};
			class TaskCanceled
			{
				title = "Task Canceled.";
				iconPicture = "\A3\ui_f\data\map\MapControl\taskiconcanceled_ca.paa";
				description = "%1";
				priority = 5;
			};
			class TaskAssigned
			{
				title = "Task Assigned.";
				iconPicture = "\A3\ui_f\data\map\MapControl\taskiconcreated_ca.paa";
				description = "New Orders:<br/>%1 %2.";
				duration = 7;
				priority = 4;
			};


};