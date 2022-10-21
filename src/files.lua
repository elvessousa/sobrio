local File = {}

function File.check(file)
	local f = io.open(file, "rb")

	if f then
		f:close()
	end

	return f ~= nil
end

function File.read(path)
	local file = io.open(path, "rb")

	if not file then
		return nil
	end

	local content = file:read("*a")
	file:close()

	return content
end

function File.write(path, content)
	local file = io.open(path, "wb")

	if not file then
		return nil
	end

	local c = file:write(content)
	file:close()

	print("Written: ", path)
end

return File
