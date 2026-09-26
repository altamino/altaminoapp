.class public Landroidx/media3/exoplayer/audio/ForwardingAudioSink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/audio/AudioSink;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# instance fields
.field private final sink:Landroidx/media3/exoplayer/audio/AudioSink;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/audio/AudioSink;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/common/Format;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/audio/AudioSink;->a(Landroidx/media3/common/Format;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public b(Landroidx/media3/common/PlaybackParameters;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/audio/AudioSink;->b(Landroidx/media3/common/PlaybackParameters;)V

    .line 6
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioSink;->c()V

    .line 6
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioSink;->d()V

    .line 6
    return-void
.end method

.method public disableTunneling()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioSink;->disableTunneling()V

    .line 6
    return-void
.end method

.method public e(Ljava/nio/ByteBuffer;JI)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;,
            Landroidx/media3/exoplayer/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/audio/AudioSink;->e(Ljava/nio/ByteBuffer;JI)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public f(J)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/audio/AudioSink;->f(J)V

    .line 6
    return-void
.end method

.method public flush()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioSink;->flush()V

    .line 6
    return-void
.end method

.method public g(Z)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/audio/AudioSink;->g(Z)V

    .line 6
    return-void
.end method

.method public getCurrentPositionUs(Z)J
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/audio/AudioSink;->getCurrentPositionUs(Z)J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioSink;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public h(Landroidx/media3/common/AudioAttributes;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/audio/AudioSink;->h(Landroidx/media3/common/AudioAttributes;)V

    .line 6
    return-void
.end method

.method public handleDiscontinuity()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioSink;->handleDiscontinuity()V

    .line 6
    return-void
.end method

.method public hasPendingData()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioSink;->hasPendingData()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public i(Landroidx/media3/exoplayer/audio/AudioSink$Listener;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/audio/AudioSink;->i(Landroidx/media3/exoplayer/audio/AudioSink$Listener;)V

    .line 6
    return-void
.end method

.method public isEnded()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioSink;->isEnded()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public j(Landroidx/media3/common/Format;I[I)V
    .locals 1
    .param p3    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/exoplayer/audio/AudioSink;->j(Landroidx/media3/common/Format;I[I)V

    .line 6
    return-void
.end method

.method public k(Landroidx/media3/common/Format;)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/audio/AudioSink;->k(Landroidx/media3/common/Format;)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public l(Landroidx/media3/common/AuxEffectInfo;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/audio/AudioSink;->l(Landroidx/media3/common/AuxEffectInfo;)V

    .line 6
    return-void
.end method

.method public m(Landroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 1
    .param p1    # Landroidx/media3/exoplayer/analytics/PlayerId;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/audio/AudioSink;->m(Landroidx/media3/exoplayer/analytics/PlayerId;)V

    .line 6
    return-void
.end method

.method public pause()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioSink;->pause()V

    .line 6
    return-void
.end method

.method public play()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioSink;->play()V

    .line 6
    return-void
.end method

.method public playToEndOfStream()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioSink;->playToEndOfStream()V

    .line 6
    return-void
.end method

.method public synthetic release()V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/audio/m;->a(Landroidx/media3/exoplayer/audio/AudioSink;)V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioSink;->reset()V

    .line 6
    return-void
.end method

.method public setAudioSessionId(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/audio/AudioSink;->setAudioSessionId(I)V

    .line 6
    return-void
.end method

.method public setPreferredDevice(Landroid/media/AudioDeviceInfo;)V
    .locals 1
    .param p1    # Landroid/media/AudioDeviceInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/audio/AudioSink;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)V

    .line 6
    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/audio/AudioSink;->setVolume(F)V

    .line 6
    return-void
.end method
