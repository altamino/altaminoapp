.class Lcom/narvii/video/SharedVideoView$7;
.super Ljava/lang/Object;
.source "SharedVideoView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/SharedVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/video/SharedVideoView;


# direct methods
.method constructor <init>(Lcom/narvii/video/SharedVideoView;)V
    .locals 0

    .line 810
    iput-object p1, p0, Lcom/narvii/video/SharedVideoView$7;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V
    .locals 0

    .line 812
    iget-object p1, p0, Lcom/narvii/video/SharedVideoView$7;->this$0:Lcom/narvii/video/SharedVideoView;

    invoke-static {p1, p2}, Lcom/narvii/video/SharedVideoView;->access$2302(Lcom/narvii/video/SharedVideoView;I)I

    return-void
.end method
