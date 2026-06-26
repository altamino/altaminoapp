.class final Lcom/narvii/video/BaseMediaEditorFragment$showInvalidDialog$1;
.super Ljava/lang/Object;
.source "BaseMediaEditorFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/BaseMediaEditorFragment;->showInvalidDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $forceExit:Z

.field final synthetic this$0:Lcom/narvii/video/BaseMediaEditorFragment;


# direct methods
.method constructor <init>(Lcom/narvii/video/BaseMediaEditorFragment;Z)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment$showInvalidDialog$1;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    iput-boolean p2, p0, Lcom/narvii/video/BaseMediaEditorFragment$showInvalidDialog$1;->$forceExit:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 574
    iget-boolean p1, p0, Lcom/narvii/video/BaseMediaEditorFragment$showInvalidDialog$1;->$forceExit:Z

    if-eqz p1, :cond_0

    .line 575
    iget-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment$showInvalidDialog$1;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->setResult(I)V

    .line 576
    iget-object p1, p0, Lcom/narvii/video/BaseMediaEditorFragment$showInvalidDialog$1;->this$0:Lcom/narvii/video/BaseMediaEditorFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    :cond_0
    return-void
.end method
