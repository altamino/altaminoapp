.class Lnet/protyposis/android/mediaplayer/VideoView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/protyposis/android/mediaplayer/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/protyposis/android/mediaplayer/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/protyposis/android/mediaplayer/VideoView;


# direct methods
.method constructor <init>(Lnet/protyposis/android/mediaplayer/VideoView;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/VideoView$3;->this$0:Lnet/protyposis/android/mediaplayer/VideoView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onPrepared(Lnet/protyposis/android/mediaplayer/MediaPlayer;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/VideoView$3;->this$0:Lnet/protyposis/android/mediaplayer/VideoView;

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lnet/protyposis/android/mediaplayer/VideoView;->access$002(Lnet/protyposis/android/mediaplayer/VideoView;I)I

    .line 7
    .line 8
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/VideoView$3;->this$0:Lnet/protyposis/android/mediaplayer/VideoView;

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/VideoView;->access$800(Lnet/protyposis/android/mediaplayer/VideoView;)F

    .line 12
    move-result v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lnet/protyposis/android/mediaplayer/VideoView;->setPlaybackSpeed(F)V

    .line 16
    .line 17
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/VideoView$3;->this$0:Lnet/protyposis/android/mediaplayer/VideoView;

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/VideoView;->access$900(Lnet/protyposis/android/mediaplayer/VideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnPreparedListener;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/VideoView$3;->this$0:Lnet/protyposis/android/mediaplayer/VideoView;

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/VideoView;->access$900(Lnet/protyposis/android/mediaplayer/VideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnPreparedListener;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer$OnPreparedListener;->onPrepared(Lnet/protyposis/android/mediaplayer/MediaPlayer;)V

    .line 33
    .line 34
    :cond_0
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/VideoView$3;->this$0:Lnet/protyposis/android/mediaplayer/VideoView;

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Lnet/protyposis/android/mediaplayer/VideoView;->access$1000(Lnet/protyposis/android/mediaplayer/VideoView;)I

    .line 38
    move-result p1

    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/VideoView$3;->this$0:Lnet/protyposis/android/mediaplayer/VideoView;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1}, Lnet/protyposis/android/mediaplayer/VideoView;->seekTo(I)V

    .line 46
    .line 47
    :cond_1
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/VideoView$3;->this$0:Lnet/protyposis/android/mediaplayer/VideoView;

    .line 48
    .line 49
    .line 50
    invoke-static {p1}, Lnet/protyposis/android/mediaplayer/VideoView;->access$100(Lnet/protyposis/android/mediaplayer/VideoView;)I

    .line 51
    move-result p1

    .line 52
    const/4 v0, 0x3

    .line 53
    .line 54
    if-ne p1, v0, :cond_2

    .line 55
    .line 56
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/VideoView$3;->this$0:Lnet/protyposis/android/mediaplayer/VideoView;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lnet/protyposis/android/mediaplayer/VideoView;->start()V

    .line 60
    :cond_2
    return-void
.end method
