.class final Lcom/narvii/video/SceneEditorFragment$onPickResult$1;
.super Ljava/lang/Object;
.source "SceneEditorFragment.kt"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/SceneEditorFragment;->onPickResult(Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;)V
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
.field final synthetic $clipList:Ljava/util/ArrayList;

.field final synthetic this$0:Lcom/narvii/video/SceneEditorFragment;


# direct methods
.method constructor <init>(Lcom/narvii/video/SceneEditorFragment;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/SceneEditorFragment$onPickResult$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    iput-object p2, p0, Lcom/narvii/video/SceneEditorFragment$onPickResult$1;->$clipList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Boolean;)V
    .locals 3

    const/4 v0, 0x1

    .line 782
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 783
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$onPickResult$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    iget-object v1, p0, Lcom/narvii/video/SceneEditorFragment$onPickResult$1;->$clipList:Ljava/util/ArrayList;

    new-instance v2, Lcom/narvii/video/SceneEditorFragment$onPickResult$1$1;

    invoke-direct {v2, p0}, Lcom/narvii/video/SceneEditorFragment$onPickResult$1$1;-><init>(Lcom/narvii/video/SceneEditorFragment$onPickResult$1;)V

    invoke-virtual {p1, v1, v0, v2}, Lcom/narvii/video/BaseMediaEditorFragment;->prepareAVClipList(Ljava/util/ArrayList;ZLcom/narvii/util/Callback;)V

    goto :goto_0

    .line 796
    :cond_0
    iget-object p1, p0, Lcom/narvii/video/SceneEditorFragment$onPickResult$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    invoke-virtual {p1, v0}, Lcom/narvii/video/BaseMediaEditorFragment;->showInvalidDialog(Z)V

    :goto_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 60
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/narvii/video/SceneEditorFragment$onPickResult$1;->call(Ljava/lang/Boolean;)V

    return-void
.end method
