function MEF_SSIM = SSIMscore(I,Fused)
F1 = uint8(Fused);

Q = zeros(1,1); % test two fused images
imgSeqColor = uint8(I);
[s1, s2, s3, s4] = size(imgSeqColor);
imgSeq = zeros(s1, s2, s4);

for i = 1:s4
    imgSeq(:, :, i) =  rgb2gray( squeeze( imgSeqColor(:,:,:,i) ) ); % color to gray conversion
end
fI1 = double(rgb2gray(F1));
[Q(1), Qs1, QMap1] = mef_ms_ssim(imgSeq, fI1);
MEF_SSIM=sprintf('%.3f',mean2(Q));
end