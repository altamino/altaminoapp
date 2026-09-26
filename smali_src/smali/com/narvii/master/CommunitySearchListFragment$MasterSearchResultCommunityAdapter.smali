.class Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;
.super Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/CommunitySearchListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MasterSearchResultCommunityAdapter"
.end annotation


# instance fields
.field public isRequestFinished:Z

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/model/Community;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/master/CommunitySearchListFragment;


# direct methods
.method private constructor <init>(Lcom/narvii/master/CommunitySearchListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 2
    invoke-direct {p0, p1}, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;-><init>(Lcom/narvii/community/BaseCommunitySearchListFragment;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/master/CommunitySearchListFragment;Lcom/narvii/master/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;-><init>(Lcom/narvii/master/CommunitySearchListFragment;)V

    return-void
.end method


# virtual methods
.method protected completeRequestBuilder(Lcom/narvii/util/http/ApiRequest$Builder;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->completeRequestBuilder(Lcom/narvii/util/http/ApiRequest$Builder;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/narvii/master/search/SearchUtils;->getSearchId(Landroidx/fragment/app/Fragment;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    const-string/jumbo v1, "searchId"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

    .line 15
    return-void
.end method

.method public getAreaName()Ljava/lang/String;
    .locals 1

    const-string v0, "AminosSearchResult"

    return-object v0
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
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

    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;->l:Ljava/util/List;

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    .line 9
    iput-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;->l:Ljava/util/List;

    .line 10
    goto :goto_1

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;->l:Ljava/util/List;

    .line 24
    goto :goto_1

    .line 25
    .line 26
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    iput-object v1, p0, Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;->l:Ljava/util/List;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 34
    .line 35
    iget-object v1, v1, Lcom/narvii/master/CommunitySearchListFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    .line 36
    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->getMappedCommunity()Lcom/narvii/model/Community;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    iget-object v1, p0, Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 46
    .line 47
    iget-object v1, v1, Lcom/narvii/master/CommunitySearchListFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->getMappedCommunity()Lcom/narvii/model/Community;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    .line 54
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    .line 58
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    move-result v2

    .line 60
    .line 61
    if-eqz v2, :cond_4

    .line 62
    .line 63
    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    move-result-object v2

    .line 66
    .line 67
    check-cast v2, Lcom/narvii/model/Community;

    .line 68
    .line 69
    iget v3, v2, Lcom/narvii/model/Community;->id:I

    .line 70
    .line 71
    .line 72
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    move-result-object v3

    .line 74
    .line 75
    iget v4, v1, Lcom/narvii/model/Community;->id:I

    .line 76
    .line 77
    .line 78
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    move-result-object v4

    .line 80
    .line 81
    .line 82
    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    move-result v3

    .line 84
    .line 85
    if-eqz v3, :cond_2

    .line 86
    goto :goto_0

    .line 87
    .line 88
    :cond_2
    iget-object v3, p0, Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;->l:Ljava/util/List;

    .line 89
    .line 90
    .line 91
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    goto :goto_0

    .line 93
    .line 94
    :cond_3
    iget-object v1, p0, Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;->l:Ljava/util/List;

    .line 95
    .line 96
    .line 97
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 98
    .line 99
    .line 100
    :cond_4
    :goto_1
    invoke-super {p0}, Lcom/narvii/community/CommunityListWithSectionAdapter;->innerNotifyDataSetChanged()V

    .line 101
    return-void
.end method

.method public onAttach()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onAttach()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/logging/Impression/LinearImpressionCollector;

    .line 6
    .line 7
    const-class v1, Lcom/narvii/model/Community;

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/narvii/logging/Impression/LinearImpressionCollector;-><init>(Ljava/lang/Class;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    .line 14
    const/4 v0, 0x0

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;->isRequestFinished:Z

    .line 17
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p3, Lcom/narvii/model/Community;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object p1, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p3, p1}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 10
    .line 11
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 12
    .line 13
    check-cast p3, Lcom/narvii/model/Community;

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p3, p4}, Lcom/narvii/master/CommunitySearchListFragment;->x(Lcom/narvii/master/CommunitySearchListFragment;Lcom/narvii/model/Community;Landroid/view/View;)V

    .line 17
    const/4 p1, 0x1

    .line 18
    return p1

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    .line 22
    move-result p1

    .line 23
    return p1
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/search/SearchCommunityListResponse;I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;->isRequestFinished:Z

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/search/SearchCommunityListResponse;I)V

    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/narvii/community/search/SearchCommunityListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/search/SearchCommunityListResponse;I)V

    return-void
.end method

.method public refresh(ILcom/narvii/util/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;->isRequestFinished:Z

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 7
    return-void
.end method

.method public resetList()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-boolean v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;->isRequestFinished:Z

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->resetList()V

    .line 7
    return-void
.end method

.method protected supportUnlistedStatus()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
