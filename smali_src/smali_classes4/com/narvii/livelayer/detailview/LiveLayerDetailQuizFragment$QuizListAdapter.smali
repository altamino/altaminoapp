.class public Lcom/narvii/livelayer/detailview/LiveLayerDetailQuizFragment$QuizListAdapter;
.super Lcom/narvii/livelayer/detailview/LiveLayerDetailBasePostFragment$BasePostListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/livelayer/detailview/LiveLayerDetailQuizFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QuizListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailQuizFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailQuizFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailQuizFragment$QuizListAdapter;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailQuizFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBasePostFragment$BasePostListAdapter;-><init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailBasePostFragment;Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic getAreaName()Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBasePostFragment$BasePostListAdapter;->getAreaName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;->getItemView(Ljava/lang/Object;Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    instance-of p3, p1, Lcom/narvii/model/Blog;

    .line 7
    .line 8
    if-eqz p3, :cond_4

    .line 9
    .line 10
    check-cast p1, Lcom/narvii/model/Blog;

    .line 11
    .line 12
    .line 13
    const p3, 0x7f0a06eb

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object p3

    .line 18
    .line 19
    check-cast p3, Lcom/narvii/widget/NVImageView;

    .line 20
    .line 21
    if-eqz p3, :cond_1

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lcom/narvii/util/LiveLayerUtils;->getCoverMedia(Lcom/narvii/model/Feed;)Lcom/narvii/model/Media;

    .line 25
    move-result-object p4

    .line 26
    .line 27
    instance-of v0, p3, Lcom/narvii/widget/SecretImageView;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-boolean v0, p1, Lcom/narvii/model/Feed;->needHidden:Z

    .line 32
    .line 33
    check-cast p3, Lcom/narvii/widget/SecretImageView;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3, p4, v0}, Lcom/narvii/widget/SecretImageView;->setImageMedia(Lcom/narvii/model/Media;Z)Z

    .line 37
    goto :goto_0

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {p3, p4}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_0
    const p3, 0x7f0a0e9e

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    move-result-object p3

    .line 48
    .line 49
    check-cast p3, Landroid/widget/TextView;

    .line 50
    .line 51
    if-eqz p3, :cond_2

    .line 52
    .line 53
    iget-object p4, p1, Lcom/narvii/model/Blog;->title:Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    const p3, 0x7f0a0d88

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    move-result-object p3

    .line 64
    .line 65
    iget-object p4, p0, Lcom/narvii/list/NVAdapter;->subviewClickListener:Landroid/view/View$OnClickListener;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p3, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    .line 70
    .line 71
    const p3, 0x7f0a0d8a

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, p2, p3}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;->alignOnlineBar(Landroid/view/View;I)V

    .line 75
    .line 76
    .line 77
    const p3, 0x7f0a055e

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    move-result-object p3

    .line 82
    .line 83
    if-eqz p3, :cond_4

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/narvii/model/Feed;->isFansOnly()Z

    .line 87
    move-result p1

    .line 88
    .line 89
    if-eqz p1, :cond_3

    .line 90
    const/4 p1, 0x0

    .line 91
    goto :goto_1

    .line 92
    .line 93
    :cond_3
    const/16 p1, 0x8

    .line 94
    .line 95
    .line 96
    :goto_1
    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    :cond_4
    return-object p2
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0d04fe

    return v0
.end method

.method public bridge synthetic onAttach()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBasePostFragment$BasePostListAdapter;->onAttach()V

    .line 4
    return-void
.end method

.method public onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    if-eqz p5, :cond_0

    .line 2
    invoke-virtual {p5}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0d88

    if-ne v0, v1, :cond_0

    instance-of v0, p3, Lcom/narvii/model/Blog;

    if-eqz v0, :cond_0

    .line 3
    new-instance p1, Lcom/narvii/feed/FeedHelper;

    iget-object p2, p0, Lcom/narvii/list/NVAdapter;->context:Lcom/narvii/app/NVContext;

    invoke-direct {p1, p2}, Lcom/narvii/feed/FeedHelper;-><init>(Lcom/narvii/app/NVContext;)V

    .line 4
    sget-object p2, Lcom/narvii/util/logging/LoggingSource;->FeedList:Lcom/narvii/util/logging/LoggingSource;

    iput-object p2, p1, Lcom/narvii/feed/FeedHelper;->loggingSource:Lcom/narvii/util/logging/LoggingSource;

    iget-object p2, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailQuizFragment$QuizListAdapter;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailQuizFragment;

    .line 5
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    .line 6
    check-cast p3, Lcom/narvii/model/Blog;

    invoke-virtual {p1, p3, p2}, Lcom/narvii/feed/FeedHelper;->startQuiz(Lcom/narvii/model/Blog;Landroid/content/Intent;)V

    const-string p1, "statistics"

    .line 7
    invoke-virtual {p0, p1}, Lcom/narvii/list/NVAdapter;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/util/statistics/StatisticsService;

    const-string p2, "Start Quiz"

    .line 8
    invoke-interface {p1, p2}, Lcom/narvii/util/statistics/StatisticsService;->event(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailQuizFragment$QuizListAdapter;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailQuizFragment;

    iget-object p2, p2, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment;->source:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->source(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    move-result-object p1

    const-string p2, "Start Quiz Total"

    invoke-virtual {p1, p2}, Lcom/narvii/util/statistics/StatisticsEventBuilder;->userPropInc(Ljava/lang/String;)Lcom/narvii/util/statistics/StatisticsEventBuilder;

    const/4 p1, 0x1

    return p1

    .line 9
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBasePostFragment$BasePostListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;Z)Z
    .locals 0

    .line 1
    invoke-super/range {p0 .. p6}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBasePostFragment$BasePostListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;Z)Z

    move-result p1

    return p1
.end method
