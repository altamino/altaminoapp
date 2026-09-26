.class Lcom/narvii/chat/screenroom/widgets/GLVideoView$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$2;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAudioFrameAvailable([BIIII)V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/screenroom/widgets/GLVideoView$2;->this$0:Lcom/narvii/chat/screenroom/widgets/GLVideoView;

    .line 3
    .line 4
    iget-object v1, v0, Lcom/narvii/chat/screenroom/widgets/GLVideoView;->mediaFrameAvailableListener:Lcom/narvii/chat/screenroom/widgets/GLVideoView$MediaFrameAvailableListener;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    move-object v2, p1

    .line 8
    move v3, p2

    .line 9
    move v4, p3

    .line 10
    move v5, p4

    .line 11
    move v6, p5

    .line 12
    .line 13
    .line 14
    invoke-interface/range {v1 .. v6}, Lcom/narvii/chat/screenroom/widgets/GLVideoView$MediaFrameAvailableListener;->onAudioFrameAvailable([BIIII)V

    .line 15
    :cond_0
    return-void
.end method
