.class final Lcom/narvii/video/ScrollingTimeLineFragment$onReplayTriggered$1;
.super Ljava/lang/Object;
.source "ScrollingTimeLineFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/video/ScrollingTimeLineFragment;->onReplayTriggered(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/ScrollingTimeLineFragment;


# direct methods
.method constructor <init>(Lcom/narvii/video/ScrollingTimeLineFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/video/ScrollingTimeLineFragment$onReplayTriggered$1;->this$0:Lcom/narvii/video/ScrollingTimeLineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 261
    iget-object v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment$onReplayTriggered$1;->this$0:Lcom/narvii/video/ScrollingTimeLineFragment;

    invoke-virtual {v0}, Lcom/narvii/video/ScrollingTimeLineFragment;->getVideoPlaybackTimeText()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/narvii/video/ScrollingTimeLineFragment$onReplayTriggered$1;->this$0:Lcom/narvii/video/ScrollingTimeLineFragment;

    invoke-virtual {v1}, Lcom/narvii/video/BaseMediaEditorFragment;->getTotalVisibleVideoDurationInMs()Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/narvii/video/widget/MediaTimeLineComponentKt;->convertMillisToTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment$onReplayTriggered$1;->this$0:Lcom/narvii/video/ScrollingTimeLineFragment;

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lcom/narvii/video/BaseMediaEditorFragment;->changeVideoPlaybackStatus$default(Lcom/narvii/video/BaseMediaEditorFragment;ZZILjava/lang/Object;)V

    .line 263
    iget-object v0, p0, Lcom/narvii/video/ScrollingTimeLineFragment$onReplayTriggered$1;->this$0:Lcom/narvii/video/ScrollingTimeLineFragment;

    invoke-virtual {v0, v4}, Lcom/narvii/video/BaseMediaEditorFragment;->changeSeekStatus(Z)V

    return-void
.end method
