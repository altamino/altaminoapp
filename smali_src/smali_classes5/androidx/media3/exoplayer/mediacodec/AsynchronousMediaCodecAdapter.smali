.class final Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$Factory;
    }
.end annotation


# static fields
.field private static final STATE_CREATED:I = 0x0

.field private static final STATE_INITIALIZED:I = 0x1

.field private static final STATE_SHUT_DOWN:I = 0x2


# instance fields
.field private final asynchronousMediaCodecCallback:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;

.field private final bufferEnqueuer:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;

.field private final codec:Landroid/media/MediaCodec;

.field private codecReleased:Z

.field private state:I

.field private final synchronizeCodecInteractionsWithQueueing:Z


# direct methods
.method private constructor <init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Landroid/os/HandlerThread;Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    .line 3
    new-instance v0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;

    invoke-direct {v0, p2}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;-><init>(Landroid/os/HandlerThread;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->asynchronousMediaCodecCallback:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;

    .line 4
    new-instance p2, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;

    invoke-direct {p2, p1, p3}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;)V

    iput-object p2, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->bufferEnqueuer:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;

    iput-boolean p4, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->synchronizeCodecInteractionsWithQueueing:Z

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->state:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Landroid/os/HandlerThread;ZLandroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Landroid/os/HandlerThread;Z)V

    return-void
.end method

.method public static synthetic n(Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;Landroid/media/MediaCodec;JJ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->v(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;Landroid/media/MediaCodec;JJ)V

    return-void
.end method

.method static synthetic o(Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->u(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 4
    return-void
.end method

.method static synthetic p(I)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->s(I)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic q(I)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->r(I)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static r(I)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    const-string v0, "ExoPlayer:MediaCodecAsyncAdapter:"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->t(ILjava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static s(I)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    const-string v0, "ExoPlayer:MediaCodecQueueingThread:"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->t(ILjava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static t(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    const/4 p1, 0x1

    .line 7
    .line 8
    if-ne p0, p1, :cond_0

    .line 9
    .line 10
    const-string p0, "Audio"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x2

    .line 16
    .line 17
    if-ne p0, p1, :cond_1

    .line 18
    .line 19
    const-string p0, "Video"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_1
    const-string p1, "Unknown("

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string p0, ")"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method private u(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    .locals 2
    .param p1    # Landroid/media/MediaFormat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/media/MediaCrypto;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->asynchronousMediaCodecCallback:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->h(Landroid/media/MediaCodec;)V

    .line 8
    .line 9
    const-string v0, "configureCodec"

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Landroidx/media3/common/util/TraceUtil;->a(Ljava/lang/String;)V

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Landroidx/media3/common/util/TraceUtil;->c()V

    .line 21
    .line 22
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->bufferEnqueuer:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->q()V

    .line 26
    .line 27
    .line 28
    const-string/jumbo p1, "startCodec"

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Landroidx/media3/common/util/TraceUtil;->a(Ljava/lang/String;)V

    .line 32
    .line 33
    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    .line 37
    .line 38
    .line 39
    invoke-static {}, Landroidx/media3/common/util/TraceUtil;->c()V

    .line 40
    const/4 p1, 0x1

    .line 41
    .line 42
    iput p1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->state:I

    .line 43
    return-void
.end method

.method private synthetic v(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;Landroid/media/MediaCodec;JJ)V
    .locals 6

    .line 1
    move-object v0, p1

    .line 2
    move-object v1, p0

    .line 3
    move-wide v2, p3

    .line 4
    move-wide v4, p5

    .line 5
    .line 6
    .line 7
    invoke-interface/range {v0 .. v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;->a(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;JJ)V

    .line 8
    return-void
.end method

.method private w()V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->synchronizeCodecInteractionsWithQueueing:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->bufferEnqueuer:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->r()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception v0

    .line 12
    .line 13
    .line 14
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 19
    .line 20
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 24
    throw v1

    .line 25
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->w()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    .line 9
    return-void
.end method

.method public c(IJ)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    .line 6
    return-void
.end method

.method public d(Landroid/media/MediaCodec$BufferInfo;)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->bufferEnqueuer:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->l()V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->asynchronousMediaCodecCallback:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->d(Landroid/media/MediaCodec$BufferInfo;)I

    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public e(IZ)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 6
    return-void
.end method

.method public f()Landroid/media/MediaFormat;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->asynchronousMediaCodecCallback:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->g()Landroid/media/MediaFormat;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public flush()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->bufferEnqueuer:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->i()V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->asynchronousMediaCodecCallback:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->e()V

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 21
    return-void
.end method

.method public g(I)Ljava/nio/ByteBuffer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public h(Landroid/view/Surface;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->w()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    .line 9
    return-void
.end method

.method public i(IIIJI)V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->bufferEnqueuer:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;

    .line 3
    move v1, p1

    .line 4
    move v2, p2

    .line 5
    move v3, p3

    .line 6
    move-wide v4, p4

    .line 7
    move v6, p6

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {v0 .. v6}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->m(IIIJI)V

    .line 11
    return-void
.end method

.method public j()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->bufferEnqueuer:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->l()V

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->asynchronousMediaCodecCallback:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->c()I

    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public k(I)Ljava/nio/ByteBuffer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public l(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;Landroid/os/Handler;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->w()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    .line 6
    .line 7
    new-instance v1, Landroidx/media3/exoplayer/mediacodec/a;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/mediacodec/a;-><init>(Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, p2}, Landroid/media/MediaCodec;->setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V

    .line 14
    return-void
.end method

.method public m(IILandroidx/media3/decoder/CryptoInfo;JI)V
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->bufferEnqueuer:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;

    .line 3
    move v1, p1

    .line 4
    move v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move-wide v4, p4

    .line 7
    move v6, p6

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {v0 .. v6}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->n(IILandroidx/media3/decoder/CryptoInfo;JI)V

    .line 11
    return-void
.end method

.method public release()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    :try_start_0
    iget v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->state:I

    .line 4
    .line 5
    if-ne v1, v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->bufferEnqueuer:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->p()V

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->asynchronousMediaCodecCallback:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecCallback;->o()V

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    const/4 v1, 0x2

    .line 20
    .line 21
    iput v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    iget-boolean v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codecReleased:Z

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 31
    .line 32
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codecReleased:Z

    .line 33
    :cond_1
    return-void

    .line 34
    .line 35
    :goto_1
    iget-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codecReleased:Z

    .line 36
    .line 37
    if-nez v2, :cond_2

    .line 38
    .line 39
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    .line 43
    .line 44
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codecReleased:Z

    .line 45
    :cond_2
    throw v1
.end method

.method public setVideoScalingMode(I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->w()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    .line 9
    return-void
.end method
