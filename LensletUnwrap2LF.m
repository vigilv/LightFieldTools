% Converts a 3 dimensional lenslet image (2 spatial, color) into a 5 dimensional light field image (2 spatial, 2 angular, color)

function [SubApertureImages, LF] = LensletUnwrap2LF(LensletImage, u_length, v_length)

  [r, c, d] = size(LensletImage); % d is the color channel
  lf_row = r/u_length;
  lf_col = c/v_length;
  % subplot_index = 1;
  % A = zeros(lf_row, lf_col);
  % B = zeros
  SingleRow_SubApertureImages = [];
  LF = zeros(lf_row, lf_col, 3, u_length, v_length);

  for sub_row = 1:u_length
      for sub_col = 1:v_length
          img = LensletImage(sub_row:u_length:end, sub_col:v_length:end, :);
          LF(:, :, :, sub_row, sub_col) = img;
          if (isempty(SingleRow_SubApertureImages))
              SingleRow_SubApertureImages = img;
          else
              SingleRow_SubApertureImages = cat(2, SingleRow_SubApertureImages, img); % or horzcat(A, img)
          end
      end
      if (sub_row == 1)
          SubApertureImages = SingleRow_SubApertureImages;
          SingleRow_SubApertureImages = [];
      else
          SubApertureImages = cat(1, SubApertureImages, SingleRow_SubApertureImages);       % or vertcat(A, img)
          SingleRow_SubApertureImages = [];
      end
  end

  LF = permute(LF, [4, 5, 1, 2, 3]);    % In Don's LF Toolbox format
