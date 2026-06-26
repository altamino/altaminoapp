.class public final Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder$setData$1;
.super Ljava/lang/Object;
.source "ClipFastSwitchingPanel.kt"

# interfaces
.implements Lcom/narvii/video/interfaces/IVideoServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder;->setData(Lcom/narvii/video/model/AVClipInfoPack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder;


# direct methods
.method constructor <init>(Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder$setData$1;->this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionCancelled()V
    .locals 0

    .line 129
    invoke-static {p0}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onActionCancelled(Lcom/narvii/video/interfaces/IVideoServiceCallback;)V

    return-void
.end method

.method public onActionFailed(Ljava/lang/Exception;)V
    .locals 0

    .line 129
    invoke-static {p0, p1}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onActionFailed(Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/lang/Exception;)V

    return-void
.end method

.method public onActionStarted()V
    .locals 0

    .line 129
    invoke-static {p0}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onActionStarted(Lcom/narvii/video/interfaces/IVideoServiceCallback;)V

    return-void
.end method

.method public onExecutingTaskChanged(Lffmpeg/base/MediaEditingConfig;)V
    .locals 1

    const-string v0, "newTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-static {p0, p1}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onExecutingTaskChanged(Lcom/narvii/video/interfaces/IVideoServiceCallback;Lffmpeg/base/MediaEditingConfig;)V

    return-void
.end method

.method public onFrameBitmapLoaded(ILandroid/graphics/Bitmap;)V
    .locals 1

    .line 131
    iget-object p1, p0, Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder$setData$1;->this$0:Lcom/narvii/video/widget/ClipFastSwitchingPanel$SwitchingPanelHolder;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/narvii/mediaeditor/R$id;->clip_thumbnail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onFramePicturesLoaded(ILjava/io/File;)V
    .locals 0

    .line 129
    invoke-static {p0, p1, p2}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onFramePicturesLoaded(Lcom/narvii/video/interfaces/IVideoServiceCallback;ILjava/io/File;)V

    return-void
.end method

.method public onProgress(FLjava/lang/String;)V
    .locals 0

    .line 129
    invoke-static {p0, p1, p2}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onProgress(Lcom/narvii/video/interfaces/IVideoServiceCallback;FLjava/lang/String;)V

    return-void
.end method

.method public onVideoProcessed(Ljava/lang/String;)V
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-static {p0, p1}, Lcom/narvii/video/interfaces/IVideoServiceCallback$DefaultImpls;->onVideoProcessed(Lcom/narvii/video/interfaces/IVideoServiceCallback;Ljava/lang/String;)V

    return-void
.end method
