.class public final Lcom/narvii/video/MediaSpeedFragment$onViewCreated$4;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$4;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8
    .param p1    # Landroid/widget/SeekBar;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$4;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/video/MediaSpeedFragment;->access$getVideoDurationMs$p(Lcom/narvii/video/MediaSpeedFragment;)J

    .line 6
    move-result-wide v0

    .line 7
    .line 8
    if-eqz p3, :cond_0

    .line 9
    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    cmp-long p1, v0, v2

    .line 13
    .line 14
    if-lez p1, :cond_0

    .line 15
    int-to-long p1, p2

    .line 16
    mul-long/2addr v0, p1

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$4;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lcom/narvii/video/MediaSpeedFragment;->access$getBinding(Lcom/narvii/video/MediaSpeedFragment;)Lcom/narvii/mediaeditor/databinding/FragmentMediaSpeedBinding;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    iget-object p1, p1, Lcom/narvii/mediaeditor/databinding/FragmentMediaSpeedBinding;->seekbar:Landroid/widget/SeekBar;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getMax()I

    .line 28
    move-result p1

    .line 29
    int-to-long p1, p1

    .line 30
    div-long/2addr v0, p1

    .line 31
    .line 32
    iget-object v2, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$4;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    .line 33
    .line 34
    .line 35
    invoke-static {v2}, Lcom/narvii/video/MediaSpeedFragment;->access$getVideoDurationMs$p(Lcom/narvii/video/MediaSpeedFragment;)J

    .line 36
    move-result-wide v5

    .line 37
    const/4 v7, 0x0

    .line 38
    move-wide v3, v0

    .line 39
    .line 40
    .line 41
    invoke-static/range {v2 .. v7}, Lcom/narvii/video/MediaSpeedFragment;->access$updateTime(Lcom/narvii/video/MediaSpeedFragment;JJZ)V

    .line 42
    .line 43
    iget-object p1, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$4;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    .line 44
    long-to-int p2, v0

    .line 45
    const/4 p3, 0x0

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2, p3}, Lcom/narvii/video/BaseMediaEditorFragment;->onFrameLocatedDuringMove(II)V

    .line 49
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1    # Landroid/widget/SeekBar;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$4;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/narvii/video/MediaSpeedFragment;->access$setSeekBarSeeking$p(Lcom/narvii/video/MediaSpeedFragment;Z)V

    .line 7
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1    # Landroid/widget/SeekBar;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$4;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/narvii/video/MediaSpeedFragment;->access$setSeekBarSeeking$p(Lcom/narvii/video/MediaSpeedFragment;Z)V

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$4;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->setDragging(Z)V

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$4;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/narvii/video/BaseMediaEditorFragment;->getAutoPlaying()Z

    .line 17
    move-result p1

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/narvii/video/MediaSpeedFragment$onViewCreated$4;->this$0:Lcom/narvii/video/MediaSpeedFragment;

    .line 22
    const/4 v1, 0x2

    .line 23
    const/4 v2, 0x0

    .line 24
    .line 25
    .line 26
    invoke-static {p1, v0, v0, v1, v2}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus$default(Lcom/narvii/video/BaseMediaEditorFragment;ZZILjava/lang/Object;)V

    .line 27
    :cond_0
    return-void
.end method
