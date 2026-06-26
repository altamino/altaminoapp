.class public final Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$6;
.super Ljava/lang/Object;
.source "AttachmentEditorFragment.kt"

# interfaces
.implements Lcom/narvii/video/attachment/DrawRectView$OnDrawRectTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/attachment/AttachmentEditorFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAttachmentEditorFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AttachmentEditorFragment.kt\ncom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$6\n*L\n1#1,937:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;


# direct methods
.method constructor <init>(Lcom/narvii/video/attachment/AttachmentEditorFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 430
    iput-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$6;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeyondDrawRectClick(I)V
    .locals 0

    .line 485
    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$6;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    invoke-virtual {p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->resetViewsWhenEditing()V

    return-void
.end method

.method public onDel(I)V
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$6;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    invoke-static {v0, p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->access$removeCurrentAttachment(Lcom/narvii/video/attachment/AttachmentEditorFragment;I)V

    return-void
.end method

.method public onDrag(Landroid/graphics/PointF;Landroid/graphics/PointF;I)V
    .locals 3

    .line 432
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$6;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    invoke-static {v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->access$getPreviewPlayer$p(Lcom/narvii/video/attachment/AttachmentEditorFragment;)Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->mapViewToCanonical(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    .line 433
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$6;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    invoke-static {v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->access$getPreviewPlayer$p(Lcom/narvii/video/attachment/AttachmentEditorFragment;)Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->mapViewToCanonical(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 437
    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, p1

    invoke-direct {v0, v1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    if-nez p3, :cond_1

    .line 439
    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$6;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    invoke-virtual {p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getActiveCaption()Lcom/narvii/video/model/Caption;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 440
    iget-object p2, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$6;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    invoke-static {p2}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->access$getPreviewPlayer$p(Lcom/narvii/video/attachment/AttachmentEditorFragment;)Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p2

    invoke-interface {p2, p1, v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->translateCaption(Lcom/narvii/video/model/Caption;Landroid/graphics/PointF;)V

    .line 441
    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$6;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    invoke-static {p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->access$notifyCaptionChanged(Lcom/narvii/video/attachment/AttachmentEditorFragment;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    if-ne p3, p1, :cond_2

    .line 444
    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$6;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    invoke-virtual {p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getActiveSticker()Lcom/narvii/video/model/StickerInfoPack;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 445
    iget-object p2, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$6;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    invoke-static {p2}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->access$getPreviewPlayer$p(Lcom/narvii/video/attachment/AttachmentEditorFragment;)Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p2

    invoke-interface {p2, p1, v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->translateSticker(Lcom/narvii/video/model/StickerInfoPack;Landroid/graphics/PointF;)V

    .line 446
    iget-object p2, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$6;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    invoke-static {p2, p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->access$onAttachmentChanged(Lcom/narvii/video/attachment/AttachmentEditorFragment;Lcom/narvii/video/model/BaseAttachmentInfoPack;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onEdit(I)V
    .locals 3

    if-nez p1, :cond_0

    .line 474
    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$6;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    invoke-static {p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->access$editCurrentCaption(Lcom/narvii/video/attachment/AttachmentEditorFragment;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 476
    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$6;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    invoke-virtual {p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getActiveSticker()Lcom/narvii/video/model/StickerInfoPack;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/narvii/video/model/StickerInfoPack;->copy()Lcom/narvii/video/model/StickerInfoPack;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-static {p1, v1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->access$setOrgActiveStickerBeforeEditing$p(Lcom/narvii/video/attachment/AttachmentEditorFragment;Lcom/narvii/video/model/StickerInfoPack;)V

    .line 477
    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$6;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->openStickerPickerTab$default(Lcom/narvii/video/attachment/AttachmentEditorFragment;ZILjava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onHorizFlipClick(I)V
    .locals 0

    return-void
.end method

.method public onScaleAndRotate(FLandroid/graphics/PointF;FI)V
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$6;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    invoke-static {v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->access$getPreviewPlayer$p(Lcom/narvii/video/attachment/AttachmentEditorFragment;)Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->mapViewToCanonical(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p2

    if-nez p4, :cond_0

    .line 454
    iget-object p4, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$6;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    invoke-virtual {p4}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getActiveCaption()Lcom/narvii/video/model/Caption;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 455
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$6;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    invoke-static {v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->access$getPreviewPlayer$p(Lcom/narvii/video/attachment/AttachmentEditorFragment;)Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0, p4, p1, p2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->scaleCaption(Lcom/narvii/video/model/Caption;FLandroid/graphics/PointF;)V

    .line 456
    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$6;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    invoke-static {p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->access$getPreviewPlayer$p(Lcom/narvii/video/attachment/AttachmentEditorFragment;)Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p1

    invoke-interface {p1, p4, p3}, Lcom/narvii/video/interfaces/IPreviewPlayer;->rotateCaption(Lcom/narvii/video/model/Caption;F)V

    .line 457
    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$6;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    invoke-static {p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->access$notifyCaptionChanged(Lcom/narvii/video/attachment/AttachmentEditorFragment;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p4, v0, :cond_1

    .line 460
    iget-object p4, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$6;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    invoke-virtual {p4}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getActiveSticker()Lcom/narvii/video/model/StickerInfoPack;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 461
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$6;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    invoke-static {v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->access$getPreviewPlayer$p(Lcom/narvii/video/attachment/AttachmentEditorFragment;)Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0, p4, p1, p2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->scaleSticker(Lcom/narvii/video/model/StickerInfoPack;FLandroid/graphics/PointF;)V

    .line 462
    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$6;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    invoke-static {p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->access$getPreviewPlayer$p(Lcom/narvii/video/attachment/AttachmentEditorFragment;)Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p1

    invoke-interface {p1, p4, p3}, Lcom/narvii/video/interfaces/IPreviewPlayer;->rotateSticker(Lcom/narvii/video/model/StickerInfoPack;F)V

    .line 463
    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$6;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    invoke-static {p1, p4}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->access$onAttachmentChanged(Lcom/narvii/video/attachment/AttachmentEditorFragment;Lcom/narvii/video/model/BaseAttachmentInfoPack;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTouchDown(Landroid/graphics/PointF;I)V
    .locals 1

    const-string p2, "curPoint"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 489
    iget-object p2, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$6;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->setSelectedThisEventSequence(Z)V

    .line 490
    iget-object p2, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$6;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    invoke-virtual {p2, p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->selectAttachmentByHandClick(Landroid/graphics/PointF;)V

    return-void
.end method
