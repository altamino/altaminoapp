.class Lnet/protyposis/android/mediaplayer/VideoView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/protyposis/android/mediaplayer/MediaPlayer$OnVideoSizeChangedListener;


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
    iput-object p1, p0, Lnet/protyposis/android/mediaplayer/VideoView$4;->this$0:Lnet/protyposis/android/mediaplayer/VideoView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Lnet/protyposis/android/mediaplayer/MediaPlayer;II)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/VideoView$4;->this$0:Lnet/protyposis/android/mediaplayer/VideoView;

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p2}, Lnet/protyposis/android/mediaplayer/VideoView;->access$1102(Lnet/protyposis/android/mediaplayer/VideoView;I)I

    .line 6
    .line 7
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/VideoView$4;->this$0:Lnet/protyposis/android/mediaplayer/VideoView;

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p3}, Lnet/protyposis/android/mediaplayer/VideoView;->access$1202(Lnet/protyposis/android/mediaplayer/VideoView;I)I

    .line 11
    .line 12
    iget-object p1, p0, Lnet/protyposis/android/mediaplayer/VideoView$4;->this$0:Lnet/protyposis/android/mediaplayer/VideoView;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 16
    return-void
.end method
