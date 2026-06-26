.class public final Lcom/narvii/video/MediaSpeedFragment$onViewCreated$4;
.super Ljava/lang/Object;
.source "MediaSpeedFragment.kt"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/MediaSpeedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/MediaSpeedFragment;


# direct methods
.method constructor <init>(Lcom/narvii/video/MediaSpeedFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 135
    iput-object p1, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$4;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8

    .line 137
    iget-object p1, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$4;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    invoke-static {p1}, Lcom/narvii/video/MediaSpeedFragment;->access$getVideoDurationMs$p(Lcom/narvii/video/MediaSpeedFragment;)J

    move-result-wide v0

    if-eqz p3, :cond_0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    int-to-long p1, p2

    mul-long v0, v0, p1

    .line 139
    iget-object p1, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$4;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    sget p2, Lcom/narvii/mediaeditor/R$id;->seekbar:I

    invoke-virtual {p1, p2}, Lcom/narvii/video/MediaSpeedFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    const-string p2, "seekbar"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    int-to-long p1, p1

    div-long p1, v0, p1

    .line 140
    iget-object v2, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$4;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    invoke-static {v2}, Lcom/narvii/video/MediaSpeedFragment;->access$getVideoDurationMs$p(Lcom/narvii/video/MediaSpeedFragment;)J

    move-result-wide v5

    const/4 v7, 0x0

    move-wide v3, p1

    invoke-static/range {v2 .. v7}, Lcom/narvii/video/MediaSpeedFragment;->access$updateTime(Lcom/narvii/video/MediaSpeedFragment;JJZ)V

    .line 141
    iget-object p3, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$4;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    long-to-int p2, p1

    const/4 p1, 0x0

    invoke-virtual {p3, p2, p1}, Lcom/narvii/video/BaseMediaEditorFragment;->onFrameLocatedDuringMove(II)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 146
    iget-object p1, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$4;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/narvii/video/MediaSpeedFragment;->access$setSeekBarSeeking$p(Lcom/narvii/video/MediaSpeedFragment;Z)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .line 150
    iget-object p1, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$4;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/video/MediaSpeedFragment;->access$setSeekBarSeeking$p(Lcom/narvii/video/MediaSpeedFragment;Z)V

    .line 151
    iget-object p1, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$4;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    invoke-virtual {p1, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setDragging(Z)V

    .line 152
    iget-object p1, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$4;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    invoke-virtual {p1}, Lcom/narvii/video/BaseMediaEditorFragment;->getAutoPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 153
    iget-object p1, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$4;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, v0, v1, v2}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus$default(Lcom/narvii/video/BaseMediaEditorFragment;ZZILjava/lang/Object;)V

    :cond_0
    return-void
.end method
