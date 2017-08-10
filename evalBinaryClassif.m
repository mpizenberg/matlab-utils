function [ precision, recall, jaccard ] = evalBinaryClassif ( values, groundtruth )
% Compute the precision, recall and jaccard index of binary classification.
%
% Syntax #####################
%
% [ precision, recall, jaccard ] = evalBinaryClassif( values, groundtruth );
%
% Description ################
%
% values: logical tensor. The computed values to compare to ground truth.
% groundtruth: logical tensor. The ground truth reference.
% precision: double in [0,1]. TP / (TP + FP)
% recall: double in [0,1]. TP / (TP + FN)
% jaccard: double in [0,1]. TP / (TP + FP + FN)


% Vectorize the matrices.
gt = groundtruth(:);
val = values(:);


% Evaluate.
true_pos = sum(gt & val);
false_pos = sum(~gt & val);
false_neg = sum(gt & ~val);


precision = true_pos/(true_pos+false_pos);
recall = true_pos/(true_pos+false_neg);
jaccard = true_pos/(true_pos+false_pos+false_neg);


end
