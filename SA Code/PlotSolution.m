
function PlotSolution(sol,model)

    xmin=model.xmin;
    xmax=model.xmax;
    ymin=model.ymin;
    ymax=model.ymax;
    
    tour=sol.Position;
    
    tour=[tour tour(1)];
    
    plot(model.x(tour),model.y(tour),'k-o',...
        'MarkerSize',10,...
        'MarkerFaceColor','y',...
        'LineWidth',1.5);
    
    xlabel('x');
    ylabel('y');
    
    axis equal;
    grid on;
    
	alpha = 0.1;
	
    dx = xmax - xmin;
    xmin = floor((xmin - alpha*dx)/10)*10;
    xmax = ceil((xmax + alpha*dx)/10)*10;
    xlim([xmin xmax]);
    
    dy = ymax - ymin;
    ymin = floor((ymin - alpha*dy)/10)*10;
    ymax = ceil((ymax + alpha*dy)/10)*10;
    ylim([ymin ymax]);

end