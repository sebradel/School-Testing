clear; close all; clc

#Load data, apply feature scaling, and add a non-linear feature
[data, y] = loadData('projectData.txt');
data = newFeatureScale(data);
data = addNonLinearFeature(data);

#Theta values 
theta = [0.051550; 0.506168; 1.122392; -0.960418; -0.370159];

#Generate estimates using theta values
estimates = h(theta, data);
estimates2 = zeros(length(estimates), 1);

#Calculate correct classification percentage
correct = 0;
for j=1:length(estimates)
    if (estimates(j)<0.5)
        if (y(j)<1)
            correct = correct+1;
        end
    else
        estimates2(j, 1) = 1;
        if(y(j)>0)
            correct = correct + 1;
        end
    end
endfor

estimates2
percentCorrect = correct / length(estimates)