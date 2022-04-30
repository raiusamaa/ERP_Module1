page 50118 Request
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    //SourceTable = StoreItems;
    Caption = 'Recording Data';

    layout
    {
        area(Content)
        {
            field(email; email)
            {
                Caption = 'Email';
                ApplicationArea = Suite;
            }
            field(name; name)
            {
                Caption = 'Name';
                ApplicationArea = Suite;
            }
            field(item; item)
            {
                Caption = 'Item Name';
                ApplicationArea = Suite;
            }
            field(quantity; quantity)
            {
                Caption = 'Quantity';
                ApplicationArea = Suite;
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(Update)
            {
                ApplicationArea = All;
                Caption = 'Update Table';
                Image = UpdateDescription;
                Promoted = true;
                RunObject = Page 50115; //For Going to Page
                                        //RunPageLink = "Payment Term" = FIELD(Code);
                                        //ToolTip = 'Add new Items in Store';
            }
        }
    }
    var
        email: Text;
        name: Text;
        item: Text;
        quantity: Integer;
}