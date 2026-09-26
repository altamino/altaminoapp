.class Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;
.super Lcom/narvii/community/BaseCommunitySearchListFragment$CommunitySeachMergeAdapter;
.source "SourceFile"


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

    iput-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 2
    invoke-direct {p0, p1}, Lcom/narvii/community/BaseCommunitySearchListFragment$CommunitySeachMergeAdapter;-><init>(Lcom/narvii/community/BaseCommunitySearchListFragment;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/master/CommunitySearchListFragment;Lcom/narvii/master/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;-><init>(Lcom/narvii/master/CommunitySearchListFragment;)V

    return-void
.end method


# virtual methods
.method public errorMessage()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/master/CommunitySearchListFragment;->access$1100(Lcom/narvii/master/CommunitySearchListFragment;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    if-nez v0, :cond_4

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/narvii/master/CommunitySearchListFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->isListShown()Z

    .line 23
    move-result v0

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/narvii/master/CommunitySearchListFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    .line 30
    .line 31
    iget-boolean v0, v0, Lcom/narvii/master/search/AminoIdMatchedAdapter;->isRequestFinished:Z

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    :cond_0
    return-object v1

    .line 35
    .line 36
    :cond_1
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/narvii/master/CommunitySearchListFragment;->myCommunityRecycler:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->isListShown()Z

    .line 44
    move-result v0

    .line 45
    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 49
    .line 50
    iget-object v0, v0, Lcom/narvii/master/CommunitySearchListFragment;->myCommunityRecycler:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;

    .line 51
    .line 52
    iget-boolean v0, v0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;->isRequesting:Z

    .line 53
    .line 54
    if-eqz v0, :cond_3

    .line 55
    :cond_2
    return-object v1

    .line 56
    .line 57
    :cond_3
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 58
    .line 59
    iget-object v0, v0, Lcom/narvii/master/CommunitySearchListFragment;->searchResultCommunityAdapter:Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;

    .line 60
    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->errorMessage()Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 66
    return-object v0

    .line 67
    :cond_4
    return-object v1
.end method

.method public isEmpty()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/master/CommunitySearchListFragment;->access$800(Lcom/narvii/master/CommunitySearchListFragment;)Ljava/lang/String;

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
    const/4 v2, 0x0

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/narvii/master/CommunitySearchListFragment;->v(Lcom/narvii/master/CommunitySearchListFragment;)Lcom/narvii/master/search/history/SearchHistoryDelegate;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->getSearchHistoryCount()I

    .line 24
    move-result v0

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/narvii/master/CommunitySearchListFragment;->trendingCommunityAdapter:Lcom/narvii/master/CommunitySearchListFragment$MasterTrendingCommunityAdapter;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/narvii/master/CommunitySearchListFragment$MasterTrendingCommunityAdapter;->isEmpty()Z

    .line 34
    move-result v0

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v1, v2

    .line 39
    :goto_0
    return v1

    .line 40
    .line 41
    :cond_1
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lcom/narvii/master/CommunitySearchListFragment;->access$900(Lcom/narvii/master/CommunitySearchListFragment;)Z

    .line 45
    move-result v0

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    return v2

    .line 49
    .line 50
    :cond_2
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 51
    .line 52
    iget-object v0, v0, Lcom/narvii/master/CommunitySearchListFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    .line 53
    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    .line 58
    move-result v0

    .line 59
    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    :cond_3
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 63
    .line 64
    iget-object v0, v0, Lcom/narvii/master/CommunitySearchListFragment;->searchResultCommunityAdapter:Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->isEmpty()Z

    .line 68
    move-result v0

    .line 69
    .line 70
    if-eqz v0, :cond_4

    .line 71
    .line 72
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 73
    .line 74
    iget-object v0, v0, Lcom/narvii/master/CommunitySearchListFragment;->myCommunityRecycler:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    .line 78
    move-result v0

    .line 79
    .line 80
    if-eqz v0, :cond_4

    .line 81
    goto :goto_1

    .line 82
    :cond_4
    move v1, v2

    .line 83
    :goto_1
    return v1
.end method

.method public isListShown()Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/master/CommunitySearchListFragment;->access$700(Lcom/narvii/master/CommunitySearchListFragment;)Ljava/lang/String;

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
    const/4 v2, 0x0

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/narvii/master/CommunitySearchListFragment;->v(Lcom/narvii/master/CommunitySearchListFragment;)Lcom/narvii/master/search/history/SearchHistoryDelegate;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/narvii/master/search/history/SearchHistoryDelegate;->getSearchHistoryCount()I

    .line 24
    move-result v0

    .line 25
    .line 26
    if-gtz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/narvii/master/CommunitySearchListFragment;->trendingCommunityAdapter:Lcom/narvii/master/CommunitySearchListFragment$MasterTrendingCommunityAdapter;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/narvii/community/BaseCommunitySearchListFragment$TrendingCommunityAdapter;->isListShown()Z

    .line 34
    move-result v0

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v1, v2

    .line 39
    :cond_1
    :goto_0
    return v1

    .line 40
    .line 41
    :cond_2
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/narvii/master/CommunitySearchListFragment;->searchResultCommunityAdapter:Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->isEmpty()Z

    .line 47
    move-result v0

    .line 48
    .line 49
    if-eqz v0, :cond_4

    .line 50
    .line 51
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 52
    .line 53
    iget-object v3, v0, Lcom/narvii/master/CommunitySearchListFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    .line 54
    .line 55
    if-eqz v3, :cond_3

    .line 56
    .line 57
    iget-boolean v3, v3, Lcom/narvii/master/search/AminoIdMatchedAdapter;->isRequestFinished:Z

    .line 58
    .line 59
    if-nez v3, :cond_3

    .line 60
    return v2

    .line 61
    .line 62
    :cond_3
    iget-object v0, v0, Lcom/narvii/master/CommunitySearchListFragment;->myCommunityRecycler:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;

    .line 63
    .line 64
    iget-boolean v0, v0, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;->isRequesting:Z

    .line 65
    .line 66
    if-eqz v0, :cond_4

    .line 67
    return v2

    .line 68
    .line 69
    :cond_4
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 70
    .line 71
    iget-object v0, v0, Lcom/narvii/master/CommunitySearchListFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    .line 72
    .line 73
    if-eqz v0, :cond_5

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->isListShown()Z

    .line 77
    move-result v0

    .line 78
    .line 79
    if-nez v0, :cond_7

    .line 80
    .line 81
    :cond_5
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 82
    .line 83
    iget-object v0, v0, Lcom/narvii/master/CommunitySearchListFragment;->searchResultCommunityAdapter:Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/narvii/community/BaseCommunitySearchListFragment$SearchResultCommunityAdapter;->isListShown()Z

    .line 87
    move-result v0

    .line 88
    .line 89
    if-nez v0, :cond_7

    .line 90
    .line 91
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 92
    .line 93
    iget-object v0, v0, Lcom/narvii/master/CommunitySearchListFragment;->myCommunityRecycler:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->isListShown()Z

    .line 97
    move-result v0

    .line 98
    .line 99
    if-eqz v0, :cond_6

    .line 100
    goto :goto_1

    .line 101
    :cond_6
    move v1, v2

    .line 102
    :cond_7
    :goto_1
    return v1
.end method

.method public onErrorRetry()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/master/CommunitySearchListFragment;->searchResultCommunityAdapter:Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/narvii/list/NVPagedAdapter;->onErrorRetry()V

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/narvii/master/CommunitySearchListFragment;->aminoIdMatchedAdapter:Lcom/narvii/master/search/AminoIdMatchedAdapter;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/narvii/master/search/AminoIdMatchedAdapter;->onErrorRetry()V

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/narvii/master/CommunitySearchListFragment;->myCommunityRecycler:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->onErrorRetry()V

    .line 28
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

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/master/CommunitySearchListFragment;->searchResultCommunityAdapter:Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;

    .line 5
    const/4 p2, 0x0

    .line 6
    const/4 v0, 0x0

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0, p2}, Lcom/narvii/master/CommunitySearchListFragment$MasterSearchResultCommunityAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 12
    .line 13
    :cond_0
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/narvii/master/CommunitySearchListFragment;->access$1000(Lcom/narvii/master/CommunitySearchListFragment;)Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    move-result p1

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/narvii/master/CommunitySearchListFragment;->trendingCommunityAdapter:Lcom/narvii/master/CommunitySearchListFragment$MasterTrendingCommunityAdapter;

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0, p2}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 33
    .line 34
    :cond_1
    iget-object p1, p0, Lcom/narvii/master/CommunitySearchListFragment$MyMergeAdapter;->this$0:Lcom/narvii/master/CommunitySearchListFragment;

    .line 35
    .line 36
    iget-object p1, p1, Lcom/narvii/master/CommunitySearchListFragment;->myCommunityRecycler:Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0, p2}, Lcom/narvii/master/CommunitySearchListFragment$MyCommunityRecycler;->refresh(ILcom/narvii/util/Callback;)V

    .line 42
    :cond_2
    return-void
.end method
