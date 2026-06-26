.class Lcom/narvii/master/search/GlobalUserSearchFragment$Adapter;
.super Lcom/narvii/user/list/UserListExAdapter;
.source "GlobalUserSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/search/GlobalUserSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field keyword:Ljava/lang/String;

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/master/search/GlobalUserSearchFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/master/search/GlobalUserSearchFragment;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/narvii/master/search/GlobalUserSearchFragment$Adapter;->this$0:Lcom/narvii/master/search/GlobalUserSearchFragment;

    .line 136
    invoke-direct {p0, p1}, Lcom/narvii/user/list/UserListExAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 131
    iget-object p1, p0, Lcom/narvii/master/search/GlobalUserSearchFragment$Adapter;->this$0:Lcom/narvii/master/search/GlobalUserSearchFragment;

    invoke-static {p1}, Lcom/narvii/master/search/GlobalUserSearchFragment;->access$000(Lcom/narvii/master/search/GlobalUserSearchFragment;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/master/search/GlobalUserSearchFragment$Adapter;->keyword:Ljava/lang/String;

    const/4 p1, 0x1

    .line 137
    iput p1, p0, Lcom/narvii/list/NVPagedAdapter;->paginationType:I

    .line 138
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(Z)V

    return-void
.end method


# virtual methods
.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 2

    .line 163
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const-string v0, "user-profile/search"

    invoke-virtual {p1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/master/search/GlobalUserSearchFragment$Adapter;->keyword:Ljava/lang/String;

    const-string v1, "q"

    .line 164
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/master/search/GlobalUserSearchFragment$Adapter;->keyword:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/master/search/GlobalUserSearchFragment$Adapter;->this$0:Lcom/narvii/master/search/GlobalUserSearchFragment;

    .line 165
    invoke-static {v0}, Lcom/narvii/master/search/SearchUtils;->getSearchId(Landroid/support/v4/app/Fragment;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "searchId"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 166
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ignoreMembership"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object p1

    .line 167
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected filterResponseList(Ljava/util/List;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/narvii/model/User;",
            ">;"
        }
    .end annotation

    .line 197
    invoke-super {p0, p1, p2}, Lcom/narvii/user/list/UserListAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "UsersSearchResult"

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 207
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/master/search/GlobalUserSearchFragment$Adapter;->keyword:Ljava/lang/String;

    invoke-static {v0}, Lcom/narvii/util/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected layoutId()I
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/narvii/master/search/GlobalUserSearchFragment$Adapter;->this$0:Lcom/narvii/master/search/GlobalUserSearchFragment;

    invoke-virtual {v0}, Lcom/narvii/master/search/GlobalUserSearchFragment;->isDarkTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b06ba

    goto :goto_0

    :cond_0
    const v0, 0x7f0b06b9

    :goto_0
    return v0
.end method

.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/narvii/master/search/GlobalUserSearchFragment$Adapter;->l:Ljava/util/List;

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 5

    .line 173
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 175
    iput-object v0, p0, Lcom/narvii/master/search/GlobalUserSearchFragment$Adapter;->l:Ljava/util/List;

    goto :goto_1

    .line 176
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/master/search/GlobalUserSearchFragment$Adapter;->l:Ljava/util/List;

    goto :goto_1

    .line 179
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/narvii/master/search/GlobalUserSearchFragment$Adapter;->l:Ljava/util/List;

    .line 180
    iget-object v1, p0, Lcom/narvii/master/search/GlobalUserSearchFragment$Adapter;->this$0:Lcom/narvii/master/search/GlobalUserSearchFragment;

    iget-object v1, v1, Lcom/narvii/master/search/GlobalUserSearchFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    invoke-virtual {v1}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->getMappedUser()Lcom/narvii/model/User;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 181
    iget-object v1, p0, Lcom/narvii/master/search/GlobalUserSearchFragment$Adapter;->this$0:Lcom/narvii/master/search/GlobalUserSearchFragment;

    iget-object v1, v1, Lcom/narvii/master/search/GlobalUserSearchFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    invoke-virtual {v1}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->getMappedUser()Lcom/narvii/model/User;

    move-result-object v1

    .line 182
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/User;

    .line 183
    iget-object v3, v2, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/narvii/model/User;->id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 186
    :cond_2
    iget-object v3, p0, Lcom/narvii/master/search/GlobalUserSearchFragment$Adapter;->l:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 189
    :cond_3
    iget-object v1, p0, Lcom/narvii/master/search/GlobalUserSearchFragment$Adapter;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 192
    :cond_4
    :goto_1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public showAminoId()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected showFollowView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
