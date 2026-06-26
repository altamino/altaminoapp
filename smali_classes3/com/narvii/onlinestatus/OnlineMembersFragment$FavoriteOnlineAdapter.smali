.class Lcom/narvii/onlinestatus/OnlineMembersFragment$FavoriteOnlineAdapter;
.super Lcom/narvii/onlinestatus/OnlineMembersAdapter;
.source "OnlineMembersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/onlinestatus/OnlineMembersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FavoriteOnlineAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/onlinestatus/OnlineMembersFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/onlinestatus/OnlineMembersFragment;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/narvii/onlinestatus/OnlineMembersFragment$FavoriteOnlineAdapter;->this$0:Lcom/narvii/onlinestatus/OnlineMembersFragment;

    .line 158
    invoke-direct {p0, p1}, Lcom/narvii/onlinestatus/OnlineMembersAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    const-string p1, "account"

    .line 179
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/account/AccountService;

    .line 180
    invoke-virtual {p1}, Lcom/narvii/account/AccountService;->hasAccount()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 181
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "/user-group/quick-access"

    .line 182
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "type"

    const-string v1, "online"

    .line 183
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 184
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 169
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->list()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .line 163
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 164
    iget-object v0, p0, Lcom/narvii/onlinestatus/OnlineMembersFragment$FavoriteOnlineAdapter;->this$0:Lcom/narvii/onlinestatus/OnlineMembersFragment;

    iget-object v0, v0, Lcom/narvii/onlinestatus/OnlineMembersFragment;->favoriteHeaderAdapter:Lcom/narvii/onlinestatus/OnlineMembersFragment$FavoriteHeaderAdapter;

    invoke-virtual {p0}, Lcom/narvii/onlinestatus/OnlineMembersFragment$FavoriteOnlineAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/narvii/onlinestatus/OnlineMembersFragment$FavoriteHeaderAdapter;->setShow(Z)V

    return-void
.end method

.method protected pageSize()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method protected userClicked(Lcom/narvii/model/User;)V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/narvii/onlinestatus/OnlineMembersFragment$FavoriteOnlineAdapter;->this$0:Lcom/narvii/onlinestatus/OnlineMembersFragment;

    invoke-virtual {v0, p1}, Lcom/narvii/onlinestatus/BaseOnlineMembersFragment;->showUserDialog(Lcom/narvii/model/User;)V

    return-void
.end method
