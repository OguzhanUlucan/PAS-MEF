%% Uninstall
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


disp('Uninstalling PAS-MEF')
current = pwd;
rmpath(fullfile(current,'Utils','MEF_SSIM'));
rmpath(fullfile(current,'Utils','signatureSal'));
rmpath(fullfile(current,'Utils','Pyramid'));
rmpath(fullfile(current,'Utils'));
savepath
disp('Done!');