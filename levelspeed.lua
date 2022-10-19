function _OnFrame()
	World = ReadByte(Now + 0x00)
	Room = ReadByte(Now + 0x01)
	Place = ReadShort(Now + 0x00)
	Door = ReadShort(Now + 0x02)
	Map = ReadShort(Now + 0x04)
	Btl = ReadShort(Now + 0x06)
	Evt = ReadShort(Now + 0x08)
	Cheats()
end

function _OnInit()
	if GAME_ID == 0xF266B00B or GAME_ID == 0xFAF99301 and ENGINE_TYPE == "ENGINE" then--PCSX2
		Platform = 'PS2'
		Now = 0x032BAE0 --Current Location
		Save = 0x032BB30 --Save File
		Obj0 = 0x1C94100 --00objentry.bin
		Sys3 = 0x1CCB300 --03system.bin
		Btl0 = 0x1CE5D80 --00battle.bin
		Slot1 = 0x1C6C750 --Unit Slot 1
	elseif GAME_ID == 0x431219CC and ENGINE_TYPE == 'BACKEND' then--PC
		Platform = 'PC'
		Now = 0x0714DB8 - 0x56454E
		Save = 0x09A7070 - 0x56450E
		Obj0 = 0x2A22B90 - 0x56450E
		Sys3 = 0x2A59DB0 - 0x56450E
		Btl0 = 0x2A74840 - 0x56450E
		Slot1 = 0x2A20C58 - 0x56450E
	end
end

function Events(M,B,E) --Check for Map, Btl, and Evt
	return ((Map == M or not M) and (Btl == B or not B) and (Evt == E or not E))
end

function Cheats()
   if ReadByte(Save+0x24FF) == 2 then -- Sora level 2
      WriteFloat(Sys3+0x17CE4, 8.5)
   elseif ReadByte(Save+0x24FF) == 3 then -- Sora level 3
      WriteFloat(Sys3+0x17CE4, 9)
   elseif ReadByte(Save+0x24FF) == 4 then -- Sora level 4
      WriteFloat(Sys3+0x17CE4, 9.5)
   elseif ReadByte(Save+0x24FF) == 5 then -- Sora level 5
      WriteFloat(Sys3+0x17CE4, 10)
   elseif ReadByte(Save+0x24FF) == 6 then -- Sora level 6
      WriteFloat(Sys3+0x17CE4, 10.5)
   elseif ReadByte(Save+0x24FF) == 7 then -- Sora level 7
      WriteFloat(Sys3+0x17CE4, 11)
   elseif ReadByte(Save+0x24FF) == 8 then -- Sora level 8
      WriteFloat(Sys3+0x17CE4, 11.5)
   elseif ReadByte(Save+0x24FF) == 9 then -- Sora level 9
      WriteFloat(Sys3+0x17CE4, 12)
   elseif ReadByte(Save+0x24FF) == 10 then -- Sora level 10
      WriteFloat(Sys3+0x17CE4, 12.5)
   elseif ReadByte(Save+0x24FF) == 11 then -- Sora level 11
      WriteFloat(Sys3+0x17CE4, 13)
   elseif ReadByte(Save+0x24FF) == 12 then -- Sora level 12
      WriteFloat(Sys3+0x17CE4, 13.5)
   elseif ReadByte(Save+0x24FF) == 13 then -- Sora level 13
      WriteFloat(Sys3+0x17CE4, 14)
   elseif ReadByte(Save+0x24FF) == 14 then -- Sora level 14
      WriteFloat(Sys3+0x17CE4, 14.5)
   elseif ReadByte(Save+0x24FF) == 15 then -- Sora level 15
      WriteFloat(Sys3+0x17CE4, 15)
   elseif ReadByte(Save+0x24FF) == 16 then -- Sora level 16
      WriteFloat(Sys3+0x17CE4, 15.5)
   elseif ReadByte(Save+0x24FF) == 17 then -- Sora level 17
      WriteFloat(Sys3+0x17CE4, 16)
   elseif ReadByte(Save+0x24FF) == 18 then -- Sora level 18
      WriteFloat(Sys3+0x17CE4, 16.5)
   elseif ReadByte(Save+0x24FF) == 19 then -- Sora level 19
      WriteFloat(Sys3+0x17CE4, 17)
   elseif ReadByte(Save+0x24FF) == 20 then -- Sora level 20
      WriteFloat(Sys3+0x17CE4, 17.5)
   elseif ReadByte(Save+0x24FF) == 21 then -- Sora level 21
      WriteFloat(Sys3+0x17CE4, 18)
   elseif ReadByte(Save+0x24FF) == 22 then -- Sora level 22
      WriteFloat(Sys3+0x17CE4, 18.5)
   elseif ReadByte(Save+0x24FF) == 23 then -- Sora level 23
      WriteFloat(Sys3+0x17CE4, 19)
   elseif ReadByte(Save+0x24FF) == 24 then -- Sora level 24
      WriteFloat(Sys3+0x17CE4, 19.5)
   elseif ReadByte(Save+0x24FF) == 25 then -- Sora level 25
      WriteFloat(Sys3+0x17CE4, 20)
   elseif ReadByte(Save+0x24FF) == 26 then -- Sora level 26
      WriteFloat(Sys3+0x17CE4, 20.5)
   elseif ReadByte(Save+0x24FF) == 27 then -- Sora level 27
      WriteFloat(Sys3+0x17CE4, 21)
   elseif ReadByte(Save+0x24FF) == 28 then -- Sora level 28
      WriteFloat(Sys3+0x17CE4, 21.5)
   elseif ReadByte(Save+0x24FF) == 29 then -- Sora level 29
      WriteFloat(Sys3+0x17CE4, 22)
   elseif ReadByte(Save+0x24FF) == 30 then -- Sora level 30
      WriteFloat(Sys3+0x17CE4, 22.5)
   elseif ReadByte(Save+0x24FF) == 31 then -- Sora level 31
      WriteFloat(Sys3+0x17CE4, 23)
   elseif ReadByte(Save+0x24FF) == 32 then -- Sora level 32
      WriteFloat(Sys3+0x17CE4, 23.5)
   elseif ReadByte(Save+0x24FF) == 33 then -- Sora level 33
      WriteFloat(Sys3+0x17CE4, 24)
   elseif ReadByte(Save+0x24FF) == 34 then -- Sora level 34
      WriteFloat(Sys3+0x17CE4, 24.5)
   elseif ReadByte(Save+0x24FF) == 35 then -- Sora level 35
      WriteFloat(Sys3+0x17CE4, 25)
   elseif ReadByte(Save+0x24FF) == 36 then -- Sora level 36
      WriteFloat(Sys3+0x17CE4, 25.5)
   elseif ReadByte(Save+0x24FF) == 37 then -- Sora level 37
      WriteFloat(Sys3+0x17CE4, 26)
   elseif ReadByte(Save+0x24FF) == 38 then -- Sora level 38
      WriteFloat(Sys3+0x17CE4, 26.5)
   elseif ReadByte(Save+0x24FF) == 39 then -- Sora level 39
      WriteFloat(Sys3+0x17CE4, 27)
   elseif ReadByte(Save+0x24FF) == 40 then -- Sora level 40
      WriteFloat(Sys3+0x17CE4, 27.5)
   elseif ReadByte(Save+0x24FF) == 41 then -- Sora level 41
      WriteFloat(Sys3+0x17CE4, 28)
   elseif ReadByte(Save+0x24FF) == 42 then -- Sora level 42
      WriteFloat(Sys3+0x17CE4, 28.5)
   elseif ReadByte(Save+0x24FF) == 43 then -- Sora level 43
      WriteFloat(Sys3+0x17CE4, 29)
   elseif ReadByte(Save+0x24FF) == 44 then -- Sora level 44
      WriteFloat(Sys3+0x17CE4, 29.5)
   elseif ReadByte(Save+0x24FF) == 45 then -- Sora level 45
      WriteFloat(Sys3+0x17CE4, 30)
   elseif ReadByte(Save+0x24FF) == 46 then -- Sora level 46
      WriteFloat(Sys3+0x17CE4, 30.5)
   elseif ReadByte(Save+0x24FF) == 47 then -- Sora level 47
      WriteFloat(Sys3+0x17CE4, 31)
   elseif ReadByte(Save+0x24FF) == 48 then -- Sora level 48
      WriteFloat(Sys3+0x17CE4, 31.5)
   elseif ReadByte(Save+0x24FF) == 49 then -- Sora level 49
      WriteFloat(Sys3+0x17CE4, 32)
   elseif ReadByte(Save+0x24FF) == 50 then -- Sora level 50
      WriteFloat(Sys3+0x17CE4, 32.5)
   elseif ReadByte(Save+0x24FF) == 51 then -- Sora level 51
      WriteFloat(Sys3+0x17CE4, 33)
   elseif ReadByte(Save+0x24FF) == 52 then -- Sora level 52
      WriteFloat(Sys3+0x17CE4, 33.5)
   elseif ReadByte(Save+0x24FF) == 53 then -- Sora level 53
      WriteFloat(Sys3+0x17CE4, 34)
   elseif ReadByte(Save+0x24FF) == 54 then -- Sora level 54
      WriteFloat(Sys3+0x17CE4, 34.5)
   elseif ReadByte(Save+0x24FF) == 55 then -- Sora level 55
      WriteFloat(Sys3+0x17CE4, 35)
   elseif ReadByte(Save+0x24FF) == 56 then -- Sora level 56
      WriteFloat(Sys3+0x17CE4, 35.5)
   elseif ReadByte(Save+0x24FF) == 57 then -- Sora level 57
      WriteFloat(Sys3+0x17CE4, 36)
   elseif ReadByte(Save+0x24FF) == 58 then -- Sora level 58
      WriteFloat(Sys3+0x17CE4, 36.5)
   elseif ReadByte(Save+0x24FF) == 59 then -- Sora level 59
      WriteFloat(Sys3+0x17CE4, 37)
   elseif ReadByte(Save+0x24FF) == 60 then -- Sora level 60
      WriteFloat(Sys3+0x17CE4, 37.5)
   elseif ReadByte(Save+0x24FF) == 61 then -- Sora level 61
      WriteFloat(Sys3+0x17CE4, 38)
   elseif ReadByte(Save+0x24FF) == 62 then -- Sora level 62
      WriteFloat(Sys3+0x17CE4, 38.5)
   elseif ReadByte(Save+0x24FF) == 63 then -- Sora level 63
      WriteFloat(Sys3+0x17CE4, 39)
   elseif ReadByte(Save+0x24FF) == 64 then -- Sora level 64
      WriteFloat(Sys3+0x17CE4, 39.5)
   elseif ReadByte(Save+0x24FF) == 65 then -- Sora level 65
      WriteFloat(Sys3+0x17CE4, 40)
   elseif ReadByte(Save+0x24FF) == 66 then -- Sora level 66
      WriteFloat(Sys3+0x17CE4, 40.5)
   elseif ReadByte(Save+0x24FF) == 67 then -- Sora level 67
      WriteFloat(Sys3+0x17CE4, 41)
   elseif ReadByte(Save+0x24FF) == 68 then -- Sora level 68
      WriteFloat(Sys3+0x17CE4, 41.5)
   elseif ReadByte(Save+0x24FF) == 69 then -- Sora level 69
      WriteFloat(Sys3+0x17CE4, 42)
   elseif ReadByte(Save+0x24FF) == 70 then -- Sora level 70
      WriteFloat(Sys3+0x17CE4, 42.5)
   elseif ReadByte(Save+0x24FF) == 71 then -- Sora level 71
      WriteFloat(Sys3+0x17CE4, 43)
   elseif ReadByte(Save+0x24FF) == 72 then -- Sora level 72
      WriteFloat(Sys3+0x17CE4, 43.5)
   elseif ReadByte(Save+0x24FF) == 73 then -- Sora level 73
      WriteFloat(Sys3+0x17CE4, 44)
   elseif ReadByte(Save+0x24FF) == 74 then -- Sora level 74
      WriteFloat(Sys3+0x17CE4, 44.5)
   elseif ReadByte(Save+0x24FF) == 75 then -- Sora level 75
      WriteFloat(Sys3+0x17CE4, 45)
   elseif ReadByte(Save+0x24FF) == 76 then -- Sora level 76
      WriteFloat(Sys3+0x17CE4, 45.5)
   elseif ReadByte(Save+0x24FF) == 77 then -- Sora level 77
      WriteFloat(Sys3+0x17CE4, 46)
   elseif ReadByte(Save+0x24FF) == 78 then -- Sora level 78
      WriteFloat(Sys3+0x17CE4, 46.5)
   elseif ReadByte(Save+0x24FF) == 79 then -- Sora level 79
      WriteFloat(Sys3+0x17CE4, 47)
   elseif ReadByte(Save+0x24FF) == 80 then -- Sora level 80
      WriteFloat(Sys3+0x17CE4, 47.5)
   elseif ReadByte(Save+0x24FF) == 81 then -- Sora level 81
      WriteFloat(Sys3+0x17CE4, 48)
   elseif ReadByte(Save+0x24FF) == 82 then -- Sora level 82
      WriteFloat(Sys3+0x17CE4, 48.5)
   elseif ReadByte(Save+0x24FF) == 83 then -- Sora level 83
      WriteFloat(Sys3+0x17CE4, 49)
   elseif ReadByte(Save+0x24FF) == 84 then -- Sora level 84
      WriteFloat(Sys3+0x17CE4, 49.5)
   elseif ReadByte(Save+0x24FF) == 85 then -- Sora level 85
      WriteFloat(Sys3+0x17CE4, 50)
   elseif ReadByte(Save+0x24FF) == 86 then -- Sora level 86
      WriteFloat(Sys3+0x17CE4, 50.5)
   elseif ReadByte(Save+0x24FF) == 87 then -- Sora level 87
      WriteFloat(Sys3+0x17CE4, 51)
   elseif ReadByte(Save+0x24FF) == 88 then -- Sora level 88
      WriteFloat(Sys3+0x17CE4, 51.5)
   elseif ReadByte(Save+0x24FF) == 89 then -- Sora level 89
      WriteFloat(Sys3+0x17CE4, 52)
   elseif ReadByte(Save+0x24FF) == 90 then -- Sora level 90
      WriteFloat(Sys3+0x17CE4, 52.5)
   elseif ReadByte(Save+0x24FF) == 91 then -- Sora level 91
      WriteFloat(Sys3+0x17CE4, 53)
   elseif ReadByte(Save+0x24FF) == 92 then -- Sora level 92
      WriteFloat(Sys3+0x17CE4, 53.5)
   elseif ReadByte(Save+0x24FF) == 93 then -- Sora level 93
      WriteFloat(Sys3+0x17CE4, 54)
   elseif ReadByte(Save+0x24FF) == 94 then -- Sora level 94
      WriteFloat(Sys3+0x17CE4, 54.5)
   elseif ReadByte(Save+0x24FF) == 95 then -- Sora level 95
      WriteFloat(Sys3+0x17CE4, 55)
   elseif ReadByte(Save+0x24FF) == 96 then -- Sora level 96
      WriteFloat(Sys3+0x17CE4, 55.5)
   elseif ReadByte(Save+0x24FF) == 97 then -- Sora level 97
      WriteFloat(Sys3+0x17CE4, 56)
   elseif ReadByte(Save+0x24FF) == 98 then -- Sora level 98
      WriteFloat(Sys3+0x17CE4, 56.5)
   elseif ReadByte(Save+0x24FF) == 99 then -- Sora level 99
      WriteFloat(Sys3+0x17CE4, 57)
   else -- Sora level 1
      WriteFloat(Sys3+0x17CE4, 8)
   end
   WriteFloat(Sys3+0x17D18, 24) -- Valor Form
   WriteFloat(Sys3+0x17D4C, 24) -- Wisdom Form
   WriteFloat(Sys3+0x17D80, 20) -- Master Form
   WriteFloat(Sys3+0x17DB4, 32) -- Final Form
   WriteFloat(Sys3+0x17E1C, 36) -- Lion Sora
   WriteFloat(Sys3+0x17DE8, 32) -- Anti Form
   WriteFloat(Sys3+0x17E50, 35) -- Mermaid Sora
   WriteFloat(Sys3+0x18190, 40) -- Carpet Sora
   WriteFloat(Sys3+0x181F8, 16) -- Dice Sora
   WriteFloat(Sys3+0x1822C, 16) -- Card Sora
   WriteFloat(Sys3+0x18364, 20) -- Limit Form
end
