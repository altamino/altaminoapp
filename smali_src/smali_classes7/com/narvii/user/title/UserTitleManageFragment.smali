.class public Lcom/narvii/user/title/UserTitleManageFragment;
.super Lcom/narvii/list/DragSortListFragment;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/DragSortListFragment;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method protected bridge synthetic createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/narvii/user/title/UserTitleManageFragment;->createAdapter(Landroid/os/Bundle;)Lcom/narvii/list/NVArrayAdapter;

    move-result-object p1

    return-object p1
.end method

.method protected createAdapter(Landroid/os/Bundle;)Lcom/narvii/list/NVArrayAdapter;
    .locals 2

    .line 2
    new-instance p1, Lcom/narvii/user/title/UserTitleManageFragment$Adapter;

    const-string v0, "list"

    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/model/api/UserTitle;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p1, p0, p0, v1, v0}, Lcom/narvii/user/title/UserTitleManageFragment$Adapter;-><init>(Lcom/narvii/user/title/UserTitleManageFragment;Lcom/narvii/app/NVContext;Ljava/lang/Class;Ljava/util/List;)V

    iput-object p1, p0, Lcom/narvii/user/title/UserTitleManageFragment;->adapter:Lcom/narvii/user/title/UserTitleManageFragment$Adapter;

    return-object p1
.end method

.method public getListSelector()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 7
    return-object v0
.end method

.method public isModel()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    .line 8
    .line 9
    .line 10
    const p1, 0x7f120be7

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    new-instance p1, Lcom/narvii/user/title/UserTitleColorHelper;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-direct {p1, v0}, Lcom/narvii/user/title/UserTitleColorHelper;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    iput-object p1, p0, Lcom/narvii/user/title/UserTitleManageFragment;->userTitleColorHelper:Lcom/narvii/user/title/UserTitleColorHelper;

    .line 29
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 4
    const/4 p2, 0x0

    .line 5
    .line 6
    .line 7
    const v0, 0x104000a

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, p2, v0, p2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    new-instance p2, Lcom/narvii/util/ActionBarIcon;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    const v1, 0x7f12052e

    .line 21
    .line 22
    .line 23
    invoke-direct {p2, v0, v1}, Lcom/narvii/util/ActionBarIcon;-><init>(Landroid/content/Context;I)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 27
    move-result-object p1

    .line 28
    const/4 p2, 0x2

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 32
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0x104000a

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/user/title/UserTitleManageFragment;->adapter:Lcom/narvii/user/title/UserTitleManageFragment$Adapter;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/narvii/list/NVArrayAdapter;->getList()Ljava/util/List;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    new-instance v1, Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 21
    .line 22
    const-string v2, "list"

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    const/4 v0, -0x1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0, v1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->finish()V

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 40
    move-result p1

    .line 41
    return p1
.end method
