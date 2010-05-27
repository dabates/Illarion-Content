require("base.books")
require("druids.content.amethyst")

module("items.books.108_red_book", package.seeall)

-- UPDATE common SET com_script='items.books.108_red_book' WHERE com_itemid = 108;

function UseItem(User, SourceItem, TargetItem, Counter, Param)
    if ( TargetItem.id == 266 ) or ( TargetItem.id == 267 ) then
        world:erase(SourceItem,1);
    else
        if base.books.InitBook() then
            druids.content.amethyst.loadBook(1);
        end
    end
    base.books.SendBookPage(User,SourceItem.data,Counter);
end  -- function


function LookAtItem( User, Item )
    if base.books.InitTitle() then
        druids.content.amethyst.loadTitle(1);
    end
    base.books.GetBookItemInform(User,Item);
end