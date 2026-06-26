.class Lcom/narvii/chat/screenroom/widgets/GLVideoView$9;
.super Ljava/lang/Object;
.source "GLVideoView.java"

# interfaces
.implements Lnet/protyposis/android/mediaplayer/MediaPlayer$OnBufferingUpdateListener;


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

    .line 576
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$9;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Lnet/protyposis/android/mediaplayer/MediaPlayer;I)V
    .locals 0

    .line 578
    iget-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$9;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-static {p1, p2}, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->access$2102(Lcom/narvii/chat/screenroom/widgets/GLVideoView;I)I

    return-void
.end method
