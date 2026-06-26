.class final Lcom/narvii/video/SceneEditorFragment$doExit$2;
.super Ljava/lang/Object;
.source "SceneEditorFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/SceneEditorFragment;->doExit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/SceneEditorFragment;


# direct methods
.method constructor <init>(Lcom/narvii/video/SceneEditorFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/SceneEditorFragment$doExit$2;->this$0:Lcom/narvii/video/SceneEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p2, :cond_0

    goto :goto_0

    .line 374
    :cond_0
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$doExit$2;->this$0:Lcom/narvii/video/SceneEditorFragment;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/narvii/app/NVFragment;->setResult(I)V

    .line 375
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$doExit$2;->this$0:Lcom/narvii/video/SceneEditorFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    :goto_0
    return-void
.end method
