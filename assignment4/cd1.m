function ret = cd1(rbm_w, visible_data)
% <rbm_w> is a matrix of size <number of hidden units> by <number of visible units>
% <visible_data> is a (possibly but not necessarily binary) matrix of size <number of visible units> by <number of data cases>
% The returned value is the gradient approximation produced by CD-1. It's of the same shape as <rbm_w>.
    visible_data = sample_bernoulli(visible_data); # q9 add
    s1 = sample_bernoulli(logistic(rbm_w*visible_data));
    s2 = sample_bernoulli(logistic(rbm_w'*s1));
%     s3 = sample_bernoulli(logistic(rbm_w*s2)); # origin cd1
    s3 = logistic(rbm_w*s2);
    ret = configuration_goodness_gradient(visible_data,s1)-configuration_goodness_gradient(s2,s3);
    
end 
