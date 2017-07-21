% This function converts between the various types of LF structure to help operating between multiple scripts
function [A, B, C, D, E] = ConvertLFDataType(spatial_x, spatial_y, angular_x, angular_y, color, hasWeight, outAtype outBtype outCtype outDtype outEtype)
  % spatial_x   -> spatial (image) x resolution
  % spatial_y   -> spatial (image) y resolution
  % angular_x   -> angular (sub-pixel) x resolution
  % angular_y   -> angular (sub-pixel) y resolution

  
