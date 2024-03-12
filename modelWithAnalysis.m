clear; close all; clc
#Load data, apply feature scaling, and add a non-linear feature
[allData, allY] = loadData('projectData.txt');
allData = newFeatureScale(allData);
allData = addNonLinearFeature(allData);

#Allocate data to different sets
X = allData(1:280, :);
y = allY(1:280, :);
validationX = allData(280:420, :);
validationY = allY(280:420, :);
restX = allData(421:end, :);
restY = allY(421:end, :);

#Run gradient descent
alpha = 0.5;
maxIter = 300;
[theta, costs] = gradientDescent([0;0;0;0;0], X, y, alpha, maxIter, 0);

#Generate learning curve
for i=2:280
    tempX = allData(1:i, :);
    tempY = allY(1:i, :);
    
    [tempTheta, tempCosts] = gradientDescent([0;0;0;0;0], tempX, tempY, 0.5, 300, 0);
    if (i == 2)
        tempCosts2 = [J(tempTheta, tempX, tempY, 0)];
        tempCostsVal = [J(tempTheta, validationX, validationY, 0)];
    else
        tempCosts2 = [tempCosts2 J(tempTheta, tempX, tempY, 0)];
        tempCostsVal = [tempCostsVal J(tempTheta, validationX, validationY, 0)];
    end
    tempCost = J(tempTheta, tempX, tempY, 0);
    tempCostVal = J(tempTheta, validationX, validationY, 0);
    if(i == 150)
        temper = J(tempTheta, validationX, validationY,0);
    end
endfor
newPlotCost(tempCosts2, tempCostsVal);

#Calculate correct classification rates for each set
estimates = h(theta, restX);
estimates3 = h(theta, validationX);
estimates2 = h(theta, X);
correct = 0;
correct2 = 0;
correct3 = 0;
for i=1:length(estimates)
    if (estimates(i)<0.5)
        if (restY(i)<1)
            correct = correct+1;
        end
    else
        if(restY(i)>0)
            correct = correct + 1;
        end
    end
endfor
for i=1:length(estimates3)
    if (estimates3(i)<0.5)
        if (validationY(i)<1)
            correct3 = correct3 + 1;
        end
    else
        if(validationY(i)>0)
            correct3 = correct3 + 1;
        end
    end
endfor
for j=1:length(estimates2)
    if (estimates2(j)<0.5)
        if (y(j)<1)
            correct2 = correct2+1;
        end
    else
        if(y(j)>0)
            correct2 = correct2 + 1;
        end
    end
endfor

#Print analysis
percentCorrectTraining = correct2 / length(X)
percentCorrectValidation = correct3 / length(validationX)
percentCorrectTest = correct / length(restX)
trainCost = J(theta, X, y, 0)
validationCost = J(theta, validationX, validationY, 0)
testCost = J(theta, restX, restY, 0)
