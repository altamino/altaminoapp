.class public Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;
.super Lcom/narvii/community/CommunityListWithSectionAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->this$0:Lcom/narvii/community/BaseCommunitySearchListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/community/CommunityListWithSectionAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    const/4 v0, 0x1

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Lcom/narvii/community/BaseCommunitySearchListFragment;->access$600(Lcom/narvii/community/BaseCommunitySearchListFragment;)I

    .line 10
    move-result p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0, p1}, Lcom/narvii/list/NVAdapter;->setDarkTheme(ZI)V

    .line 14
    return-void
.end method


# virtual methods
.method protected completeRequestBuilder(Lcom/narvii/util/http/ApiRequest$Builder;)V
    .locals 0

    return-void
.end method

.method protected createRequest(Z)Lcom/narvii/util/http/ApiRequest;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->this$0:Lcom/narvii/community/BaseCommunitySearchListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/community/BaseCommunitySearchListFragment;->access$800(Lcom/narvii/community/BaseCommunitySearchListFragment;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    const/4 p1, 0x0

    .line 15
    .line 16
    iput-object p1, p0, Lcom/narvii/list/NVPagedAdapter;->_list:Ljava/util/ArrayList;

    .line 17
    .line 18
    iput-boolean v1, p0, Lcom/narvii/list/NVPagedAdapter;->_isEnd:Z

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->notifyDataSetChanged()V

    .line 22
    return-object p1

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->global()Lcom/narvii/util/http/ApiRequest$Builder;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    const-string v2, "/community/search"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 36
    .line 37
    iget-object v2, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->this$0:Lcom/narvii/community/BaseCommunitySearchListFragment;

    .line 38
    .line 39
    .line 40
    invoke-static {v2}, Lcom/narvii/community/BaseCommunitySearchListFragment;->access$900(Lcom/narvii/community/BaseCommunitySearchListFragment;)Ljava/lang/String;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    const-string v3, "q"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v3, v2}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0}, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->completeRequestBuilder(Lcom/narvii/util/http/ApiRequest$Builder;)V

    .line 50
    .line 51
    const-string v2, "language"

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->getSearchLanguage()Ljava/lang/String;

    .line 55
    move-result-object v3

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v2, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 59
    .line 60
    const-string v2, "completeKeyword"

    .line 61
    .line 62
    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    move-result-object v1

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v2, v1}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 68
    .line 69
    if-eqz p1, :cond_1

    .line 70
    .line 71
    const-string p1, "start0"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, p1}, Lcom/narvii/util/http/ApiRequest$Builder;->tag(Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 75
    .line 76
    .line 77
    :cond_1
    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    .line 78
    move-result-object p1

    .line 79
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

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/community/BaseCommunityListAdapter;->filterResponseList(Ljava/util/List;I)Ljava/util/List;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    iget-object p2, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->matchedCommunity:Lcom/narvii/model/Community;

    .line 7
    .line 8
    if-eqz p2, :cond_1

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-object p2, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->this$0:Lcom/narvii/community/BaseCommunitySearchListFragment;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/narvii/community/BaseCommunitySearchListFragment;->matchedCommunityAdapter()Lcom/narvii/community/BaseCommunitySearchListFragment$MatchedCommunityAdapter;

    .line 16
    move-result-object p2

    .line 17
    .line 18
    if-eqz p2, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object p2

    .line 23
    .line 24
    .line 25
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    .line 31
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    check-cast v0, Lcom/narvii/model/Community;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->matchedCommunity:Lcom/narvii/model/Community;

    .line 37
    .line 38
    iget v1, v1, Lcom/narvii/model/Community;->id:I

    .line 39
    .line 40
    iget v0, v0, Lcom/narvii/model/Community;->id:I

    .line 41
    .line 42
    if-ne v1, v0, :cond_0

    .line 43
    .line 44
    .line 45
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 46
    goto :goto_0

    .line 47
    .line 48
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    .line 49
    .line 50
    .line 51
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->getSearchLanguage()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    const-string v1, "en"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result v1

    .line 62
    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    .line 66
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 67
    goto :goto_2

    .line 68
    .line 69
    .line 70
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 71
    move-result-object p1

    .line 72
    .line 73
    .line 74
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    move-result v1

    .line 76
    .line 77
    if-eqz v1, :cond_4

    .line 78
    .line 79
    .line 80
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    move-result-object v1

    .line 82
    .line 83
    check-cast v1, Lcom/narvii/model/Community;

    .line 84
    .line 85
    iget-object v2, v1, Lcom/narvii/model/Community;->primaryLanguage:Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    invoke-static {v0, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    move-result v2

    .line 90
    .line 91
    if-eqz v2, :cond_3

    .line 92
    .line 93
    .line 94
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    goto :goto_1

    .line 96
    :cond_4
    :goto_2
    return-object p2
.end method

.method public getCount()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->this$0:Lcom/narvii/community/BaseCommunitySearchListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/community/BaseCommunitySearchListFragment;->access$700(Lcom/narvii/community/BaseCommunitySearchListFragment;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    const/4 v0, 0x0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    .line 18
    move-result v0

    .line 19
    :goto_0
    return v0
.end method

.method protected getSearchLanguage()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->this$0:Lcom/narvii/community/BaseCommunitySearchListFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/community/BaseCommunitySearchListFragment;->getCurSearchLanguage()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method protected isDarkTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->matchedCommunity:Lcom/narvii/model/Community;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public isListShown()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->isListShown()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->matchedCommunity:Lcom/narvii/model/Community;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/community/CommunityListWithSectionAdapter;->notifyDataSetChanged()V

    .line 4
    return-void
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/search/SearchCommunityListResponse;I)V
    .locals 4

    .line 2
    invoke-virtual {p1}, Lcom/narvii/util/http/ApiRequest;->tag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "start0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p2, Lcom/narvii/community/search/SearchCommunityListResponse;->endpointMatchedCommunity:Lcom/narvii/model/Community;

    iput-object v0, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->matchedCommunity:Lcom/narvii/model/Community;

    iget-object v0, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->this$0:Lcom/narvii/community/BaseCommunitySearchListFragment;

    .line 4
    invoke-virtual {v0}, Lcom/narvii/community/BaseCommunitySearchListFragment;->matchedCommunityAdapter()Lcom/narvii/community/BaseCommunitySearchListFragment$MatchedCommunityAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->matchedCommunity:Lcom/narvii/model/Community;

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v1, Lcom/narvii/model/Community;

    invoke-direct {v1}, Lcom/narvii/model/Community;-><init>()V

    iget-object v2, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->this$0:Lcom/narvii/community/BaseCommunitySearchListFragment;

    sget v3, Lcom/narvii/lib/R$string;->community_search_matched:I

    .line 7
    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/narvii/model/Community;->name:Ljava/lang/String;

    const/16 v2, 0x385

    iput v2, v1, Lcom/narvii/model/Community;->listedStatus:I

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->matchedCommunity:Lcom/narvii/model/Community;

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->this$0:Lcom/narvii/community/BaseCommunitySearchListFragment;

    .line 10
    invoke-virtual {v1}, Lcom/narvii/community/BaseCommunitySearchListFragment;->matchedCommunityAdapter()Lcom/narvii/community/BaseCommunitySearchListFragment$MatchedCommunityAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/narvii/community/CommunityArrayListWithSectionAdapter;->setList(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->this$0:Lcom/narvii/community/BaseCommunitySearchListFragment;

    .line 11
    invoke-virtual {v0}, Lcom/narvii/community/BaseCommunitySearchListFragment;->matchedCommunityAdapter()Lcom/narvii/community/BaseCommunitySearchListFragment$MatchedCommunityAdapter;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/narvii/community/CommunityArrayListWithSectionAdapter;->setList(Ljava/util/ArrayList;)V

    .line 12
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/list/NVPagedAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V

    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/community/search/SearchCommunityListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/search/SearchCommunityListResponse;I)V

    return-void
.end method

.method public resetList()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->matchedCommunity:Lcom/narvii/model/Community;

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->resetList()V

    .line 7
    return-void
.end method

.method protected sectionName()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->this$0:Lcom/narvii/community/BaseCommunitySearchListFragment;

    .line 3
    .line 4
    sget v1, Lcom/narvii/lib/R$string;->community_search_keywords:I

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
