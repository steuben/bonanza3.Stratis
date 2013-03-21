
////grnf_fnc_coinFlip
////returns true or false
////no parameter: ~50% chance
////parameter (optional): number, 0 - 100, probability for this function to return true instead of false
////ex: _coinflip = call grnf_fnc_randomChance;
////ex: _isWinning = 40 call grnf_fnc_randomChance;


private["_chance", "_random", "_winning"];

_chance = _this;
if (isNil "_chance") then 
{
	_chance = 50;
};

_random = random 100;

if (_chance >= _random) then
{
	_winning = true;
} else 
{
	_winning = false;
};

_winning
