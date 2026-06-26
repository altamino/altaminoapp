.class final Lcom/narvii/video/SceneEditorFragment$onPickResult$1$1;
.super Ljava/lang/Object;
.source "SceneEditorFragment.kt"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/SceneEditorFragment$onPickResult$1;->call(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/SceneEditorFragment$onPickResult$1;


# direct methods
.method constructor <init>(Lcom/narvii/video/SceneEditorFragment$onPickResult$1;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/SceneEditorFragment$onPickResult$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onPickResult$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Boolean;)V
    .locals 2

    .line 784
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$onPickResult$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onPickResult$1;

    iget-object p1, p1, Lcom/narvii/video/SceneEditorFragment$onPickResult$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/narvii/video/SceneEditorFragment;->access$onEmptyStatusChanged(Lcom/narvii/video/SceneEditorFragment;Z)V

    .line 785
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$onPickResult$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onPickResult$1;

    iget-object p1, p1, Lcom/narvii/video/SceneEditorFragment$onPickResult$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    invoke-virtual {p1}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->getVideoClipInfoList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 786
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment$onPickResult$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onPickResult$1;

    iget-object v0, v0, Lcom/narvii/video/SceneEditorFragment$onPickResult$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    invoke-virtual {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->getPreviewPlayer()Lcom/narvii/video/interfaces/IPreviewPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/video/SceneEditorFragment$onPickResult$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onPickResult$1;

    iget-object v1, v1, Lcom/narvii/video/SceneEditorFragment$onPickResult$1;->$clipList:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/narvii/video/interfaces/IPreviewPlayer;->addVideoClipList(Ljava/util/ArrayList;)Lcom/narvii/video/model/AVClipInfoPack;

    .line 787
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment$onPickResult$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onPickResult$1;

    iget-object v0, v0, Lcom/narvii/video/SceneEditorFragment$onPickResult$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    invoke-static {v0}, Lcom/narvii/video/SceneEditorFragment;->access$checkSceneDuration(Lcom/narvii/video/SceneEditorFragment;)V

    .line 788
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment$onPickResult$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onPickResult$1;

    iget-object v0, v0, Lcom/narvii/video/SceneEditorFragment$onPickResult$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    invoke-static {v0}, Lcom/narvii/video/SceneEditorFragment;->access$updateAddClipButtonVisibility(Lcom/narvii/video/SceneEditorFragment;)V

    .line 789
    new-instance v0, Lcom/narvii/video/SceneEditorFragment$onPickResult$1$1$1;

    invoke-direct {v0, p0, p1}, Lcom/narvii/video/SceneEditorFragment$onPickResult$1$1$1;-><init>(Lcom/narvii/video/SceneEditorFragment$onPickResult$1$1;I)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 60
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/video/SceneEditorFragment$onPickResult$1$1;->call(Ljava/lang/Boolean;)V

    return-void
.end method
