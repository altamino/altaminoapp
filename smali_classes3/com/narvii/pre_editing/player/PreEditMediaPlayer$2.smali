.class public final Lcom/narvii/pre_editing/player/PreEditMediaPlayer$2;
.super Ljava/lang/Object;
.source "PreEditMediaPlayer.kt"

# interfaces
.implements Lcom/google/android/exoplayer2/video/VideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/pre_editing/player/PreEditMediaPlayer;-><init>(Landroid/content/Context;Lcom/narvii/nvplayerview/NVVideoView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;


# direct methods
.method constructor <init>(Lcom/narvii/pre_editing/player/PreEditMediaPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$2;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onRenderedFirstFrame()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/video/VideoListener$-CC;->$default$onRenderedFirstFrame(Lcom/google/android/exoplayer2/video/VideoListener;)V

    return-void
.end method

.method public synthetic onSurfaceSizeChanged(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/video/VideoListener$-CC;->$default$onSurfaceSizeChanged(Lcom/google/android/exoplayer2/video/VideoListener;II)V

    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 0

    .line 97
    iget-object p3, p0, Lcom/narvii/pre_editing/player/PreEditMediaPlayer$2;->this$0:Lcom/narvii/pre_editing/player/PreEditMediaPlayer;

    invoke-virtual {p3}, Lcom/narvii/pre_editing/player/PreEditMediaPlayer;->getView()Lcom/narvii/nvplayerview/NVVideoView;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/narvii/nvplayerview/NVVideoView;->setVideoSize(II)V

    return-void
.end method
