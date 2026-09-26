.class public final Lcom/narvii/video/SceneEditorFragment$onOptionsItemSelected$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/video/SceneEditorFragment$onOptionsItemSelected$2;->this$0:Lcom/narvii/video/SceneEditorFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onFailed(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$onOptionsItemSelected$2;->this$0:Lcom/narvii/video/SceneEditorFragment;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/narvii/video/SceneEditorFragment;->access$getFlyingTaskCount$p(Lcom/narvii/video/SceneEditorFragment;)I

    .line 6
    move-result v0

    .line 7
    .line 8
    add-int/lit8 v0, v0, -0x1

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/narvii/video/SceneEditorFragment;->access$setFlyingTaskCount$p(Lcom/narvii/video/SceneEditorFragment;I)V

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$onOptionsItemSelected$2;->this$0:Lcom/narvii/video/SceneEditorFragment;

    .line 14
    const/4 v0, 0x1

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v0}, Lcom/narvii/video/SceneEditorFragment;->access$onMediaProcessTouchDown(Lcom/narvii/video/SceneEditorFragment;Z)V

    .line 18
    return-void
.end method

.method public onProgress(F)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener$DefaultImpls;->onProgress(Lcom/narvii/video/services/SceneMediaProcessor$MediaProcessListener;F)V

    .line 4
    return-void
.end method

.method public onSuccess(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "outputList"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$onOptionsItemSelected$2;->this$0:Lcom/narvii/video/SceneEditorFragment;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/narvii/video/SceneEditorFragment;->access$getFlyingTaskCount$p(Lcom/narvii/video/SceneEditorFragment;)I

    .line 11
    move-result v0

    .line 12
    .line 13
    add-int/lit8 v0, v0, -0x1

    .line 14
    .line 15
    .line 16
    invoke-static {p1, v0}, Lcom/narvii/video/SceneEditorFragment;->access$setFlyingTaskCount$p(Lcom/narvii/video/SceneEditorFragment;I)V

    .line 17
    .line 18
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$onOptionsItemSelected$2;->this$0:Lcom/narvii/video/SceneEditorFragment;

    .line 19
    const/4 v0, 0x0

    .line 20
    .line 21
    .line 22
    invoke-static {p1, v0}, Lcom/narvii/video/SceneEditorFragment;->access$onMediaProcessTouchDown(Lcom/narvii/video/SceneEditorFragment;Z)V

    .line 23
    return-void
.end method
