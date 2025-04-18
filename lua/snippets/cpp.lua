local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt
local f = ls.function_node

local function capitalize(args)
    local name = args[1][1] or ""
    return name:sub(1,1):upper() .. name:sub(2)
end

return {
    -- Hàm thông thường
    s("func", 
        fmt([[
            {} {}({}) {{
                {}
            }}
        ]], {i(1, "void"), i(2, "funcName"), i(3, ""), i(4, "")})
    ),

    -- Getter
    s("getter", 
        fmt([[
            {} get{}() {{
                return this->{};
            }}
        ]], {i(1, "Type"), f(capitalize, {2}), i(2, "attribute")})
    ),

    -- Setter
    s("setter", 
        fmt([[
            void set{}({} {}) {{
                this->{} = {};
            }}
        ]], {
            f(capitalize, {2}),
            i(1, "Type"),
            i(2, "attribute"),
            f(function(args) return args[1][1] end, {2}),
            f(function(args) return args[1][1] end, {2})
        })
    ),

    -- Class
    s("class",
        fmt([[
            class {} {{
            private: 
                {} 
            public:
                {} 
            }};
        ]], {i(1, "Name"), i(2, ""), i(3, "")})
    )
}
