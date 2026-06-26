.class Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;
.super Lcom/narvii/community/BaseCommunitySearchListFragment$CommunitySeachMergeAdapter;
.source "CommunitySearchListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/master/CommunitySearchListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyMergeAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/CommunitySearchListFragment;


# direct methods
.method private constructor <init>(Lcom/narvii/master/CommunitySearchListFragment;)V
    .locals 0

    .line 543
    iput-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    invoke-direct {p0, p1}, Lcom/narvii/community/BaseCommunitySearchListFragment$CommunitySeachMergeAdapter;-><init>(Lcom/narvii/community/BaseCommunitySearchListFragment;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/master/CommunitySearchListFragment;Lcom/narvii/master/CommunitySearchListFragment$1;)V
    .locals 0

    .line 543
    invoke-direct {p0, p1}, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;-><init>(Lcom/narvii/master/CommunitySearchListFragment;)V

    return-void
.end method


# virtual methods
.method public errorMessage()Ljava/lang/String;
    .locals 2

    .line 607
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    invoke-static {v0}, Lcom/narvii/master/CommunitySearchListFragment;->access$1900(Lcom/narvii/master/CommunitySearchListFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 608
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    iget-object v0, v0, Lcom/narvii/master/CommunitySearchListFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->isListShown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    iget-object v0, v0, Lcom/narvii/master/CommunitySearchListFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    iget-boolean v0, v0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->isRequestFinished:Z

    if-nez v0, :cond_1

    :cond_0
    return-object v1

    .line 611
    :cond_1
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    iget-object v0, v0, Lcom/narvii/master/CommunitySearchListFragment;->myCommunityRecycler:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->isListShown()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    iget-object v0, v0, Lcom/narvii/master/CommunitySearchListFragment;->myCommunityRecycler:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;

    iget-boolean v0, v0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;->isRequesting:Z

    if-eqz v0, :cond_3

    :cond_2
    return-object v1

    .line 614
    :cond_3
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    iget-object v0, v0, Lcom/narvii/master/CommunitySearchListFragment;->searchResultCommunityAdapter:Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;

    if-eqz v0, :cond_4

    .line 615
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->errorMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    return-object v1
.end method

.method public isEmpty()Z
    .locals 3

    .line 567
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    invoke-static {v0}, Lcom/narvii/master/CommunitySearchListFragment;->access$1600(Lcom/narvii/master/CommunitySearchListFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 568
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    invoke-static {v0}, Lcom/narvii/master/CommunitySearchListFragment;->access$1500(Lcom/narvii/master/CommunitySearchListFragment;)Lcom/narvii/master/search/history/SearchHistoryDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->getSearchHistoryCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    iget-object v0, v0, Lcom/narvii/master/CommunitySearchListFragment;->trendingCommunityAdapter:Lcom/narvii/master/CommunitySearchListFragment$MasterTrendingCommunityAdapter;

    invoke-virtual {v0}, Lcom/narvii/master/CommunitySearchListFragment$MasterTrendingCommunityAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 570
    :cond_1
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    invoke-static {v0}, Lcom/narvii/master/CommunitySearchListFragment;->access$1700(Lcom/narvii/master/CommunitySearchListFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 573
    :cond_2
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    iget-object v0, v0, Lcom/narvii/master/CommunitySearchListFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    iget-object v0, v0, Lcom/narvii/master/CommunitySearchListFragment;->searchResultCommunityAdapter:Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;

    invoke-virtual {v0}, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    iget-object v0, v0, Lcom/narvii/master/CommunitySearchListFragment;->myCommunityRecycler:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public isListShown()Z
    .locals 3

    .line 547
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    invoke-static {v0}, Lcom/narvii/master/CommunitySearchListFragment;->access$1400(Lcom/narvii/master/CommunitySearchListFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 549
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    invoke-static {v0}, Lcom/narvii/master/CommunitySearchListFragment;->access$1500(Lcom/narvii/master/CommunitySearchListFragment;)Lcom/narvii/master/search/history/SearchHistoryDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->getSearchHistoryCount()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    iget-object v0, v0, Lcom/narvii/master/CommunitySearchListFragment;->trendingCommunityAdapter:Lcom/narvii/master/CommunitySearchListFragment$MasterTrendingCommunityAdapter;

    invoke-virtual {v0}, Lcom/narvii/community/BaseCommunitySearchListFragment$TrendingCommunityAdapter;->isListShown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    .line 551
    :cond_2
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    iget-object v0, v0, Lcom/narvii/master/CommunitySearchListFragment;->searchResultCommunityAdapter:Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;

    invoke-virtual {v0}, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 552
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    iget-object v0, v0, Lcom/narvii/master/CommunitySearchListFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    if-eqz v0, :cond_3

    iget-boolean v0, v0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->isRequestFinished:Z

    if-nez v0, :cond_3

    return v2

    .line 555
    :cond_3
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    iget-object v0, v0, Lcom/narvii/master/CommunitySearchListFragment;->myCommunityRecycler:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;

    iget-boolean v0, v0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;->isRequesting:Z

    if-eqz v0, :cond_4

    return v2

    .line 560
    :cond_4
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    iget-object v0, v0, Lcom/narvii/master/CommunitySearchListFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->isListShown()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_5
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    iget-object v0, v0, Lcom/narvii/master/CommunitySearchListFragment;->searchResultCommunityAdapter:Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;

    invoke-virtual {v0}, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->isListShown()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    iget-object v0, v0, Lcom/narvii/master/CommunitySearchListFragment;->myCommunityRecycler:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;

    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->isListShown()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    :cond_7
    :goto_1
    return v1
.end method

.method public onErrorRetry()V
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    iget-object v0, v0, Lcom/narvii/master/CommunitySearchListFragment;->searchResultCommunityAdapter:Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;

    if-eqz v0, :cond_0

    .line 580
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->onErrorRetry()V

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    iget-object v0, v0, Lcom/narvii/master/CommunitySearchListFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    if-eqz v0, :cond_1

    .line 583
    invoke-virtual {v0}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->onErrorRetry()V

    .line 585
    :cond_1
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    iget-object v0, v0, Lcom/narvii/master/CommunitySearchListFragment;->myCommunityRecycler:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;

    if-eqz v0, :cond_2

    .line 586
    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->onErrorRetry()V

    :cond_2
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

    .line 592
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    iget-object p1, p1, Lcom/narvii/master/CommunitySearchListFragment;->searchResultCommunityAdapter:Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;

    const/4 p2, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 593
    invoke-virtual {p1, v0, p2}, Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 596
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    invoke-static {p1}, Lcom/narvii/master/CommunitySearchListFragment;->access$1800(Lcom/narvii/master/CommunitySearchListFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    iget-object p1, p1, Lcom/narvii/master/CommunitySearchListFragment;->trendingCommunityAdapter:Lcom/narvii/master/CommunitySearchListFragment$MasterTrendingCommunityAdapter;

    if-eqz p1, :cond_1

    .line 597
    invoke-virtual {p1, v0, p2}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 600
    :cond_1
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    iget-object p1, p1, Lcom/narvii/master/CommunitySearchListFragment;->myCommunityRecycler:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;

    if-eqz p1, :cond_2

    .line 601
    invoke-virtual {p1, v0, p2}, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;->refresh(ILcom/narvii/util/Callback;)V

    :cond_2
    return-void
.end method
