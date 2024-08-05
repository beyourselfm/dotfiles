-- util/color.lua
local M = {}

-- 将十六进制颜色字符串转换为RGB值
local function hex_to_rgb(hex)
	hex = hex:gsub("#", "")
	return tonumber("0x" .. hex:sub(1, 2)), tonumber("0x" .. hex:sub(3, 4)), tonumber("0x" .. hex:sub(5, 6))
end

-- 将RGB值转换为十六进制颜色字符串
local function rgb_to_hex(r, g, b)
	return string.format("#%02X%02X%02X", r, g, b)
end

-- 调整颜色的亮度
function M.darken(hex, amount)
	local r, g, b = hex_to_rgb(hex)
	r = math.max(0, r - amount)
	g = math.max(0, g - amount)
	b = math.max(0, b - amount)
	return rgb_to_hex(r, g, b)
end

return M
