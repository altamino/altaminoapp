.class public final Lcom/narvii/pre_editing/player/PreEditMediaPlayer$updateTimeRunnable$1;
.super Ljava/lang/Object;
.source "PreEditMediaPlayer.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/pre_editing/player/PreEditMediaPlayer;-><init>(Landroid/content/Context;Lcom/narvii/nvplayerview/NVVideoView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;


# direct methods
.method constructor <init>(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$updateTimeRunnable$1;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 43
    iget-object v0, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$updateTimeRunnable$1;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    invoke-static {v0}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->access$getPlayer$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    const-string v1, "player"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v2

    .line 44
    iget-object v0, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$updateTimeRunnable$1;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    invoke-static {v0}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->access$getReplayEndTime$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$updateTimeRunnable$1;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    invoke-static {v0}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->access$getPlayer$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$updateTimeRunnable$1;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    invoke-static {v1}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->access$getReplayStartTime$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/BasePlayer;->seekTo(J)V

    goto :goto_0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$updateTimeRunnable$1;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    invoke-static {v0}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->access$getCallback$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$updateTimeRunnable$1;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    invoke-static {v2}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->access$getPlayer$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;->onProgressUpdate(J)V

    :cond_1
    :goto_0
    const-wide/16 v0, 0x32

    .line 49
    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
