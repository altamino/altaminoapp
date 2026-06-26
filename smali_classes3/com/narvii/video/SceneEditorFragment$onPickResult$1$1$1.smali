.class final Lcom/narvii/video/SceneEditorFragment$onPickResult$1$1$1;
.super Ljava/lang/Object;
.source "SceneEditorFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/SceneEditorFragment$onPickResult$1$1;->call(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $previousClipListSize:I

.field final synthetic this$0:Lcom/narvii/video/SceneEditorFragment$onPickResult$1$1;


# direct methods
.method constructor <init>(Lcom/narvii/video/SceneEditorFragment$onPickResult$1$1;I)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/SceneEditorFragment$onPickResult$1$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onPickResult$1$1;

    iput p2, p0, Lcom/narvii/video/SceneEditorFragment$onPickResult$1$1$1;->$previousClipListSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 790
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment$onPickResult$1$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onPickResult$1$1;

    iget-object v0, v0, Lcom/narvii/video/SceneEditorFragment$onPickResult$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onPickResult$1;

    iget-object v0, v0, Lcom/narvii/video/SceneEditorFragment$onPickResult$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    iget v1, p0, Lcom/narvii/video/SceneEditorFragment$onPickResult$1$1$1;->$previousClipListSize:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/narvii/video/ScrollingTimeLineFragment;->updateVideoTimeLineInfo(ZI)V

    .line 791
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment$onPickResult$1$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onPickResult$1$1;

    iget-object v0, v0, Lcom/narvii/video/SceneEditorFragment$onPickResult$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onPickResult$1;

    iget-object v0, v0, Lcom/narvii/video/SceneEditorFragment$onPickResult$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    invoke-virtual {v0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTimeLineComponent()Lcom/narvii/video/widget/MediaTimeLineComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/narvii/video/widget/MediaTimeLineComponent;->refreshTimeLine()V

    .line 792
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment$onPickResult$1$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onPickResult$1$1;

    iget-object v0, v0, Lcom/narvii/video/SceneEditorFragment$onPickResult$1$1;->this$0:Lcom/narvii/video/SceneEditorFragment$onPickResult$1;

    iget-object v0, v0, Lcom/narvii/video/SceneEditorFragment$onPickResult$1;->this$0:Lcom/narvii/video/SceneEditorFragment;

    invoke-virtual {v0}, Lcom/narvii/video/BaseMediaEditorFragment;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v1, v1, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    invoke-virtual {v0, v1, v2}, Lcom/narvii/video/BaseMediaEditorFragment;->safeSeekTo(II)V

    return-void

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v0, 0x0

    throw v0
.end method
