.class final Lcom/narvii/pip/PipEditorFragment$onViewCreated$2;
.super Ljava/lang/Object;
.source "PipEditorFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/pip/PipEditorFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/pip/PipEditorFragment;


# direct methods
.method constructor <init>(Lcom/narvii/pip/PipEditorFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/pip/PipEditorFragment$onViewCreated$2;->this$0:Lcom/narvii/pip/PipEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 85
    iget-object p1, p0, Lcom/narvii/pip/PipEditorFragment$onViewCreated$2;->this$0:Lcom/narvii/pip/PipEditorFragment;

    invoke-static {p1}, Lcom/narvii/pip/PipEditorFragment;->access$canAddPipVideo(Lcom/narvii/pip/PipEditorFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/narvii/pip/PipEditorFragment$onViewCreated$2;->this$0:Lcom/narvii/pip/PipEditorFragment;

    invoke-static {p1}, Lcom/narvii/pip/PipEditorFragment;->access$addNewPipVideo(Lcom/narvii/pip/PipEditorFragment;)V

    :cond_0
    return-void
.end method
