-- t = table, f = filename [optional]
function SaveModule(t, f)
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