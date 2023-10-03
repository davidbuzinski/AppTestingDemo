classdef GitHubLoggingPlugin < matlab.buildtool.plugins.BuildRunnerPlugin
%

%   Copyright 2023 The MathWorks, Inc.

    methods
        function obj = GitHubLoggingPlugin()
        end 
    end

    methods (Access=protected)
        function runTask(plugin, pluginData)
            % Get task name and start log group
            fprintf("##[group] %s task\n", pluginData.Name);
            runTask@matlab.buildtool.plugins.BuildRunnerPlugin(plugin, pluginData);
            % Set end log group
            disp("##[group] endgroup")
        end
    end
end

