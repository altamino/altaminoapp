.class public Lcom/narvii/user/title/UserTitleManageFragment;
.super Lcom/narvii/list/DragSortListFragment;
.source "UserTitleManageFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/user/title/UserTitleManageFragment$Adapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/list/DragSortListFragment<",
        "Lcom/narvii/model/api/UserTitle;",
        ">;"
    }
.end annotation


# instance fields
.field adapter:Lcom/narvii/user/title/UserTitleManageFragment$Adapter;

.field userTitleColorHelper:Lcom/narvii/user/title/UserTitleColorHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/narvii/list/DragSortListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/narvii/user/title/UserTitleManageFragment;->createAdapter(Landroid/os/Bundle;)Lcom/narvii/list/NVArrayAdapter;

    move-result-object p1

    return-object p1
.end method

.method protected createAdapter(Landroid/os/Bundle;)Lcom/narvii/list/NVArrayAdapter;
    .locals 3

    .line 78
    new-instance p1, Lcom/narvii/user/title/UserTitleManageFragment$Adapter;

    const-class v0, Lcom/narvii/model/api/UserTitle;

    const-string v1, "list"

    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/narvii/model/api/UserTitle;

    invoke-static {v1, v2}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p1, p0, p0, v0, v1}, Lcom/narvii/user/title/UserTitleManageFragment$Adapter;-><init>(Lcom/narvii/user/title/UserTitleManageFragment;Lcom/narvii/app/NVContext;Ljava/lang/Class;Ljava/util/List;)V

    iput-object p1, p0, Lcom/narvii/user/title/UserTitleManageFragment;->adapter:Lcom/narvii/user/title/UserTitleManageFragment$Adapter;

    return-object p1
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 73
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 39
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 40
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    const p1, 0x7f0f0b23

    .line 41
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 42
    new-instance p1, Lcom/narvii/user/title/UserTitleColorHelper;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/user/title/UserTitleColorHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/user/title/UserTitleManageFragment;->userTitleColorHelper:Lcom/narvii/user/title/UserTitleColorHelper;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 53
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const p2, 0x104000a

    const/4 v0, 0x0

    .line 55
    invoke-interface {p1, v0, p2, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    new-instance p2, Lcom/narvii/util/ActionBarIcon;

    .line 56
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0483

    invoke-direct {p2, v0, v1}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;I)V

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x2

    .line 57
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 61
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x104000a

    if-ne v0, v1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/narvii/user/title/UserTitleManageFragment;->adapter:Lcom/narvii/user/title/UserTitleManageFragment$Adapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    move-result-object v0

    .line 63
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 64
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "list"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 65
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 66
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 68
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
