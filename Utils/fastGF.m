function q = fastGF(I, r, eps, s)
%   GUIDEDFILTER   O(1) time implementation of guided filter.
%
%   - guidance image: I (should be a gray-scale/single channel image)
%   - filtering input image: p (should be a gray-scale/single channel image)
%   - local window radius: r
%   - regularization parameter: eps
%   - subsampling ratio: s (try s = r/4 to s=r)
% The code of fast guided filter originates from Kaiming He's website: 
% http://kaiminghe.com/eccv10/


I_sub = imresize(I, 1/s, 'nearest'); % NN is often enough
r_sub = max(1,round(r / s)); % make sure this is an integer

[hei, wid] = size(I_sub);
N = boxfilter(ones(hei, wid), r_sub); % the size of each local patch; N=(2r+1)^2 except for boundary pixels.
%---
mean_I = boxfilter(I_sub, r_sub) ./ N;
mean_II = boxfilter(I_sub.*I_sub, r_sub) ./ N;
%---

cov_Ip = mean_II - mean_I .* mean_I; % this is the covariance of (I, p) in each local patch.
% var_I  = mean_II - mean_I .* mean_I;

a = cov_Ip ./ (cov_Ip + eps);
b = mean_I - a .* mean_I;

mean_a = boxfilter(a, r_sub) ./ N;
mean_b = boxfilter(b, r_sub) ./ N;

mean_a = imresize(mean_a, [size(I, 1), size(I, 2)], 'bilinear'); % bilinear is recommended
mean_b = imresize(mean_b, [size(I, 1), size(I, 2)], 'bilinear');

q = mean_a .* I + mean_b;
end


function imDst = boxfilter(imSrc, r)

%   BOXFILTER   O(1) time box filtering using cumulative sum
%
%   - Definition imDst(x, y)=sum(sum(imSrc(x-r:x+r,y-r:y+r)));
%   - Running time independent of r; 
%   - Equivalent to the function: colfilt(imSrc, [2*r+1, 2*r+1], 'sliding', @sum);
%   - But much faster.
% The code of fast guided filter originates from Kaiming He's website: 
% http://kaiminghe.com/eccv10/

[hei, wid] = size(imSrc);
imDst = zeros(size(imSrc));

%cumulative sum over Y axis
imCum = cumsum(imSrc, 1);
%difference over Y axis
imDst(1:r+1, :) = imCum(1+r:2*r+1, :);
imDst(r+2:hei-r, :) = imCum(2*r+2:hei, :) - imCum(1:hei-2*r-1, :);
imDst(hei-r+1:hei, :) = repmat(imCum(hei, :), [r, 1]) - imCum(hei-2*r:hei-r-1, :);

%cumulative sum over X axis
imCum = cumsum(imDst, 2);
%difference over Y axis
imDst(:, 1:r+1) = imCum(:, 1+r:2*r+1);
imDst(:, r+2:wid-r) = imCum(:, 2*r+2:wid) - imCum(:, 1:wid-2*r-1);
imDst(:, wid-r+1:wid) = repmat(imCum(:, wid), [1, r]) - imCum(:, wid-2*r:wid-r-1);
end


