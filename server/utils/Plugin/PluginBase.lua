function onLoad()
end

function onEnable()
end

function onDisable()
end

this = {}

function this.getLogger:info(text)
     print('['..pluginName..'] '..text)
end

function this.getLogger:success(text)
     local pretty-print = require('pretty-print')
     pretty-print.colorize('success', '['..pluginName..'] '..text)
end

function this.getLogger:error(text)
     local pretty-print = require('pretty-print')
     pretty-print('err', '['..pluginName..'] '..text)
end
