.class final Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$5;
.super Ljava/lang/Object;
.source "AttachmentEditorFragment.kt"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


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

    iput-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$5;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 424
    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$5;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    invoke-virtual {p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getActiveCaption()Lcom/narvii/video/model/Caption;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 425
    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$5;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    invoke-virtual {p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getActiveCaption()Lcom/narvii/video/model/Caption;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->access$updateAttachmentCoordinate(Lcom/narvii/video/attachment/AttachmentEditorFragment;Lcom/narvii/video/model/BaseClipInfoPack;)V

    goto :goto_0

    .line 426
    :cond_0
    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$5;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    invoke-virtual {p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getActiveSticker()Lcom/narvii/video/model/StickerInfoPack;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 427
    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$5;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    invoke-virtual {p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getActiveSticker()Lcom/narvii/video/model/StickerInfoPack;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->access$updateAttachmentCoordinate(Lcom/narvii/video/attachment/AttachmentEditorFragment;Lcom/narvii/video/model/BaseClipInfoPack;)V

    :cond_1
    :goto_0
    return-void
.end method
