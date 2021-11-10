%% Install
%
% Copyright (c) 2020-present, Oguzhan Ulucan
% Izmir University of Economics, Turkey
% oguzhan.ulucan.iz@gmail.com | oguzhanulucan.de@gmail.com
%
% This source code is licensed under the license found in the
% LICENSE file in the root directory of this source tree.
% All rights reserved.
%
% Please cite the following work if this program is used:
% Diclehan Karakaya, Oguzhan Ulucan, Mehmet Turkan, 
% "PAS-MEF: Multi-exposure image fusion based on principal component analysis, 
%  adaptive well-exposedness and saliency map", arXiv:2105.11809.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%

disp('Installing PAS-MEF')
current = pwd;
addpath(fullfile(current,'Utils','MEF_SSIM')); 
addpath(fullfile(current,'Utils','signatureSal')); 
addpath(fullfile(current,'Utils','Pyramid')); 
addpath(fullfile(current,'Utils')); 
savepath
disp('Done!');