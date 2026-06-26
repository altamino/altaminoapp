.class Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;
.super Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;
.source "CommunitySearchListFragment.java"


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

    .line 452
    iput-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    invoke-direct {p0, p1}, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;-><init>(Lcom/narvii/community/BaseCommunitySearchListFragment;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/master/CommunitySearchListFragment;Lcom/narvii/master/CommunitySearchListFragment$1;)V
    .locals 0

    .line 452
    invoke-direct {p0, p1}, Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;-><init>(Lcom/narvii/master/CommunitySearchListFragment;)V

    return-void
.end method


# virtual methods
.method protected completeRequestBuilder(Lcom/narvii/util/http/ApiRequest$Builder;)V
    .locals 2

    .line 481
    invoke-super {p0, p1}, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->completeRequestBuilder(Lcom/narvii/util/http/ApiRequest$Builder;)V

    .line 482
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    invoke-static {v0}, Lcom/narvii/master/search/SearchUtils;->getSearchId(Landroid/support/v4/app/Fragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "searchId"

    invoke-virtual {p1, v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->param(Ljava/lang/String;Ljava/lang/Object;)Lcom/narvii/util/http/ApiRequest$Builder;

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

    .line 511
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;->l:Ljava/util/List;

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 5

    .line 487
    invoke-virtual {p0}, Lcom/narvii/list/NVPagedAdapter;->rawList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 489
    iput-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;->l:Ljava/util/List;

    goto :goto_1

    .line 490
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 491
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;->l:Ljava/util/List;

    goto :goto_1

    .line 493
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;->l:Ljava/util/List;

    .line 494
    iget-object v1, p0, Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    iget-object v1, v1, Lcom/narvii/master/CommunitySearchListFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->getMappedCommunity()Lcom/narvii/model/Community;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 495
    iget-object v1, p0, Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    iget-object v1, v1, Lcom/narvii/master/CommunitySearchListFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    invoke-virtual {v1}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->getMappedCommunity()Lcom/narvii/model/Community;

    move-result-object v1

    .line 496
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Community;

    .line 497
    iget v3, v2, Lcom/narvii/model/Community;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v1, Lcom/narvii/model/Community;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 500
    :cond_2
    iget-object v3, p0, Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;->l:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 503
    :cond_3
    iget-object v1, p0, Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 506
    :cond_4
    :goto_1
    invoke-super {p0}, Lcom/narvii/community/CommunityListWithSectionAdapter;->innerNotifyDataSetChanged()V

    return-void
.end method

.method public onAttach()V
    .locals 2

    .line 459
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onAttach()V

    .line 460
    new-instance v0, Lcom/narvii/logging/Impression/LinearImpressionCollector;

    const-class v1, Lcom/narvii/model/Community;

    invoke-direct {v0, v1}, Lcom/narvii/logging/Impression/LinearImpressionCollector;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/narvii/list/NVAdapter;->addImpressionCollector(Lcom/narvii/logging/Impression/ImpressionCollector;)V

    const/4 v0, 0x0

    .line 461
    iput-boolean v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;->isRequestFinished:Z

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 471
    instance-of v0, p3, Lcom/narvii/model/Community;

    if-eqz v0, :cond_0

    .line 472
    sget-object p1, Lcom/narvii/logging/ActSemantic;->checkDetail:Lcom/narvii/logging/ActSemantic;

    invoke-virtual {p0, p3, p1}, Lcom/narvii/list/NVAdapter;->logClickEvent(Ljava/lang/Object;Lcom/narvii/logging/ActSemantic;)V

    .line 473
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    check-cast p3, Lcom/narvii/model/Community;

    invoke-static {p1, p3, p4}, Lcom/narvii/master/CommunitySearchListFragment;->access$1300(Lcom/narvii/master/CommunitySearchListFragment;Lcom/narvii/model/Community;Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    .line 476
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/list/NVPagedAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/search/SearchCommunityListResponse;I)V
    .locals 1

    const/4 v0, 0x1

    .line 538
    iput-boolean v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;->isRequestFinished:Z

    .line 539
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/community/search/SearchCommunityListResponse;I)V

    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 452
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

    const/4 v0, 0x0

    .line 532
    iput-boolean v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;->isRequestFinished:Z

    .line 533
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    return-void
.end method

.method public resetList()V
    .locals 1

    const/4 v0, 0x0

    .line 526
    iput-boolean v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;->isRequestFinished:Z

    .line 527
    invoke-super {p0}, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->resetList()V

    return-void
.end method

.method protected supportUnlistedStatus()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
