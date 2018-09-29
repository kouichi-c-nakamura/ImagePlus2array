%% ImagePlus2array_test.mlx
% 
% 
% |fijipath| .... your |Fiji.app/scripts| folder path
% 
% 

close all;clear;clc

fijipath = getfijipath; %TODO getfijipath needs to be specified

addpath(fijipath);
ImageJ


%% 8bit gray
%%
imp = ij.IJ.openImage("http://imagej.nih.gov/ij/images/AuPbSn40.jpg")
imp.show();
imp.isHyperStack
imp.isComposite

I = ImagePlus2array(imp);
assert(isequal(class(I),'uint8'))
assert(isequal(size(I),[412 600]))

imshow(I)
%%

imp.close()

%% 8 bit 4D
%%
imp = ij.IJ.openImage("http://imagej.nih.gov/ij/images/bat-cochlea-renderings.zip")
imp.show();
imp.isHyperStack
imp.isComposite

I = ImagePlus2array(imp);
assert(isequal(class(I),'uint8'))
assert(isequal(size(I),[154 284 1 36]))

imshow(I(:,:,1,1))
%%
imp.close()
%% 8bit gray
%%
imp = ij.IJ.openImage("http://imagej.nih.gov/ij/images/boats.gif")
imp.show();
imp.isHyperStack
imp.isComposite

I = ImagePlus2array(imp);
assert(isequal(class(I),'uint8'))
assert(isequal(size(I),[576 720]))

imshow(I)
%%
imp.close()
%% RGB
%%
imp = ij.IJ.openImage("http://imagej.nih.gov/ij/images/cardio.dcm.zip")
imp.show();
imp.isHyperStack
imp.isComposite

I = ImagePlus2array(imp);
assert(isequal(class(I),'uint8'))
assert(isequal(size(I),[1000 1000 3]))

imshow(I)
%%
imp.close()
%% RGB
%%
imp = ij.IJ.openImage("http://imagej.nih.gov/ij/images/clown.jpg")
imp.show();
imp.isHyperStack
imp.isComposite

I = ImagePlus2array(imp);
assert(isequal(class(I),'uint8'))
assert(isequal(size(I),[200 320 3]))

imshow(I)
%%
imp.close()
%% 8 bit 4D, Hyperstack, Composite
%%
imp = ij.IJ.openImage("http://imagej.nih.gov/ij/images/confocal-series.zip")
imp.show();
imp.isHyperStack
imp.isComposite

I = ImagePlus2array(imp);
assert(isequal(class(I),'uint8'))
assert(isequal(size(I),[400 400 2 25]))

imshow(I(:,:,1,1,1))
%%
imp.close()
%% 16bit gray
%%
imp = ij.IJ.openImage("http://imagej.nih.gov/ij/images/ct.dcm.zip")
imp.show();
imp.isHyperStack
imp.isComposite

I = ImagePlus2array(imp);
assert(isequal(class(I),'uint16'))
assert(isequal(size(I),[495 888]))

imshow(I)
set(gca,'CLimMode','auto')
%%
imp.close()
%% 3 channels, 8 bit, Composite
%%
imp = ij.IJ.openImage("http://imagej.nih.gov/ij/images/FluorescentCells.zip")
imp.show();
imp.isHyperStack
imp.isComposite

I = ImagePlus2array(imp);
assert(isequal(class(I),'uint8'))
assert(isequal(size(I),[512 512 3]))

imshow(I)
%%
imp.close()
%% RGB, stack
%%
imp = ij.IJ.openImage("http://imagej.nih.gov/ij/images/flybrain.zip")
imp.show();
imp.isHyperStack
imp.isComposite

I = ImagePlus2array(imp);
assert(isequal(class(I),'uint8'))
assert(isequal(size(I),[256 256 3 57]))

imshow(I(:,:,:,26))
%%
imp.close()
%% 16 bit,3 channels, Composite
%%
imp = ij.IJ.openImage("http://imagej.nih.gov/ij/images/hela-cells.zip")
imp.show();
imp.isHyperStack
imp.isComposite

I = ImagePlus2array(imp);
assert(isequal(class(I),'uint16'))
assert(isequal(size(I),[512 672 3]))

imshow(I(:,:,1))
set(gca,'ClimMode','auto')
%%
imp.close()
%% 16 bit, 5D, Hyperstack, Composite
%%
imp = ij.IJ.openImage("http://imagej.nih.gov/ij/images/Spindly-GFP.zip")
imp.show();
imp.isHyperStack
imp.isComposite

I = ImagePlus2array(imp);
assert(isequal(class(I),'uint16'))
assert(isequal(size(I),[196 171 2 5 51]))

imshow(I(:,:,1,3,25))
set(gca,'ClimMode','auto')
%%
imp.close()
%% 16 bit, Composite
%%
imp = ij.IJ.openImage("http://imagej.nih.gov/ij/images/Rat_Hippocampal_Neuron.zip")
imp.isHyperStack
imp.isComposite

I = ImagePlus2array(imp);
assert(isequal(class(I),'uint16'))
assert(isequal(size(I),[512 512 5]))

imshow(I(:,:,1))
set(gca,'ClimMode','auto')
%%
imp.close()
%% 16 bit, Hyperstack, Composite
%%
imp = ij.IJ.openImage("http://imagej.nih.gov/ij/images/organ-of-corti.zip")
imp.isHyperStack
imp.isComposite

I = ImagePlus2array(imp);
assert(isequal(class(I),'uint16'))
assert(isequal(size(I),[249 548 4 15]))

imshow(I(:,:,1,7))
set(gca,'ClimMode','auto')
%%
imp.close()
%% 16bit, 4D
%%
imp = ij.IJ.openImage("http://imagej.nih.gov/ij/images/t1-head.zip")
imp.isHyperStack
imp.isComposite

I = ImagePlus2array(imp);
assert(isequal(class(I),'uint16'))
assert(isequal(size(I),[256 256 1 129]))

imshow(I(:,:,1,60))
set(gca,'ClimMode','auto')
%%
imp.close()