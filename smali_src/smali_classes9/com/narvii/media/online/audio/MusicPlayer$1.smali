.class Lcom/narvii/media/online/audio/MusicPlayer$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/media/online/audio/MusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/media/online/audio/MusicPlayer;


# direct methods
.method constructor <init>(Lcom/narvii/media/online/audio/MusicPlayer;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayer$1;->this$0:Lcom/narvii/media/online/audio/MusicPlayer;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer$1;->this$0:Lcom/narvii/media/online/audio/MusicPlayer;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/media/online/audio/MusicPlayer;->b(Lcom/narvii/media/online/audio/MusicPlayer;)Landroid/media/MediaPlayer;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer$1;->this$0:Lcom/narvii/media/online/audio/MusicPlayer;

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/narvii/media/online/audio/MusicPlayer;->b(Lcom/narvii/media/online/audio/MusicPlayer;)Landroid/media/MediaPlayer;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer$1;->this$0:Lcom/narvii/media/online/audio/MusicPlayer;

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lcom/narvii/media/online/audio/MusicPlayer;->e(Lcom/narvii/media/online/audio/MusicPlayer;)Landroid/widget/SeekBar;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer$1;->this$0:Lcom/narvii/media/online/audio/MusicPlayer;

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lcom/narvii/media/online/audio/MusicPlayer;->e(Lcom/narvii/media/online/audio/MusicPlayer;)Landroid/widget/SeekBar;

    .line 35
    move-result-object v0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    .line 39
    move-result v0

    .line 40
    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    new-instance v0, Lcom/narvii/media/online/audio/MusicPlayer$1$1;

    .line 44
    .line 45
    .line 46
    invoke-direct {v0, p0}, Lcom/narvii/media/online/audio/MusicPlayer$1$1;-><init>(Lcom/narvii/media/online/audio/MusicPlayer$1;)V

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 50
    :cond_1
    return-void
.end method
