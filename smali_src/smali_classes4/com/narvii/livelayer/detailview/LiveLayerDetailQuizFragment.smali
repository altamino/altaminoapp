.class public Lcom/narvii/livelayer/detailview/LiveLayerDetailQuizFragment;
.super Lcom/narvii/livelayer/detailview/LiveLayerDetailBasePostFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/livelayer/detailview/LiveLayerDetailQuizFragment$QuizListAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBasePostFragment;-><init>()V

    .line 4
    .line 5
    const-string v0, "Live Layer (Quizzes)"

    .line 6
    .line 7
    iput-object v0, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->source:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->createDefaultAdapter()Lcom/narvii/list/MergeAdapter;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    new-instance v0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$MemberListAdapterWithCapture;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, p0, p0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$MemberListAdapterWithCapture;-><init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;Lcom/narvii/app/NVContext;)V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->memberAdapter:Lcom/narvii/livelayer/LiveLayerMemberAdapter;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->source:Ljava/lang/String;

    .line 14
    .line 15
    iput-object v1, v0, Lcom/narvii/livelayer/LiveLayerMemberAdapter;->source:Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 19
    .line 20
    new-instance v0, Lcom/narvii/adapter/MarginAdapter;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/narvii/app/NVFragment;->getContext()Landroid/content/Context;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    const/high16 v2, 0x41200000    # 10.0f

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 30
    move-result v1

    .line 31
    float-to-int v1, v1

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, p0, v1}, Lcom/narvii/adapter/MarginAdapter;-><init>(Lcom/narvii/app/NVContext;I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 38
    .line 39
    new-instance v0, Lcom/narvii/livelayer/detailview/LiveLayerDetailQuizFragment$QuizListAdapter;

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, p0, p0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailQuizFragment$QuizListAdapter;-><init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailQuizFragment;Lcom/narvii/app/NVContext;)V

    .line 43
    .line 44
    iput-object v0, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->mainListAdapter:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 48
    .line 49
    new-instance v0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter$RecommendAdapter;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->mainListAdapter:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;

    .line 52
    .line 53
    .line 54
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    invoke-direct {v0, v1, p0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter$RecommendAdapter;-><init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;Lcom/narvii/app/NVContext;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 61
    .line 62
    new-instance v0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter$BaseRecommendedAdapter;

    .line 63
    .line 64
    iget-object v1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->mainListAdapter:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;

    .line 65
    .line 66
    .line 67
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    invoke-direct {v0, v1, p0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter$BaseRecommendedAdapter;-><init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;Lcom/narvii/app/NVContext;)V

    .line 71
    .line 72
    iput-object v0, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->recommendListAdapter:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter$BaseRecommendedAdapter;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    .line 77
    new-instance v0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$EmptyAdapter;

    .line 78
    .line 79
    .line 80
    invoke-direct {v0, p0, p0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$EmptyAdapter;-><init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;Lcom/narvii/app/NVContext;)V

    .line 81
    .line 82
    iget-object v1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->mainListAdapter:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Lcom/narvii/adapter/NVPagerStatusAdapter;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    .line 87
    iget-object v1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->recommendListAdapter:Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter$BaseRecommendedAdapter;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$EmptyAdapter;->addSubViewAdapter(Lcom/narvii/list/NVAdapter;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v0}, Lcom/narvii/list/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 94
    return-object p1
.end method

.method protected getOnlineCategoryConfig()Lcom/narvii/livelayer/category/OnlineCategoryConfig;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/livelayer/category/QuizCategoryConfig;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/narvii/livelayer/category/QuizCategoryConfig;-><init>()V

    .line 6
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p1, "statistics"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/narvii/app/NVFragment;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    .line 14
    .line 15
    const-string v0, "Live Layer - Quiz Page"

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, v0}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    const-string v0, "Live Layer Quiz Page"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    .line 25
    :cond_0
    return-void
.end method
