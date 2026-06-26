.class public Lcom/narvii/item/picker/ItemSortFragment;
.super Lcom/narvii/list/DragSortListFragment;
.source "ItemSortFragment.java"

# interfaces
.implements Lcom/narvii/app/FragmentWillFinishListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/item/picker/ItemSortFragment$Adapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/DragSortListFragment<",
        "Lcom/narvii/model/Item;",
        ">;",
        "Lcom/narvii/app/FragmentWillFinishListener;"
    }
.end annotation


# static fields
.field static final PICK_ITEM_REQUEST:I = 0x1


# instance fields
.field adapter:Lcom/narvii/item/picker/ItemSortFragment$Adapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/narvii/list/DragSortListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/narvii/item/picker/ItemSortFragment;->createAdapter(Landroid/os/Bundle;)Lcom/narvii/list/NVArrayAdapter;

    move-result-object p1

    return-object p1
.end method

.method protected createAdapter(Landroid/os/Bundle;)Lcom/narvii/list/NVArrayAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/narvii/list/NVArrayAdapter<",
            "Lcom/narvii/model/Item;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "itemList"

    .line 61
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 62
    const-class v0, Lcom/narvii/model/Item;

    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 64
    :goto_0
    new-instance v0, Lcom/narvii/item/picker/ItemSortFragment$Adapter;

    invoke-direct {v0, p0, p1}, Lcom/narvii/item/picker/ItemSortFragment$Adapter;-><init>(Lcom/narvii/item/picker/ItemSortFragment;Ljava/util/List;)V

    iput-object v0, p0, Lcom/narvii/item/picker/ItemSortFragment;->adapter:Lcom/narvii/item/picker/ItemSortFragment$Adapter;

    .line 65
    iget-object p1, p0, Lcom/narvii/item/picker/ItemSortFragment;->adapter:Lcom/narvii/item/picker/ItemSortFragment$Adapter;

    return-object p1
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 115
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/app/NVFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    if-eqz p3, :cond_0

    const-string p1, "itemList"

    .line 119
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 121
    const-class p2, Lcom/narvii/model/Item;

    invoke-static {p1, p2}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 123
    iget-object p2, p0, Lcom/narvii/item/picker/ItemSortFragment;->adapter:Lcom/narvii/item/picker/ItemSortFragment$Adapter;

    invoke-virtual {p2}, Lcom/narvii/list/NVArrayAdapter;->clear()V

    .line 124
    iget-object p2, p0, Lcom/narvii/item/picker/ItemSortFragment;->adapter:Lcom/narvii/item/picker/ItemSortFragment$Adapter;

    invoke-virtual {p2, p1}, Lcom/narvii/list/NVArrayAdapter;->addAll(Ljava/util/Collection;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 52
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 53
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    const p1, 0x7f0f0a9e

    .line 54
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 98
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const p2, 0x104000a

    const/4 v0, 0x0

    .line 100
    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    new-instance p2, Lcom/narvii/util/ActionBarIcon;

    .line 101
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0483

    invoke-direct {p2, v0, v1}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;I)V

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x2

    .line 102
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 4

    .line 70
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 72
    invoke-virtual {p0, p2}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const v2, 0x7f0b0378

    const/4 v3, 0x0

    .line 72
    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 74
    new-instance v1, Lcom/narvii/item/picker/ItemSortFragment$1;

    invoke-direct {v1, p0}, Lcom/narvii/item/picker/ItemSortFragment$1;-><init>(Lcom/narvii/item/picker/ItemSortFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x1

    .line 93
    invoke-virtual {p1, v0, p2, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 107
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x104000a

    if-ne v0, v1, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 110
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public willFinish(Lcom/narvii/app/NVActivity;)V
    .locals 3

    .line 131
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 132
    iget-object v1, p0, Lcom/narvii/item/picker/ItemSortFragment;->adapter:Lcom/narvii/item/picker/ItemSortFragment$Adapter;

    invoke-virtual {v1}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "itemList"

    .line 133
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 134
    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method
