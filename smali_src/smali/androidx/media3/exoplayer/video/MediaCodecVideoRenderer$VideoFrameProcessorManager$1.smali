.class Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/VideoFrameProcessor$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->h(Landroidx/media3/common/Format;J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

.field final synthetic val$inputFormat:Landroidx/media3/common/Format;


# direct methods
.method constructor <init>(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;Landroidx/media3/common/Format;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$1;->this$0:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 3
    .line 4
    iput-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager$1;->val$inputFormat:Landroidx/media3/common/Format;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method
