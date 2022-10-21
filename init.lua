local files = require("src.files")
local themes = {
	"sobrio",
	"sobrio_ghost",
	"sobrio_light",
	"sobrio_verde",
	"sobrio_verde_light",
}

for k, t in pairs(themes) do
	local path = string.format("./parts/colors/%s.vim", t)
	local target = string.format("./colors/%s.vim", t)

	local color = files.read(path)
	local rules = files.read("./parts/rules.vim")

	local fileContent = color .. "\n" .. rules
	files.write(target, fileContent)
end
