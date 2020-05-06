%save(fullfile(outputmatPath,sprintf('NYU%04d_0000_gt_d4.mat',Id)),'sceneVox_ds','camPose','voxOriginWorld','-v7.3'); 
dataRootfolder = '../data_tmp/'; 
outFolder = fullfile(dataRootfolder,'depthbin','/NYUCADtrain/');
outputmatPath = fullfile(dataRootfolder,'eval','NYUCADtrain');
depthFilename = fullfile(outFolder, sprintf('NYU%04d_0000.png',Id));
sceneVoxFilename = [depthFilename(1:(end-4)),'.bin'];

Id=3;
load(fullfile(outputmatPath,sprintf('NYU%04d_0000_gt_d4.mat',Id)));

[checkVox, camPoseArr, voxOriginWorld] = readRLEfile(sceneVoxFilename);

points = [];
