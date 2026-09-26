.class Lcom/narvii/chat/screenroom/widgets/GLVideoView$7;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$7;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onInfo(Lnet/protyposis/android/mediaplayer/MediaPlayer;II)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$7;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->i(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnInfoListener;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$7;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->i(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnInfoListener;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, p1, p2, p3}, Lnet/protyposis/android/mediaplayer/MediaPlayer$OnInfoListener;->onInfo(Lnet/protyposis/android/mediaplayer/MediaPlayer;II)Z

    .line 18
    :cond_0
    const/4 p1, 0x1

    .line 19
    return p1
.end method
