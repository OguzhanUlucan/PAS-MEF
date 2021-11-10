% ============================================================================
%
% Corresponding Author
% =========>   Diclehan Karakaya Ulucan, M.Sc., Izmir, Turkey
% ============ Electrical and Electronics Engineer
% ============ diclehanulucan@gmail.com
%
% ============================================================================
%
% PAS-MEF: Multi-exposure image fusion based on principal component analysis, 
% adaptive well-exposedness and saliency map
%
% ============================================================================
%
% Copyright(c) 2020-present.
%
% This work is licensed under the Creative Commons Attribution 4.0 
% International License. To view a copy of this license, visit 
% http://creativecommons.org/licenses/by/4.0/ 
% or send a letter to Creative Commons, PO Box 1866, 
% Mountain View, CA 94042, USA.
%
% 
% All Rights Reserved.
%
% ----------------------------------------------------------------------------
% Permission to use, copy, or modify this software and its documentation
% for educational and research purposes only and without fee is hereby
% granted, provided that this copyright notice and the original authors'
% names appear on all copies and supporting documentation. This program
% shall not be used, rewritten, or adapted as the basis of a commercial
% software or hardware product without first obtaining permission of the
% authors. The authors make no representations about the suitability of
% this software for any purpose. It is provided "as is" without express
% or implied warranty.
%-----------------------------------------------------------------------------
%
% This is the implementation of PAS-MEF: Multi-exposure image fusion based on 
% principal component analysis, adaptive well-exposedness and 
% saliency map, arXiv preprint arXiv:2105.11809, 2021.
%
%
% Please cite the work if you use this package.
%
%
% @article{karakaya2021pas,
%  title={PAS-MEF: Multi-exposure image fusion based on principal component analysis, 
%         adaptive well-exposedness and saliency map},
%  author={Karakaya, Diclehan and Ulucan, Oguzhan and Turkan, Mehmet},
%  journal={arXiv preprint arXiv:2105.11809},
%  year={2021}
%         }
%
%----------------------------------------------------------------------
%
% Required Input : Source static image sequence in RGB.
%
% Output:    
%         (1) Fused    : The fused image.
%         (2) Weights  : PAS-MEF Weights
%         (3) run-time : Computational Complexity of the PAS-MEF in seconds
%         (4) MEF_SSIM : Statistical result of the image according to:
% Perceptual Quality Assessment for Multi-Exposure Image Fusion, 
% Kede Ma, Kai Zeng, Zhou Wang, 
% IEEE Transactions on Image Processing, vol. 24,pp. 3345 - 3356, Nov.2015.
%  
%   Usage:
%      Install the PAS-MEF package by using the "run install" command
%      Select the image stacks folder to be fused.
%      Run the PAS-MEF code in order to obtain results.
%      Uninstall the PAS-MEF packages by using the "run uninstall" command
%
%
%----------------------------------------------------------------------

%% Install PAS-MEF
run install

%% Read Image Folder
I = load_images(uigetdir);

%% PAS-MEF

[Fused, Weights, run_time, MEF_SSIM] = PAS_MEF(I);

%% Uninstall PAS-MEF

run uninstall
