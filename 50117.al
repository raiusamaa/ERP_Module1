page 50117 Info
{
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = StoreItems;
    layout
    {
        area(Content)
        {
            repeater(control1)
            {
                field(ID; ID)
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field(Name; Name)
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field(Category; Category)
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field(Quantity; Quantity)
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field(Shelf; Shelf)
                {
                    Editable = false;
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Go Back")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Go back';
                Image = PreviousRecord;
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Page 50115; //For Going to Page
            }
        }
    }
}