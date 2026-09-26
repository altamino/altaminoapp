.class public final Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder$retrieveFrame$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/video/interfaces/IVideoServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->retrieveFrame(Lcom/narvii/video/interfaces/IAVClipInfoPack;IIIZZF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $highlightClip:Z

.field final synthetic $leftEdge:Z

.field final synthetic $rightEdge:Z

.field final synthetic $rightEndX:F

.field final synthetic this$0:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;


# direct methods
.method constructor <init>(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;ZZZF)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder$retrieveFrame$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;

    .line 3
    .line 4
    iput-boolean p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder$retrieveFrame$1;->$highlightClip:Z

    .line 5
    .line 6
    iput-boolean p3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder$retrieveFrame$1;->$leftEdge:Z

    .line 7
    .line 8
    iput-boolean p4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder$retrieveFrame$1;->$rightEdge:Z

    .line 9
    .line 10
    iput p5, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder$retrieveFrame$1;->$rightEndX:F

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public onActionCancelled()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onActionCancelled(Lcom/narvii/video/interfaces/IVideoServiceCallback;)V

    .line 4
    return-void
.end method

.method public onActionFailed(Ljava/lang/Exception;)V
    .locals 0
    .param p1    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onActionFailed(Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/lang/Exception;)V

    .line 4
    return-void
.end method

.method public onActionStarted()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onActionStarted(Lcom/narvii/video/interfaces/IVideoServiceCallback;)V

    .line 4
    return-void
.end method

.method public onExecutingTaskChanged(Lg7/d;)V
    .locals 0
    .param p1    # Lg7/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onExecutingTaskChanged(Lcom/narvii/video/interfaces/IVideoServiceCallback;Lg7/d;)V

    .line 4
    return-void
.end method

.method public onFrameBitmapLoaded(ILandroid/graphics/Bitmap;)V
    .locals 6
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder$retrieveFrame$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->getTag()I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-ne v0, p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder$retrieveFrame$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->access$getFrameView$p(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;)Lcom/narvii/widget/NVImageView;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 18
    .line 19
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder$retrieveFrame$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->access$getFrameMaskView$p(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;)Lcom/narvii/video/widget/FrameItemMaskView;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder$retrieveFrame$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->getShowRoundCorner()Z

    .line 29
    move-result v1

    .line 30
    .line 31
    iget-boolean v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder$retrieveFrame$1;->$highlightClip:Z

    .line 32
    .line 33
    iget-boolean v3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder$retrieveFrame$1;->$leftEdge:Z

    .line 34
    .line 35
    iget-boolean v4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder$retrieveFrame$1;->$rightEdge:Z

    .line 36
    .line 37
    iget v5, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder$retrieveFrame$1;->$rightEndX:F

    .line 38
    .line 39
    .line 40
    invoke-virtual/range {v0 .. v5}, Lcom/narvii/video/widget/FrameItemMaskView;->updateBorder(ZZZZF)V

    .line 41
    :cond_0
    return-void
.end method

.method public onFramePicturesLoaded(ILjava/io/File;)V
    .locals 0
    .param p2    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onFramePicturesLoaded(Lcom/narvii/video/interfaces/IVideoServiceCallback;ILjava/io/File;)V

    .line 4
    return-void
.end method

.method public onProgress(FLjava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onProgress(Lcom/narvii/video/interfaces/IVideoServiceCallback;FLjava/lang/String;)V

    .line 4
    return-void
.end method

.method public onVideoProcessed(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onVideoProcessed(Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/lang/String;)V

    .line 4
    return-void
.end method
