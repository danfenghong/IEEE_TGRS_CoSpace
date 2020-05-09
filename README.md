Please note that this is an updated version (ALMM_v1), the main improvement lies in the following three parts:

the updated code is able to input non-grid HSI (e.g., the size is 107 * 107, not only limiting to e.g., 100 * 100);
a blind ALMM code is added in this toolbox as well, which enables simultaneous abundance estimation and endmember extraction;
we correct a problem that the final abundance maps can not be imshown correctly.
The code in this toolbox implements the "An augmented linear mixing model to address spectral variability for hyperspectral unmixing". More specifically, it is detailed as follow

Please kindly cite the papers if this code is useful and helpful for your research.

@article{hong2019cospace,
  title   = {Co{S}pace: Common subspace learning from hyperspectral-multispectral correspondences},
  author  = {D. Hong and N. Yokoya and J. Chanussot and X. Zhu},
  journal = {IEEE Trans. Geosci. Remote Sens.}, 
  volume  = {57},
  number  = {7},
  pages   = {4349--4359},
  year={2019},
  publisher={IEEE},
  url={https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=8672122}
}
 
System-specific notes
The code was tested in Matlab R2016a or higher versions on Windows 10 machines.

How to use it?
Directly run demo.m to reproduce the results on the synthetic data, which exists in the aforementioned paper.
Note that the simulated data can be downloaded from
google drive
baiduyun: ivb0 (access code).


(c) Danfeng Hong, Remote Sensing Technology Institute (IMF), German Aerospace Center (DLR), Germany;
                              Singnal Processing in Earth Oberservation (SiPEO), Technical University of Munich (TUM), Germany.
                              danfeng.hong@dlr.de
                              hongdanfeng1989@gmail.com

Licensing
Copyright (C) 2019 Danfeng Hong

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, version 3 of the License.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program.

Contact Information:
Danfeng Hong: hongdanfeng1989@gmail.com
Danfeng Hong is with the Remote Sensing Technology Institute (IMF), German Aerospace Center (DLR), Germany;
                            with the Singnal Processing in Earth Oberservation (SiPEO), Technical University of Munich (TUM), Germany.
