.class Lcom/narvii/chat/screenroom/widgets/GLVideoView$6;
.super Ljava/lang/Object;
.source "GLVideoView.java"

# interfaces
.implements Lnet/protyposis/android/mediaplayer/MediaPlayer$OnCompletionListener;


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

    .line 515
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$6;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lnet/protyposis/android/mediaplayer/MediaPlayer;)V
    .locals 1

    .line 517
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$6;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$002(Lcom/narvii/chat/screenroom/widgets/GLVideoView;I)I

    .line 518
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$6;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {p1, v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$102(Lcom/narvii/chat/screenroom/widgets/GLVideoView;I)I

    .line 519
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$6;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$1800(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnCompletionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 520
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$6;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$1800(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer$OnCompletionListener;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$6;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$200(Lcom/narvii/chat/screenroom/widgets/GLVideoView;)Lnet/protyposis/android/mediaplayer/MediaPlayer;

    move-result-object v0

    invoke-interface {p1, v0}, Lnet/protyposis/android/mediaplayer/MediaPlayer$OnCompletionListener;->onCompletion(Lnet/protyposis/android/mediaplayer/MediaPlayer;)V

    :cond_0
    return-void
.end method
