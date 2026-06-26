.class public final Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$$inlined$let$lambda$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "MediaTimeLineComponent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/widget/MediaTimeLineComponent;->initComponent(ZZZZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $it:Lcom/narvii/widget/HorizontalRecyclerView;

.field final synthetic $resetTimeLine$inlined:Z

.field final synthetic $showAdditionalBorderAtTail$inlined:Z

.field final synthetic $showFrameBorder$inlined:Z

.field final synthetic $showRoundCorner$inlined:Z

.field final synthetic this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;


# direct methods
.method constructor <init>(Lcom/narvii/widget/HorizontalRecyclerView;Lcom/narvii/video/widget/MediaTimeLineComponent;ZZZZ)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$$inlined$let$lambda$1;->$it:Lcom/narvii/widget/HorizontalRecyclerView;

    iput-object p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$$inlined$let$lambda$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    iput-boolean p3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$$inlined$let$lambda$1;->$showFrameBorder$inlined:Z

    iput-boolean p4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$$inlined$let$lambda$1;->$showRoundCorner$inlined:Z

    iput-boolean p5, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$$inlined$let$lambda$1;->$showAdditionalBorderAtTail$inlined:Z

    iput-boolean p6, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$$inlined$let$lambda$1;->$resetTimeLine$inlined:Z

    .line 465
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 5

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 467
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$$inlined$let$lambda$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-virtual {p1, p2}, Lcom/narvii/video/widget/MediaTimeLineComponent;->setCurRecyclerViewState(I)V

    if-nez p2, :cond_d

    .line 471
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$$inlined$let$lambda$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getTimeLine$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Lcom/narvii/widget/HorizontalRecyclerView;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    instance-of v0, p1, Landroid/support/v7/widget/LinearLayoutManager;

    if-nez v0, :cond_1

    move-object p1, p2

    :cond_1
    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/support/v7/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 472
    :goto_1
    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$$inlined$let$lambda$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getTimeLine$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Lcom/narvii/widget/HorizontalRecyclerView;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne p1, v1, :cond_4

    const/4 p1, 0x1

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_5

    .line 473
    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$$inlined$let$lambda$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getTimeLineType$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v1

    const/16 v3, 0xca

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$$inlined$let$lambda$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-virtual {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getMediaLengthInMs()I

    move-result v1

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$$inlined$let$lambda$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getCurFirstMediaFrameTime(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v1

    :goto_4
    if-eqz v1, :cond_6

    .line 474
    iget-object v3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$$inlined$let$lambda$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v3}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getCurFirstVideoFrameTimeInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v3

    if-ne v1, v3, :cond_6

    if-eqz p1, :cond_d

    .line 475
    :cond_6
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$$inlined$let$lambda$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getCurFirstVideoFrameTimeInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result p1

    sub-int p1, v1, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget-object v3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$$inlined$let$lambda$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v3}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getMaxVisibleSectionIntervalInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v3

    if-lt p1, v3, :cond_7

    .line 476
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$$inlined$let$lambda$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getFrameRetrieverManager$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Lcom/narvii/video/services/FrameRetrieverManager;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/narvii/video/services/FrameRetrieverManager;->abortFlyingFrameRetrievers()V

    .line 478
    :cond_7
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$$inlined$let$lambda$1;->$it:Lcom/narvii/widget/HorizontalRecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p1

    instance-of v3, p1, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;

    if-nez v3, :cond_8

    move-object p1, p2

    :cond_8
    check-cast p1, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineAdapter;->refreshVisibleArea()V

    .line 479
    :cond_9
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$$inlined$let$lambda$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getRetrieveCutter$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Lcom/narvii/video/widget/MediaRetrieveController;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1, v1}, Lcom/narvii/video/widget/MediaRetrieveController;->updateMediaSectionStartTime(I)V

    .line 480
    :cond_a
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$$inlined$let$lambda$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getTimeLineCallback$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object v3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$$inlined$let$lambda$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v3}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getCurControllerStartTimeOffsetInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v3

    add-int/2addr v3, v1

    const/4 v4, -0x1

    invoke-interface {p1, v3, v4}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;->onFrameLocatedDuringMove(II)V

    .line 481
    :cond_b
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$$inlined$let$lambda$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {p1, v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$setCurFirstVideoFrameTimeInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;I)V

    .line 482
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$$inlined$let$lambda$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getTimeLineCallback$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$$inlined$let$lambda$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v1, v0, v2, p2}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getTimeLineScrolledDx$default(Lcom/narvii/video/widget/MediaTimeLineComponent;ZILjava/lang/Object;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;->onTimeLineScrolledOffsetChanged(I)V

    .line 483
    :cond_c
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$$inlined$let$lambda$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getCurFirstVideoFrameTimeInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result p2

    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$$inlined$let$lambda$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getCurControllerStartTimeOffsetInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v0

    add-int/2addr p2, v0

    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$$inlined$let$lambda$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getCurFirstVideoFrameTimeInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v0

    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$$inlined$let$lambda$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getCurControllerEndTimeOffsetInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    invoke-static {p1, p2, v0, v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$replay(Lcom/narvii/video/widget/MediaTimeLineComponent;III)V

    :cond_d
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 11

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    return-void

    .line 492
    :cond_0
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$$inlined$let$lambda$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-virtual {p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getCurRecyclerViewState()I

    move-result p1

    if-nez p1, :cond_2

    .line 495
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$$inlined$let$lambda$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getCurFirstMediaFrameTime(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result p1

    .line 496
    iget-object p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$$inlined$let$lambda$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {p2}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getCurFirstVideoFrameTimeInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result p2

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget-object p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$$inlined$let$lambda$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {p2}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getMaxVisibleSectionIntervalInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result p2

    if-lt p1, p2, :cond_1

    .line 497
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$$inlined$let$lambda$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getFrameRetrieverManager$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Lcom/narvii/video/services/FrameRetrieverManager;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/narvii/video/services/FrameRetrieverManager;->abortFlyingFrameRetrievers()V

    :cond_1
    return-void

    .line 502
    :cond_2
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$$inlined$let$lambda$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getTimeLine$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Lcom/narvii/widget/HorizontalRecyclerView;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object p1, p2

    :goto_0
    instance-of p3, p1, Landroid/support/v7/widget/LinearLayoutManager;

    if-nez p3, :cond_4

    move-object p1, p2

    :cond_4
    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 p2, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/support/v7/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result p1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    .line 503
    :goto_1
    iget-object p3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$$inlined$let$lambda$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {p3}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getTimeLine$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Lcom/narvii/widget/HorizontalRecyclerView;

    move-result-object p3

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p3

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p3

    goto :goto_2

    :cond_6
    const/4 p3, 0x0

    :goto_2
    const/4 v0, 0x1

    sub-int/2addr p3, v0

    if-ne p1, p3, :cond_7

    const/4 p2, 0x1

    :cond_7
    if-eqz p2, :cond_8

    .line 504
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$$inlined$let$lambda$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getTimeLineType$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result p1

    const/16 p2, 0xca

    if-ne p1, p2, :cond_8

    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$$inlined$let$lambda$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-virtual {p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getMediaLengthInMs()I

    move-result p1

    goto :goto_3

    :cond_8
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$$inlined$let$lambda$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {p1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getCurFirstMediaFrameTime(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result p1

    .line 506
    :goto_3
    iget-object p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$$inlined$let$lambda$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {p2}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getRetrieveCutter$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Lcom/narvii/video/widget/MediaRetrieveController;

    move-result-object p2

    if-eqz p2, :cond_9

    invoke-virtual {p2, p1}, Lcom/narvii/video/widget/MediaRetrieveController;->updateMediaSectionStartTime(I)V

    .line 507
    :cond_9
    iget-object p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$$inlined$let$lambda$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {p2}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getTimeLineCallback$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;

    move-result-object p2

    if-eqz p2, :cond_a

    iget-object p3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$$inlined$let$lambda$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {p3}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getCurControllerStartTimeOffsetInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result p3

    add-int/2addr p3, p1

    const/4 v0, -0x1

    invoke-interface {p2, p3, v0}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineCallback;->onFrameLocatedDuringMove(II)V

    .line 508
    :cond_a
    iget-object v1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$initComponent$$inlined$let$lambda$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponent;->access$getCurControllerStartTimeOffsetInMs$p(Lcom/narvii/video/widget/MediaTimeLineComponent;)I

    move-result p2

    add-int v2, p1, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0x3e

    const/4 v10, 0x0

    invoke-static/range {v1 .. v10}, Lcom/narvii/video/widget/MediaTimeLineComponent;->scrollTimeLine$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IZZZZIZILjava/lang/Object;)V

    return-void
.end method
