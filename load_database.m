srcFiles = dir('E:\img\*.jpg');  % the folder in which ur images exists
cd('cifar11Train');
    for i=1:5
    cd(strcat('s',num2str(i)));
    for j=1:4
        y = num2str(i);
        z = num2str(j);
        image_Container = imread(strcat(num2str(j),'.jpg'));
        k=imresize(image_Container,[32,32]);
        imshow(k);
        display(i);
        display(z);
        folder_name = strcat('D:\Lectures\Semester 6\WIX 3001\Assignment\Deep Learning\DeepLearningDemos\cifar12Train\S',y);
%         newfilename=strcat('D:\Lectures\Semester 6\WIX 3001\Assignment\Deep Learning\DeepLearningDemos\cifar12Train\S',(i),'\',(j));
        newfilename=strcat('D:\Lectures\Semester 6\WIX 3001\Assignment\Deep Learning\DeepLearningDemos\cifar12Train\S',y,'\',z,'.jpg');
        display(newfilename);
        display(folder_name)
        if not(exist(folder_name,'dir'))
            mkdir(folder_name);
        end
        imwrite(k,newfilename,'jpg');
    end
        display('Doading Database');
        cd ..
    end

%     srcFiles = dir('E:\img\*.jpg');  % the folder in which ur images exists
% for i = 1 : length(srcFiles)
% filename = strcat('E:\img\',srcFiles(i).name);
% im = imread(filename);
% k=imresize(im,[300,300]);
% nm= 'E;/Resizeimage/';
% nm1='srcFiles(i).name';
% strcat(nm,nm1);
% imwrite(k,nm,'jpg');
% end