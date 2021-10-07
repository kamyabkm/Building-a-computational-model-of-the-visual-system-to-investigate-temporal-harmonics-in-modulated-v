function wov

w = 1:13;
a = 1:900;

[w, a] = meshgrid(w, a);

v = w./a;


a_max = 4./(v-0.1);
k = 25.89 + 28.46*abs(log((w./a)/3)).^3.034;
gout = k.*(w./a).*a.*exp(-2.*a./a_max);

% norm_gout = gout./max(gout);
% 
% normalised = norm_gout.*positive;
% 
% est = sum(normalised, 'all');
% 
% figure;
% plot(normalised)
% 
% 
% figure;
% imagesc(normalised)

figure;
surf(w, a, gout)
set(gca,'Xscale','log')
set(gca,'Yscale','log')
set(gca,'Zscale','log')
xlabel('a');



end
