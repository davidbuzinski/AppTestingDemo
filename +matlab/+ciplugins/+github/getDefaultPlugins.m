function plugins = getDefaultPlugins(pluginProviderData)
%

%   Copyright 2023 The MathWorks, Inc.
arguments
    pluginProviderData (1,1) matlab.buildtool.internal.plugins.PluginProviderData = matlab.buildtool.internal.plugins.PluginProviderData()
end

plugins = [ ...
    matlab.buildtool.internal.getFactoryDefaultPlugins(pluginProviderData) ...
    matlab.ciplugins.github.GitHubLoggingPlugin() ...
];
end