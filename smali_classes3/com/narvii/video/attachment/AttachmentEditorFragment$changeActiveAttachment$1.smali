.class final Lcom/narvii/video/attachment/AttachmentEditorFragment$changeActiveAttachment$1;
.super Ljava/lang/Object;
.source "AttachmentEditorFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/attachment/AttachmentEditorFragment;->changeActiveAttachment(ILcom/narvii/video/model/BaseAttachmentInfoPack;)V
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

    iput-object p1, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$changeActiveAttachment$1;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/narvii/video/attachment/AttachmentEditorFragment$changeActiveAttachment$1;->this$0:Lcom/narvii/video/attachment/AttachmentEditorFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/narvii/video/attachment/AttachmentEditorFragment;->access$onActiveAttachmentIndexChanged(Lcom/narvii/video/attachment/AttachmentEditorFragment;I)V

    return-void
.end method
