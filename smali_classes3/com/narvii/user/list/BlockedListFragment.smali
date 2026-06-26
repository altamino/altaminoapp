.class public Lcom/narvii/user/list/BlockedListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "BlockedListFragment.java"

# interfaces
.implements Lcom/narvii/app/FragmentWillFinishListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/user/list/BlockedListFragment$Adapter;
    }
.end annotation


# instance fields
.field adapter:Lcom/narvii/user/list/BlockedListFragment$Adapter;

.field showEditBtn:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/narvii/user/list/BlockedListFragment;->showEditBtn:Z

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 57
    new-instance p1, Lcom/narvii/user/list/BlockedListFragment$Adapter;

    invoke-direct {p1, p0}, Lcom/narvii/user/list/BlockedListFragment$Adapter;-><init>(Lcom/narvii/user/list/BlockedListFragment;)V

    iput-object p1, p0, Lcom/narvii/user/list/BlockedListFragment;->adapter:Lcom/narvii/user/list/BlockedListFragment$Adapter;

    return-object p1
.end method

.method public getCustomTheme()I
    .locals 1

    const v0, 0x7f10000b

    return v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 50
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0f0e15

    .line 51
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    const/4 p1, 0x1

    .line 52
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    const/4 v0, 0x0

    const v1, 0x7f090039

    const/4 v2, 0x1

    const v3, 0x7f0f03cd

    .line 97
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f08033d

    .line 98
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    .line 99
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 100
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 133
    iget-object p1, p0, Lcom/narvii/user/list/BlockedListFragment;->adapter:Lcom/narvii/user/list/BlockedListFragment$Adapter;

    invoke-virtual {p1, p3}, Lcom/narvii/list/NVPagedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 134
    instance-of p2, p1, Lcom/narvii/model/User;

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 135
    new-instance p2, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p2, p4}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const p4, 0x7f0f1144

    .line 136
    invoke-virtual {p2, p4, p3}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 137
    new-instance p3, Lcom/narvii/user/list/BlockedListFragment$2;

    invoke-direct {p3, p0, p1}, Lcom/narvii/user/list/BlockedListFragment$2;-><init>(Lcom/narvii/user/list/BlockedListFragment;Ljava/lang/Object;)V

    invoke-virtual {p2, p3}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 145
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    const/4 p1, 0x1

    return p1

    :cond_0
    return p3
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 67
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    const p1, 0x7f0b0060

    .line 68
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setEmptyView(I)Landroid/view/View;

    .line 69
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 80
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090039

    if-eq v0, v1, :cond_0

    .line 91
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 82
    :cond_0
    iget-boolean v0, p0, Lcom/narvii/user/list/BlockedListFragment;->showEditBtn:Z

    if-eqz v0, :cond_1

    const v0, 0x7f08033d

    .line 83
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    const v0, 0x7f080325

    .line 85
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 87
    :goto_0
    iget-boolean p1, p0, Lcom/narvii/user/list/BlockedListFragment;->showEditBtn:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/narvii/user/list/BlockedListFragment;->showEditBtn:Z

    .line 88
    iget-object p1, p0, Lcom/narvii/user/list/BlockedListFragment;->adapter:Lcom/narvii/user/list/BlockedListFragment$Adapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    .line 105
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const v0, 0x7f090039

    .line 106
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/user/list/BlockedListFragment;->adapter:Lcom/narvii/user/list/BlockedListFragment$Adapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 62
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public unblock(Lcom/narvii/model/User;)V
    .locals 5

    .line 110
    new-instance v0, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/narvii/userblock/BlockListResponse;

    invoke-direct {v0, v1, v2}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    new-instance v1, Lcom/narvii/user/list/BlockedListFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/narvii/user/list/BlockedListFragment$1;-><init>(Lcom/narvii/user/list/BlockedListFragment;Lcom/narvii/model/User;)V

    iput-object v1, v0, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 123
    invoke-virtual {v0}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    const-string v1, "api"

    .line 125
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 126
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/block/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    .line 127
    iget-object v0, v0, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v1, p1, v0}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    return-void
.end method

.method public willFinish(Lcom/narvii/app/NVActivity;)V
    .locals 1

    .line 74
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object p1

    const-string v0, "block"

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/userblock/UserBlockService;

    const/4 v0, 0x1

    .line 75
    invoke-interface {p1, v0}, Lcom/narvii/userblock/UserBlockService;->refresh(Z)V

    return-void
.end method
