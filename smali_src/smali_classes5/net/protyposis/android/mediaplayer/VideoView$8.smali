.class Lnet/protyposis/android/mediaplayer/VideoView$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;


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
    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/VideoView$8;->this$0:Lnet/protyposis/android/mediaplayer/VideoView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onError(Lnet/protyposis/android/mediaplayer/MediaPlayer;II)Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/VideoView$8;->this$0:Lnet/protyposis/android/mediaplayer/VideoView;

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Lnet/protyposis/android/mediaplayer/VideoView;->access$002(Lnet/protyposis/android/mediaplayer/VideoView;I)I

    .line 7
    .line 8
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/VideoView$8;->this$0:Lnet/protyposis/android/mediaplayer/VideoView;

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lnet/protyposis/android/mediaplayer/VideoView;->access$102(Lnet/protyposis/android/mediaplayer/VideoView;I)I

    .line 12
    .line 13
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/VideoView$8;->this$0:Lnet/protyposis/android/mediaplayer/VideoView;

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/VideoView;->access$1600(Lnet/protyposis/android/mediaplayer/VideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lnet/protyposis/android/mediaplayer/VideoView$8;->this$0:Lnet/protyposis/android/mediaplayer/VideoView;

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lnet/protyposis/android/mediaplayer/VideoView;->access$1600(Lnet/protyposis/android/mediaplayer/VideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, p1, p2, p3}, Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;->onError(Lnet/protyposis/android/mediaplayer/MediaPlayer;II)Z

    .line 29
    move-result p1

    .line 30
    return p1

    .line 31
    .line 32
    :cond_0
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/VideoView$8;->this$0:Lnet/protyposis/android/mediaplayer/VideoView;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    const-string p2, "Cannot play the video"

    .line 39
    const/4 p3, 0x1

    .line 40
    .line 41
    .line 42
    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 47
    return p3
.end method
