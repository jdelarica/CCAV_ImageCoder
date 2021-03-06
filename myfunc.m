function myfunc
fig = uifigure;
bg = uibuttongroup(fig,...
                  'Title','Options',...
                  'Position', [100 100 123 106],...
                  'SelectionChangedFcn',@(bg,event) bselection(bg,event));

              
% Create three radio buttons in the button group.
r1 = uiradiobutton(bg,...
                  'Text','Option 1',...
                  'Position',[10 60 70 15]);
              
r2 = uiradiobutton(bg,...
                  'Text','Option 2',...
                  'Position',[10 38 70 15]);

r3 = uiradiobutton(bg,...
                  'Text','Option 3',...
                  'Position',[10 15 70 15]);
              
    function bselection(bg,event)
       display(['Pushed button: ', event.NewValue.Text]);
       
    end
end 