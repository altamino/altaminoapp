.class Lnet/protyposis/android/mediaplayer/MediaPlayer$2;
.super Lnet/protyposis/android/mediaplayer/AudioPlayback;
.source "MediaPlayer.java"


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

    .line 418
    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$2;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFrameAvailable([BIIII)V
    .locals 6

    .line 421
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$2;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->onAudioFrameAvailable([BIIII)V

    return-void
.end method
