.class public final Lcom/narvii/video/attachment/AttachmentEditorFragment$onActiveAttachmentIndexChanged$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

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


# instance fields
.field final synthetic $activeAttachment:Lcom/narvii/video/model/BaseAttachmentInfoPack;

.field final synthetic $attachmentIndex:I

.field final synthetic $mode:I

.field final synthetic this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;


# direct methods
.method constructor <init>(Lcom/narvii/video/model/BaseAttachmentInfoPack;IILcom/narvii/video/attachment/AttachmentEditorFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onActiveAttachmentIndexChanged$1$1;->$activeAttachment:Lcom/narvii/video/model/BaseAttachmentInfoPack;

    .line 3
    .line 4
    iput p2, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onActiveAttachmentIndexChanged$1$1;->$attachmentIndex:I

    .line 5
    .line 6
    iput p3, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onActiveAttachmentIndexChanged$1$1;->$mode:I

    .line 7
    .line 8
    iput-object p4, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onActiveAttachmentIndexChanged$1$1;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public onViceTimeLineEdit(II)V
    .locals 10

    .line 1
    const/4 v0, -0x1

    .line 2
    .line 3
    if-eq p1, v0, :cond_7

    .line 4
    .line 5
    if-ne p2, v0, :cond_0

    .line 6
    goto :goto_2

    .line 7
    .line 8
    :cond_0
    iget-object v1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onActiveAttachmentIndexChanged$1$1;->$activeAttachment:Lcom/narvii/video/model/BaseAttachmentInfoPack;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    iget v0, v1, Lcom/narvii/video/model/BaseAttachmentInfoPack;->indexInMixedAttachmentList:I

    .line 13
    .line 14
    :cond_1
    iget v1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onActiveAttachmentIndexChanged$1$1;->$attachmentIndex:I

    .line 15
    .line 16
    if-eq v0, v1, :cond_2

    .line 17
    return-void

    .line 18
    .line 19
    :cond_2
    iget v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onActiveAttachmentIndexChanged$1$1;->$mode:I

    .line 20
    .line 21
    if-nez v0, :cond_3

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onActiveAttachmentIndexChanged$1$1;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getActiveCaption()Lcom/narvii/video/model/Caption;

    .line 27
    move-result-object v0

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_3
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onActiveAttachmentIndexChanged$1$1;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getActiveSticker()Lcom/narvii/video/model/StickerInfoPack;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    :goto_0
    if-eqz v0, :cond_7

    .line 37
    .line 38
    iget-object v1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onActiveAttachmentIndexChanged$1$1;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    .line 39
    .line 40
    iget v2, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onActiveAttachmentIndexChanged$1$1;->$mode:I

    .line 41
    .line 42
    .line 43
    invoke-static {v1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->access$getMainTimeLineComponent(Lcom/narvii/video/attachment/AttachmentEditorFragment;)Lcom/narvii/video/widget/MediaTimeLineComponent;

    .line 44
    move-result-object v3

    .line 45
    const/4 v9, 0x0

    .line 46
    .line 47
    if-eqz v3, :cond_4

    .line 48
    const/4 v5, 0x0

    .line 49
    const/4 v6, 0x0

    .line 50
    const/4 v7, 0x2

    .line 51
    const/4 v8, 0x0

    .line 52
    move v4, p1

    .line 53
    .line 54
    .line 55
    invoke-static/range {v3 .. v8}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getSectionDurationInMs$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IIZILjava/lang/Object;)I

    .line 56
    move-result p1

    .line 57
    goto :goto_1

    .line 58
    :cond_4
    move p1, v9

    .line 59
    .line 60
    :goto_1
    iput p1, v0, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    .line 61
    .line 62
    iput p2, v0, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    .line 63
    const/4 p1, 0x1

    .line 64
    .line 65
    if-eqz v2, :cond_6

    .line 66
    .line 67
    if-eq v2, p1, :cond_5

    .line 68
    goto :goto_2

    .line 69
    .line 70
    .line 71
    :cond_5
    invoke-static {v1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->access$getPreviewPlayer(Lcom/narvii/video/attachment/AttachmentEditorFragment;)Lcom/narvii/video/interfaces/IPreviewPlayer;

    .line 72
    move-result-object p2

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getActiveSticker()Lcom/narvii/video/model/StickerInfoPack;

    .line 76
    move-result-object v2

    .line 77
    .line 78
    .line 79
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    invoke-interface {p2, v2}, Lcom/narvii/video/interfaces/IPreviewPlayer;->resetSticker(Lcom/narvii/video/model/StickerInfoPack;)V

    .line 83
    .line 84
    .line 85
    invoke-static {v1, v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->access$onAttachmentChanged(Lcom/narvii/video/attachment/AttachmentEditorFragment;Lcom/narvii/video/model/BaseAttachmentInfoPack;)V

    .line 86
    .line 87
    .line 88
    invoke-static {v1, v0, p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->access$refreshViceTimeline(Lcom/narvii/video/attachment/AttachmentEditorFragment;Lcom/narvii/video/model/BaseAttachmentInfoPack;Z)V

    .line 89
    goto :goto_2

    .line 90
    .line 91
    .line 92
    :cond_6
    invoke-virtual {v1, v9, v9, p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->onCurrentCaptionChanged(ZZZ)V

    .line 93
    .line 94
    .line 95
    invoke-static {v1, v0, p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->access$refreshViceTimeline(Lcom/narvii/video/attachment/AttachmentEditorFragment;Lcom/narvii/video/model/BaseAttachmentInfoPack;Z)V

    .line 96
    :cond_7
    :goto_2
    return-void
.end method
