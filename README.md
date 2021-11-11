# PAS-MEF: Multi-exposure image fusion based on principal component analysis, adaptive well-exposedness and saliency map 

This is the implementation for *[PAS-MEF: Multi-exposure image fusion based on principal component analysis, adaptive well-exposedness and saliency map](https://arxiv.org/abs/2105.11809)*, [Diclehan Karakaya](https://www.researchgate.net/profile/Diclehan_Karakaya), [Oguzhan Ulucan](https://www.researchgate.net/profile/Oguzhan_Ulucan),  [Mehmet Turkan](http://homes.ieu.edu.tr/mehmetturkan/), arXiv preprint arXiv:2105.11809, 2021.


## Abstract 

*High dynamic range (HDR) imaging enables to immortalize natural scenes similar to the way that they are perceived by human observers. With regular low dynamic range (LDR) capture/display devices, significant details may not be preserved in images due to the huge dynamic range of natural scenes. To minimize the information loss and produce high quality HDR-like images for LDR screens, this study proposes an efficient multi-exposure fusion (MEF) approach with a simple yet effective weight extraction method relying on principal component analysis, adaptive well-exposedness and saliency maps. These weight maps are later refined through a guided filter and the fusion is carried out by employing a pyramidal decomposition. Experimental comparisons with existing techniques demonstrate that the proposed method produces very strong statistical and visual results.*


<img src="https://github.com/OguzhanUlucan/PAS-MEF/blob/main/figure/block.png">


##  Prerequisites

:heavy_check_mark: MATLAB 2015+


## Usage

```
Required Input : Source static image sequence in RGB.

Output:    
        (1) Fused    : The fused image.
        (2) Weights  : PAS-MEF Weights
        (3) run-time : Computational Complexity of the PAS-MEF in seconds
        (4) MEF_SSIM : Statistical result of the image according to:
Perceptual Quality Assessment for Multi-Exposure Image Fusion, 
Kede Ma, Kai Zeng, Zhou Wang, 
IEEE Transactions on Image Processing, vol. 24,pp. 3345 - 3356, Nov.2015.
 
```
 
  Usage:
  
        (1) Install the PAS-MEF package by using the "run install" command
        
        (2) Select the image stacks folder to be fused
        
        (3) Run the PAS-MEF code in order to obtain results
        
        (4) Uninstall the PAS-MEF packages by using the "run uninstall" command


## Results

Weights which are extracted via PAS-MEF:

<img src="https://github.com/OguzhanUlucan/PAS-MEF/blob/main/figure/weights.png">


Fusion results of MDO-MEF and PAS-MEF:

<img src="https://github.com/OguzhanUlucan/PAS-MEF/blob/main/figure/res1.png">




## Citing this work

If you find this work useful in your research, please consider citing:

```
@article{karakaya2021pas,
  title={PAS-MEF: Multi-exposure image fusion based on principal component analysis, adaptive well-exposedness and saliency map},
  author={Karakaya, Diclehan and Ulucan, Oguzhan and Turkan, Mehmet},
  journal={arXiv preprint arXiv:2105.11809},
  year={2021}
}

```

*   Karakaya, D., Ulucan, O., & Turkan, M. (2021). PAS-MEF: Multi-exposure image fusion based on principal component analysis, adaptive well-exposedness and saliency map. arXiv preprint arXiv:2105.11809.

### Related Research Projects

- [Multi-Exposure Image Fusion based on Linear Embeddings and Watershed Masking](https://github.com/DiclehanOguzhan/MDO_MEF): A multi-exposure image fusion technique based on linear embeddings & Watershed Masking (Elsevier Signal Processing).
