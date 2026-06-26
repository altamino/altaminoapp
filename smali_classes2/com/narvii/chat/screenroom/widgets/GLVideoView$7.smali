.class Lcom/narvii/chat/screenroom/widgets/GLVideoView$7;
.super Ljava/lang/Object;
.source "GLVideoView.java"

# interfaces
.implements Lnet/protyposis/android/mediaplayer/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/screenroom/widgets/GLVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)V
    .locals 0

    .line 526
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$7;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Lnet/protyposis/android/mediaplayer/MediaPlayer;II)Z
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$7;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$1900(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$7;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$1900(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnInfoListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lnet/protyposis/android/mediaplayer/MediaPlayer$OnInfoListener;->onInfo(Lnet/protyposis/android/mediaplayer/MediaPlayer;II)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
