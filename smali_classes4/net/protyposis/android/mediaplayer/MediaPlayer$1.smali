.class Lnet/protyposis/android/mediaplayer/MediaPlayer$1;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Lnet/protyposis/android/mediaplayer/MediaCodecDecoder$OnDecoderEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/protyposis/android/mediaplayer/MediaPlayer;->prepareInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;


# direct methods
.method constructor <init>(Lnet/protyposis/android/mediaplayer/MediaPlayer;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$1;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBuffering(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;)V
    .locals 4

    .line 389
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$1;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$100(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$1;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$100(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;

    move-result-object p1

    invoke-virtual {p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->isPaused()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$1;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 390
    invoke-static {p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$200(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$1;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 391
    invoke-static {p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    move-result-object p1

    invoke-virtual {p1}, Lnet/protyposis/android/mediaplayer/Decoders;->getCachedDuration()J

    move-result-wide v0

    const-wide/32 v2, 0x1e8480

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$1;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 392
    invoke-static {p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    move-result-object p1

    invoke-virtual {p1}, Lnet/protyposis/android/mediaplayer/Decoders;->hasCacheReachedEndOfStream()Z

    move-result p1

    if-nez p1, :cond_0

    .line 393
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$1;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$202(Lnet/protyposis/android/mediaplayer/MediaPlayer;Z)Z

    .line 394
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$1;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    move-result-object p1

    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$1;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    move-result-object v0

    const/16 v1, 0xc8

    const/16 v2, 0x2bd

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
