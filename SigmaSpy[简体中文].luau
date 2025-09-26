--还有一些文字还没汉化完，要自己去翻译

local mt = getrawmetatable(game)
local old = mt.__newindex
local Value = {
    ["<font color=\"rgb(224,108,117)\">SimpleSpy V3</font>"] = "<font color=\"rgb(224,108,117)\">SimpleSpy V3</font>",
    ["Copy Code"] = "复制代码",
    ["Copy Remote"] = "复制远程",
    ["Run Code"] = "运行代码",
    ["Get Script"] = "获取脚本",
    ["Function Info"] = "函数信息",
    ["Clr Logs"] = "清除日志",
    ["Exclude (i)"] = "排除 (i)",
    ["Exclude (n)"] = "排除 (n)",
    ["Clr Blacklist"] = "清除黑名单",
    ["Block (i)"] = "阻止 (i)",
    ["Block (n)"] = "阻止 (n)",
    ["Clr Blocklist"] = "清除阻止列表",
    ["Decompile"] = "反编译",
    ["Disable Info"] = "禁用信息",
    ["Autoblock"] = "自动阻止",
    ["Logcheckcaller"] = "日志检查调用者",
    ["Advanced Info"] = "高级信息",
    ["Join Discord"] = "加入 Discord",
    ["SimpleSpy"] = "SimpleSpy"
}

setreadonly(mt, false)
mt.__newindex = newcclosure(function(tt, kk, v)
    if kk == "Text" and (tt:IsA("TextLabel") or tt:IsA("TextButton") or tt:IsA("TextBox")) then
        v = Value[v] or v
    end
    return old(tt, kk, v)
end)
setreadonly(mt, true)

loadstring(game:HttpGet("https://raw.githubusercontent.com/CloudX-ScriptsWane/ScriptsDache/refs/heads/main/SigmaSpy.luau", true))()
