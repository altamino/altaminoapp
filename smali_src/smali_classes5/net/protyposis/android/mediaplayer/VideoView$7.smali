.class Lnet/protyposis/android/mediaplayer/VideoView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/protyposis/android/mediaplayer/MediaPlayer$OnCompletionListener;


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
    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/VideoView$7;->this$0:Lnet/protyposis/android/mediaplayer/VideoView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onCompletion(Lnet/protyposis/android/mediaplayer/MediaPlayer;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/VideoView$7;->this$0:Lnet/protyposis/android/mediaplayer/VideoView;

    .line 3
    const/4 v1, 0x5

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lnet/protyposis/android/mediaplayer/VideoView;->access$002(Lnet/protyposis/android/mediaplayer/VideoView;I)I

    .line 7
    .line 8
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/VideoView$7;->this$0:Lnet/protyposis/android/mediaplayer/VideoView;

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lnet/protyposis/android/mediaplayer/VideoView;->access$102(Lnet/protyposis/android/mediaplayer/VideoView;I)I

    .line 12
    .line 13
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/VideoView$7;->this$0:Lnet/protyposis/android/mediaplayer/VideoView;

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/VideoView;->access$1500(Lnet/protyposis/android/mediaplayer/VideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnCompletionListener;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/VideoView$7;->this$0:Lnet/protyposis/android/mediaplayer/VideoView;

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/VideoView;->access$1500(Lnet/protyposis/android/mediaplayer/VideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnCompletionListener;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, p1}, Lnet/protyposis/android/mediaplayer/MediaPlayer$OnCompletionListener;->onCompletion(Lnet/protyposis/android/mediaplayer/MediaPlayer;)V

    .line 29
    :cond_0
    return-void
.end method
