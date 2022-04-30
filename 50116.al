page 50116 SelectCategory
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    Caption = 'Store Room';
    SourceTable = StoreItems;
    PromotedActionCategories = 'Category,Shelf';
    //RefreshOnActivate = true;
    layout
    {
        area(Content)
        {
            field(ID; Rec.ID)
            {
                ApplicationArea = All;
            }
            field(Name; Rec.Name)
            {
                ApplicationArea = All;
            }
            field(Category; Rec.Category)
            {
                ApplicationArea = All;
            }
            field(Quantity; Rec.Quantity)
            {
                ApplicationArea = All;
            }
            field(Shelf; Rec.Shelf)
            {
                ApplicationArea = All;
            }
        }
    }
    actions
    {
        area(Processing)
        {
            group(Categories)
            {
                Caption = 'Category';
                action(Statioanry)
                {
                    ApplicationArea = Basic, Suite;
                    Ellipsis = true;
                    Image = Inventory;
                    trigger OnAction()
                    begin
                        Category := 'Stationary';
                    end;
                }
                action(Kitchen)
                {
                    ApplicationArea = Basic, Suite;
                    Ellipsis = true;
                    Image = Warehouse;
                    trigger OnAction()
                    begin
                        Category := 'Kitchen';
                    end;
                }
                action(Clean)
                {
                    ApplicationArea = Basic, Suite;
                    Ellipsis = true;
                    Image = WIPEntries;
                    trigger OnAction()
                    begin
                        Category := 'Clean';
                    end;
                }
            }
            group(Placement)
            {
                Caption = 'Shelf';
                action(LeftUp)
                {
                    Caption = 'Left Up';
                    ApplicationArea = Basic, Suite;
                    Ellipsis = true;
                    Image = PostedReturnReceipt;
                    trigger OnAction()
                    begin
                        Shelf := 'Left Up';
                    end;
                }
                action(LeftDown)
                {
                    Caption = 'Left Down';
                    ApplicationArea = Basic, Suite;
                    Ellipsis = true;
                    Image = LinesFromJob;
                    trigger OnAction()
                    begin
                        Shelf := 'Left Down';
                    end;
                }
                action(RightUp)
                {
                    Caption = 'Right Up';
                    ApplicationArea = Basic, Suite;
                    Ellipsis = true;
                    Image = ViewRegisteredOrder;
                    trigger OnAction()
                    begin
                        Shelf := 'Right Up';
                    end;
                }
                action(RightDown)
                {
                    Caption = 'Right Down';
                    ApplicationArea = Basic, Suite;
                    Ellipsis = true;
                    Image = Placeholder;
                    trigger OnAction()
                    begin
                        Shelf := 'Right Down';
                    end;
                }
            }
        }
    }
}