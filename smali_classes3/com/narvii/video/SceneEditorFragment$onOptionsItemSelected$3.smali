.class public final Lcom/narvii/video/SceneEditorFragment$onOptionsItemSelected$3;
.super Ljava/lang/Object;
.source "SceneEditorFragment.kt"

# interfaces
.implements Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/SceneEditorFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/SceneEditorFragment;


# direct methods
.method constructor <init>(Lcom/narvii/video/SceneEditorFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 640
    iput-object p1, p0, Lcom/narvii/video/SceneEditorFragment$onOptionsItemSelected$3;->this$0:Lcom/narvii/video/SceneEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Z)V
    .locals 1

    .line 647
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$onOptionsItemSelected$3;->this$0:Lcom/narvii/video/SceneEditorFragment;

    invoke-static {p1}, Lcom/narvii/video/SceneEditorFragment;->access$getFlyingTaskCount$p(Lcom/narvii/video/SceneEditorFragment;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Lcom/narvii/video/SceneEditorFragment;->access$setFlyingTaskCount$p(Lcom/narvii/video/SceneEditorFragment;I)V

    .line 648
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$onOptionsItemSelected$3;->this$0:Lcom/narvii/video/SceneEditorFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/narvii/video/SceneEditorFragment;->access$onMediaProcessTouchDown(Lcom/narvii/video/SceneEditorFragment;Z)V

    return-void
.end method

.method public onProgress(F)V
    .locals 0

    .line 640
    invoke-static {p0, p1}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener$DefaultImpls;->onProgress(Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;F)V

    return-void
.end method

.method public onSuccess(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "outputList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 642
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$onOptionsItemSelected$3;->this$0:Lcom/narvii/video/SceneEditorFragment;

    invoke-static {p1}, Lcom/narvii/video/SceneEditorFragment;->access$getFlyingTaskCount$p(Lcom/narvii/video/SceneEditorFragment;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Lcom/narvii/video/SceneEditorFragment;->access$setFlyingTaskCount$p(Lcom/narvii/video/SceneEditorFragment;I)V

    .line 643
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$onOptionsItemSelected$3;->this$0:Lcom/narvii/video/SceneEditorFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/video/SceneEditorFragment;->access$onMediaProcessTouchDown(Lcom/narvii/video/SceneEditorFragment;Z)V

    return-void
.end method
