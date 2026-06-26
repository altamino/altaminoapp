.class public Lcom/narvii/user/list/FollowingListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "FollowingListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/user/list/FollowingListFragment$Adapter;
    }
.end annotation


# instance fields
.field adapter:Lcom/narvii/user/list/FollowingListFragment$Adapter;

.field public host:Lcom/narvii/widget/ProxyViewHost;

.field isMe:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 77
    new-instance p1, Lcom/narvii/user/list/FollowingListFragment$Adapter;

    invoke-direct {p1, p0}, Lcom/narvii/user/list/FollowingListFragment$Adapter;-><init>(Lcom/narvii/user/list/FollowingListFragment;)V

    iput-object p1, p0, Lcom/narvii/user/list/FollowingListFragment;->adapter:Lcom/narvii/user/list/FollowingListFragment$Adapter;

    return-object p1
.end method

.method public delete(Lcom/narvii/model/User;Z)V
    .locals 4

    if-eqz p2, :cond_1

    .line 192
    iget-object p2, p0, Lcom/narvii/user/list/FollowingListFragment;->adapter:Lcom/narvii/user/list/FollowingListFragment$Adapter;

    if-eqz p2, :cond_0

    .line 193
    sget-object v0, Lcom/narvii/logging/ActSemantic;->delete:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p2, p1, v0}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 195
    :cond_0
    new-instance p2, Lcom/narvii/util/dialog/ProgressDialog;

    invoke-virtual {p0}, Lcom/narvii/user/list/FollowingListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/narvii/util/dialog/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 196
    new-instance v0, Lcom/narvii/user/list/FollowingListFragment$1;

    invoke-direct {v0, p0, p1}, Lcom/narvii/user/list/FollowingListFragment$1;-><init>(Lcom/narvii/user/list/FollowingListFragment;Lcom/narvii/model/User;)V

    iput-object v0, p2, Lcom/narvii/util/dialog/ProgressDialog;->successListener:Lcom/narvii/util/Callback;

    .line 211
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ProgressDialog;->show()V

    const-string v0, "account"

    .line 213
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    .line 214
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->delete()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/user-profile/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/joined/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 216
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    const-string v0, "api"

    .line 217
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/http/ApiService;

    .line 218
    iget-object p2, p2, Lcom/narvii/util/dialog/ProgressDialog;->dismissListener:Lcom/narvii/util/http/ApiResponseListener;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    goto :goto_0

    .line 220
    :cond_1
    new-instance p2, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/user/list/FollowingListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f0348

    const/4 v1, 0x1

    .line 221
    invoke-virtual {p2, v0, v1}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(IZ)V

    .line 222
    new-instance v0, Lcom/narvii/user/list/FollowingListFragment$2;

    invoke-direct {v0, p0, p1}, Lcom/narvii/user/list/FollowingListFragment$2;-><init>(Lcom/narvii/user/list/FollowingListFragment;Lcom/narvii/model/User;)V

    invoke-virtual {p2, v0}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 228
    invoke-virtual {p2}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    :goto_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/narvii/user/list/FollowingListFragment;->host:Lcom/narvii/widget/ProxyViewHost;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/widget/ProxyViewHost;->getAttachView()Lcom/narvii/widget/ProxyView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/narvii/user/list/FollowingListFragment;->host:Lcom/narvii/widget/ProxyViewHost;

    invoke-virtual {v0}, Lcom/narvii/widget/ProxyViewHost;->getAttachView()Lcom/narvii/widget/ProxyView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    .line 48
    :cond_0
    invoke-super {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Following"

    return-object v0
.end method

.method public isMe()Z
    .locals 2

    const-string v0, "id"

    .line 96
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v1, "account"

    .line 99
    invoke-virtual {p0, v1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    .line 100
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSwipeRefresh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 68
    invoke-super {p0, p1}, Lcom/narvii/app/NVFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const p1, 0x7f0f112c

    .line 70
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->setTitle(I)V

    const p1, 0x7f0f03eb

    .line 71
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setEmptyText(I)V

    .line 72
    invoke-virtual {p0}, Lcom/narvii/user/list/FollowingListFragment;->isMe()Z

    move-result p1

    iput-boolean p1, p0, Lcom/narvii/user/list/FollowingListFragment;->isMe:Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 82
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Lcom/narvii/user/list/FollowingListFragment;->isMe()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/user/list/FollowingListFragment;->adapter:Lcom/narvii/user/list/FollowingListFragment$Adapter;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    :cond_0
    return-void
.end method

.method protected showAminoId()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
