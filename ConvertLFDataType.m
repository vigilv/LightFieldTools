% This function converts between the various types of LF structure to help operating between multiple scripts
function LFout = ConvertLFDataType(LFin, OutputFormat)
  % usage: LFout = ConvertLFDataType(LFin, ['Ax', 'Ay', 'Sx', 'Sy', 'C'])
  % auto detects input format
  % LFin        -> Light field to be converted
  % LFout       -> Converted light field
  % InputFormat -> list([]) with input type in order - one of - spatial_x -> 'Sx'
  %                                                             spatial_y -> 'Sy'
  %                                                             angular_x -> 'Ax'
  %                                                             angular_y -> 'Ay'
  %                                                             color (no weight) -> 'C'
  %                                                             color (with weight) -> 'CW'
  % OutputFormat -> list([]) with output type in order - one of - spatial_x -> 'Sx'
  %                                                               spatial_y -> 'Sy'
  %                                                               angular_x -> 'Ax'
  %                                                               angular_y -> 'Ay'
  %                                                               color (no weight) -> 'C'
  %                                                               color (with weight) -> 'CW' -> only works if input had CW

  % spatial_x   -> spatial (image) x resolution
  % spatial_y   -> spatial (image) y resolution
  % angular_x   -> angular (sub-pixel) x resolution
  % angular_y   -> angular (sub-pixel) y resolution
  % color (C)   -> color channel (rgb - 1:3)
  % CW          -> color channel also has a weight parameter from LightFieldToolbox0.4 (rgbw - 1:4)
