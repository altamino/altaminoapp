.class final Lcom/narvii/video/SceneEditorFragment$onActivityResult$2;
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
.field final synthetic this$0:Lcom/narvii/video/SceneEditorFragment;


# direct methods
.method constructor <init>(Lcom/narvii/video/SceneEditorFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/SceneEditorFragment$onActivityResult$2;->this$0:Lcom/narvii/video/SceneEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1083
    iget-object v0, p0, Lcom/narvii/video/SceneEditorFragment$onActivityResult$2;->this$0:Lcom/narvii/video/SceneEditorFragment;

    invoke-virtual {v0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getMainTimeLineComponent()Lcom/narvii/video/widget/MediaTimeLineComponent;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/narvii/video/SceneEditorFragment$onActivityResult$2;->this$0:Lcom/narvii/video/SceneEditorFragment;

    invoke-virtual {v2}, Lcom/narvii/video/BaseMediaEditorFragment;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v2, v2, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/narvii/video/widget/MediaTimeLineComponent;->scrollTimeLineToClip$default(Lcom/narvii/video/widget/MediaTimeLineComponent;IIZILjava/lang/Object;)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    if-ltz v1, :cond_4

    .line 1086
    iget-object v2, p0, Lcom/narvii/video/SceneEditorFragment$onActivityResult$2;->this$0:Lcom/narvii/video/SceneEditorFragment;

    invoke-virtual {v2}, Lcom/narvii/video/ScrollingTimeLineFragment;->getVideoPlaybackTimeText()Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponentKt;->convertMillisToTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1087
    :cond_2
    iget-object v1, p0, Lcom/narvii/video/SceneEditorFragment$onActivityResult$2;->this$0:Lcom/narvii/video/SceneEditorFragment;

    invoke-virtual {v1}, Lcom/narvii/video/BaseMediaEditorFragment;->getActiveVideoClip()Lcom/narvii/video/model/AVClipInfoPack;

    move-result-object v2

    if-eqz v2, :cond_3

    iget v0, v2, Lcom/narvii/video/model/BaseClipInfoPack;->indexInScene:I

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/narvii/video/BaseMediaEditorFragment;->safeSeekTo(II)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0

    :cond_4
    :goto_1
    return-void
.end method
