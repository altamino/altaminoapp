.class public Lcom/narvii/livelayer/detailview/LiveLayerDetailCommentFragment$CommentListAdapter;
.super Lcom/narvii/livelayer/detailview/LiveLayerDetailBasePostFragment$BasePostListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/livelayer/detailview/LiveLayerDetailCommentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CommentListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailCommentFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailCommentFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/livelayer/detailview/LiveLayerDetailCommentFragment$CommentListAdapter;->this$0:Lcom/narvii/livelayer/detailview/LiveLayerDetailCommentFragment;

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
    .locals 5

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
    if-eqz p3, :cond_3

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
    if-nez p4, :cond_2

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
    if-eqz p4, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 32
    .line 33
    new-instance v0, Lcom/narvii/widget/CommentLiveIndicator;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, v1}, Lcom/narvii/widget/CommentLiveIndicator;-><init>(Landroid/content/Context;)V

    .line 41
    .line 42
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 46
    move-result-object v2

    .line 47
    .line 48
    const/high16 v3, 0x42860000    # 67.0f

    .line 49
    .line 50
    .line 51
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 52
    move-result v2

    .line 53
    float-to-int v2, v2

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    .line 57
    move-result-object v3

    .line 58
    .line 59
    const/high16 v4, 0x420c0000    # 35.0f

    .line 60
    .line 61
    .line 62
    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 63
    move-result v3

    .line 64
    float-to-int v3, v3

    .line 65
    .line 66
    .line 67
    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p4, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    .line 72
    new-instance p4, Lcom/narvii/livelayer/detailview/LiveLayerDetailCommentFragment$CommentListAdapter$1;

    .line 73
    .line 74
    .line 75
    invoke-direct {p4, p0, v0}, Lcom/narvii/livelayer/detailview/LiveLayerDetailCommentFragment$CommentListAdapter$1;-><init>(Lcom/narvii/livelayer/detailview/LiveLayerDetailCommentFragment$CommentListAdapter;Lcom/narvii/widget/CommentLiveIndicator;)V

    .line 76
    .line 77
    .line 78
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 79
    move-result-wide v0

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 85
    mul-double/2addr v0, v2

    .line 86
    double-to-long v0, v0

    .line 87
    .line 88
    .line 89
    invoke-static {p4, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 90
    .line 91
    .line 92
    :cond_0
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 93
    move-result-object p3

    .line 94
    .line 95
    check-cast p3, Lcom/narvii/feed/FeedToolbarLayout;

    .line 96
    .line 97
    if-eqz p3, :cond_1

    .line 98
    .line 99
    const/16 p4, 0x8

    .line 100
    .line 101
    .line 102
    invoke-virtual {p3, p4}, Landroid/view/View;->setVisibility(I)V

    .line 103
    .line 104
    .line 105
    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;->alignOnlineBar(Landroid/view/View;I)V

    .line 106
    goto :goto_0

    .line 107
    .line 108
    .line 109
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBasePostFragment$BasePostListAdapter;->setFootToolbar(Lcom/narvii/model/Feed;Landroid/view/View;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, p2, p3}, Lcom/narvii/livelayer/detailview/LiveLayerDetailBaseFragment$BaseListAdapter;->alignOnlineBar(Landroid/view/View;I)V

    .line 113
    :cond_3
    :goto_0
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
