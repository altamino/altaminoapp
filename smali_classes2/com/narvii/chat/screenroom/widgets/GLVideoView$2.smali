.class Lcom/narvii/chat/screenroom/widgets/GLVideoView$2;
.super Ljava/lang/Object;
.source "GLVideoView.java"

# interfaces
.implements Lnet/protyposis/android/mediaplayer/MediaPlayer$AudioFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/screenroom/widgets/GLVideoView;->openVideo()V
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

    .line 357
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$2;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFrameAvailable([BIIII)V
    .locals 7

    .line 360
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$2;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    iget-object v1, v0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mediaFrameAvailableListener:Lcom/narvii/chat/screenroom/widgets/GLVideoView$MediaFrameAvailableListener;

    if-eqz v1, :cond_0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 361
    invoke-interface/range {v1 .. v6}, Lcom/narvii/chat/screenroom/widgets/GLVideoView$MediaFrameAvailableListener;->onAudioFrameAvailable([BIIII)V

    :cond_0
    return-void
.end method
