function getTableReloadTime()
	for _, v in next, getreg() do
		if type(v) == 'table' then
			if v['ReloadTime'] then
				return v
			end
		end
	end
end

for i,v in pairs(getTableReloadTime()) do
    if v == 1.5 then
		v = 0
	end
end