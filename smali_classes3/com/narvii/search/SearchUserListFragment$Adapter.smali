.class Lcom/narvii/search/SearchUserListFragment$Adapter;
.super Lcom/narvii/user/list/UserListExAdapter;
.source "SearchUserListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/search/SearchUserListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/search/SearchUserListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/search/SearchUserListFragment;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/narvii/search/SearchUserListFragment$Adapter;->this$0:Lcom/narvii/search/SearchUserListFragment;

    .line 94
    invoke-direct {p0, p1}, Lcom/narvii/user/list/UserListExAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const-string p1, "Search Results"

    .line 95
    iput-object p1, p0, Lcom/narvii/user/list/UserListAdapter;->source:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 122
    iget-object p1, p0, Lcom/narvii/search/SearchUserListFragment$Adapter;->this$0:Lcom/narvii/search/SearchUserListFragment;

    iget-object p1, p1, Lcom/narvii/search/SearchUserListFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    invoke-virtual {p1}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "type"

    const-string v1, "/user-profile"

    if-eqz p1, :cond_0

    .line 123
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v1, "all"

    .line 124
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 125
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1

    .line 127
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v1, "name"

    .line 128
    invoke-virtual {p1, v0, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 129
    iget-object v0, p0, Lcom/narvii/search/SearchUserListFragment$Adapter;->this$0:Lcom/narvii/search/SearchUserListFragment;

    invoke-static {v0}, Lcom/narvii/master/search/SearchUtils;->getSearchId(Landroid/support/v4/app/Fragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "searchId"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 130
    iget-object v0, p0, Lcom/narvii/search/SearchUserListFragment$Adapter;->this$0:Lcom/narvii/search/SearchUserListFragment;

    iget-object v0, v0, Lcom/narvii/search/SearchUserListFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    move-result-object v0

    const-string v1, "q"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    const/16 v0, 0x4e20

    .line 131
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->timeout(I)Lcom/narvii/util/http/ApiRequest$Builder;

    const/4 v0, 0x0

    .line 132
    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->retry(I)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 133
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/narvii/search/SearchUserListFragment$Adapter;->this$0:Lcom/narvii/search/SearchUserListFragment;

    iget-object v0, v0, Lcom/narvii/search/SearchUserListFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LatestUsers"

    return-object v0

    :cond_0
    const-string v0, "UsersSearchResult"

    return-object v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 100
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 101
    iget-object v0, p0, Lcom/narvii/search/SearchUserListFragment$Adapter;->this$0:Lcom/narvii/search/SearchUserListFragment;

    iget-object v0, v0, Lcom/narvii/search/SearchUserListFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    const-string v1, "keyword"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/narvii/search/InstantSearchListener;->setKeyword(Ljava/lang/String;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 106
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/narvii/search/SearchUserListFragment$Adapter;->this$0:Lcom/narvii/search/SearchUserListFragment;

    iget-object v1, v1, Lcom/narvii/search/SearchUserListFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    invoke-virtual {v1}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    move-result-object v1

    const-string v2, "keyword"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
