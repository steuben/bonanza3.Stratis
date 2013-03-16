

//set Friendly
WEST setFriend [EAST,1];
EAST setFriend [WEST,1];


If ((paramsArray select 0) == 0) then
{
	titleText "AI behaviour set to 'friendly'";
};
