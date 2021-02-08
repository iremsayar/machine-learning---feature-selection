
srcFiles = dir('C:\Users\Ýrem SAYAR\Desktop\ml\features\lichenplanus\*.jpg');  % the folder in which ur images exists

for i = 1 : length(srcFiles)
    
    filename = strcat('C:\Users\Ýrem SAYAR\Desktop\ml\features\lichenplanus\',srcFiles(i).name);
 
    I = imread(filename);
    [w,h]=size(I);
   I = 255-I;
    R = I(:,:,1);
    G = I(:,:,2);
    B = I(:,:,3);

R_av = (sum(sum(R))) / (w*h); 
G_av = (sum(sum(G))) / (w*h);
B_av = (sum(sum(B))) / (w*h);

    x = [R_av G_av B_av ]; % features selection

    features(i,:) = x;
    
end
