.class final Lcom/narvii/pip/PipEditorFragment$showEditView$1$1;
.super Ljava/lang/Object;
.source "PipEditorFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/pip/PipEditorFragment$showEditView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/pip/PipEditorFragment$showEditView$1;


# direct methods
.method constructor <init>(Lcom/narvii/pip/PipEditorFragment$showEditView$1;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/pip/PipEditorFragment$showEditView$1$1;->this$0:Lcom/narvii/pip/PipEditorFragment$showEditView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/narvii/pip/PipEditorFragment$showEditView$1$1;->this$0:Lcom/narvii/pip/PipEditorFragment$showEditView$1;

    iget-object v0, v0, Lcom/narvii/pip/PipEditorFragment$showEditView$1;->this$0:Lcom/narvii/pip/PipEditorFragment;

    invoke-static {v0}, Lcom/narvii/pip/PipEditorFragment;->access$getPreviewPlayer$p(Lcom/narvii/pip/PipEditorFragment;)Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/pip/PipEditorFragment$showEditView$1$1;->this$0:Lcom/narvii/pip/PipEditorFragment$showEditView$1;

    iget-object v1, v1, Lcom/narvii/pip/PipEditorFragment$showEditView$1;->this$0:Lcom/narvii/pip/PipEditorFragment;

    invoke-static {v1}, Lcom/narvii/pip/PipEditorFragment;->access$getPreviewPlayer$p(Lcom/narvii/pip/PipEditorFragment;)Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getCurrentVideoPositionInTimeline()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->seekTimeLineTo(I)V

    return-void
.end method
