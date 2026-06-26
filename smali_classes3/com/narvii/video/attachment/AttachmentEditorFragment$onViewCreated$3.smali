.class final Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$3;
.super Ljava/lang/Object;
.source "AttachmentEditorFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/attachment/AttachmentEditorFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;


# direct methods
.method constructor <init>(Lcom/narvii/video/attachment/AttachmentEditorFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$3;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 402
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 403
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$3;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    invoke-static {v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->access$getMainTimeLineComponent$p(Lcom/narvii/video/attachment/AttachmentEditorFragment;)Lcom/narvii/video/widget/MediaTimeLineComponent;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->getMediaLengthInMs()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 404
    :goto_0
    iget-object v2, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$3;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getAttachmentList$default(Lcom/narvii/video/attachment/AttachmentEditorFragment;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/video/model/BaseAttachmentInfoPack;

    .line 405
    iget v3, v2, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    iget v4, v2, Lcom/narvii/video/model/BaseClipInfoPack;->startOffsetToMainTrackInMs:I

    add-int v5, v3, v4

    if-le v5, v0, :cond_1

    add-int/2addr v4, v3

    sub-int/2addr v4, v0

    sub-int/2addr v3, v4

    .line 406
    iput v3, v2, Lcom/narvii/video/model/BaseClipInfoPack;->visibleDurationInMs:I

    goto :goto_1

    .line 409
    :cond_2
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$3;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    invoke-static {v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->access$getPreviewPlayer$p(Lcom/narvii/video/attachment/AttachmentEditorFragment;)Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCaptionList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "captionList"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$3;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    invoke-static {v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->access$getPreviewPlayer$p(Lcom/narvii/video/attachment/AttachmentEditorFragment;)Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getStickerList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "stickerList"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$3;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/narvii/app/NVFragment;->setResult(ILandroid/content/Intent;)V

    .line 412
    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$3;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method
