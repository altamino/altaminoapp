.class public abstract Lcom/narvii/master/search/GlobalPostSearchAdapter;
.super Lcom/narvii/headlines/feed/HeadLinesListAdapter;
.source "GlobalPostSearchAdapter.java"


# instance fields
.field deviceId:Ljava/lang/String;

.field public keyword:Ljava/lang/String;

.field private listViewFirstBecomeVisible:Z


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/narvii/master/search/GlobalPostSearchAdapter;->keyword:Ljava/lang/String;

    const/4 p1, 0x0

    .line 111
    iput-boolean p1, p0, Lcom/narvii/master/search/GlobalPostSearchAdapter;->listViewFirstBecomeVisible:Z

    const-string p1, "deviceid"

    .line 34
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/deviceid/DeviceIDService;

    .line 35
    invoke-virtual {p1}, Lcom/narvii/util/deviceid/DeviceIDService;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/master/search/GlobalPostSearchAdapter;->deviceId:Ljava/lang/String;

    const/4 p1, 0x1

    .line 36
    iput p1, p0, Lcom/narvii/list/NVPagedAdapter;->paginationType:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/narvii/master/search/GlobalPostSearchAdapter;->keyword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 72
    :cond_0
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 115
    instance-of v0, p1, Lcom/narvii/model/Feed;

    if-eqz v0, :cond_2

    .line 116
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 117
    iget-boolean p2, p0, Lcom/narvii/master/search/GlobalPostSearchAdapter;->listViewFirstBecomeVisible:Z

    if-nez p2, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/narvii/master/search/GlobalPostSearchAdapter;->getVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/narvii/master/search/GlobalPostSearchAdapter;->videoAutoPlay()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/narvii/master/search/GlobalPostSearchAdapter;->getVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    move-result-object p2

    invoke-interface {p2}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->listViewFirstBecomeVisible()V

    :cond_0
    const/4 p2, 0x1

    .line 121
    iput-boolean p2, p0, Lcom/narvii/master/search/GlobalPostSearchAdapter;->listViewFirstBecomeVisible:Z

    :cond_1
    return-object p1

    .line 125
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getStoryDetailPageIntent(Lcom/narvii/model/Blog;)Landroid/content/Intent;
    .locals 1

    .line 131
    new-instance v0, Lcom/narvii/story/StoryListFragment$IntentBuilder;

    invoke-direct {v0, p1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;-><init>(Lcom/narvii/model/Feed;)V

    .line 132
    invoke-virtual {p0}, Lcom/narvii/feed/BaseFeedListAdapter;->showCommentBarInStoryDetail()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->showCommentBar(Z)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p1

    const-string v0, "global-search-player"

    .line 133
    invoke-virtual {p1, v0}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->source(Ljava/lang/String;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/master/search/GlobalPostSearchAdapter;->keyword:Ljava/lang/String;

    .line 134
    invoke-virtual {p1, v0}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->searchKeyWord(Ljava/lang/String;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p1

    const/4 v0, 0x1

    .line 135
    invoke-virtual {p1, v0}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->forceVideoAutoPlay(Z)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p1

    .line 136
    invoke-virtual {p1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method protected abstract getVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;
.end method

.method protected isHeadline()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$onItemClick$0$GlobalPostSearchAdapter(Ljava/lang/Object;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 83
    check-cast p1, Lcom/narvii/model/Feed;

    iget p2, p1, Lcom/narvii/model/Feed;->ndcId:I

    invoke-virtual {p0, p2}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->shouldShowDownloadMasterDialog(I)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 86
    :cond_0
    new-instance p2, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-direct {p2, p3}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 87
    invoke-virtual {p2, p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog$Builder;->build()Lcom/narvii/flag/report/FlagReportOptionDialog;

    move-result-object p1

    .line 88
    invoke-virtual {p1}, Lcom/narvii/flag/report/FlagReportOptionDialog;->show()V

    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 4

    const/4 v0, 0x1

    if-eqz p5, :cond_0

    .line 77
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0904fe

    if-ne v1, v2, :cond_0

    .line 78
    new-instance p1, Lcom/narvii/util/dialog/ActionSheetDialog;

    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/util/dialog/ActionSheetDialog;-><init>(Landroid/content/Context;)V

    const-string p2, "affiliations"

    .line 79
    invoke-virtual {p0, p2}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/narvii/community/AffiliationsService;

    .line 80
    move-object p4, p3

    check-cast p4, Lcom/narvii/model/Feed;

    iget p4, p4, Lcom/narvii/model/Feed;->ndcId:I

    invoke-virtual {p2, p4}, Lcom/narvii/community/AffiliationsService;->contains(I)Z

    const p2, 0x7f0f06d5

    const/4 p4, 0x0

    .line 81
    invoke-virtual {p1, p2, p4}, Lcom/narvii/util/dialog/ActionSheetDialog;->addItem(II)V

    .line 82
    new-instance p2, Lcom/narvii/master/search/-$$Lambda$GlobalPostSearchAdapter$AAMbnkSqHSQv5A22eiGfAQaM5YM;

    invoke-direct {p2, p0, p3}, Lcom/narvii/master/search/-$$Lambda$GlobalPostSearchAdapter$AAMbnkSqHSQv5A22eiGfAQaM5YM;-><init>(Lcom/narvii/master/search/GlobalPostSearchAdapter;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/narvii/util/dialog/ActionSheetDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 90
    invoke-virtual {p1}, Lcom/narvii/util/dialog/ActionSheetDialog;->show()V

    return v0

    .line 93
    :cond_0
    instance-of v1, p3, Lcom/narvii/model/Blog;

    if-eqz v1, :cond_3

    move-object v1, p3

    check-cast v1, Lcom/narvii/model/Blog;

    iget v2, v1, Lcom/narvii/model/Blog;->type:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_3

    if-eqz p5, :cond_1

    .line 94
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f090571

    if-eq v2, v3, :cond_2

    :cond_1
    if-nez p5, :cond_3

    iget v2, v1, Lcom/narvii/model/Feed;->ndcId:I

    if-nez v2, :cond_3

    .line 96
    :cond_2
    new-instance p1, Lcom/narvii/story/StoryListFragment$IntentBuilder;

    invoke-direct {p1, v1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;-><init>(Lcom/narvii/model/Feed;)V

    .line 97
    invoke-virtual {p1, v0}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->showCommentBar(Z)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p1

    const-string p2, "global-search-player"

    .line 98
    invoke-virtual {p1, p2}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->source(Ljava/lang/String;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/master/search/GlobalPostSearchAdapter;->keyword:Ljava/lang/String;

    .line 99
    invoke-virtual {p1, p2}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->searchKeyWord(Ljava/lang/String;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p1

    .line 100
    invoke-virtual {v1}, Lcom/narvii/model/Blog;->getPublishNdcId()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->getCommunityInfo(I)Lcom/narvii/model/Community;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->initFeedCommunity(Lcom/narvii/model/Community;)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p1

    .line 101
    invoke-virtual {p1, v0}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->forceVideoAutoPlay(Z)Lcom/narvii/story/StoryListFragment$IntentBuilder;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Lcom/narvii/story/StoryListFragment$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    .line 103
    new-instance p2, Lcom/narvii/story/StoryHelper;

    iget-object p3, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-direct {p2, p3}, Lcom/narvii/story/StoryHelper;-><init>(Lcom/narvii/app/NVContext;)V

    invoke-virtual {p2, p5, p1}, Lcom/narvii/story/StoryHelper;->openStoryDetailPageInAnotherActivity(Landroid/view/View;Landroid/content/Intent;)V

    .line 104
    invoke-virtual {p0, v1}, Lcom/narvii/feed/BaseFeedListAdapter;->logFeedClickEvent(Lcom/narvii/model/Feed;)V

    return v0

    .line 108
    :cond_3
    invoke-super/range {p0 .. p5}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/headlines/HeadlineListResponse;I)V
    .locals 0

    .line 147
    invoke-super {p0, p1, p2, p3}, Lcom/narvii/headlines/feed/HeadLinesListAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/headlines/HeadlineListResponse;I)V

    .line 148
    invoke-virtual {p0}, Lcom/narvii/master/search/GlobalPostSearchAdapter;->getVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/narvii/master/search/GlobalPostSearchAdapter;->videoAutoPlay()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/narvii/master/search/GlobalPostSearchAdapter;->getVideoListDelegate()Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/nvplayerview/delegate/IVideoListDelegate;->onRefresh()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/model/api/ListResponse;I)V
    .locals 0

    .line 26
    check-cast p2, Lcom/narvii/headlines/HeadlineListResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/master/search/GlobalPostSearchAdapter;->onPageResponse(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/headlines/HeadlineListResponse;I)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 46
    invoke-super {p0, p1}, Lcom/narvii/list/NVPagedAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "keyword"

    .line 47
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/master/search/GlobalPostSearchAdapter;->keyword:Ljava/lang/String;

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 62
    invoke-super {p0}, Lcom/narvii/list/NVPagedAdapter;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/narvii/master/search/GlobalPostSearchAdapter;->keyword:Ljava/lang/String;

    const-string v2, "keyword"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected responseType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/narvii/headlines/HeadlineListResponse;",
            ">;"
        }
    .end annotation

    .line 57
    const-class v0, Lcom/narvii/master/search/GlobalPostListResponse;

    return-object v0
.end method

.method protected showAllLike()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected showPromote()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract videoAutoPlay()Z
.end method
