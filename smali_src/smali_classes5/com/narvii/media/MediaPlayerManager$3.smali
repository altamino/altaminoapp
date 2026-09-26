.class Lcom/narvii/media/MediaPlayerManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/media/MediaPlayerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/MediaPlayerManager;


# direct methods
.method constructor <init>(Lcom/narvii/media/MediaPlayerManager;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/MediaPlayerManager$3;->this$0:Lcom/narvii/media/MediaPlayerManager;

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
    iget-object v0, p0, Lcom/narvii/media/MediaPlayerManager$3;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/media/MediaPlayerManager;->currentUrl:Ljava/lang/String;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/narvii/media/MediaPlayerManager;->a(Lcom/narvii/media/MediaPlayerManager;)Landroid/media/MediaPlayer;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/media/MediaPlayerManager$3;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 15
    .line 16
    iget-boolean v1, v0, Lcom/narvii/media/MediaPlayerManager;->isPlaying:Z

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget-object v0, v0, Lcom/narvii/media/MediaPlayerManager;->statusChangeListenerWR:Ljava/lang/ref/WeakReference;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    check-cast v0, Lcom/narvii/media/MediaStatusChangeListener;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-interface {v0}, Lcom/narvii/media/MediaStatusChangeListener;->getMediaUrl()Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    iget-object v2, p0, Lcom/narvii/media/MediaPlayerManager$3;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 37
    .line 38
    iget-object v2, v2, Lcom/narvii/media/MediaPlayerManager;->currentUrl:Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    invoke-static {v1, v2}, Lcom/narvii/util/Utils;->isStringEquals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 42
    move-result v1

    .line 43
    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    iget-object v1, p0, Lcom/narvii/media/MediaPlayerManager$3;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 47
    .line 48
    iget-object v2, v1, Lcom/narvii/media/MediaPlayerManager;->currentUrl:Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    invoke-static {v1}, Lcom/narvii/media/MediaPlayerManager;->a(Lcom/narvii/media/MediaPlayerManager;)Landroid/media/MediaPlayer;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    .line 56
    move-result v1

    .line 57
    .line 58
    iget-object v3, p0, Lcom/narvii/media/MediaPlayerManager$3;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 59
    .line 60
    .line 61
    invoke-static {v3}, Lcom/narvii/media/MediaPlayerManager;->a(Lcom/narvii/media/MediaPlayerManager;)Landroid/media/MediaPlayer;

    .line 62
    move-result-object v3

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    .line 66
    move-result v3

    .line 67
    .line 68
    .line 69
    invoke-interface {v0, v2, v1, v3}, Lcom/narvii/media/MediaStatusChangeListener;->onProgressChange(Ljava/lang/String;II)V

    .line 70
    .line 71
    iget-object v0, p0, Lcom/narvii/media/MediaPlayerManager$3;->this$0:Lcom/narvii/media/MediaPlayerManager;

    .line 72
    .line 73
    iget-object v0, v0, Lcom/narvii/media/MediaPlayerManager;->updateProgressRunnable:Ljava/lang/Runnable;

    .line 74
    .line 75
    const-wide/16 v1, 0xa

    .line 76
    .line 77
    .line 78
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 79
    :cond_0
    return-void
.end method
