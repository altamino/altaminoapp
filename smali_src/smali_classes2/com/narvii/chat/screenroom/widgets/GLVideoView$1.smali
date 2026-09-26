.class Lcom/narvii/chat/screenroom/widgets/GLVideoView$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$1;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$1;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 3
    const/4 v0, -0x1

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->x(Lcom/narvii/chat/screenroom/widgets/GLVideoView;I)V

    .line 7
    .line 8
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$1;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->B(Lcom/narvii/chat/screenroom/widgets/GLVideoView;I)V

    .line 12
    .line 13
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$1;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->c(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$1;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->f(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer;

    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x0

    .line 25
    const/4 v2, 0x1

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, v0, v2, v1}, Lnet/protyposis/android/mediaplayer/MediaPlayer$OnErrorListener;->onError(Lnet/protyposis/android/mediaplayer/MediaPlayer;II)Z

    .line 29
    return v2
.end method
