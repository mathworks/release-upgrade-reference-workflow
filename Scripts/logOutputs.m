function logOutputs(sut)
    try
        outportHandles = get_param(sut, 'PortHandles').Outport;
    catch
        parts = split(sut, '/');
        cut = Simulink.findBlocksOfType(parts{1}, 'ModelReference');
        outportHandles = get_param(cut, 'PortHandles').Outport;
    end
    for ph = outportHandles
        set_param(ph, 'DataLogging', 'on');
    end
end

% Copyright 2024 The MathWorks, Inc.