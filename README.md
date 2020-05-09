

The code in this toolbox implements the ["CoSpace: Common Subspace Learning from Hyperspectral-Multispectral Correspondences"](https://ieeexplore.ieee.org/document/8672122).
More specifically, it is detailed as follow.

Citation
---------------------

**Please kindly cite the papers if this code is useful and helpful for your research.**

     @article{hong2019cospace,
      title     = {Co{S}pace: Common subspace learning from hyperspectral-multispectral correspondences},
      author    = {D. Hong and N. Yokoya and J. Chanussot and X. Zhu},
      journal   = {IEEE Trans. Geosci. Remote Sens.}, 
      volume    = {57},
      number    = {7},
      pages     = {4349--4359},
      year      = {2019},
      publisher = {IEEE}
     }


System-specific notes
---------------------
The code was tested in Matlab R2016a or higher versions on Windows 10 machines.

How to use it?
---------------------

Directly run demo.m to reproduce the results on the Houston2013  data, which exists in the aforementioned paper.  
Note that the hyperspectral and simulated multispectral Houston2013 data can be downloaded from  
[google drive](https://drive.google.com/open?id=1Inpi2_lHuvEWdJX_Duj9ild1_a0LHKmD)  
[baiduyun](https://pan.baidu.com/s/1ABbWgkEkzp2Q02yjeYjxvw): ivb0 (access code).

If you want to run the code in your own data, you can accordingly change the input (e.g., data) and tune the parameters.
Please note that 
1) the shape of the input matrix.
2) when you are running the code in parallel, that is, you have to seperate the input HSI into some patches,
in our code, the patch must be square (length = width).
3) if the endmemebers are not given in advance, the code would automatically extract the endmembers from HSI using VCA.

If you encounter the bugs while using this code, please do not hesitate to contact us.

(c) Danfeng Hong, Remote Sensing Technology Institute (IMF), German Aerospace Center (DLR), Germany; <br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Singnal Processing in Earth Oberservation (SiPEO), Technical University of Munich (TUM), Germany.<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; danfeng.hong@dlr.de      
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; hongdanfeng1989@gmail.com

We would like to thank Prof. Deng Cai, Dr. Tom Rainforth, and Prof. Chih-Chung Chang and Prof. Chih-Jen Lin for providing the Matlab Codes of LPP, CCF, and SVM, respectively. 
Codes for these algorithms used in our paper can be found in the following.

LPP: the code is available in http://www.cad.zju.edu.cn/home/dengcai/.

CCF: the code is available in https://github.com/jandob/ccf.

SVM: the code is available in https://www.csie.ntu.edu.tw/~cjlin/libsvm/oldfiles/index-1.0.html.

If you want to use the codes mentioned above, please cite the corresponding articles as well.

References:
[1] D. Cai, X. He, J. Han. "Document clustering using locality preserving indexing." IEEE Transactions on Knowledge and Data Engineering 17.12 (2005): 1624-1637.
[2] D.Hong, N. Yokoya, J. Xu, X. Zhu. "Joint & progressive learning from high-dimensional data for multi-label classification." In Proceedings of the European Conference on Computer Vision (ECCV), pp. 469-484. 2018.
[3] T. Rainforth, F. Wood. "Canonical correlation forests." arXiv preprint arXiv:1507.05444 (2015).
[4] C. Chang, C. Lin. "LIBSVM: a library for support vector machines." ACM transactions on intelligent systems and technology (TIST) 2.3 (2011): 27.

---------------------
For the datasets used in our paper (Houston data and Chikusei data), you can

    apply for the Univeristy of Houston hyperspectral dataset from http://www.grss-ieee.org/community/technical-committees/data-fusion/2013-ieee-grss-data-fusion-contest/.
    
    download the Chikusei data from http://naotoyokoya.com/Download.html.

Or please feel free to contact me if you are interested in such tasks.

References:
[1] N. Yokoya, I. Akira."Airborne hyperspectral data over Chikusei." Tech. Rep. SAL-2016-05-27 (2016).
[2] D. Hong, N. Yokoya, J. Chanussot, X. Zhu."CoSpace: Common Subspace Learning from Hyperspectral-Multispectral Correspondences." arXiv preprint arXiv:1812.11501 (2018).
[3] D. Hong, N. Yokoya, N. Ge, J. Chanussot, X. Zhu."Learnable manifold alignment (LeMA): A semi-supervised cross-modality learning framework for land cover and land use classification." ISPRS Journal of Photogrammetry and Remote Sensing 147 (2019): 193-205.

Licensing
---------

Copyright (C) 2019 Danfeng Hong

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, version 3 of the License.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program.

Contact Information:
--------------------

Danfeng Hong: hongdanfeng1989@gmail.com<br>
Danfeng Hong is with the Remote Sensing Technology Institute (IMF), German Aerospace Center (DLR), Germany; <br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; with the Singnal Processing in Earth Oberservation (SiPEO), Technical University of Munich (TUM), Germany. 
