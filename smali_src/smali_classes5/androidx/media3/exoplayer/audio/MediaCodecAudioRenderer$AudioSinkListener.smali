.class final Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/audio/AudioSink$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AudioSinkListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;-><init>(Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    .line 2
    const-string v0, "MediaCodecAudioRenderer"

    .line 3
    .line 4
    const-string v1, "Audio sink error"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->e1(Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;)Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->l(Ljava/lang/Exception;)V

    .line 17
    return-void
.end method

.method public b(J)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->e1(Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;)Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->B(J)V

    .line 10
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->f1(Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;)Landroidx/media3/exoplayer/Renderer$WakeupListener;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->f1(Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;)Landroidx/media3/exoplayer/Renderer$WakeupListener;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer$WakeupListener;->a()V

    .line 18
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->f1(Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;)Landroidx/media3/exoplayer/Renderer$WakeupListener;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->f1(Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;)Landroidx/media3/exoplayer/Renderer$WakeupListener;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer$WakeupListener;->b()V

    .line 18
    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->g1(Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;)V

    .line 6
    return-void
.end method

.method public onPositionDiscontinuity()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->n1()V

    .line 6
    return-void
.end method

.method public onSkipSilenceEnabledChanged(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->e1(Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;)Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->C(Z)V

    .line 10
    return-void
.end method

.method public onUnderrun(IJJ)V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->e1(Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;)Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    .line 6
    move-result-object v1

    .line 7
    move v2, p1

    .line 8
    move-wide v3, p2

    .line 9
    move-wide v5, p4

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {v1 .. v6}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->D(IJJ)V

    .line 13
    return-void
.end method
