codeunit 50100 "Progress"
{
    SingleInstance = true;


    var
        RemainingFilesDialog: Dialog;
        RemainingFilesLbl: Label 'Total Files: #1 \ Remaining files: #2', Comment = '#1 is the placeholder for the total count of files. #2 is the placeholder for the remaining count of files.';
        TotalFilesCount: Integer;
        RemainingFilesCount: Integer;


    procedure OpenDialog(pTotalFilesCount: Integer; pRemainingFilesCount: Integer)
    begin
        TotalFilesCount := pTotalFilesCount;
        RemainingFilesCount := pRemainingFilesCount;

        RemainingFilesDialog.Open(RemainingFilesLbl, TotalFilesCount, RemainingFilesCount);
    end;

    procedure UpdateDialog(pTotalFilesCount: Integer; pRemainingFilesCount: Integer)
    begin
        TotalFilesCount := pTotalFilesCount;
        RemainingFilesCount := pRemainingFilesCount;

        RemainingFilesDialog.Update();
    end;

    procedure CloseDialog()
    begin
        RemainingFilesDialog.Close();
    end;
}