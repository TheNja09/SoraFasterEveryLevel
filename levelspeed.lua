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
		   WriteFloat(Sys3+0x17D18, 12.5) -- Valor Form: DS = 12
				WriteFloat(Sys3+0x17D4C, 12.5) -- Wisdom Form: DS = 12
					WriteFloat(Sys3+0x17D80, 10.5) -- Master Form: DS = 10
						WriteFloat(Sys3+0x17DB4, 16.5) -- Final Form: DS = 16
							WriteFloat(Sys3+0x17E1C, 18.5) -- Lion Sora: DS = 18
								WriteFloat(Sys3+0x17DE8, 16.5) -- Anti Form: DS = 16
									WriteFloat(Sys3+0x17E50, 7.5) -- Mermaid Sora: DS = 7
										WriteFloat(Sys3+0x18190, 20.5) -- Carpet Sora: DS = 20
											WriteFloat(Sys3+0x181F8, 8.5) -- Dice Sora: DS = 8
												WriteFloat(Sys3+0x1822C, 8.5) -- Card Sora: DS = 8
													WriteFloat(Sys3+0x18364, 8.5) -- Limit Form: DS = 8
   elseif ReadByte(Save+0x24FF) == 3 then -- Sora level 3
      WriteFloat(Sys3+0x17CE4, 9)
	     WriteFloat(Sys3+0x17D18, 13) -- Valor Form: DS = 12
				WriteFloat(Sys3+0x17D4C, 13) -- Wisdom Form: DS = 12
					WriteFloat(Sys3+0x17D80, 11) -- Master Form: DS = 10
						WriteFloat(Sys3+0x17DB4, 17) -- Final Form: DS = 16
							WriteFloat(Sys3+0x17E1C, 19) -- Lion Sora: DS = 18
								WriteFloat(Sys3+0x17DE8, 17) -- Anti Form: DS = 16
									WriteFloat(Sys3+0x17E50, 8) -- Mermaid Sora: DS = 7
										WriteFloat(Sys3+0x18190, 21) -- Carpet Sora: DS = 20
											WriteFloat(Sys3+0x181F8, 9) -- Dice Sora: DS = 8
												WriteFloat(Sys3+0x1822C, 9) -- Card Sora: DS = 8
													WriteFloat(Sys3+0x18364, 9) -- Limit Form: DS = 8
   elseif ReadByte(Save+0x24FF) == 4 then -- Sora level 4
      WriteFloat(Sys3+0x17CE4, 9.5)
	     WriteFloat(Sys3+0x17D18, 13.5) -- Valor Form: DS = 12
				WriteFloat(Sys3+0x17D4C, 13.5) -- Wisdom Form: DS = 12
					WriteFloat(Sys3+0x17D80, 11.5) -- Master Form: DS = 10
						WriteFloat(Sys3+0x17DB4, 17.5) -- Final Form: DS = 16
							WriteFloat(Sys3+0x17E1C, 19.5) -- Lion Sora: DS = 18
								WriteFloat(Sys3+0x17DE8, 17.5) -- Anti Form: DS = 16
									WriteFloat(Sys3+0x17E50, 8.5) -- Mermaid Sora: DS = 7
										WriteFloat(Sys3+0x18190, 21.5) -- Carpet Sora: DS = 20
											WriteFloat(Sys3+0x181F8, 9.5) -- Dice Sora: DS = 8
												WriteFloat(Sys3+0x1822C, 9.5) -- Card Sora: DS = 8
													WriteFloat(Sys3+0x18364, 9.5) -- Limit Form: DS = 8
   elseif ReadByte(Save+0x24FF) == 5 then -- Sora level 5
      WriteFloat(Sys3+0x17CE4, 10)
	     WriteFloat(Sys3+0x17D18, 14) -- Valor Form: DS = 12
				WriteFloat(Sys3+0x17D4C, 14) -- Wisdom Form: DS = 12
					WriteFloat(Sys3+0x17D80, 12) -- Master Form: DS = 10
						WriteFloat(Sys3+0x17DB4, 18) -- Final Form: DS = 16
							WriteFloat(Sys3+0x17E1C, 20) -- Lion Sora: DS = 18
								WriteFloat(Sys3+0x17DE8, 18) -- Anti Form: DS = 16
									WriteFloat(Sys3+0x17E50, 9) -- Mermaid Sora: DS = 7
										WriteFloat(Sys3+0x18190, 22) -- Carpet Sora: DS = 20
											WriteFloat(Sys3+0x181F8, 10) -- Dice Sora: DS = 8
												WriteFloat(Sys3+0x1822C, 10) -- Card Sora: DS = 8
													WriteFloat(Sys3+0x18364, 10) -- Limit Form: DS = 8
   elseif ReadByte(Save+0x24FF) == 6 then -- Sora level 6
      WriteFloat(Sys3+0x17CE4, 10.5)
	     WriteFloat(Sys3+0x17D18, 14.5) -- Valor Form: DS = 12
				WriteFloat(Sys3+0x17D4C, 14.5) -- Wisdom Form: DS = 12
					WriteFloat(Sys3+0x17D80, 12.5) -- Master Form: DS = 10
						WriteFloat(Sys3+0x17DB4, 18.5) -- Final Form: DS = 16
							WriteFloat(Sys3+0x17E1C, 20.5) -- Lion Sora: DS = 18
								WriteFloat(Sys3+0x17DE8, 18.5) -- Anti Form: DS = 16
									WriteFloat(Sys3+0x17E50, 9.5) -- Mermaid Sora: DS = 7
										WriteFloat(Sys3+0x18190, 22.5) -- Carpet Sora: DS = 20
											WriteFloat(Sys3+0x181F8, 10.5) -- Dice Sora: DS = 8
												WriteFloat(Sys3+0x1822C, 10.5) -- Card Sora: DS = 8
													WriteFloat(Sys3+0x18364, 10.5) -- Limit Form: DS = 8
   elseif ReadByte(Save+0x24FF) == 7 then -- Sora level 7
      WriteFloat(Sys3+0x17CE4, 11)
	     WriteFloat(Sys3+0x17D18, 15) -- Valor Form: DS = 12
				WriteFloat(Sys3+0x17D4C, 15) -- Wisdom Form: DS = 12
					WriteFloat(Sys3+0x17D80, 13) -- Master Form: DS = 10
						WriteFloat(Sys3+0x17DB4, 19) -- Final Form: DS = 16
							WriteFloat(Sys3+0x17E1C, 21) -- Lion Sora: DS = 18
								WriteFloat(Sys3+0x17DE8, 19) -- Anti Form: DS = 16
									WriteFloat(Sys3+0x17E50, 10) -- Mermaid Sora: DS = 7
										WriteFloat(Sys3+0x18190, 23) -- Carpet Sora: DS = 20
											WriteFloat(Sys3+0x181F8, 11) -- Dice Sora: DS = 8
												WriteFloat(Sys3+0x1822C, 11) -- Card Sora: DS = 8
													WriteFloat(Sys3+0x18364, 11) -- Limit Form: DS = 8
   elseif ReadByte(Save+0x24FF) == 8 then -- Sora level 8
      WriteFloat(Sys3+0x17CE4, 11.5)
	     WriteFloat(Sys3+0x17D18, 15.5) -- Valor Form: DS = 12
				WriteFloat(Sys3+0x17D4C, 15.5) -- Wisdom Form: DS = 12
					WriteFloat(Sys3+0x17D80, 13.5) -- Master Form: DS = 10
						WriteFloat(Sys3+0x17DB4, 19.5) -- Final Form: DS = 16
							WriteFloat(Sys3+0x17E1C, 21.5) -- Lion Sora: DS = 18
								WriteFloat(Sys3+0x17DE8, 19.5) -- Anti Form: DS = 16
									WriteFloat(Sys3+0x17E50, 10.5) -- Mermaid Sora: DS = 7
										WriteFloat(Sys3+0x18190, 23.5) -- Carpet Sora: DS = 20
											WriteFloat(Sys3+0x181F8, 11.5) -- Dice Sora: DS = 8
												WriteFloat(Sys3+0x1822C, 11.5) -- Card Sora: DS = 8
													WriteFloat(Sys3+0x18364, 11.5) -- Limit Form: DS = 8
   elseif ReadByte(Save+0x24FF) == 9 then -- Sora level 9
      WriteFloat(Sys3+0x17CE4, 12)
	     WriteFloat(Sys3+0x17D18, 16) -- Valor Form: DS = 12
				WriteFloat(Sys3+0x17D4C, 16) -- Wisdom Form: DS = 12
					WriteFloat(Sys3+0x17D80, 14) -- Master Form: DS = 10
						WriteFloat(Sys3+0x17DB4, 20) -- Final Form: DS = 16
							WriteFloat(Sys3+0x17E1C, 22) -- Lion Sora: DS = 18
								WriteFloat(Sys3+0x17DE8, 20) -- Anti Form: DS = 16
									WriteFloat(Sys3+0x17E50, 11) -- Mermaid Sora: DS = 7
										WriteFloat(Sys3+0x18190, 24) -- Carpet Sora: DS = 20
											WriteFloat(Sys3+0x181F8, 12) -- Dice Sora: DS = 8
												WriteFloat(Sys3+0x1822C, 12) -- Card Sora: DS = 8
													WriteFloat(Sys3+0x18364, 12) -- Limit Form: DS = 8
   elseif ReadByte(Save+0x24FF) == 10 then -- Sora level 10
      WriteFloat(Sys3+0x17CE4, 12.5)
	     WriteFloat(Sys3+0x17D18, 16.5) -- Valor Form: DS = 12
				WriteFloat(Sys3+0x17D4C, 16.5) -- Wisdom Form: DS = 12
					WriteFloat(Sys3+0x17D80, 14.5) -- Master Form: DS = 10
						WriteFloat(Sys3+0x17DB4, 20.5) -- Final Form: DS = 16
							WriteFloat(Sys3+0x17E1C, 22.5) -- Lion Sora: DS = 18
								WriteFloat(Sys3+0x17DE8, 20.5) -- Anti Form: DS = 16
									WriteFloat(Sys3+0x17E50, 11.5) -- Mermaid Sora: DS = 7
										WriteFloat(Sys3+0x18190, 24.5) -- Carpet Sora: DS = 20
											WriteFloat(Sys3+0x181F8, 12.5) -- Dice Sora: DS = 8
												WriteFloat(Sys3+0x1822C, 12.5) -- Card Sora: DS = 8
													WriteFloat(Sys3+0x18364, 12.5) -- Limit Form: DS = 8
   elseif ReadByte(Save+0x24FF) == 11 then -- Sora level 11
      WriteFloat(Sys3+0x17CE4, 13)
	     WriteFloat(Sys3+0x17D18, 17) -- Valor Form: DS = 12
				WriteFloat(Sys3+0x17D4C, 17) -- Wisdom Form: DS = 12
					WriteFloat(Sys3+0x17D80, 15) -- Master Form: DS = 10
						WriteFloat(Sys3+0x17DB4, 21) -- Final Form: DS = 16
							WriteFloat(Sys3+0x17E1C, 23) -- Lion Sora: DS = 18
								WriteFloat(Sys3+0x17DE8, 21) -- Anti Form: DS = 16
									WriteFloat(Sys3+0x17E50, 12) -- Mermaid Sora: DS = 7
										WriteFloat(Sys3+0x18190, 25) -- Carpet Sora: DS = 20
											WriteFloat(Sys3+0x181F8, 13) -- Dice Sora: DS = 8
												WriteFloat(Sys3+0x1822C, 13) -- Card Sora: DS = 8
													WriteFloat(Sys3+0x18364, 13) -- Limit Form: DS = 8
   elseif ReadByte(Save+0x24FF) == 12 then -- Sora level 12
      WriteFloat(Sys3+0x17CE4, 13.5)
	     WriteFloat(Sys3+0x17D18, 17.5) -- Valor Form: DS = 12
				WriteFloat(Sys3+0x17D4C, 17.5) -- Wisdom Form: DS = 12
					WriteFloat(Sys3+0x17D80, 15.5) -- Master Form: DS = 10
						WriteFloat(Sys3+0x17DB4, 21.5) -- Final Form: DS = 16
							WriteFloat(Sys3+0x17E1C, 23.5) -- Lion Sora: DS = 18
								WriteFloat(Sys3+0x17DE8, 21.5) -- Anti Form: DS = 16
									WriteFloat(Sys3+0x17E50, 12.5) -- Mermaid Sora: DS = 7
										WriteFloat(Sys3+0x18190, 25.5) -- Carpet Sora: DS = 20
											WriteFloat(Sys3+0x181F8, 13.5) -- Dice Sora: DS = 8
												WriteFloat(Sys3+0x1822C, 13.5) -- Card Sora: DS = 8
													WriteFloat(Sys3+0x18364, 13.5) -- Limit Form: DS = 8
   elseif ReadByte(Save+0x24FF) == 13 then -- Sora level 13
      WriteFloat(Sys3+0x17CE4, 14)
	     WriteFloat(Sys3+0x17D18, 18) -- Valor Form: DS = 12
				WriteFloat(Sys3+0x17D4C, 18) -- Wisdom Form: DS = 12
					WriteFloat(Sys3+0x17D80, 16) -- Master Form: DS = 10
						WriteFloat(Sys3+0x17DB4, 22) -- Final Form: DS = 16
							WriteFloat(Sys3+0x17E1C, 24) -- Lion Sora: DS = 18
								WriteFloat(Sys3+0x17DE8, 22) -- Anti Form: DS = 16
									WriteFloat(Sys3+0x17E50, 13) -- Mermaid Sora: DS = 7
										WriteFloat(Sys3+0x18190, 26) -- Carpet Sora: DS = 20
											WriteFloat(Sys3+0x181F8, 14) -- Dice Sora: DS = 8
												WriteFloat(Sys3+0x1822C, 14) -- Card Sora: DS = 8
													WriteFloat(Sys3+0x18364, 14) -- Limit Form: DS = 8
   elseif ReadByte(Save+0x24FF) == 14 then -- Sora level 14
      WriteFloat(Sys3+0x17CE4, 14.5)
	     WriteFloat(Sys3+0x17D18, 18.5) -- Valor Form: DS = 12
				WriteFloat(Sys3+0x17D4C, 18.5) -- Wisdom Form: DS = 12
					WriteFloat(Sys3+0x17D80, 16.5) -- Master Form: DS = 10
						WriteFloat(Sys3+0x17DB4, 22.5) -- Final Form: DS = 16
							WriteFloat(Sys3+0x17E1C, 24.5) -- Lion Sora: DS = 18
								WriteFloat(Sys3+0x17DE8, 22.5) -- Anti Form: DS = 16
									WriteFloat(Sys3+0x17E50, 13.5) -- Mermaid Sora: DS = 7
										WriteFloat(Sys3+0x18190, 26.5) -- Carpet Sora: DS = 20
											WriteFloat(Sys3+0x181F8, 14.5) -- Dice Sora: DS = 8
												WriteFloat(Sys3+0x1822C, 14.5) -- Card Sora: DS = 8
													WriteFloat(Sys3+0x18364, 14.5) -- Limit Form: DS = 8
   elseif ReadByte(Save+0x24FF) == 15 then -- Sora level 15
      WriteFloat(Sys3+0x17CE4, 15)
	     WriteFloat(Sys3+0x17D18, 19) -- Valor Form: DS = 12
				WriteFloat(Sys3+0x17D4C, 19) -- Wisdom Form: DS = 12
					WriteFloat(Sys3+0x17D80, 17) -- Master Form: DS = 10
						WriteFloat(Sys3+0x17DB4, 23) -- Final Form: DS = 16
							WriteFloat(Sys3+0x17E1C, 25) -- Lion Sora: DS = 18
								WriteFloat(Sys3+0x17DE8, 23) -- Anti Form: DS = 16
									WriteFloat(Sys3+0x17E50, 14) -- Mermaid Sora: DS = 7
										WriteFloat(Sys3+0x18190, 27) -- Carpet Sora: DS = 20
											WriteFloat(Sys3+0x181F8, 15) -- Dice Sora: DS = 8
												WriteFloat(Sys3+0x1822C, 15) -- Card Sora: DS = 8
													WriteFloat(Sys3+0x18364, 15) -- Limit Form: DS = 8
   elseif ReadByte(Save+0x24FF) == 16 then -- Sora level 16
      WriteFloat(Sys3+0x17CE4, 15.5)
	     WriteFloat(Sys3+0x17D18, 19.5) -- Valor Form: DS = 12
				WriteFloat(Sys3+0x17D4C, 19.5) -- Wisdom Form: DS = 12
					WriteFloat(Sys3+0x17D80, 17.5) -- Master Form: DS = 10
						WriteFloat(Sys3+0x17DB4, 23.5) -- Final Form: DS = 16
							WriteFloat(Sys3+0x17E1C, 25.5) -- Lion Sora: DS = 18
								WriteFloat(Sys3+0x17DE8, 23.5) -- Anti Form: DS = 16
									WriteFloat(Sys3+0x17E50, 14.5) -- Mermaid Sora: DS = 7
										WriteFloat(Sys3+0x18190, 27.5) -- Carpet Sora: DS = 20
											WriteFloat(Sys3+0x181F8, 15.5) -- Dice Sora: DS = 8
												WriteFloat(Sys3+0x1822C, 15.5) -- Card Sora: DS = 8
													WriteFloat(Sys3+0x18364, 15.5) -- Limit Form: DS = 8
   elseif ReadByte(Save+0x24FF) == 17 then -- Sora level 17
      WriteFloat(Sys3+0x17CE4, 16)
	     WriteFloat(Sys3+0x17D18, 20) -- Valor Form: DS = 12
				WriteFloat(Sys3+0x17D4C, 20) -- Wisdom Form: DS = 12
					WriteFloat(Sys3+0x17D80, 18) -- Master Form: DS = 10
						WriteFloat(Sys3+0x17DB4, 24) -- Final Form: DS = 16
							WriteFloat(Sys3+0x17E1C, 26) -- Lion Sora: DS = 18
								WriteFloat(Sys3+0x17DE8, 24) -- Anti Form: DS = 16
									WriteFloat(Sys3+0x17E50, 15) -- Mermaid Sora: DS = 7
										WriteFloat(Sys3+0x18190, 28) -- Carpet Sora: DS = 20
											WriteFloat(Sys3+0x181F8, 16) -- Dice Sora: DS = 8
												WriteFloat(Sys3+0x1822C, 16) -- Card Sora: DS = 8
													WriteFloat(Sys3+0x18364, 16) -- Limit Form: DS = 8
   elseif ReadByte(Save+0x24FF) == 18 then -- Sora level 18
      WriteFloat(Sys3+0x17CE4, 16.5)
	     WriteFloat(Sys3+0x17D18, 20.5) -- Valor Form: DS = 12
				WriteFloat(Sys3+0x17D4C, 20.5) -- Wisdom Form: DS = 12
					WriteFloat(Sys3+0x17D80, 18.5) -- Master Form: DS = 10
						WriteFloat(Sys3+0x17DB4, 24.5) -- Final Form: DS = 16
							WriteFloat(Sys3+0x17E1C, 26.5) -- Lion Sora: DS = 18
								WriteFloat(Sys3+0x17DE8, 24.5) -- Anti Form: DS = 16
									WriteFloat(Sys3+0x17E50, 15.5) -- Mermaid Sora: DS = 7
										WriteFloat(Sys3+0x18190, 28.5) -- Carpet Sora: DS = 20
											WriteFloat(Sys3+0x181F8, 16.5) -- Dice Sora: DS = 8
												WriteFloat(Sys3+0x1822C, 16.5) -- Card Sora: DS = 8
													WriteFloat(Sys3+0x18364, 16.5) -- Limit Form: DS = 8
   elseif ReadByte(Save+0x24FF) == 19 then -- Sora level 19
      WriteFloat(Sys3+0x17CE4, 17)
	     WriteFloat(Sys3+0x17D18, 21) -- Valor Form: DS = 12
				WriteFloat(Sys3+0x17D4C, 21) -- Wisdom Form: DS = 12
					WriteFloat(Sys3+0x17D80, 19) -- Master Form: DS = 10
						WriteFloat(Sys3+0x17DB4, 25) -- Final Form: DS = 16
							WriteFloat(Sys3+0x17E1C, 27) -- Lion Sora: DS = 18
								WriteFloat(Sys3+0x17DE8, 25) -- Anti Form: DS = 16
									WriteFloat(Sys3+0x17E50, 16) -- Mermaid Sora: DS = 7
										WriteFloat(Sys3+0x18190, 29) -- Carpet Sora: DS = 20
											WriteFloat(Sys3+0x181F8, 17) -- Dice Sora: DS = 8
												WriteFloat(Sys3+0x1822C, 17) -- Card Sora: DS = 8
													WriteFloat(Sys3+0x18364, 17) -- Limit Form: DS = 8
   elseif ReadByte(Save+0x24FF) == 20 then -- Sora level 20
      WriteFloat(Sys3+0x17CE4, 17.5)
	     WriteFloat(Sys3+0x17D18, 21.5) -- Valor Form: DS = 12
				WriteFloat(Sys3+0x17D4C, 21.5) -- Wisdom Form: DS = 12
					WriteFloat(Sys3+0x17D80, 19.5) -- Master Form: DS = 10
						WriteFloat(Sys3+0x17DB4, 25.5) -- Final Form: DS = 16
							WriteFloat(Sys3+0x17E1C, 27.5) -- Lion Sora: DS = 18
								WriteFloat(Sys3+0x17DE8, 25.5) -- Anti Form: DS = 16
									WriteFloat(Sys3+0x17E50, 16.5) -- Mermaid Sora: DS = 7
										WriteFloat(Sys3+0x18190, 29.5) -- Carpet Sora: DS = 20
											WriteFloat(Sys3+0x181F8, 17.5) -- Dice Sora: DS = 8
												WriteFloat(Sys3+0x1822C, 17.5) -- Card Sora: DS = 8
													WriteFloat(Sys3+0x18364, 17.5) -- Limit Form: DS = 8
   elseif ReadByte(Save+0x24FF) == 21 then -- Sora level 21
      WriteFloat(Sys3+0x17CE4, 18)
	     WriteFloat(Sys3+0x17D18, 22) -- Valor Form: DS = 12
				WriteFloat(Sys3+0x17D4C, 22) -- Wisdom Form: DS = 12
					WriteFloat(Sys3+0x17D80, 20) -- Master Form: DS = 10
						WriteFloat(Sys3+0x17DB4, 26) -- Final Form: DS = 16
							WriteFloat(Sys3+0x17E1C, 28) -- Lion Sora: DS = 18
								WriteFloat(Sys3+0x17DE8, 26) -- Anti Form: DS = 16
									WriteFloat(Sys3+0x17E50, 17) -- Mermaid Sora: DS = 7
										WriteFloat(Sys3+0x18190, 30) -- Carpet Sora: DS = 20
											WriteFloat(Sys3+0x181F8, 18) -- Dice Sora: DS = 8
												WriteFloat(Sys3+0x1822C, 18) -- Card Sora: DS = 8
													WriteFloat(Sys3+0x18364, 18) -- Limit Form: DS = 8
   elseif ReadByte(Save+0x24FF) == 22 then -- Sora level 22
      WriteFloat(Sys3+0x17CE4, 18.5)
	     WriteFloat(Sys3+0x17D18, 22.5) -- Valor Form: DS = 12
				WriteFloat(Sys3+0x17D4C, 22.5) -- Wisdom Form: DS = 12
					WriteFloat(Sys3+0x17D80, 20.5) -- Master Form: DS = 10
						WriteFloat(Sys3+0x17DB4, 26.5) -- Final Form: DS = 16
							WriteFloat(Sys3+0x17E1C, 28.5) -- Lion Sora: DS = 18
								WriteFloat(Sys3+0x17DE8, 26.5) -- Anti Form: DS = 16
									WriteFloat(Sys3+0x17E50, 17.5) -- Mermaid Sora: DS = 7
										WriteFloat(Sys3+0x18190, 30.5) -- Carpet Sora: DS = 20
											WriteFloat(Sys3+0x181F8, 18.5) -- Dice Sora: DS = 8
												WriteFloat(Sys3+0x1822C, 18.5) -- Card Sora: DS = 8
													WriteFloat(Sys3+0x18364, 18.5) -- Limit Form: DS = 8
   elseif ReadByte(Save+0x24FF) == 23 then -- Sora level 23
      WriteFloat(Sys3+0x17CE4, 19)
	     WriteFloat(Sys3+0x17D18, 23) -- Valor Form: DS = 12
				WriteFloat(Sys3+0x17D4C, 23) -- Wisdom Form: DS = 12
					WriteFloat(Sys3+0x17D80, 21) -- Master Form: DS = 10
						WriteFloat(Sys3+0x17DB4, 27) -- Final Form: DS = 16
							WriteFloat(Sys3+0x17E1C, 29) -- Lion Sora: DS = 18
								WriteFloat(Sys3+0x17DE8, 27) -- Anti Form: DS = 16
									WriteFloat(Sys3+0x17E50, 18) -- Mermaid Sora: DS = 7
										WriteFloat(Sys3+0x18190, 31) -- Carpet Sora: DS = 20
											WriteFloat(Sys3+0x181F8, 19) -- Dice Sora: DS = 8
												WriteFloat(Sys3+0x1822C, 19) -- Card Sora: DS = 8
													WriteFloat(Sys3+0x18364, 19) -- Limit Form: DS = 8
   elseif ReadByte(Save+0x24FF) == 24 then -- Sora level 24
      WriteFloat(Sys3+0x17CE4, 19.5)
	     WriteFloat(Sys3+0x17D18, 23.5) -- Valor Form: DS = 12
				WriteFloat(Sys3+0x17D4C, 23.5) -- Wisdom Form: DS = 12
					WriteFloat(Sys3+0x17D80, 21.5) -- Master Form: DS = 10
						WriteFloat(Sys3+0x17DB4, 27.5) -- Final Form: DS = 16
							WriteFloat(Sys3+0x17E1C, 29.5) -- Lion Sora: DS = 18
								WriteFloat(Sys3+0x17DE8, 27.5) -- Anti Form: DS = 16
									WriteFloat(Sys3+0x17E50, 18.5) -- Mermaid Sora: DS = 7
										WriteFloat(Sys3+0x18190, 31.5) -- Carpet Sora: DS = 20
											WriteFloat(Sys3+0x181F8, 19.5) -- Dice Sora: DS = 8
												WriteFloat(Sys3+0x1822C, 19.5) -- Card Sora: DS = 8
													WriteFloat(Sys3+0x18364, 19.5) -- Limit Form: DS = 8
   elseif ReadByte(Save+0x24FF) == 25 then -- Sora level 25
      WriteFloat(Sys3+0x17CE4, 20)
	     WriteFloat(Sys3+0x17D18, 24) -- Valor Form: DS = 12
				WriteFloat(Sys3+0x17D4C, 24) -- Wisdom Form: DS = 12
					WriteFloat(Sys3+0x17D80, 22) -- Master Form: DS = 10
						WriteFloat(Sys3+0x17DB4, 28) -- Final Form: DS = 16
							WriteFloat(Sys3+0x17E1C, 30) -- Lion Sora: DS = 18
								WriteFloat(Sys3+0x17DE8, 28) -- Anti Form: DS = 16
									WriteFloat(Sys3+0x17E50, 19) -- Mermaid Sora: DS = 7
										WriteFloat(Sys3+0x18190, 32) -- Carpet Sora: DS = 20
											WriteFloat(Sys3+0x181F8, 20) -- Dice Sora: DS = 8
												WriteFloat(Sys3+0x1822C, 20) -- Card Sora: DS = 8
													WriteFloat(Sys3+0x18364, 20) -- Limit Form: DS = 8
   elseif ReadByte(Save+0x24FF) == 26 then -- Sora level 26
      WriteFloat(Sys3+0x17CE4, 20.5)
	     WriteFloat(Sys3+0x17D18, 24.5) -- Valor Form: DS = 12
				WriteFloat(Sys3+0x17D4C, 24.5) -- Wisdom Form: DS = 12
					WriteFloat(Sys3+0x17D80, 22.5) -- Master Form: DS = 10
						WriteFloat(Sys3+0x17DB4, 28.5) -- Final Form: DS = 16
							WriteFloat(Sys3+0x17E1C, 30.5) -- Lion Sora: DS = 18
								WriteFloat(Sys3+0x17DE8, 28.5) -- Anti Form: DS = 16
									WriteFloat(Sys3+0x17E50, 19.5) -- Mermaid Sora: DS = 7
										WriteFloat(Sys3+0x18190, 32.5) -- Carpet Sora: DS = 20
											WriteFloat(Sys3+0x181F8, 20.5) -- Dice Sora: DS = 8
												WriteFloat(Sys3+0x1822C, 20.5) -- Card Sora: DS = 8
													WriteFloat(Sys3+0x18364, 20.5) -- Limit Form: DS = 8
   elseif ReadByte(Save+0x24FF) == 27 then -- Sora level 27
      WriteFloat(Sys3+0x17CE4, 21)
	     WriteFloat(Sys3+0x17D18, 25) -- Valor Form: DS = 12
				WriteFloat(Sys3+0x17D4C, 25) -- Wisdom Form: DS = 12
					WriteFloat(Sys3+0x17D80, 23) -- Master Form: DS = 10
						WriteFloat(Sys3+0x17DB4, 29) -- Final Form: DS = 16
							WriteFloat(Sys3+0x17E1C, 31) -- Lion Sora: DS = 18
								WriteFloat(Sys3+0x17DE8, 29) -- Anti Form: DS = 16
									WriteFloat(Sys3+0x17E50, 20) -- Mermaid Sora: DS = 7
										WriteFloat(Sys3+0x18190, 33) -- Carpet Sora: DS = 20
											WriteFloat(Sys3+0x181F8, 21) -- Dice Sora: DS = 8
												WriteFloat(Sys3+0x1822C, 21) -- Card Sora: DS = 8
													WriteFloat(Sys3+0x18364, 21) -- Limit Form: DS = 8
   elseif ReadByte(Save+0x24FF) == 28 then -- Sora level 28
      WriteFloat(Sys3+0x17CE4, 21.5)
	     WriteFloat(Sys3+0x17D18, 25.5) -- Valor Form: DS = 12
				WriteFloat(Sys3+0x17D4C, 25.5) -- Wisdom Form: DS = 12
					WriteFloat(Sys3+0x17D80, 23.5) -- Master Form: DS = 10
						WriteFloat(Sys3+0x17DB4, 29.5) -- Final Form: DS = 16
							WriteFloat(Sys3+0x17E1C, 31.5) -- Lion Sora: DS = 18
								WriteFloat(Sys3+0x17DE8, 29.5) -- Anti Form: DS = 16
									WriteFloat(Sys3+0x17E50, 20.5) -- Mermaid Sora: DS = 7
										WriteFloat(Sys3+0x18190, 33.5) -- Carpet Sora: DS = 20
											WriteFloat(Sys3+0x181F8, 21.5) -- Dice Sora: DS = 8
												WriteFloat(Sys3+0x1822C, 21.5) -- Card Sora: DS = 8
													WriteFloat(Sys3+0x18364, 21.5) -- Limit Form: DS = 8
   elseif ReadByte(Save+0x24FF) == 29 then -- Sora level 29
      WriteFloat(Sys3+0x17CE4, 22)
	     WriteFloat(Sys3+0x17D18, 26) -- Valor Form: DS = 12
				WriteFloat(Sys3+0x17D4C, 26) -- Wisdom Form: DS = 12
					WriteFloat(Sys3+0x17D80, 24) -- Master Form: DS = 10
						WriteFloat(Sys3+0x17DB4, 30) -- Final Form: DS = 16
							WriteFloat(Sys3+0x17E1C, 32) -- Lion Sora: DS = 18
								WriteFloat(Sys3+0x17DE8, 30) -- Anti Form: DS = 16
									WriteFloat(Sys3+0x17E50, 21) -- Mermaid Sora: DS = 7
										WriteFloat(Sys3+0x18190, 34) -- Carpet Sora: DS = 20
											WriteFloat(Sys3+0x181F8, 22) -- Dice Sora: DS = 8
												WriteFloat(Sys3+0x1822C, 22) -- Card Sora: DS = 8
													WriteFloat(Sys3+0x18364, 22) -- Limit Form: DS = 8
   elseif ReadByte(Save+0x24FF) == 30 then -- Sora level 30
      WriteFloat(Sys3+0x17CE4, 22.5)
	     WriteFloat(Sys3+0x17D18, 26.5) -- Valor Form: DS = 12
				WriteFloat(Sys3+0x17D4C, 26.5) -- Wisdom Form: DS = 12
					WriteFloat(Sys3+0x17D80, 24.5) -- Master Form: DS = 10
						WriteFloat(Sys3+0x17DB4, 30.5) -- Final Form: DS = 16
							WriteFloat(Sys3+0x17E1C, 32.5) -- Lion Sora: DS = 18
								WriteFloat(Sys3+0x17DE8, 30.5) -- Anti Form: DS = 16
									WriteFloat(Sys3+0x17E50, 21.5) -- Mermaid Sora: DS = 7
										WriteFloat(Sys3+0x18190, 34.5) -- Carpet Sora: DS = 20
											WriteFloat(Sys3+0x181F8, 22.5) -- Dice Sora: DS = 8
												WriteFloat(Sys3+0x1822C, 22.5) -- Card Sora: DS = 8
													WriteFloat(Sys3+0x18364, 22.5) -- Limit Form: DS = 8
   elseif ReadByte(Save+0x24FF) == 31 then -- Sora level 31
      WriteFloat(Sys3+0x17CE4, 23)
	     WriteFloat(Sys3+0x17D18, 27) -- Valor Form: DS = 12
				WriteFloat(Sys3+0x17D4C, 27) -- Wisdom Form: DS = 12
					WriteFloat(Sys3+0x17D80, 25) -- Master Form: DS = 10
						WriteFloat(Sys3+0x17DB4, 31) -- Final Form: DS = 16
							WriteFloat(Sys3+0x17E1C, 33) -- Lion Sora: DS = 18
								WriteFloat(Sys3+0x17DE8, 31) -- Anti Form: DS = 16
									WriteFloat(Sys3+0x17E50, 22) -- Mermaid Sora: DS = 7
										WriteFloat(Sys3+0x18190, 35) -- Carpet Sora: DS = 20
											WriteFloat(Sys3+0x181F8, 23) -- Dice Sora: DS = 8
												WriteFloat(Sys3+0x1822C, 23) -- Card Sora: DS = 8
													WriteFloat(Sys3+0x18364, 23) -- Limit Form: DS = 8
   elseif ReadByte(Save+0x24FF) == 32 then -- Sora level 32
      WriteFloat(Sys3+0x17CE4, 23.5)
	     WriteFloat(Sys3+0x17D18, 27.5) -- Valor Form: DS = 12
				WriteFloat(Sys3+0x17D4C, 27.5) -- Wisdom Form: DS = 12
					WriteFloat(Sys3+0x17D80, 25.5) -- Master Form: DS = 10
						WriteFloat(Sys3+0x17DB4, 31.5) -- Final Form: DS = 16
							WriteFloat(Sys3+0x17E1C, 33.5) -- Lion Sora: DS = 18
								WriteFloat(Sys3+0x17DE8, 31.5) -- Anti Form: DS = 16
									WriteFloat(Sys3+0x17E50, 22.5) -- Mermaid Sora: DS = 7
										WriteFloat(Sys3+0x18190, 35.5) -- Carpet Sora: DS = 20
											WriteFloat(Sys3+0x181F8, 23.5) -- Dice Sora: DS = 8
												WriteFloat(Sys3+0x1822C, 23.5) -- Card Sora: DS = 8
													WriteFloat(Sys3+0x18364, 23.5) -- Limit Form: DS = 8
   elseif ReadByte(Save+0x24FF) == 33 then -- Sora level 33
      WriteFloat(Sys3+0x17CE4, 24)
	     WriteFloat(Sys3+0x17D18, 28) -- Valor Form: DS = 12
				WriteFloat(Sys3+0x17D4C, 28) -- Wisdom Form: DS = 12
					WriteFloat(Sys3+0x17D80, 26) -- Master Form: DS = 10
						WriteFloat(Sys3+0x17DB4, 32) -- Final Form: DS = 16
							WriteFloat(Sys3+0x17E1C, 34) -- Lion Sora: DS = 18
								WriteFloat(Sys3+0x17DE8, 32) -- Anti Form: DS = 16
									WriteFloat(Sys3+0x17E50, 23) -- Mermaid Sora: DS = 7
										WriteFloat(Sys3+0x18190, 36) -- Carpet Sora: DS = 20
											WriteFloat(Sys3+0x181F8, 24) -- Dice Sora: DS = 8
												WriteFloat(Sys3+0x1822C, 24) -- Card Sora: DS = 8
													WriteFloat(Sys3+0x18364, 24) -- Limit Form: DS = 8
   elseif ReadByte(Save+0x24FF) == 34 then -- Sora level 34
      WriteFloat(Sys3+0x17CE4, 24.5)
	     WriteFloat(Sys3+0x17D18, 28.5) -- Valor Form: DS = 12
				WriteFloat(Sys3+0x17D4C, 28.5) -- Wisdom Form: DS = 12
					WriteFloat(Sys3+0x17D80, 26.5) -- Master Form: DS = 10
						WriteFloat(Sys3+0x17DB4, 32.5) -- Final Form: DS = 16
							WriteFloat(Sys3+0x17E1C, 34.5) -- Lion Sora: DS = 18
								WriteFloat(Sys3+0x17DE8, 32.5) -- Anti Form: DS = 16
									WriteFloat(Sys3+0x17E50, 23.5) -- Mermaid Sora: DS = 7
										WriteFloat(Sys3+0x18190, 36.5) -- Carpet Sora: DS = 20
											WriteFloat(Sys3+0x181F8, 24.5) -- Dice Sora: DS = 8
												WriteFloat(Sys3+0x1822C, 24.5) -- Card Sora: DS = 8
													WriteFloat(Sys3+0x18364, 24.5) -- Limit Form: DS = 8
   elseif ReadByte(Save+0x24FF) == 35 then -- Sora level 35
      WriteFloat(Sys3+0x17CE4, 25)
	     WriteFloat(Sys3+0x17D18, 29) -- Valor Form: DS = 12
				WriteFloat(Sys3+0x17D4C, 29) -- Wisdom Form: DS = 12
					WriteFloat(Sys3+0x17D80, 27) -- Master Form: DS = 10
						WriteFloat(Sys3+0x17DB4, 33) -- Final Form: DS = 16
							WriteFloat(Sys3+0x17E1C, 35) -- Lion Sora: DS = 18
								WriteFloat(Sys3+0x17DE8, 33) -- Anti Form: DS = 16
									WriteFloat(Sys3+0x17E50, 24) -- Mermaid Sora: DS = 7
										WriteFloat(Sys3+0x18190, 37) -- Carpet Sora: DS = 20
											WriteFloat(Sys3+0x181F8, 25) -- Dice Sora: DS = 8
												WriteFloat(Sys3+0x1822C, 25) -- Card Sora: DS = 8
													WriteFloat(Sys3+0x18364, 25) -- Limit Form: DS = 8
   elseif ReadByte(Save+0x24FF) == 36 then -- Sora level 36
      WriteFloat(Sys3+0x17CE4, 25.5)
	     WriteFloat(Sys3+0x17D18, 29.5) -- Valor Form: DS = 12
				WriteFloat(Sys3+0x17D4C, 29.5) -- Wisdom Form: DS = 12
					WriteFloat(Sys3+0x17D80, 27.5) -- Master Form: DS = 10
						WriteFloat(Sys3+0x17DB4, 33.5) -- Final Form: DS = 16
							WriteFloat(Sys3+0x17E1C, 35.5) -- Lion Sora: DS = 18
								WriteFloat(Sys3+0x17DE8, 33.5) -- Anti Form: DS = 16
									WriteFloat(Sys3+0x17E50, 24.5) -- Mermaid Sora: DS = 7
										WriteFloat(Sys3+0x18190, 37.5) -- Carpet Sora: DS = 20
											WriteFloat(Sys3+0x181F8, 25.5) -- Dice Sora: DS = 8
												WriteFloat(Sys3+0x1822C, 25.5) -- Card Sora: DS = 8
													WriteFloat(Sys3+0x18364, 25.5) -- Limit Form: DS = 8
   elseif ReadByte(Save+0x24FF) == 37 then -- Sora level 37
      WriteFloat(Sys3+0x17CE4, 26)
	     WriteFloat(Sys3+0x17D18, 30) -- Valor Form: DS = 12
				WriteFloat(Sys3+0x17D4C, 30) -- Wisdom Form: DS = 12
					WriteFloat(Sys3+0x17D80, 28) -- Master Form: DS = 10
						WriteFloat(Sys3+0x17DB4, 34) -- Final Form: DS = 16
							WriteFloat(Sys3+0x17E1C, 36) -- Lion Sora: DS = 18
								WriteFloat(Sys3+0x17DE8, 34) -- Anti Form: DS = 16
									WriteFloat(Sys3+0x17E50, 25) -- Mermaid Sora: DS = 7
										WriteFloat(Sys3+0x18190, 38) -- Carpet Sora: DS = 20
											WriteFloat(Sys3+0x181F8, 26) -- Dice Sora: DS = 8
												WriteFloat(Sys3+0x1822C, 26) -- Card Sora: DS = 8
													WriteFloat(Sys3+0x18364, 26) -- Limit Form: DS = 8
   elseif ReadByte(Save+0x24FF) == 38 then -- Sora level 38
      WriteFloat(Sys3+0x17CE4, 26.5)
	     WriteFloat(Sys3+0x17D18, 30.5) -- Valor Form: DS = 12
				WriteFloat(Sys3+0x17D4C, 30.5) -- Wisdom Form: DS = 12
					WriteFloat(Sys3+0x17D80, 28.5) -- Master Form: DS = 10
						WriteFloat(Sys3+0x17DB4, 34.5) -- Final Form: DS = 16
							WriteFloat(Sys3+0x17E1C, 36.5) -- Lion Sora: DS = 18
								WriteFloat(Sys3+0x17DE8, 34.5) -- Anti Form: DS = 16
									WriteFloat(Sys3+0x17E50, 25.5) -- Mermaid Sora: DS = 7
										WriteFloat(Sys3+0x18190, 38.5) -- Carpet Sora: DS = 20
											WriteFloat(Sys3+0x181F8, 26.5) -- Dice Sora: DS = 8
												WriteFloat(Sys3+0x1822C, 26.5) -- Card Sora: DS = 8
													WriteFloat(Sys3+0x18364, 26.5) -- Limit Form: DS = 8
   elseif ReadByte(Save+0x24FF) == 39 then -- Sora level 39
      WriteFloat(Sys3+0x17CE4, 27)
	     WriteFloat(Sys3+0x17D18, 31) -- Valor Form: DS = 12
				WriteFloat(Sys3+0x17D4C, 31) -- Wisdom Form: DS = 12
					WriteFloat(Sys3+0x17D80, 29) -- Master Form: DS = 10
						WriteFloat(Sys3+0x17DB4, 35) -- Final Form: DS = 16
							WriteFloat(Sys3+0x17E1C, 37) -- Lion Sora: DS = 18
								WriteFloat(Sys3+0x17DE8, 35) -- Anti Form: DS = 16
									WriteFloat(Sys3+0x17E50, 26) -- Mermaid Sora: DS = 7
										WriteFloat(Sys3+0x18190, 39) -- Carpet Sora: DS = 20
											WriteFloat(Sys3+0x181F8, 27) -- Dice Sora: DS = 8
												WriteFloat(Sys3+0x1822C, 27) -- Card Sora: DS = 8
													WriteFloat(Sys3+0x18364, 27) -- Limit Form: DS = 8
   elseif ReadByte(Save+0x24FF) == 40 then -- Sora level 40
      WriteFloat(Sys3+0x17CE4, 27.5)
	     WriteFloat(Sys3+0x17D18, 31.5) -- Valor Form: DS = 12
				WriteFloat(Sys3+0x17D4C, 31.5) -- Wisdom Form: DS = 12
					WriteFloat(Sys3+0x17D80, 29.5) -- Master Form: DS = 10
						WriteFloat(Sys3+0x17DB4, 35.5) -- Final Form: DS = 16
							WriteFloat(Sys3+0x17E1C, 37.5) -- Lion Sora: DS = 18
								WriteFloat(Sys3+0x17DE8, 35.5) -- Anti Form: DS = 16
									WriteFloat(Sys3+0x17E50, 26.5) -- Mermaid Sora: DS = 7
										WriteFloat(Sys3+0x18190, 39.5) -- Carpet Sora: DS = 20
											WriteFloat(Sys3+0x181F8, 27.5) -- Dice Sora: DS = 8
												WriteFloat(Sys3+0x1822C, 27.5) -- Card Sora: DS = 8
													WriteFloat(Sys3+0x18364, 27.5) -- Limit Form: DS = 8
   elseif ReadByte(Save+0x24FF) == 41 then -- Sora level 41
      WriteFloat(Sys3+0x17CE4, 28)
	     WriteFloat(Sys3+0x17D18, 32) -- Valor Form: DS = 12
				WriteFloat(Sys3+0x17D4C, 32) -- Wisdom Form: DS = 12
					WriteFloat(Sys3+0x17D80, 30) -- Master Form: DS = 10
						WriteFloat(Sys3+0x17DB4, 36) -- Final Form: DS = 16
							WriteFloat(Sys3+0x17E1C, 38) -- Lion Sora: DS = 18
								WriteFloat(Sys3+0x17DE8, 36) -- Anti Form: DS = 16
									WriteFloat(Sys3+0x17E50, 27) -- Mermaid Sora: DS = 7
										WriteFloat(Sys3+0x18190, 40) -- Carpet Sora: DS = 20
											WriteFloat(Sys3+0x181F8, 28) -- Dice Sora: DS = 8
												WriteFloat(Sys3+0x1822C, 28) -- Card Sora: DS = 8
													WriteFloat(Sys3+0x18364, 28) -- Limit Form: DS = 8
   elseif ReadByte(Save+0x24FF) == 42 then -- Sora level 42
      WriteFloat(Sys3+0x17CE4, 28.5)
	     WriteFloat(Sys3+0x17D18, 32.5) -- Valor Form: DS = 12
				WriteFloat(Sys3+0x17D4C, 32.5) -- Wisdom Form: DS = 12
					WriteFloat(Sys3+0x17D80, 30.5) -- Master Form: DS = 10
						WriteFloat(Sys3+0x17DB4, 36.5) -- Final Form: DS = 16
							WriteFloat(Sys3+0x17E1C, 38.5) -- Lion Sora: DS = 18
								WriteFloat(Sys3+0x17DE8, 36.5) -- Anti Form: DS = 16
									WriteFloat(Sys3+0x17E50, 27.5) -- Mermaid Sora: DS = 7
										WriteFloat(Sys3+0x18190, 40.5) -- Carpet Sora: DS = 20
											WriteFloat(Sys3+0x181F8, 28.5) -- Dice Sora: DS = 8
												WriteFloat(Sys3+0x1822C, 28.5) -- Card Sora: DS = 8
													WriteFloat(Sys3+0x18364, 28.5) -- Limit Form: DS = 8
   elseif ReadByte(Save+0x24FF) == 43 then -- Sora level 43
      WriteFloat(Sys3+0x17CE4, 29)
	     WriteFloat(Sys3+0x17D18, 33) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 33) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 31) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 37) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 39) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 37) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 28) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 41) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 29) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 29) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 29) -- Limit Form: DS = 8 | Base + 0/Above + 0
   elseif ReadByte(Save+0x24FF) == 44 then -- Sora level 44
      WriteFloat(Sys3+0x17CE4, 29.5)
	     WriteFloat(Sys3+0x17D18, 33.5) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 33.5) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 31.5) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 37.5) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 39.5) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 37.5) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 28.5) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 41.5) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 29.5) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 29.5) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 29.5) -- Limit Form: DS = 8 | Base + 0/Above + 0
   elseif ReadByte(Save+0x24FF) == 45 then -- Sora level 45
      WriteFloat(Sys3+0x17CE4, 30)
	     WriteFloat(Sys3+0x17D18, 34) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 34) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 32) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 38) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 40) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 38) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 29) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 42) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 30) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 30) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 30) -- Limit Form: DS = 8 | Base + 0/Above + 0
   elseif ReadByte(Save+0x24FF) == 46 then -- Sora level 46
      WriteFloat(Sys3+0x17CE4, 30.5)
	     WriteFloat(Sys3+0x17D18, 34.5) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 34.5) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 32.5) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 38.5) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 40.5) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 38.5) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 29.5) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 42.5) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 30.5) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 30.5) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 30.5) -- Limit Form: DS = 8 | Base + 0/Above + 0
   elseif ReadByte(Save+0x24FF) == 47 then -- Sora level 47
      WriteFloat(Sys3+0x17CE4, 31)
	     WriteFloat(Sys3+0x17D18, 35) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 35) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 33) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 39) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 41) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 39) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 30) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 43) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 31) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 31) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 31) -- Limit Form: DS = 8 | Base + 0/Above + 0
   elseif ReadByte(Save+0x24FF) == 48 then -- Sora level 48
      WriteFloat(Sys3+0x17CE4, 31.5)
	     WriteFloat(Sys3+0x17D18, 35.5) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 35.5) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 33.5) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 39.5) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 41.5) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 39.5) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 30.5) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 43.5) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 31.5) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 31.5) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 31.5) -- Limit Form: DS = 8 | Base + 0/Above + 0
   elseif ReadByte(Save+0x24FF) == 49 then -- Sora level 49
      WriteFloat(Sys3+0x17CE4, 32)
	     WriteFloat(Sys3+0x17D18, 36) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 36) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 34) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 40) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 42) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 40) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 31) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 44) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 32) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 32) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 32) -- Limit Form: DS = 8 | Base + 0/Above + 0
   elseif ReadByte(Save+0x24FF) == 50 then -- Sora level 50
      WriteFloat(Sys3+0x17CE4, 32.5)
	     WriteFloat(Sys3+0x17D18, 36.5) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 36.5) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 34.5) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 40.5) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 42.5) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 40.5) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 31.5) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 44.5) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 32.5) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 32.5) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 32.5) -- Limit Form: DS = 8 | Base + 0/Above + 0
   elseif ReadByte(Save+0x24FF) == 51 then -- Sora level 51
      WriteFloat(Sys3+0x17CE4, 33)
	     WriteFloat(Sys3+0x17D18, 37) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 37) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 35) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 41) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 43) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 41) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 32) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 45) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 33) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 33) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 33) -- Limit Form: DS = 8 | Base + 0/Above + 0
   elseif ReadByte(Save+0x24FF) == 52 then -- Sora level 52
      WriteFloat(Sys3+0x17CE4, 33.5)
	     WriteFloat(Sys3+0x17D18, 37.5) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 37.5) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 35.5) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 41.5) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 43.5) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 41.5) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 32.5) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 45.5) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 33.5) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 33.5) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 33.5) -- Limit Form: DS = 8 | Base + 0/Above + 0
   elseif ReadByte(Save+0x24FF) == 53 then -- Sora level 53
      WriteFloat(Sys3+0x17CE4, 34)
	     WriteFloat(Sys3+0x17D18, 38) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 38) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 36) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 42) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 44) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 42) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 33) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 46) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 34) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 34) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 34) -- Limit Form: DS = 8 | Base + 0/Above + 0
   elseif ReadByte(Save+0x24FF) == 54 then -- Sora level 54
      WriteFloat(Sys3+0x17CE4, 34.5)
	     WriteFloat(Sys3+0x17D18, 38.5) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 38.5) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 36.5) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 42.5) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 44.5) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 42.5) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 33.5) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 46.5) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 34.5) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 34.5) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 34.5) -- Limit Form: DS = 8 | Base + 0/Above + 0
   elseif ReadByte(Save+0x24FF) == 55 then -- Sora level 55
      WriteFloat(Sys3+0x17CE4, 35)
	     WriteFloat(Sys3+0x17D18, 39) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 39) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 37) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 43) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 45) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 43) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 34) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 47) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 35) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 35) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 35) -- Limit Form: DS = 8 | Base + 0/Above + 0
   elseif ReadByte(Save+0x24FF) == 56 then -- Sora level 56
      WriteFloat(Sys3+0x17CE4, 35.5)
	     WriteFloat(Sys3+0x17D18, 39.5) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 39.5) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 37.5) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 43.5) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 45.5) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 43.5) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 34.5) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 47.5) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 35.5) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 35.5) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 35.5) -- Limit Form: DS = 8 | Base + 0/Above + 0
   elseif ReadByte(Save+0x24FF) == 57 then -- Sora level 57
      WriteFloat(Sys3+0x17CE4, 36)
	     WriteFloat(Sys3+0x17D18, 40) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 40) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 38) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 44) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 46) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 44) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 35) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 48) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 36) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 36) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 36) -- Limit Form: DS = 8 | Base + 0/Above + 0
   elseif ReadByte(Save+0x24FF) == 58 then -- Sora level 58
      WriteFloat(Sys3+0x17CE4, 36.5)
	     WriteFloat(Sys3+0x17D18, 40.5) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 40.5) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 38.5) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 44.5) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 46.5) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 44.5) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 35.5) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 48.5) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 36.5) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 36.5) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 36.5) -- Limit Form: DS = 8 | Base + 0/Above + 0
   elseif ReadByte(Save+0x24FF) == 59 then -- Sora level 59
      WriteFloat(Sys3+0x17CE4, 37)
	     WriteFloat(Sys3+0x17D18, 41) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 41) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 39) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 45) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 47) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 45) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 36) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 49) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 37) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 37) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 37) -- Limit Form: DS = 8 | Base + 0/Above + 0
   elseif ReadByte(Save+0x24FF) == 60 then -- Sora level 60
      WriteFloat(Sys3+0x17CE4, 37.5)
	     WriteFloat(Sys3+0x17D18, 41.5) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 41.5) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 39.5) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 45.5) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 47.5) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 45.5) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 36.5) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 49.5) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 37.5) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 37.5) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 37.5) -- Limit Form: DS = 8 | Base + 0/Above + 0
   elseif ReadByte(Save+0x24FF) == 61 then -- Sora level 61
      WriteFloat(Sys3+0x17CE4, 38)
	     WriteFloat(Sys3+0x17D18, 42) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 42) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 40) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 46) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 48) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 46) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 37) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 50) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 38) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 38) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 38) -- Limit Form: DS = 8 | Base + 0/Above + 0
   elseif ReadByte(Save+0x24FF) == 62 then -- Sora level 62
      WriteFloat(Sys3+0x17CE4, 38.5)
	     WriteFloat(Sys3+0x17D18, 42.5) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 42.5) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 40.5) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 46.5) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 48.5) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 46.5) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 37.5) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 50.5) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 38.5) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 38.5) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 38.5) -- Limit Form: DS = 8 | Base + 0/Above + 0
   elseif ReadByte(Save+0x24FF) == 63 then -- Sora level 63
      WriteFloat(Sys3+0x17CE4, 39)
	     WriteFloat(Sys3+0x17D18, 43) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 43) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 41) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 47) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 49) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 47) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 38) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 51) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 39) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 39) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 39) -- Limit Form: DS = 8 | Base + 0/Above + 0
   elseif ReadByte(Save+0x24FF) == 64 then -- Sora level 64
      WriteFloat(Sys3+0x17CE4, 39.5)
	     WriteFloat(Sys3+0x17D18, 43.5) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 43.5) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 41.5) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 47.5) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 49.5) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 47.5) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 38.5) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 51.5) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 39.5) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 39.5) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 39.5) -- Limit Form: DS = 8 | Base + 0/Above + 0
   elseif ReadByte(Save+0x24FF) == 65 then -- Sora level 65
      WriteFloat(Sys3+0x17CE4, 40)
	     WriteFloat(Sys3+0x17D18, 44) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 44) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 42) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 48) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 50) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 48) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 39) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 52) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 40) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 40) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 40) -- Limit Form: DS = 8 | Base + 0/Above + 0
   elseif ReadByte(Save+0x24FF) == 66 then -- Sora level 66
      WriteFloat(Sys3+0x17CE4, 40.5)
	     WriteFloat(Sys3+0x17D18, 44.5) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 44.5) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 42.5) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 48.5) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 50.5) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 48.5) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 39.5) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 52.5) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 40.5) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 40.5) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 40.5) -- Limit Form: DS = 8 | Base + 0/Above + 0
   elseif ReadByte(Save+0x24FF) == 67 then -- Sora level 67
      WriteFloat(Sys3+0x17CE4, 41)
	     WriteFloat(Sys3+0x17D18, 45) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 45) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 43) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 49) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 51) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 49) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 40) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 53) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 41) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 41) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 41) -- Limit Form: DS = 8 | Base + 0/Above + 0
   elseif ReadByte(Save+0x24FF) == 68 then -- Sora level 68
      WriteFloat(Sys3+0x17CE4, 41.5)
	     WriteFloat(Sys3+0x17D18, 45.5) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 45.5) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 43.5) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 49.5) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 51.5) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 49.5) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 40.5) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 53.5) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 41.5) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 41.5) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 41.5) -- Limit Form: DS = 8 | Base + 0/Above + 0
   elseif ReadByte(Save+0x24FF) == 69 then -- Sora level 69
      WriteFloat(Sys3+0x17CE4, 42)
	     WriteFloat(Sys3+0x17D18, 46) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 46) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 44) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 50) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 52) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 50) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 41) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 54) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 42) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 42) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 42) -- Limit Form: DS = 8 | Base + 0/Above + 0
   elseif ReadByte(Save+0x24FF) == 70 then -- Sora level 70
      WriteFloat(Sys3+0x17CE4, 42.5)
	     WriteFloat(Sys3+0x17D18, 46.5) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 46.5) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 44.5) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 50.5) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 52.5) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 50.5) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 41.5) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 54.5) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 42.5) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 42.5) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 42.5) -- Limit Form: DS = 8 | Base + 0/Above + 0
   elseif ReadByte(Save+0x24FF) == 71 then -- Sora level 71
      WriteFloat(Sys3+0x17CE4, 43)
	     WriteFloat(Sys3+0x17D18, 47) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 47) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 45) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 51) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 53) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 51) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 42) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 55) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 43) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 43) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 43) -- Limit Form: DS = 8 | Base + 0/Above + 0
   elseif ReadByte(Save+0x24FF) == 72 then -- Sora level 72
      WriteFloat(Sys3+0x17CE4, 43.5)
	     WriteFloat(Sys3+0x17D18, 47.5) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 47.5) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 45.5) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 51.5) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 53.5) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 51.5) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 42.5) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 55.5) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 43.5) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 43.5) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 43.5) -- Limit Form: DS = 8 | Base + 0/Above + 0
   elseif ReadByte(Save+0x24FF) == 73 then -- Sora level 73
      WriteFloat(Sys3+0x17CE4, 44)
	     WriteFloat(Sys3+0x17D18, 48) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 48) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 46) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 52) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 54) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 52) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 43) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 56) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 44) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 44) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 44) -- Limit Form: DS = 8 | Base + 0/Above + 0
   elseif ReadByte(Save+0x24FF) == 74 then -- Sora level 74
      WriteFloat(Sys3+0x17CE4, 44.5)
	     WriteFloat(Sys3+0x17D18, 48.5) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 48.5) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 46.5) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 52.5) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 54.5) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 52.5) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 43.5) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 56.5) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 44.5) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 44.5) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 44.5) -- Limit Form: DS = 8 | Base + 0/Above + 0
   elseif ReadByte(Save+0x24FF) == 75 then -- Sora level 75
      WriteFloat(Sys3+0x17CE4, 45)
	     WriteFloat(Sys3+0x17D18, 49) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 49) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 47) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 53) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 55) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 53) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 44) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 57) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 45) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 45) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 45) -- Limit Form: DS = 8 | Base + 0/Above + 0
   elseif ReadByte(Save+0x24FF) == 76 then -- Sora level 76
      WriteFloat(Sys3+0x17CE4, 45.5)
	     WriteFloat(Sys3+0x17D18, 49.5) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 49.5) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 47.5) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 53.5) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 55.5) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 53.5) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 44.5) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 57.5) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 45.5) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 45.5) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 45.5) -- Limit Form: DS = 8 | Base + 0/Above + 0
   elseif ReadByte(Save+0x24FF) == 77 then -- Sora level 77
      WriteFloat(Sys3+0x17CE4, 46)
	     WriteFloat(Sys3+0x17D18, 50) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 50) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 48) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 54) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 56) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 54) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 45) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 58) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 46) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 46) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 46) -- Limit Form: DS = 8 | Base + 0/Above + 0
   elseif ReadByte(Save+0x24FF) == 78 then -- Sora level 78
      WriteFloat(Sys3+0x17CE4, 46.5)
	     WriteFloat(Sys3+0x17D18, 50.5) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 50.5) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 48.5) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 54.5) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 56.5) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 54.5) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 45.5) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 58.5) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 46.5) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 46.5) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 46.5) -- Limit Form: DS = 8 | Base + 0/Above + 0
   elseif ReadByte(Save+0x24FF) == 79 then -- Sora level 79
      WriteFloat(Sys3+0x17CE4, 47)
	     WriteFloat(Sys3+0x17D18, 51) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 51) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 49) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 55) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 57) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 55) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 46) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 59) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 47) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 47) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 47) -- Limit Form: DS = 8 | Base + 0/Above + 0
   elseif ReadByte(Save+0x24FF) == 80 then -- Sora level 80
      WriteFloat(Sys3+0x17CE4, 47.5)
	     WriteFloat(Sys3+0x17D18, 51.5) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 51.5) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 49.5) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 55.5) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 57.5) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 55.5) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 46.5) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 59.5) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 47.5) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 47.5) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 47.5) -- Limit Form: DS = 8 | Base + 0/Above + 0
   elseif ReadByte(Save+0x24FF) == 81 then -- Sora level 81
      WriteFloat(Sys3+0x17CE4, 48)
	     WriteFloat(Sys3+0x17D18, 52) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 52) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 50) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 56) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 58) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 56) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 47) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 60) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 48) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 48) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 48) -- Limit Form: DS = 8 | Base + 0/Above + 0
   elseif ReadByte(Save+0x24FF) == 82 then -- Sora level 82
      WriteFloat(Sys3+0x17CE4, 48.5)
	     WriteFloat(Sys3+0x17D18, 52.5) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 52.5) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 50.5) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 56.5) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 58.5) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 56.5) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 47.5) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 60.5) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 48.5) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 48.5) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 48.5) -- Limit Form: DS = 8 | Base + 0/Above + 0
   elseif ReadByte(Save+0x24FF) == 83 then -- Sora level 83
      WriteFloat(Sys3+0x17CE4, 49)
	     WriteFloat(Sys3+0x17D18, 53) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 53) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 51) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 57) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 59) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 57) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 48) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 61) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 49) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 49) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 49) -- Limit Form: DS = 8 | Base + 0/Above + 0
   elseif ReadByte(Save+0x24FF) == 84 then -- Sora level 84
      WriteFloat(Sys3+0x17CE4, 49.5)
	     WriteFloat(Sys3+0x17D18, 53.5) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 53.5) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 51.5) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 57.5) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 59.5) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 57.5) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 48.5) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 61.5) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 49.5) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 49.5) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 49.5) -- Limit Form: DS = 8 | Base + 0/Above + 0
   elseif ReadByte(Save+0x24FF) == 85 then -- Sora level 85
      WriteFloat(Sys3+0x17CE4, 50)
	     WriteFloat(Sys3+0x17D18, 54) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 54) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 52) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 58) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 60) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 58) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 49) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 62) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 50) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 50) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 50) -- Limit Form: DS = 8 | Base + 0/Above + 0
   elseif ReadByte(Save+0x24FF) == 86 then -- Sora level 86
      WriteFloat(Sys3+0x17CE4, 50.5)
	     WriteFloat(Sys3+0x17D18, 54.5) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 54.5) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 52.5) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 58.5) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 60.5) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 58.5) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 49.5) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 62.5) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 50.5) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 50.5) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 50.5) -- Limit Form: DS = 8 | Base + 0/Above + 0
   elseif ReadByte(Save+0x24FF) == 87 then -- Sora level 87
      WriteFloat(Sys3+0x17CE4, 51)
	     WriteFloat(Sys3+0x17D18, 55) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 55) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 53) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 59) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 61) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 59) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 50) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 63) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 51) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 51) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 51) -- Limit Form: DS = 8 | Base + 0/Above + 0
   elseif ReadByte(Save+0x24FF) == 88 then -- Sora level 88
      WriteFloat(Sys3+0x17CE4, 51.5)
	     WriteFloat(Sys3+0x17D18, 55.5) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 55.5) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 53.5) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 59.5) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 61.5) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 59.5) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 50.5) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 63.5) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 51.5) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 51.5) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 51.5) -- Limit Form: DS = 8 | Base + 0/Above + 0
   elseif ReadByte(Save+0x24FF) == 89 then -- Sora level 89
      WriteFloat(Sys3+0x17CE4, 52)
	     WriteFloat(Sys3+0x17D18, 56) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 56) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 54) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 60) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 62) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 60) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 51) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 64) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 52) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 52) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 52) -- Limit Form: DS = 8 | Base + 0/Above + 0
   elseif ReadByte(Save+0x24FF) == 90 then -- Sora level 90
      WriteFloat(Sys3+0x17CE4, 52.5)
	     WriteFloat(Sys3+0x17D18, 56.5) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 56.5) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 54.5) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 60.5) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 62.5) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 60.5) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 51.5) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 64.5) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 52.5) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 52.5) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 52.5) -- Limit Form: DS = 8 | Base + 0/Above + 0
   elseif ReadByte(Save+0x24FF) == 91 then -- Sora level 91
      WriteFloat(Sys3+0x17CE4, 53)
	     WriteFloat(Sys3+0x17D18, 57) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 57) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 55) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 61) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 63) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 61) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 52) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 65) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 53) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 53) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 53) -- Limit Form: DS = 8 | Base + 0/Above + 0
   elseif ReadByte(Save+0x24FF) == 92 then -- Sora level 92
      WriteFloat(Sys3+0x17CE4, 53.5)
	     WriteFloat(Sys3+0x17D18, 57.5) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 57.5) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 55.5) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 61.5) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 63.5) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 61.5) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 52.5) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 65.5) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 53.5) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 53.5) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 53.5) -- Limit Form: DS = 8 | Base + 0/Above + 0
   elseif ReadByte(Save+0x24FF) == 93 then -- Sora level 93
      WriteFloat(Sys3+0x17CE4, 54)
	     WriteFloat(Sys3+0x17D18, 58) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 58) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 56) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 62) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 64) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 62) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 53) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 66) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 54) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 54) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 54) -- Limit Form: DS = 8 | Base + 0/Above + 0
   elseif ReadByte(Save+0x24FF) == 94 then -- Sora level 94
      WriteFloat(Sys3+0x17CE4, 54.5)
	     WriteFloat(Sys3+0x17D18, 58.5) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 58.5) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 56.5) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 62.5) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 64.5) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 62.5) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 53.5) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 66.5) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 54.5) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 54.5) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 54.5) -- Limit Form: DS = 8 | Base + 0/Above + 0
   elseif ReadByte(Save+0x24FF) == 95 then -- Sora level 95
      WriteFloat(Sys3+0x17CE4, 55)
	     WriteFloat(Sys3+0x17D18, 59) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 59) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 57) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 63) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 65) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 63) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 54) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 67) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 55) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 55) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 55) -- Limit Form: DS = 8 | Base + 0/Above + 0
   elseif ReadByte(Save+0x24FF) == 96 then -- Sora level 96
      WriteFloat(Sys3+0x17CE4, 55.5)
	     WriteFloat(Sys3+0x17D18, 59.5) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 59.5) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 57.5) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 63.5) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 65.5) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 63.5) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 54.5) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 67.5) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 55.5) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 55.5) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 55.5) -- Limit Form: DS = 8 | Base + 0/Above + 0
   elseif ReadByte(Save+0x24FF) == 97 then -- Sora level 97
      WriteFloat(Sys3+0x17CE4, 56)
	     WriteFloat(Sys3+0x17D18, 60) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 60) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 58) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 64) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 66) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 64) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 55) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 68) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 56) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 56) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 56) -- Limit Form: DS = 8 | Base + 0/Above + 0
   elseif ReadByte(Save+0x24FF) == 98 then -- Sora level 98
      WriteFloat(Sys3+0x17CE4, 56.5)
	     WriteFloat(Sys3+0x17D18, 60.5) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 60.5) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 58.5) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 64.5) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 66.5) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 64.5) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 55.5) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 68.5) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 56.5) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 56.5) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 56.5) -- Limit Form: DS = 8 | Base + 0/Above + 0
   elseif ReadByte(Save+0x24FF) == 99 then -- Sora level 99
      WriteFloat(Sys3+0x17CE4, 57)
	     WriteFloat(Sys3+0x17D18, 61) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 61) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 59) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 65) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 67) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 65) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 56) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 69) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 57) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 57) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 57) -- Limit Form: DS = 8 | Base + 0/Above + 0
   else -- Sora level 1
      WriteFloat(Sys3+0x17CE4, 8)
	     WriteFloat(Sys3+0x17D18, 12) -- Valor Form: DS = 12 | Base + 4
				WriteFloat(Sys3+0x17D4C, 12) -- Wisdom Form: DS = 12 | Base + 4/Above + 0
					WriteFloat(Sys3+0x17D80, 10) -- Master Form: DS = 10 | Base + 2/Above - 2
						WriteFloat(Sys3+0x17DB4, 16) -- Final Form: DS = 16 | Base + 8/Above + 6
							WriteFloat(Sys3+0x17E1C, 18) -- Lion Sora: DS = 18 | Base + 10/Above + 2
								WriteFloat(Sys3+0x17DE8, 16) -- Anti Form: DS = 16 | Base + 8/Above - 2
									WriteFloat(Sys3+0x17E50, 7) -- Mermaid Sora: DS = 7 | Base - 1/Above - 9
										WriteFloat(Sys3+0x18190, 20) -- Carpet Sora: DS = 20 | Base + 12/Above + 13
											WriteFloat(Sys3+0x181F8, 8) -- Dice Sora: DS = 8 | Base + 0/Above - 12
												WriteFloat(Sys3+0x1822C, 8) -- Card Sora: DS = 8 | Base + 0/Above + 0
													WriteFloat(Sys3+0x18364, 8) -- Limit Form: DS = 8 | Base + 0/Above + 0
   end
end
