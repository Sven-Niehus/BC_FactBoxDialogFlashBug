controladdin MyControlAddIn
{
    RequestedHeight = 300;
    MinimumHeight = 300;
    MaximumHeight = 300;
    RequestedWidth = 700;
    MinimumWidth = 700;
    MaximumWidth = 700;
    VerticalStretch = true;
    VerticalShrink = true;
    HorizontalStretch = true;
    HorizontalShrink = true;
    Scripts = 'ControlAddIn/Script.js', 'https://code.jquery.com/jquery-3.5.1.js';
    StartupScript = 'ControlAddIn/Init.js';

    event Started(pTotalFiles: Integer; pRemainingFiles: Integer)
    event ProgressUpdate(pTotalFiles: Integer; pRemainingFiles: Integer)
    event Finished()


    procedure MyProcedure()
}