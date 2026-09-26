.class public Lcom/narvii/livelayer/detailview/LiveLayerDetailVoteFragment$VoteListAdapter;
.super Lcom/narvii/livelayer/detailview/LiveLayerDetailBasePostFragment$BasePostListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/livelayer/detailview/LiveLayerDetailVoteFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VoteListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailVoteFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailVoteFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailVoteFragment$VoteListAdapter;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailVoteFragment;

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
    .locals 4

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
    if-eqz p3, :cond_5

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBasePostFragment$BasePostListAdapter;->setTitleAndImgFromFeed(Ljava/lang/Object;Landroid/view/View;)Lcom/narvii/model/Feed;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    .line 15
    const p3, 0x7f0a0588

    .line 16
    .line 17
    if-nez p4, :cond_4

    .line 18
    .line 19
    .line 20
    const p1, 0x7f0a080a

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object p4

    .line 25
    .line 26
    check-cast p4, Landroid/view/ViewGroup;

    .line 27
    .line 28
    if-eqz p4, :cond_2

    .line 29
    .line 30
    .line 31
    const v0, 0x7f0a0ff8

    .line 32
    .line 33
    .line 34
    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    .line 38
    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 47
    move-result-object v0

    .line 48
    .line 49
    .line 50
    const v1, 0x7f0d0512

    .line 51
    const/4 v2, 0x0

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1, p4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 61
    .line 62
    .line 63
    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->k()Z

    .line 64
    move-result p4

    .line 65
    .line 66
    if-nez p4, :cond_2

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->getProgress()F

    .line 70
    move-result p4

    .line 71
    const/4 v1, 0x0

    .line 72
    .line 73
    cmpl-float p4, p4, v1

    .line 74
    .line 75
    if-eqz p4, :cond_1

    .line 76
    .line 77
    .line 78
    :try_start_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->o()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    goto :goto_0

    .line 80
    .line 81
    :cond_1
    new-instance p4, Lcom/narvii/livelayer/detailview/LiveLayerDetailVoteFragment$VoteListAdapter$1;

    .line 82
    .line 83
    .line 84
    invoke-direct {p4, p0, v0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailVoteFragment$VoteListAdapter$1;-><init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailVoteFragment$VoteListAdapter;Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 85
    .line 86
    .line 87
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 88
    move-result-wide v0

    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 94
    mul-double/2addr v0, v2

    .line 95
    double-to-long v0, v0

    .line 96
    .line 97
    .line 98
    invoke-static {p4, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 99
    .line 100
    .line 101
    :catch_0
    :cond_2
    :goto_0
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 102
    move-result-object p3

    .line 103
    .line 104
    check-cast p3, Lcom/narvii/feed/FeedToolbarLayout;

    .line 105
    .line 106
    if-eqz p3, :cond_3

    .line 107
    .line 108
    const/16 p4, 0x8

    .line 109
    .line 110
    .line 111
    invoke-virtual {p3, p4}, Landroid/view/View;->setVisibility(I)V

    .line 112
    .line 113
    .line 114
    :cond_3
    invoke-virtual {p0, p2, p1}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;->alignOnlineBar(Landroid/view/View;I)V

    .line 115
    goto :goto_1

    .line 116
    .line 117
    .line 118
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBasePostFragment$BasePostListAdapter;->setFootToolbar(Lcom/narvii/model/Feed;Landroid/view/View;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, p2, p3}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;->alignOnlineBar(Landroid/view/View;I)V

    .line 122
    :cond_5
    :goto_1
    return-object p2
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0d04fd

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

.method public bridge synthetic onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBasePostFragment$BasePostListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;Z)Z
    .locals 0

    .line 2
    invoke-super/range {p0 .. p6}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBasePostFragment$BasePostListAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;Z)Z

    move-result p1

    return p1
.end method
