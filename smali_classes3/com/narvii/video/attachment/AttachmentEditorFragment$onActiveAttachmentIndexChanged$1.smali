.class public final Lcom/narvii/video/attachment/AttachmentEditorFragment$onActiveAttachmentIndexChanged$1;
.super Ljava/lang/Object;
.source "AttachmentEditorFragment.kt"

# interfaces
.implements Lcom/narvii/video/widget/ViceTimeLineWrapperView$IViceTimeLineEditCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/attachment/AttachmentEditorFragment;->onActiveAttachmentIndexChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAttachmentEditorFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AttachmentEditorFragment.kt\ncom/narvii/video/attachment/AttachmentEditorFragment$onActiveAttachmentIndexChanged$1\n*L\n1#1,937:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $activeAttachment:Lcom/narvii/video/model/BaseAttachmentInfoPack;

.field final synthetic $attachmentIndex:I

.field final synthetic $mode:I

.field final synthetic this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;


# direct methods
.method constructor <init>(Lcom/narvii/video/attachment/AttachmentEditorFragment;Lcom/narvii/video/model/BaseAttachmentInfoPack;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/video/model/BaseAttachmentInfoPack;",
            "II)V"
        }
    .end annotation

    .line 317
    iput-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onActiveAttachmentIndexChanged$1;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    iput-object p2, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onActiveAttachmentIndexChanged$1;->$activeAttachment:Lcom/narvii/video/model/BaseAttachmentInfoPack;

    iput p3, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onActiveAttachmentIndexChanged$1;->$attachmentIndex:I

    iput p4, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onActiveAttachmentIndexChanged$1;->$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViceTimeLineEdit(II)V
    .locals 8

    const/4 v0, -0x1

    if-eq p1, v0, :cond_7

    if-ne p2, v0, :cond_0

    goto :goto_2

    .line 322
    :cond_0
    iget-object v1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onActiveAttachmentIndexChanged$1;->$activeAttachment:Lcom/narvii/video/model/BaseAttachmentInfoPack;

    if-eqz v1, :cond_1

    iget v0, v1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->indexInMixedAttachmentList:I

    :cond_1
    iget v1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onActiveAttachmentIndexChanged$1;->$attachmentIndex:I

    if-eq v0, v1, :cond_2

    return-void

    .line 325
    :cond_2
    iget v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onActiveAttachmentIndexChanged$1;->$mode:I

    if-nez v0, :cond_3

    .line 326
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onActiveAttachmentIndexChanged$1;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    invoke-virtual {v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getActiveCaption()Lcom/narvii/video/model/Caption;

    move-result-object v0

    goto :goto_0

    .line 328
    :cond_3
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onActiveAttachmentIndexChanged$1;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    invoke-virtual {v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getActiveSticker()Lcom/narvii/video/model/StickerInfoPack;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_7

    .line 331
    iget-object v1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onActiveAttachmentIndexChanged$1;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    invoke-static {v1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->access$getMainTimeLineComponent$p(Lcom/narvii/video/attachment/AttachmentEditorFragment;)Lcom/narvii/video/widget/MediaTimeLineComponent;

    move-result-object v2

    const/4 v1, 0x0

    if-eqz v2, :cond_4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move v3, p1

    invoke-static/range {v2 .. v7}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getSectionDurationInMs$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IIZILjava/lang/Object;)I

    move-result p1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 332
    :goto_1
    iput p1, v0, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 333
    iput p2, v0, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 334
    iget p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onActiveAttachmentIndexChanged$1;->$mode:I

    const/4 p2, 0x1

    if-nez p1, :cond_5

    .line 335
    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onActiveAttachmentIndexChanged$1;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    invoke-virtual {p1, v1, v1, p2}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->onCurrentCaptionChanged(ZZZ)V

    .line 336
    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onActiveAttachmentIndexChanged$1;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    invoke-static {p1, v0, p2}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->access$refreshViceTimeline(Lcom/narvii/video/attachment/AttachmentEditorFragment;Lcom/narvii/video/model/BaseAttachmentInfoPack;Z)V

    goto :goto_2

    :cond_5
    if-ne p1, p2, :cond_7

    .line 338
    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onActiveAttachmentIndexChanged$1;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    invoke-static {p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->access$getPreviewPlayer$p(Lcom/narvii/video/attachment/AttachmentEditorFragment;)Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onActiveAttachmentIndexChanged$1;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    invoke-virtual {v1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getActiveSticker()Lcom/narvii/video/model/StickerInfoPack;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {p1, v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->resetSticker(Lcom/narvii/video/model/StickerInfoPack;)V

    .line 339
    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onActiveAttachmentIndexChanged$1;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    invoke-static {p1, v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->access$onAttachmentChanged(Lcom/narvii/video/attachment/AttachmentEditorFragment;Lcom/narvii/video/model/BaseAttachmentInfoPack;)V

    .line 340
    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onActiveAttachmentIndexChanged$1;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    invoke-static {p1, v0, p2}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->access$refreshViceTimeline(Lcom/narvii/video/attachment/AttachmentEditorFragment;Lcom/narvii/video/model/BaseAttachmentInfoPack;Z)V

    goto :goto_2

    .line 338
    :cond_6
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1

    :cond_7
    :goto_2
    return-void
.end method
