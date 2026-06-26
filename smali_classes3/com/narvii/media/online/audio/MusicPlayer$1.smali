.class Lcom/narvii/media/online/audio/MusicPlayer$1;
.super Ljava/util/TimerTask;
.source "MusicPlayer.java"


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

    .line 47
    iput-object p1, p0, Lcom/narvii/media/online/audio/MusicPlayer$1;->this$0:Lcom/narvii/media/online/audio/MusicPlayer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer$1;->this$0:Lcom/narvii/media/online/audio/MusicPlayer;

    invoke-static {v0}, Lcom/narvii/media/online/audio/MusicPlayer;->access$000(Lcom/narvii/media/online/audio/MusicPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer$1;->this$0:Lcom/narvii/media/online/audio/MusicPlayer;

    invoke-static {v0}, Lcom/narvii/media/online/audio/MusicPlayer;->access$000(Lcom/narvii/media/online/audio/MusicPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer$1;->this$0:Lcom/narvii/media/online/audio/MusicPlayer;

    invoke-static {v0}, Lcom/narvii/media/online/audio/MusicPlayer;->access$100(Lcom/narvii/media/online/audio/MusicPlayer;)Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/narvii/media/online/audio/MusicPlayer$1;->this$0:Lcom/narvii/media/online/audio/MusicPlayer;

    invoke-static {v0}, Lcom/narvii/media/online/audio/MusicPlayer;->access$100(Lcom/narvii/media/online/audio/MusicPlayer;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->isPressed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    new-instance v0, Lcom/narvii/media/online/audio/MusicPlayer$1$1;

    invoke-direct {v0, p0}, Lcom/narvii/media/online/audio/MusicPlayer$1$1;-><init>(Lcom/narvii/media/online/audio/MusicPlayer$1;)V

    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
