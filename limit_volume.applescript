#!/usr/bin/osascript

limitVolume to 10

on limitVolume to limit
	set volume output volume min({currentvolume(), limit})
end limitVolume

on currentvolume()
	return output volume of (get volume settings)
end currentvolume

on min(aList)
	set _curMin to first item of aList
	repeat with i in (rest of aList)
		if i < _curMin then set _curMin to contents of i
	end repeat
	return _curMin
end min
