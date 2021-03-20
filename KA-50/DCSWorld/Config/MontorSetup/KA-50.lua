_  = function(p) return p; end;
name = _('KA-50');
Description = 'Camera on the center monitor, and shkval and abris above on a second monitor'
Viewports =
{
     Center =
     {
          x = 0;
          y = 1440;
          width = 2560;
          height = 1440;
          viewDx = 0;
          viewDy = 0;
          aspect = 2560 / 1440;
     }
}

-- Shkval 4:3
LEFT_MFCD =
{
     x = 0;
     y = 165;
     width = 1480;
     height = 1110;
}

-- ABRIS - 3:4
RIGHT_MFCD =
{
     x = screen.width - 1080;
     y = 0;
     width = 1080;
     height = 1440;
}

UIMainView = Viewports.Center
GU_MAIN_VIEWPORT = Viewports.Center