.class public final Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "BaseViceTimeLineFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/BaseViceTimeLineFragment;->innerInitViceTimeLine(IIZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $trackIndex:I

.field final synthetic $viceTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

.field final synthetic $viewIndex:I

.field private scrolledDx:I

.field final synthetic this$0:Lcom/narvii/video/BaseViceTimeLineFragment;


# direct methods
.method constructor <init>(Lcom/narvii/video/BaseViceTimeLineFragment;ILcom/narvii/video/widget/MediaTimeLineComponent;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/narvii/video/widget/MediaTimeLineComponent;",
            "I)V"
        }
    .end annotation

    .line 266
    iput-object p1, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;->this$0:Lcom/narvii/video/BaseViceTimeLineFragment;

    iput p2, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;->$trackIndex:I

    iput-object p3, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;->$viceTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    iput p4, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;->$viewIndex:I

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final getScrolledDx()I
    .locals 1

    .line 267
    iget v0, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;->scrolledDx:I

    return v0
.end method

.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 10

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "view"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onScrollStateChanged"

    invoke-static {v0, p1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget p1, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;->$trackIndex:I

    iget-object v0, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;->this$0:Lcom/narvii/video/BaseViceTimeLineFragment;

    invoke-static {v0}, Lcom/narvii/video/BaseViceTimeLineFragment;->access$getClipListForViceTracks$p(Lcom/narvii/video/BaseViceTimeLineFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_4

    .line 273
    iget v3, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;->scrolledDx:I

    if-eqz v3, :cond_4

    .line 274
    iget-object p2, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;->this$0:Lcom/narvii/video/BaseViceTimeLineFragment;

    invoke-virtual {p2}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTimeLineComponent()Lcom/narvii/video/widget/MediaTimeLineComponent;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-static {p2, v2, v1, v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getTimeLineScrolledDx$default(Lcom/narvii/video/widget/MediaTimeLineComponent;ZILjava/lang/Object;)I

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 276
    :goto_0
    iget-object v3, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;->$viceTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-static {v3, v2, v1, v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getTimeLineScrolledDx$default(Lcom/narvii/video/widget/MediaTimeLineComponent;ZILjava/lang/Object;)I

    move-result v1

    iget-object v3, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;->$viceTimeLineComponent:Lcom/narvii/video/widget/MediaTimeLineComponent;

    invoke-virtual {v3}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getAdditionalFramePreOffsetDx()I

    move-result v3

    sub-int/2addr v1, v3

    .line 277
    iget-object v3, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;->this$0:Lcom/narvii/video/BaseViceTimeLineFragment;

    invoke-virtual {v3}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTimeLineComponent()Lcom/narvii/video/widget/MediaTimeLineComponent;

    move-result-object v4

    if-eqz v4, :cond_2

    sub-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getSectionDurationInMs$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IIZILjava/lang/Object;)I

    move-result p2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    .line 279
    :goto_1
    iget-object v1, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;->this$0:Lcom/narvii/video/BaseViceTimeLineFragment;

    invoke-static {v1}, Lcom/narvii/video/BaseViceTimeLineFragment;->access$getClipListForViceTracks$p(Lcom/narvii/video/BaseViceTimeLineFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iget v3, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;->$trackIndex:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/video/model/BaseClipInfoPack;

    iput p2, v1, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 280
    iget-object p2, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;->this$0:Lcom/narvii/video/BaseViceTimeLineFragment;

    iget v1, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;->$trackIndex:I

    invoke-virtual {p2, v1}, Lcom/narvii/video/BaseViceTimeLineFragment;->onViceTrackOffsetChanged(I)V

    .line 281
    iget-object p2, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;->this$0:Lcom/narvii/video/BaseViceTimeLineFragment;

    invoke-virtual {p2}, Lcom/narvii/video/BaseMediaEditorFragment;->getAutoPlaying()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 282
    iget-object p2, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;->this$0:Lcom/narvii/video/BaseViceTimeLineFragment;

    invoke-static {p2, v2, v2, p1, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus$default(Lcom/narvii/video/BaseMediaEditorFragment;ZZILjava/lang/Object;)V

    .line 284
    :cond_3
    iget-object p1, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;->this$0:Lcom/narvii/video/BaseViceTimeLineFragment;

    invoke-virtual {p1, v2}, Lcom/narvii/video/BaseMediaEditorFragment;->changeSeekStatus(Z)V

    goto :goto_2

    :cond_4
    if-lez p2, :cond_5

    .line 286
    iget-object v3, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;->this$0:Lcom/narvii/video/BaseViceTimeLineFragment;

    invoke-static {v3, v1, v2, p1, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus$default(Lcom/narvii/video/BaseMediaEditorFragment;ZZILjava/lang/Object;)V

    if-ne p2, v1, :cond_5

    .line 288
    iput v2, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;->scrolledDx:I

    :cond_5
    :goto_2
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 2

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 295
    iget p1, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;->$viewIndex:I

    iget-object v0, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;->this$0:Lcom/narvii/video/BaseViceTimeLineFragment;

    invoke-static {v0}, Lcom/narvii/video/BaseViceTimeLineFragment;->access$getClipListForViceTracks$p(Lcom/narvii/video/BaseViceTimeLineFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    return-void

    .line 301
    :cond_1
    iget p1, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;->scrolledDx:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;->scrolledDx:I

    .line 302
    iget-object p1, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;->this$0:Lcom/narvii/video/BaseViceTimeLineFragment;

    iget p2, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;->$viewIndex:I

    const/4 p3, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v0, v1}, Lcom/narvii/video/BaseViceTimeLineFragment;->onViceTrackScrolled$default(Lcom/narvii/video/BaseViceTimeLineFragment;IZILjava/lang/Object;)V

    return-void
.end method

.method public final setScrolledDx(I)V
    .locals 0

    .line 267
    iput p1, p0, Lcom/narvii/video/BaseViceTimeLineFragment$innerInitViceTimeLine$2;->scrolledDx:I

    return-void
.end method
