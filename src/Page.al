page 50100 "My Page"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Customer;


    layout
    {
        area(Content)
        {
            repeater(Customers)
            {
                field("No."; "No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Customer No.';
                }
                field(Name; Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'Customer Name';
                }
            }
        }
        area(FactBoxes)
        {
            part(MyFactbox; "My FactBox")
            {
                ApplicationArea = All;
                Caption = 'My FactBox';
            }
        }
    }

}