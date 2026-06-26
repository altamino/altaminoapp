.class public Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;
.super Lcom/narvii/community/CommunityListWithSectionAdapter;
.source "BaseCommunitySearchListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/community/BaseCommunitySearchListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SearchResultCommunityAdapter"
.end annotation


# instance fields
.field private matchedCommunity:Lcom/narvii/model/Community;

.field final synthetic this$0:Lcom/narvii/community/BaseCommunitySearchListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/community/BaseCommunitySearchListFragment;)V
    .locals 1

    .line 149
    iput-object p1, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->this$0:Lcom/narvii/community/BaseCommunitySearchListFragment;

    .line 150
    invoke-direct {p0, p1}, Lcom/narvii/community/CommunityListWithSectionAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 151
    invoke-static {p1}, Lcom/narvii/community/BaseCommunitySearchListFragment;->access$600(Lcom/narvii/community/BaseCommunitySearchListFragment;)I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(ZI)V

    return-void
.end method


# virtual methods
.method protected completeRequestBuilder(Lcom/narvii/util/http/ApiRequest$Builder;)V
    .locals 0

    return-void
.end method

.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 4

    .line 199
    iget-object v0, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->this$0:Lcom/narvii/community/BaseCommunitySearchListFragment;

    invoke-static {v0}, Lcom/narvii/community/BaseCommunitySearchListFragment;->access$800(Lcom/narvii/community/BaseCommunitySearchListFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 200
    iput-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 201
    iput-boolean v1, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    .line 202
    invoke-virtual {p0}, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->notifyDataSetChanged()V

    return-object p1

    .line 205
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    const-string v2, "/community/search"

    .line 206
    invoke-virtual {v0, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 207
    iget-object v2, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->this$0:Lcom/narvii/community/BaseCommunitySearchListFragment;

    invoke-static {v2}, Lcom/narvii/community/BaseCommunitySearchListFragment;->access$900(Lcom/narvii/community/BaseCommunitySearchListFragment;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "q"

    invoke-virtual {v0, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 208
    invoke-virtual {p0, v0}, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->completeRequestBuilder(Lcom/narvii/util/http/ApiRequest$Builder;)V

    .line 209
    invoke-virtual {p0}, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->getSearchLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "language"

    invoke-virtual {v0, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 210
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "completeKeyword"

    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    if-eqz p1, :cond_1

    const-string p1, "start0"

    .line 212
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 214
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object p1

    return-object p1
.end method

.method protected filterResponseList(Ljava/util/List;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation

    .line 244
    invoke-super {p0, p1, p2}, Lcom/narvii/community/BaseCommunityListAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    .line 245
    iget-object p2, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->matchedCommunity:Lcom/narvii/model/Community;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->this$0:Lcom/narvii/community/BaseCommunitySearchListFragment;

    invoke-virtual {p2}, Lcom/narvii/community/BaseCommunitySearchListFragment;->matchedCommunityAdapter()Lcom/narvii/community/BaseCommunitySearchListFragment$MatchedCommunityAdapter;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 246
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 248
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/model/Community;

    .line 250
    iget-object v1, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->matchedCommunity:Lcom/narvii/model/Community;

    iget v1, v1, Lcom/narvii/model/Community;->id:I

    iget v0, v0, Lcom/narvii/model/Community;->id:I

    if-ne v1, v0, :cond_0

    .line 251
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 255
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 256
    invoke-virtual {p0}, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->getSearchLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    .line 257
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 258
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 260
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/Community;

    .line 261
    iget-object v2, v1, Lcom/narvii/model/Community;->primaryLanguage:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 262
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    :goto_2
    return-object p2
.end method

.method public getCount()I
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->this$0:Lcom/narvii/community/BaseCommunitySearchListFragment;

    invoke-static {v0}, Lcom/narvii/community/BaseCommunitySearchListFragment;->access$700(Lcom/narvii/community/BaseCommunitySearchListFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method protected getSearchLanguage()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->this$0:Lcom/narvii/community/BaseCommunitySearchListFragment;

    invoke-virtual {v0}, Lcom/narvii/community/BaseCommunitySearchListFragment;->getCurSearchLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 193
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->matchedCommunity:Lcom/narvii/model/Community;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isListShown()Z
    .locals 1

    .line 188
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->isListShown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->matchedCommunity:Lcom/narvii/model/Community;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 166
    invoke-super {p0}, Lcom/narvii/community/CommunityListWithSectionAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/search/SearchCommunityListResponse;I)V
    .locals 4

    .line 223
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "start0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p2, Lcom/narvii/community/search/SearchCommunityListResponse;->endpointMatchedCommunity:Lcom/narvii/model/Community;

    iput-object v0, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->matchedCommunity:Lcom/narvii/model/Community;

    .line 225
    iget-object v0, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->this$0:Lcom/narvii/community/BaseCommunitySearchListFragment;

    invoke-virtual {v0}, Lcom/narvii/community/BaseCommunitySearchListFragment;->matchedCommunityAdapter()Lcom/narvii/community/BaseCommunitySearchListFragment$MatchedCommunityAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->matchedCommunity:Lcom/narvii/model/Community;

    if-eqz v0, :cond_0

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 228
    new-instance v1, Lcom/narvii/model/Community;

    invoke-direct {v1}, Lcom/narvii/model/Community;-><init>()V

    .line 229
    iget-object v2, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->this$0:Lcom/narvii/community/BaseCommunitySearchListFragment;

    sget v3, Lcom/narvii/lib/R$string;->community_search_matched:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    const/16 v2, 0x385

    .line 230
    iput v2, v1, Lcom/narvii/model/Community;->listedStatus:I

    .line 231
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    iget-object v1, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->matchedCommunity:Lcom/narvii/model/Community;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v1, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->this$0:Lcom/narvii/community/BaseCommunitySearchListFragment;

    invoke-virtual {v1}, Lcom/narvii/community/BaseCommunitySearchListFragment;->matchedCommunityAdapter()Lcom/narvii/community/BaseCommunitySearchListFragment$MatchedCommunityAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/narvii/community/CommunityArrayListWithSectionAdapter;->setList(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->this$0:Lcom/narvii/community/BaseCommunitySearchListFragment;

    invoke-virtual {v0}, Lcom/narvii/community/BaseCommunitySearchListFragment;->matchedCommunityAdapter()Lcom/narvii/community/BaseCommunitySearchListFragment$MatchedCommunityAdapter;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/narvii/community/CommunityArrayListWithSectionAdapter;->setList(Ljava/util/ArrayList;)V

    .line 239
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 145
    check-cast p2, Lcom/narvii/community/search/SearchCommunityListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/search/SearchCommunityListResponse;I)V

    return-void
.end method

.method public resetList()V
    .locals 1

    const/4 v0, 0x0

    .line 182
    iput-object v0, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->matchedCommunity:Lcom/narvii/model/Community;

    .line 183
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    return-void
.end method

.method protected sectionName()Ljava/lang/String;
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->this$0:Lcom/narvii/community/BaseCommunitySearchListFragment;

    sget v1, Lcom/narvii/lib/R$string;->community_search_keywords:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
