.class public Lcom/narvii/members/MemberListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/members/MemberListFragment$MemberAdapter;,
        Lcom/narvii/members/MemberListFragment$SearchAdapter;,
        Lcom/narvii/members/MemberListFragment$SearchResultAdapter;
    }
.end annotation


# static fields
.field public static final KEY_TYPE:Ljava/lang/String; = "key_type"

.field public static final KEY_TYPE_RECENT:Ljava/lang/String; = "recent"


# instance fields
.field instantSearchListener:Lcom/narvii/search/InstantSearchListener;

.field memberAdapter:Lcom/narvii/members/MemberListFragment$MemberAdapter;

.field mergeAdapter:Lcom/narvii/list/MergeAdapter;

.field searchAdapter:Lcom/narvii/members/MemberListFragment$SearchAdapter;

.field searchResultAdaper:Lcom/narvii/members/MemberListFragment$SearchResultAdapter;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/search/InstantSearchListener;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lcom/narvii/search/InstantSearchListener;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/members/MemberListFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 11
    return-void
.end method

.method private synthetic lambda$onViewCreated$0(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/members/MemberListFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    instance-of p1, p1, Lcom/narvii/list/NVAdapter;

    .line 19
    const/4 v0, 0x0

    .line 20
    const/4 v1, 0x2

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/narvii/list/NVListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    check-cast p1, Lcom/narvii/list/NVAdapter;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v1, v0}, Lcom/narvii/list/NVAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_0
    iget-object p1, p0, Lcom/narvii/members/MemberListFragment;->searchResultAdaper:Lcom/narvii/members/MemberListFragment$SearchResultAdapter;

    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v1, v0}, Lcom/narvii/list/NVPagedAdapter;->refresh(ILcom/narvii/util/Callback;)V

    .line 40
    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic t(Lcom/narvii/members/MemberListFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/narvii/members/MemberListFragment;->lambda$onViewCreated$0(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 2

    .line 1
    .line 2
    new-instance p1, Lcom/narvii/members/MemberListFragment$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p0, p0}, Lcom/narvii/members/MemberListFragment$1;-><init>(Lcom/narvii/members/MemberListFragment;Lcom/narvii/app/NVContext;)V

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/members/MemberListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 8
    .line 9
    new-instance p1, Lcom/narvii/members/MemberListFragment$MemberAdapter;

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, p0}, Lcom/narvii/members/MemberListFragment$MemberAdapter;-><init>(Lcom/narvii/members/MemberListFragment;)V

    .line 13
    .line 14
    iput-object p1, p0, Lcom/narvii/members/MemberListFragment;->memberAdapter:Lcom/narvii/members/MemberListFragment$MemberAdapter;

    .line 15
    .line 16
    new-instance p1, Lcom/narvii/members/MemberListFragment$SearchAdapter;

    .line 17
    .line 18
    .line 19
    invoke-direct {p1, p0}, Lcom/narvii/members/MemberListFragment$SearchAdapter;-><init>(Lcom/narvii/members/MemberListFragment;)V

    .line 20
    .line 21
    iput-object p1, p0, Lcom/narvii/members/MemberListFragment;->searchAdapter:Lcom/narvii/members/MemberListFragment$SearchAdapter;

    .line 22
    .line 23
    new-instance p1, Lcom/narvii/members/MemberListFragment$SearchResultAdapter;

    .line 24
    .line 25
    .line 26
    invoke-direct {p1, p0}, Lcom/narvii/members/MemberListFragment$SearchResultAdapter;-><init>(Lcom/narvii/members/MemberListFragment;)V

    .line 27
    .line 28
    iput-object p1, p0, Lcom/narvii/members/MemberListFragment;->searchResultAdaper:Lcom/narvii/members/MemberListFragment$SearchResultAdapter;

    .line 29
    .line 30
    iget-object p1, p0, Lcom/narvii/members/MemberListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/members/MemberListFragment;->searchAdapter:Lcom/narvii/members/MemberListFragment$SearchAdapter;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 36
    .line 37
    iget-object p1, p0, Lcom/narvii/members/MemberListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 38
    .line 39
    iget-object v0, p0, Lcom/narvii/members/MemberListFragment;->memberAdapter:Lcom/narvii/members/MemberListFragment$MemberAdapter;

    .line 40
    const/4 v1, 0x1

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0, v1}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;Z)V

    .line 44
    .line 45
    iget-object p1, p0, Lcom/narvii/members/MemberListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 46
    .line 47
    iget-object v0, p0, Lcom/narvii/members/MemberListFragment;->searchResultAdaper:Lcom/narvii/members/MemberListFragment$SearchResultAdapter;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 51
    .line 52
    iget-object p1, p0, Lcom/narvii/members/MemberListFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    .line 53
    .line 54
    iget-object v0, p0, Lcom/narvii/members/MemberListFragment;->searchResultAdaper:Lcom/narvii/members/MemberListFragment$SearchResultAdapter;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Lcom/narvii/search/InstantSearchListener;->attachAdapter(Lcom/narvii/list/NVPagedAdapter;)V

    .line 58
    .line 59
    iget-object p1, p0, Lcom/narvii/members/MemberListFragment;->mergeAdapter:Lcom/narvii/list/MergeAdapter;

    .line 60
    return-object p1
.end method

.method public getPostEntryLift()I
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Lcom/narvii/wallet/optinads/OptinAdsUtil;->getBannerLift(Lcom/narvii/app/NVContext;I)I

    .line 5
    move-result v0

    .line 6
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/list/NVListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    const-string v0, "key_type"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/members/MemberListFragment;->type:Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const-string v0, "all"

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/members/MemberListFragment;->type:Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    :cond_0
    const v0, 0x7f12030e

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 32
    const/4 v0, 0x1

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Lcom/narvii/list/NVListFragment;->setScrollToHideKeyboard(Z)V

    .line 36
    .line 37
    if-nez p1, :cond_1

    .line 38
    .line 39
    .line 40
    const-string/jumbo p1, "statistics"

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 47
    .line 48
    const-string v0, "Members Page Opened"

    .line 49
    .line 50
    .line 51
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    const-string v0, "Members Page Opened Total"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    const-string v0, "Source"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 68
    :cond_1
    return-void
.end method

.method protected onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onListViewCreated(Landroid/widget/ListView;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0d0213

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVListFragment;->setEmptyView(I)Landroid/view/View;

    .line 10
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/list/NVListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x7f0a04e9

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    new-instance p2, Lcom/narvii/members/a;

    .line 15
    .line 16
    .line 17
    invoke-direct {p2, p0}, Lcom/narvii/members/a;-><init>(Lcom/narvii/members/MemberListFragment;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    :cond_0
    return-void
.end method
