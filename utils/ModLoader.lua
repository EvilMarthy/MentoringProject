Mod = {}


function Mod:getMod(f, p) -- (modname (for table entry), filename, path)
    local file = tostring(f)
    local path = tostring(p)
    local modData = {}
    if type(file) or type(path) ~= "string" then
        local errmsg = "Error while processing filename(p) or path(p) given as params (Expecting a string with no escape characters)"
        return errmsg
    elseif type(file) and type(path) == "string" then
        print("File and Path registered")
    end
    return modData {
        sfile = file,
        spath = path
    }
end

function Mod:SaveModule(t, f)
    local function moduleHelper(obj, cnt)
        local cnt = cnt or 0
        if type(obj) == "table" then
            io.write("\n", string.rep("\t", cnt), "{\n")
            cnt = cnt + 1

            for k, v in pairs(obj) do

                if type(k) == "string" then
                    io.write(string.rep("\t", cnt), '["'.. k ..'"]', " = ")
                end

                if type(k) == "number" then
                    io.write(string.rep("\t", cnt), "[".. k .."]", " = ")
                end

                moduleHelper(v, cnt)
                io.write(",\n")
            end

            cnt = cnt - 1
            io.write(string.rep("\t", cnt), "}")
        
        elseif type(obj) == "string" then
            io.write(string.format("%q", obj))

        else io.write(tostring(obj))
        end
    end

    if f == nil then
        moduleHelper(t)
    else
        io.output(f)
        io.write("return")
        moduleHelper(t)
        io.output(io.stdout)
    end
end

function Mod:LoadSaveFile(f, p)
    local file = f
    local pathToFile = p
    io.input = pathToFile..file..".lua"
    local indexData = {io.read("a")}
    return indexData
end