.class final Lcom/narvii/video/AudioEditorFragment$onTimeLineClicked$2;
.super Ljava/lang/Object;
.source "AudioEditorFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/AudioEditorFragment;->onTimeLineClicked(Lcom/narvii/video/interfaces/ITimelineClip;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/AudioEditorFragment;


# direct methods
.method constructor <init>(Lcom/narvii/video/AudioEditorFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/AudioEditorFragment$onTimeLineClicked$2;->this$0:Lcom/narvii/video/AudioEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 310
    iget-object v0, p0, Lcom/narvii/video/AudioEditorFragment$onTimeLineClicked$2;->this$0:Lcom/narvii/video/AudioEditorFragment;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v2, v1, v3, v4}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus$default(Lcom/narvii/video/BaseMediaEditorFragment;ZZILjava/lang/Object;)V

    .line 311
    iget-object v0, p0, Lcom/narvii/video/AudioEditorFragment$onTimeLineClicked$2;->this$0:Lcom/narvii/video/AudioEditorFragment;

    invoke-virtual {v0, v1}, Lcom/narvii/video/BaseMediaEditorFragment;->setAutoPlaying(Z)V

    .line 312
    iget-object v0, p0, Lcom/narvii/video/AudioEditorFragment$onTimeLineClicked$2;->this$0:Lcom/narvii/video/AudioEditorFragment;

    sget v2, Lcom/narvii/mediaeditor/R$id;->video_volume_panel:I

    invoke-virtual {v0, v2}, Lcom/narvii/video/AudioEditorFragment;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const-string v2, "video_volume_panel"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
