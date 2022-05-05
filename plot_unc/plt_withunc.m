function [] = plt_withunc(x,y,unc)
% this function plots time series and add a patch to show the uncertainty
% the length of x and y should be same
% unc can be a vector which is same long with x or a single value
%
% Ziqing Yu
%% plot timeseries
xs_min = y - unc;
xs_max = y + unc;
h = plot(x, y, 'color', [0 0 53]./255, ...
        'LineWidth', 3);

hold on

%% plot uncertainty
% check for different situation
nanid = find(isnan(y));
if isempty(nanid)
    patch1 = fill([x fliplr(x)], [xs_min fliplr(xs_max)],[96 96 96]./255);
    set(patch1, 'edgecolor', 'none');
    set(patch1, 'FaceAlpha', 0.2);
    pbaspect([3 1 1])
    set(gca,'YGrid','on')
    set(gcf,'color','w')
    set(gca,'fontsize',14)
else
    split_id = [0,nanid,length(y)+1];
    for i = 1:length(split_id)-1
        x0 = x(split_id(i)+1:split_id(i+1)-1);
        xs_min0 = xs_min(split_id(i)+1:split_id(i+1)-1);
        xs_max0 = xs_max(split_id(i)+1:split_id(i+1)-1);
        patch1 = fill([x0 fliplr(x0)], [xs_min0 fliplr(xs_max0)],[96 96 96]./255);
        set(patch1, 'edgecolor', 'none');
        set(patch1, 'FaceAlpha', 0.2);
        pbaspect([3 1 1])
        set(gca,'YGrid','on')
        set(gcf,'color','w')
        set(gca,'fontsize',14)
    end
end
end