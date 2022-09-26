
    Window = {}													-- create a namespace
    Window.prototype = {x=0, y=0, width=100, height=100, }		-- create the prototype with default values
    Window.mt = {}												-- create a metatable

    function Window.new (o)							-- declare the constructor function
      setmetatable(o, Window.mt)
      return o
    end


    Window.mt.__index = function (table, key)			--define the __index metamethod
      return Window.prototype[key]
    end


    w = Window.new{x=10, y=20}						-- create a new window and query it for an absent field
    print(w.width)    --> 100

	--[[When Lua detects that w does not have the requested field, but has a metatable with an __index field, Lua calls this __index metamethod, with arguments w (the table) and "width" (the absent key).
	The metamethod then indexes the prototype with the given key and returns the result.

	The use of the __index metamethod for inheritance is so common that Lua provides a shortcut. Despite the name, the __index metamethod does not need to be a function: It can be a table, instead.
	When it is a function, Lua calls it with the table and the absent key as its arguments. When it is a table, Lua redoes the access in that table.
	Therefore, in our previous example, we could declare __index simply as

    Window.mt.__index = Window.prototype

Now, when Lua looks for the metatable's __index field, it finds the value of Window.prototype, which is a table. Consequently, Lua repeats the access in this table, that is, it executes the equivalent of

    Window.prototype["width"]
]]--
