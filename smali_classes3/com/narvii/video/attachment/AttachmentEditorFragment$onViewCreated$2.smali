.class final Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$2;
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

    iput-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$2;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 397
    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$2;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v1, v0, v2, v3}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus$default(Lcom/narvii/video/BaseMediaEditorFragment;ZZILjava/lang/Object;)V

    .line 398
    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$2;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    invoke-static {p1, v0}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->access$setAutoPlaying$p(Lcom/narvii/video/attachment/AttachmentEditorFragment;Z)V

    .line 399
    iget-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$onViewCreated$2;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    invoke-static {p1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->access$addSticker(Lcom/narvii/video/attachment/AttachmentEditorFragment;)V

    return-void
.end method
