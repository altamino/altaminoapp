.class Lcom/narvii/chat/screenroom/widgets/GLVideoView$1;
.super Ljava/lang/Object;
.source "GLVideoView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


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

    .line 116
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$1;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 119
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$1;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$002(Lcom/narvii/chat/screenroom/widgets/GLVideoView;I)I

    .line 120
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$1;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {p1, v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$102(Lcom/narvii/chat/screenroom/widgets/GLVideoView;I)I

    .line 121
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$1;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$300(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$1;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$200(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;->onError(Lnet/protyposis/android/mediaplayer/MediaPlayer;II)Z

    return v1
.end method
