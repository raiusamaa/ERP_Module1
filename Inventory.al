table 50101 StoreInventory
{
    DataClassification = ToBeClassified;
    Caption = 'Store Room Inventory';
    Description = 'It has Data for All Items of Store Room';

    fields
    {
        field(1; ID; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
        }
        field(2; Name; Text[15])
        {
            DataClassification = ToBeClassified;

        }
        field(3; Category; Text[15])
        {
            DataClassification = ToBeClassified;

        }
        field(4; Quantity; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(5; Shelf; Text[10])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Pk; ID)
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}