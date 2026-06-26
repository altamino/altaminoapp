.class public final Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder$retrieveFrame$1;
.super Ljava/lang/Object;
.source "MediaTimeLineComponent.kt"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZF)V"
        }
    .end annotation

    .line 973
    iput-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder$retrieveFrame$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;

    iput-boolean p2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder$retrieveFrame$1;->$highlightClip:Z

    iput-boolean p3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder$retrieveFrame$1;->$leftEdge:Z

    iput-boolean p4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder$retrieveFrame$1;->$rightEdge:Z

    iput p5, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder$retrieveFrame$1;->$rightEndX:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionCancelled()V
    .locals 0

    .line 973
    invoke-static {p0}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onActionCancelled(Lcom/narvii/video/interfaces/IVideoServiceCallback;)V

    return-void
.end method

.method public onActionFailed(Ljava/lang/Exception;)V
    .locals 0

    .line 973
    invoke-static {p0, p1}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onActionFailed(Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/lang/Exception;)V

    return-void
.end method

.method public onActionStarted()V
    .locals 0

    .line 973
    invoke-static {p0}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onActionStarted(Lcom/narvii/video/interfaces/IVideoServiceCallback;)V

    return-void
.end method

.method public onExecutingTaskChanged(Lffmpeg/base/MediaEditingConfig;)V
    .locals 1

    const-string v0, "newTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 973
    invoke-static {p0, p1}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onExecutingTaskChanged(Lcom/narvii/video/interfaces/IVideoServiceCallback;Lffmpeg/base/MediaEditingConfig;)V

    return-void
.end method

.method public onFrameBitmapLoaded(ILandroid/graphics/Bitmap;)V
    .locals 6

    .line 976
    iget-object v0, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder$retrieveFrame$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;

    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 977
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder$retrieveFrame$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;

    invoke-static {p1}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->access$getFrameView$p(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;)Lcom/narvii/widget/NVImageView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 978
    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder$retrieveFrame$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;

    invoke-static {p1}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->access$getFrameMaskView$p(Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;)Lcom/narvii/video/widget/FrameItemMaskView;

    move-result-object v0

    iget-object p1, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder$retrieveFrame$1;->this$0:Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;

    invoke-virtual {p1}, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder;->getShowRoundCorner()Z

    move-result v1

    iget-boolean v2, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder$retrieveFrame$1;->$highlightClip:Z

    iget-boolean v3, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder$retrieveFrame$1;->$leftEdge:Z

    iget-boolean v4, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder$retrieveFrame$1;->$rightEdge:Z

    iget v5, p0, Lcom/narvii/video/widget/MediaTimeLineComponent$TimeLineItemHolder$retrieveFrame$1;->$rightEndX:F

    invoke-virtual/range {v0 .. v5}, Lcom/narvii/video/widget/FrameItemMaskView;->updateBorder(ZZZZF)V

    :cond_0
    return-void
.end method

.method public onFramePicturesLoaded(ILjava/io/File;)V
    .locals 0

    .line 973
    invoke-static {p0, p1, p2}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onFramePicturesLoaded(Lcom/narvii/video/interfaces/IVideoServiceCallback;ILjava/io/File;)V

    return-void
.end method

.method public onProgress(FLjava/lang/String;)V
    .locals 0

    .line 973
    invoke-static {p0, p1, p2}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onProgress(Lcom/narvii/video/interfaces/IVideoServiceCallback;FLjava/lang/String;)V

    return-void
.end method

.method public onVideoProcessed(Ljava/lang/String;)V
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 973
    invoke-static {p0, p1}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onVideoProcessed(Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/lang/String;)V

    return-void
.end method
