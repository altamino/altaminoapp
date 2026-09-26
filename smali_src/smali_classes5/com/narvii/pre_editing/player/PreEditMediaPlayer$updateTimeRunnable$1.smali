.class public final Lcom/narvii/pre_editing/player/PreEditMediaPlayer$updateTimeRunnable$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$updateTimeRunnable$1;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$updateTimeRunnable$1;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->access$getPlayer$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)Landroidx/media3/exoplayer/ExoPlayer;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentPosition()J

    .line 10
    move-result-wide v0

    .line 11
    .line 12
    iget-object v2, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$updateTimeRunnable$1;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    .line 13
    .line 14
    .line 15
    invoke-static {v2}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->access$getReplayEndTime$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)J

    .line 16
    move-result-wide v2

    .line 17
    .line 18
    cmp-long v0, v0, v2

    .line 19
    .line 20
    if-lez v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$updateTimeRunnable$1;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->access$getPlayer$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)Landroidx/media3/exoplayer/ExoPlayer;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    iget-object v1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$updateTimeRunnable$1;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    .line 29
    .line 30
    .line 31
    invoke-static {v1}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->access$getReplayStartTime$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)J

    .line 32
    move-result-wide v1

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, v1, v2}, Landroidx/media3/common/Player;->seekTo(J)V

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_0
    iget-object v0, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$updateTimeRunnable$1;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->access$getCallback$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;

    .line 42
    move-result-object v0

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    iget-object v1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$updateTimeRunnable$1;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    .line 47
    .line 48
    .line 49
    invoke-static {v1}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->access$getPlayer$p(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)Landroidx/media3/exoplayer/ExoPlayer;

    .line 50
    move-result-object v1

    .line 51
    .line 52
    .line 53
    invoke-interface {v1}, Landroidx/media3/common/Player;->getCurrentPosition()J

    .line 54
    move-result-wide v1

    .line 55
    .line 56
    .line 57
    invoke-interface {v0, v1, v2}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$PlayerStateCallback;->onProgressUpdate(J)V

    .line 58
    .line 59
    :cond_1
    :goto_0
    const-wide/16 v0, 0x32

    .line 60
    .line 61
    .line 62
    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 63
    return-void
.end method
