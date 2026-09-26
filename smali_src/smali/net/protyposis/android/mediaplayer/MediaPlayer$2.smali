.class Lnet/protyposis/android/mediaplayer/MediaPlayer$2;
.super Lnet/protyposis/android/mediaplayer/AudioPlayback;
.source "SourceFile"


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
    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$2;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lnet/protyposis/android/mediaplayer/AudioPlayback;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method protected onFrameAvailable([BIIII)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/MediaPlayer$2;->this$0:Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 3
    move-object v1, p1

    .line 4
    move v2, p2

    .line 5
    move v3, p3

    .line 6
    move v4, p4

    .line 7
    move v5, p5

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {v0 .. v5}, Lnet/protyposis/android/mediaplayer/MediaPlayer;->onAudioFrameAvailable([BIIII)V

    .line 11
    return-void
.end method
