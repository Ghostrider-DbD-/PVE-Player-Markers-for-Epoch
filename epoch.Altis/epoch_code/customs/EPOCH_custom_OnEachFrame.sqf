/*
    Merge this file with your \epoch_code\customs\EPOCH_custom_OnEachFrame.sqf
*/

private _unmarked = allPlayers select {(_x distance player) < 3000};
private _unmarked = _unmarked - (units group player);

{
	private _pos = visiblePositionASL _x;
    _pos set[2, (_x modelToWorld[0, 0, 0]) select 2];
    private _dmg = damage _x;
    private _color = [0.92,0.97,0.04,0.75];  // red, green, blue, alpha
    private _text = format['%1 : %2m', [typeOf _x,name _x] select (isPlayer _x), round(player distance _x)];
    drawIcon3D["\x\addons\a3_epoch_code\Data\Member.paa", _color, _pos, 1, 1, 0, _text, 1, 0.025, "PuristaMedium"];
} forEach _unmarked;