.class final Lcom/narvii/video/SceneEditorFragment$onActivityResult$3;
.super Ljava/lang/Object;
.source "SceneEditorFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/SceneEditorFragment;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $index:I

.field final synthetic this$0:Lcom/narvii/video/SceneEditorFragment;


# direct methods
.method constructor <init>(Lcom/narvii/video/SceneEditorFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/SceneEditorFragment$onActivityResult$3;->this$0:Lcom/narvii/video/SceneEditorFragment;

    iput p2, p0, Lcom/narvii/video/SceneEditorFragment$onActivityResult$3;->$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1105
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment$onActivityResult$3;->this$0:Lcom/narvii/video/SceneEditorFragment;

    iget v1, p0, Lcom/narvii/video/SceneEditorFragment$onActivityResult$3;->$index:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/narvii/video/ScrollingTimeLineFragment;->updateVideoTimeLineInfo(ZI)V

    .line 1106
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment$onActivityResult$3;->this$0:Lcom/narvii/video/SceneEditorFragment;

    iget v1, p0, Lcom/narvii/video/SceneEditorFragment$onActivityResult$3;->$index:I

    invoke-virtual {v0, v1, v2}, Lcom/narvii/video/BaseMediaEditorFragment;->safeSeekTo(II)V

    return-void
.end method
