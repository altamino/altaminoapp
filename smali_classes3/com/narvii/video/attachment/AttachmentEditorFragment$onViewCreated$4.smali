.class final Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$4;
.super Ljava/lang/Object;
.source "AttachmentEditorFragment.kt"

# interfaces
.implements Lcom/narvii/video/attachment/DrawRectView$onDrawRectClickListener;


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

    iput-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$4;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDrawRectClick(I)V
    .locals 4

    if-nez p1, :cond_0

    .line 416
    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$4;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    invoke-virtual {p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->getSelectedThisEventSequence()Z

    move-result p1

    if-nez p1, :cond_0

    .line 417
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$4;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    invoke-static {p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->access$getLastClickTime$p(Lcom/narvii/video/attachment/AttachmentEditorFragment;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const/16 p1, 0x1f4

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 418
    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$4;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->access$setLastClickTime$p(Lcom/narvii/video/attachment/AttachmentEditorFragment;J)V

    .line 419
    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$4;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    invoke-virtual {p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->editCurrentCaptionText()V

    :cond_0
    return-void
.end method
