.class Lnet/protyposis/android/mediaplayer/MediaPlayer$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$1;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onBuffering(Lnet/protyposis/android/mediaplayer/MediaCodecDecoder;)V
    .locals 4

    .line 1
    .line 2
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$1;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$100(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$1;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$100(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer$PlaybackThread;->isPaused()Z

    .line 18
    move-result p1

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$1;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$200(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Z

    .line 26
    move-result p1

    .line 27
    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$1;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lnet/protyposis/android/mediaplayer/Decoders;->getCachedDuration()J

    .line 38
    move-result-wide v0

    .line 39
    .line 40
    .line 41
    const-wide/32 v2, 0x1e8480

    .line 42
    .line 43
    cmp-long p1, v0, v2

    .line 44
    .line 45
    if-gez p1, :cond_0

    .line 46
    .line 47
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$1;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 48
    .line 49
    .line 50
    invoke-static {p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$300(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/Decoders;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Lnet/protyposis/android/mediaplayer/Decoders;->hasCacheReachedEndOfStream()Z

    .line 55
    move-result p1

    .line 56
    .line 57
    if-nez p1, :cond_0

    .line 58
    .line 59
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$1;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 60
    const/4 v0, 0x1

    .line 61
    .line 62
    .line 63
    invoke-static {p1, v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$202(Lnet/protyposis/android/mediaplayer/MediaPlayer;Z)Z

    .line 64
    .line 65
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$1;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 66
    .line 67
    .line 68
    invoke-static {p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$1;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 72
    .line 73
    .line 74
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->access$400(Lnet/protyposis/android/mediaplayer/MediaPlayer;)Lnet/protyposis/android/mediaplayer/MediaPlayer$EventHandler;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    const/16 v1, 0x2bd

    .line 78
    const/4 v2, 0x0

    .line 79
    .line 80
    const/16 v3, 0xc8

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 88
    :cond_0
    return-void
.end method
