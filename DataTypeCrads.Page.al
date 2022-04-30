page 50115 DataTypes
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    Caption = 'Store Room';
    layout
    {
        area(Content)
        {
            field(Email; id)
            {
                ApplicationArea = All;
            }
            field(Password; pass)
            {
                ApplicationArea = All;
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action("Add Inventory")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Add Items';
                Image = Add;
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Page 50116; //For Going to Page
                                        //RunPageLink = "Payment Term" = FIELD(Code);
                ToolTip = 'Add new Items in Store';
            }
            action("Give Inventory")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Give Items';
                Image = Navigate;
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Page 50118; //For Going to Page
                                        //RunPageLink = "Payment Term" = FIELD(Code);
                ToolTip = 'Giving Items to Requested Person';
            }
            action("View Inventory")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'View Items';
                Image = ItemAvailability;
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Page 50117; //For Going to Page
                                        //RunPageLink = "Payment Term" = FIELD(Code);
                ToolTip = 'View Items in Store';
            }
            action("Request Funds")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Request Funds';
                Image = Currency;
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Page 50116; //For Going to Page
                                        //RunPageLink = "Payment Term" = FIELD(Code);
                ToolTip = 'Request Funds for New Inventory';
            }
            action("View Report")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'View Report';
                Image = Report;
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Page 50116; //For Going to Page
                                        //RunPageLink = "Payment Term" = FIELD(Code);
                ToolTip = 'View Report of Store';
            }
        }
    }
    var
        myInt1: Integer;
        myInt2: Integer;
        res: Boolean;
        id: Text;
        pass: Text;
}