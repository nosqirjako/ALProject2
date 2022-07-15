pageextension 50100 "CSD ResourceCardExt" extends "Resource Card"
// CSD1.00 - 2018-02-01 - D. E. Veloper
{
    layout
    {
        addlast(General)
        {
            field("CSD Resource Type";"CSD Resource Type")
            {

            }

            field("CSD Quality Per Day";"CSD Quality Per Day")
            {

            }

        }
        addafter("Personal Data")
        {
            group("CSD Room")

            {
                Caption = 'Room';
                Visible = ShowMaxFields;
            
            }
            field("CSD Maximum Participants";"CSD Maximum Participants")
            {

            }
        }
        
    }
    
    trigger OnAfterGetRecord();

    begin
        ShowMaxField := (Type = Type::machine);
        CurrPage.Update(false);
    end;
    var
        [InDataSet]
        ShowMaxField: Boolean;
}