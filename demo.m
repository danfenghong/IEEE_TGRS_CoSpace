clc;
clear;
close all;

addpath('Data'); %load data
addpath('functions'); %load functions used for CoSpace
addpath('SVM'); %load SVM classifier
addpath('CCF'); %load CCF classifier

load HS_LR_Houston.mat;
load MS_HR_Houston.mat;
load TrainImage.mat;
load TestImage.mat;

[TrainMS, TestMS, TrainLabel, TestLabel] = GetSampleLabel(data_MS_HR,TrainImage,TestImage);
[TrainHS, TestHS, ~, ~] = GetSampleLabel(data_HS_LR,TrainImage,TestImage);

%LPP's parameters used for initializing CoSpace
param.k = 10;
param.d = 30;
param.sigma = 1;

isClustering = 'True';
num = 10; %the number of cluster center

%CoSpace's parameters
maxiter = 1000;
alfa = 0.01;
beta = 0.01;

%% Prepare model's input,including
%  two modalities (X_1, X_2),
%  one-hot encoded labels (Y),
%  Graph matrix (W)
%  Laplacian matrix (L)
[X_1, X_2, Y, W, L, Z] = Prepare_Input(TrainMS, TrainHS, TrainLabel, param, isClustering, num);

%% Run CoSpace
[thetaT,P,res]=CoSpace([Y,Y],[X_1,X_2],Z,alfa,beta,L,maxiter);

%% Generate features via projections
f=thetaT(:,size(TrainHS)+1:end)*[TrainMS,TestMS];

%% Feature normalization before feeding into classifier
for i=1:size(f,1)
    f(i,:)=double(mat2gray(f(i,:)));
end
 
traindata=f(:,1:length(TrainLabel));
testdata=f(:,length(TrainLabel)+1:end);

%% NN classifier with Euclidean distance 
mdl =ClassificationKNN.fit(traindata',TrainLabel','NumNeighbors',1,'distance','euclidean'); 
characterClass= predict(mdl,testdata'); 
oa_NN = sum(characterClass==TestLabel')/length(TestLabel);

%% LSVM classifier
[oa_SVM,pa_SVM,ua_SVM,kappa_SVM]=LSVM(traindata,TrainLabel,testdata,TestLabel);

%% CCF classifier
rng(1);
nTrees = 100;
[M_CCF,oa_CCF,pa_CCF,ua_CCF,kappa_CCF]=CCF(traindata,TrainLabel,testdata,TestLabel,nTrees);
