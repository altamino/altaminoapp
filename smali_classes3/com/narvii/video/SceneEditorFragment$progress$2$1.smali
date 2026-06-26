.class final Lcom/narvii/video/SceneEditorFragment$progress$2$1;
.super Ljava/lang/Object;
.source "SceneEditorFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/SceneEditorFragment$progress$2;->invoke()Lcom/narvii/util/dialog/ProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSceneEditorFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SceneEditorFragment.kt\ncom/narvii/video/SceneEditorFragment$progress$2$1\n*L\n1#1,1192:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/SceneEditorFragment$progress$2;


# direct methods
.method constructor <init>(Lcom/narvii/video/SceneEditorFragment$progress$2;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/SceneEditorFragment$progress$2$1;->this$0:Lcom/narvii/video/SceneEditorFragment$progress$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 84
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$progress$2$1;->this$0:Lcom/narvii/video/SceneEditorFragment$progress$2;

    iget-object p1, p1, Lcom/narvii/video/SceneEditorFragment$progress$2;->this$0:Lcom/narvii/video/SceneEditorFragment;

    invoke-static {p1}, Lcom/narvii/video/SceneEditorFragment;->access$getPreviewVideoGeneratingTask$p(Lcom/narvii/video/SceneEditorFragment;)Lffmpeg/base/MediaEditingConfig;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment$progress$2$1;->this$0:Lcom/narvii/video/SceneEditorFragment$progress$2;

    iget-object v0, v0, Lcom/narvii/video/SceneEditorFragment$progress$2;->this$0:Lcom/narvii/video/SceneEditorFragment;

    invoke-virtual {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->getVideoManager()Lcom/narvii/video/services/VideoManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/narvii/video/services/VideoManager;->abort(Lffmpeg/base/MediaEditingConfig;)V

    :cond_0
    return-void
.end method
