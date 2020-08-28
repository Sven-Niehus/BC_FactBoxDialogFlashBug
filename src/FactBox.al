page 50101 "My FactBox"
{
    Caption = 'Factbox';
    PageType = CardPart;

    layout
    {
        area(Content)
        {
            field(ClickHere; i)
            {
                Caption = 'Click me -->';
                ApplicationArea = All;

                trigger OnDrillDown()
                begin
                    OpenDialog();
                    UpdateDialogLoop();
                    CloseDialog();
                end;
            }
            usercontrol(x; MyControlAddIn)
            {
                ApplicationArea = All;
                Visible = true;

                trigger Started(pTotalFiles: Integer; pRemainingFiles: Integer)
                begin
                    TotalFiles := pTotalFiles;
                    RemainingFiles := pRemainingFiles;
                    Progress.OpenDialog(TotalFiles, RemainingFiles);
                end;

                trigger ProgressUpdate(pTotalFiles: Integer; pRemainingFiles: Integer)
                begin
                    TotalFiles := pTotalFiles;
                    RemainingFiles := pRemainingFiles;
                    Progress.UpdateDialog(TotalFiles, RemainingFiles);
                end;

                trigger Finished()
                begin
                    Progress.CloseDialog();
                end;
            }
        }
    }

    procedure OpenDialog()
    begin
        TotalFiles := 50;
        RemainingFiles := TotalFiles;
        Progress.OpenDialog(TotalFiles, RemainingFiles);
    end;

    procedure UpdateDialogLoop()
    begin
        repeat
            RemainingFiles := RemainingFiles - 1;
            Progress.UpdateDialog(TotalFiles, RemainingFiles);
            Sleep(200);
        until RemainingFiles <= 0;
    end;

    procedure CloseDialog()
    begin
        Progress.CloseDialog();
    end;

    var
        i: Integer;
        TotalFiles: Integer;
        RemainingFiles: Integer;
        Progress: Codeunit Progress;
}