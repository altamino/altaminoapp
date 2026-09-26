.class public final Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$6;
.super Ljava/lang/Object;
.source "SourceFile"

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


# instance fields
.field final synthetic this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;


# direct methods
.method constructor <init>(Lcom/narvii/video/attachment/AttachmentEditorFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$6;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onBeyondDrawRectClick(I)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$6;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->resetViewsWhenEditing()V

    .line 6
    return-void
.end method

.method public onDel(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$6;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->access$removeCurrentAttachment(Lcom/narvii/video/attachment/AttachmentEditorFragment;I)V

    .line 6
    return-void
.end method

.method public onDrag(Landroid/graphics/PointF;Landroid/graphics/PointF;I)V
    .locals 3
    .param p1    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$6;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->access$getPreviewPlayer(Lcom/narvii/video/attachment/AttachmentEditorFragment;)Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->mapViewToCanonical(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$6;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->access$getPreviewPlayer(Lcom/narvii/video/attachment/AttachmentEditorFragment;)Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, p2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->mapViewToCanonical(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    if-eqz p1, :cond_3

    .line 23
    .line 24
    if-nez p2, :cond_0

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    .line 28
    .line 29
    iget v1, p2, Landroid/graphics/PointF;->x:F

    .line 30
    .line 31
    iget v2, p1, Landroid/graphics/PointF;->x:F

    .line 32
    sub-float/2addr v1, v2

    .line 33
    .line 34
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 35
    .line 36
    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 37
    sub-float/2addr p2, p1

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, v1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 41
    .line 42
    if-eqz p3, :cond_2

    .line 43
    const/4 p1, 0x1

    .line 44
    .line 45
    if-eq p3, p1, :cond_1

    .line 46
    goto :goto_0

    .line 47
    .line 48
    :cond_1
    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$6;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getActiveSticker()Lcom/narvii/video/model/StickerInfoPack;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    iget-object p2, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$6;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    .line 57
    .line 58
    .line 59
    invoke-static {p2}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->access$getPreviewPlayer(Lcom/narvii/video/attachment/AttachmentEditorFragment;)Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 60
    move-result-object p3

    .line 61
    .line 62
    .line 63
    invoke-interface {p3, p1, v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->translateSticker(Lcom/narvii/video/model/StickerInfoPack;Landroid/graphics/PointF;)V

    .line 64
    .line 65
    .line 66
    invoke-static {p2, p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->access$onAttachmentChanged(Lcom/narvii/video/attachment/AttachmentEditorFragment;Lcom/narvii/video/model/BaseAttachmentInfoPack;)V

    .line 67
    goto :goto_0

    .line 68
    .line 69
    :cond_2
    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$6;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getActiveCaption()Lcom/narvii/video/model/Caption;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    if-eqz p1, :cond_3

    .line 76
    .line 77
    iget-object p2, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$6;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    .line 78
    .line 79
    .line 80
    invoke-static {p2}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->access$getPreviewPlayer(Lcom/narvii/video/attachment/AttachmentEditorFragment;)Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 81
    move-result-object p3

    .line 82
    .line 83
    .line 84
    invoke-interface {p3, p1, v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->translateCaption(Lcom/narvii/video/model/Caption;Landroid/graphics/PointF;)V

    .line 85
    .line 86
    .line 87
    invoke-static {p2}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->access$notifyCaptionChanged(Lcom/narvii/video/attachment/AttachmentEditorFragment;)V

    .line 88
    :cond_3
    :goto_0
    return-void
.end method

.method public onEdit(I)V
    .locals 3

    .line 1
    .line 2
    if-eqz p1, :cond_2

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    goto :goto_1

    .line 7
    .line 8
    :cond_0
    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$6;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getActiveSticker()Lcom/narvii/video/model/StickerInfoPack;

    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/narvii/video/model/StickerInfoPack;->copy()Lcom/narvii/video/model/StickerInfoPack;

    .line 19
    move-result-object v1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    move-object v1, v2

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-static {p1, v1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->access$setOrgActiveStickerBeforeEditing$p(Lcom/narvii/video/attachment/AttachmentEditorFragment;Lcom/narvii/video/model/StickerInfoPack;)V

    .line 25
    .line 26
    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$6;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    .line 27
    const/4 v1, 0x0

    .line 28
    .line 29
    .line 30
    invoke-static {p1, v1, v0, v2}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->openStickerPickerTab$default(Lcom/narvii/video/attachment/AttachmentEditorFragment;ZILjava/lang/Object;)V

    .line 31
    goto :goto_1

    .line 32
    .line 33
    :cond_2
    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$6;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->access$editCurrentCaption(Lcom/narvii/video/attachment/AttachmentEditorFragment;)V

    .line 37
    :goto_1
    return-void
.end method

.method public onHorizFlipClick(I)V
    .locals 0

    return-void
.end method

.method public onScaleAndRotate(FLandroid/graphics/PointF;FI)V
    .locals 2
    .param p2    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$6;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->access$getPreviewPlayer(Lcom/narvii/video/attachment/AttachmentEditorFragment;)Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->mapViewToCanonical(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    if-eqz p4, :cond_1

    .line 13
    const/4 v0, 0x1

    .line 14
    .line 15
    if-eq p4, v0, :cond_0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    iget-object p4, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$6;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p4}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getActiveSticker()Lcom/narvii/video/model/StickerInfoPack;

    .line 22
    move-result-object p4

    .line 23
    .line 24
    if-eqz p4, :cond_2

    .line 25
    .line 26
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$6;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->access$getPreviewPlayer(Lcom/narvii/video/attachment/AttachmentEditorFragment;)Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-interface {v1, p4, p1, p2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->scaleSticker(Lcom/narvii/video/model/StickerInfoPack;FLandroid/graphics/PointF;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->access$getPreviewPlayer(Lcom/narvii/video/attachment/AttachmentEditorFragment;)Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    .line 40
    invoke-interface {p1, p4, p3}, Lcom/narvii/video/interfaces/IPreviewPlayer;->rotateSticker(Lcom/narvii/video/model/StickerInfoPack;F)V

    .line 41
    .line 42
    .line 43
    invoke-static {v0, p4}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->access$onAttachmentChanged(Lcom/narvii/video/attachment/AttachmentEditorFragment;Lcom/narvii/video/model/BaseAttachmentInfoPack;)V

    .line 44
    goto :goto_0

    .line 45
    .line 46
    :cond_1
    iget-object p4, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$6;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p4}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getActiveCaption()Lcom/narvii/video/model/Caption;

    .line 50
    move-result-object p4

    .line 51
    .line 52
    if-eqz p4, :cond_2

    .line 53
    .line 54
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$6;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    .line 55
    .line 56
    .line 57
    invoke-static {v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->access$getPreviewPlayer(Lcom/narvii/video/attachment/AttachmentEditorFragment;)Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 58
    move-result-object v1

    .line 59
    .line 60
    .line 61
    invoke-interface {v1, p4, p1, p2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->scaleCaption(Lcom/narvii/video/model/Caption;FLandroid/graphics/PointF;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->access$getPreviewPlayer(Lcom/narvii/video/attachment/AttachmentEditorFragment;)Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    .line 68
    invoke-interface {p1, p4, p3}, Lcom/narvii/video/interfaces/IPreviewPlayer;->rotateCaption(Lcom/narvii/video/model/Caption;F)V

    .line 69
    .line 70
    .line 71
    invoke-static {v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->access$notifyCaptionChanged(Lcom/narvii/video/attachment/AttachmentEditorFragment;)V

    .line 72
    :cond_2
    :goto_0
    return-void
.end method

.method public onTouchDown(Landroid/graphics/PointF;I)V
    .locals 1
    .param p1    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string p2, "curPoint"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p2, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$6;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->setSelectedThisEventSequence(Z)V

    .line 12
    .line 13
    iget-object p2, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$6;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->selectAttachmentByHandClick(Landroid/graphics/PointF;)V

    .line 17
    return-void
.end method
