.class Lnet/protyposis/android/mediaplayer/VideoView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekCompleteListener;


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
    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/VideoView$6;->this$0:Lnet/protyposis/android/mediaplayer/VideoView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onSeekComplete(Lnet/protyposis/android/mediaplayer/MediaPlayer;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/VideoView$6;->this$0:Lnet/protyposis/android/mediaplayer/VideoView;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/VideoView;->access$1400(Lnet/protyposis/android/mediaplayer/VideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekCompleteListener;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/VideoView$6;->this$0:Lnet/protyposis/android/mediaplayer/VideoView;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/VideoView;->access$1400(Lnet/protyposis/android/mediaplayer/VideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekCompleteListener;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Lnet/protyposis/android/mediaplayer/MediaPlayer;)V

    .line 18
    :cond_0
    return-void
.end method
