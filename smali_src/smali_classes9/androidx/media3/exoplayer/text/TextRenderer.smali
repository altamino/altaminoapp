.class public final Landroidx/media3/exoplayer/text/TextRenderer;
.super Landroidx/media3/exoplayer/BaseRenderer;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# static fields
.field private static final MSG_UPDATE_OUTPUT:I = 0x0

.field private static final REPLACEMENT_STATE_NONE:I = 0x0

.field private static final REPLACEMENT_STATE_SIGNAL_END_OF_STREAM:I = 0x1

.field private static final REPLACEMENT_STATE_WAIT_END_OF_STREAM:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TextRenderer"


# instance fields
.field private decoder:Landroidx/media3/extractor/text/SubtitleDecoder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final decoderFactory:Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;

.field private decoderReplacementState:I

.field private finalStreamEndPositionUs:J

.field private final formatHolder:Landroidx/media3/exoplayer/FormatHolder;

.field private inputStreamEnded:Z

.field private lastRendererPositionUs:J

.field private nextInputBuffer:Landroidx/media3/extractor/text/SubtitleInputBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private nextSubtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private nextSubtitleEventIndex:I

.field private final output:Landroidx/media3/exoplayer/text/TextOutput;

.field private final outputHandler:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private outputStreamEnded:Z

.field private outputStreamOffsetUs:J

.field private streamFormat:Landroidx/media3/common/Format;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private subtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private waitingForKeyFrame:Z


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/text/TextOutput;Landroid/os/Looper;)V
    .locals 1
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;->DEFAULT:Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;

    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/exoplayer/text/TextRenderer;-><init>(Landroidx/media3/exoplayer/text/TextOutput;Landroid/os/Looper;Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/text/TextOutput;Landroid/os/Looper;Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;)V
    .locals 1
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/BaseRenderer;-><init>(I)V

    .line 3
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/text/TextOutput;

    iput-object p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->output:Landroidx/media3/exoplayer/text/TextOutput;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p2, p0}, Landroidx/media3/common/util/Util;->v(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->outputHandler:Landroid/os/Handler;

    iput-object p3, p0, Landroidx/media3/exoplayer/text/TextRenderer;->decoderFactory:Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;

    .line 5
    new-instance p1, Landroidx/media3/exoplayer/FormatHolder;

    invoke-direct {p1}, Landroidx/media3/exoplayer/FormatHolder;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->formatHolder:Landroidx/media3/exoplayer/FormatHolder;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->finalStreamEndPositionUs:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->outputStreamOffsetUs:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->lastRendererPositionUs:J

    return-void
.end method

.method private D()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Landroidx/media3/common/text/CueGroup;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lcom/google/common/collect/a0;->x()Lcom/google/common/collect/a0;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    iget-wide v2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->lastRendererPositionUs:J

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v2, v3}, Landroidx/media3/exoplayer/text/TextRenderer;->G(J)J

    .line 12
    move-result-wide v2

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1, v2, v3}, Landroidx/media3/common/text/CueGroup;-><init>(Ljava/util/List;J)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/text/TextRenderer;->O(Landroidx/media3/common/text/CueGroup;)V

    .line 19
    return-void
.end method

.method private E(J)J
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->getNextEventTimeIndex(J)I

    .line 6
    move-result p1

    .line 7
    .line 8
    if-eqz p1, :cond_2

    .line 9
    .line 10
    iget-object p2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->getEventTimeCount()I

    .line 14
    move-result p2

    .line 15
    .line 16
    if-nez p2, :cond_0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    const/4 p2, -0x1

    .line 19
    .line 20
    if-ne p1, p2, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->getEventTimeCount()I

    .line 26
    move-result p2

    .line 27
    .line 28
    add-int/lit8 p2, p2, -0x1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->getEventTime(I)J

    .line 32
    move-result-wide p1

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_1
    iget-object p2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 36
    .line 37
    add-int/lit8 p1, p1, -0x1

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p1}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->getEventTime(I)J

    .line 41
    move-result-wide p1

    .line 42
    :goto_0
    return-wide p1

    .line 43
    .line 44
    :cond_2
    :goto_1
    iget-object p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 45
    .line 46
    iget-wide p1, p1, Landroidx/media3/decoder/DecoderOutputBuffer;->timeUs:J

    .line 47
    return-wide p1
.end method

.method private F()J
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitleEventIndex:I

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    const-wide v2, 0x7fffffffffffffffL

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    return-wide v2

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    iget v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitleEventIndex:I

    .line 19
    .line 20
    iget-object v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->getEventTimeCount()I

    .line 24
    move-result v1

    .line 25
    .line 26
    if-lt v0, v1, :cond_1

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 30
    .line 31
    iget v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitleEventIndex:I

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->getEventTime(I)J

    .line 35
    move-result-wide v2

    .line 36
    :goto_0
    return-wide v2
.end method

.method private G(J)J
    .locals 7

    .line 1
    .line 2
    .line 3
    .line 4
    .line 5
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    cmp-long v2, p1, v0

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x1

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    move v2, v4

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v2, v3

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->g(Z)V

    .line 18
    .line 19
    iget-wide v5, p0, Landroidx/media3/exoplayer/text/TextRenderer;->outputStreamOffsetUs:J

    .line 20
    .line 21
    cmp-long v0, v5, v0

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    move v3, v4

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->g(Z)V

    .line 28
    .line 29
    iget-wide v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->outputStreamOffsetUs:J

    .line 30
    sub-long/2addr p1, v0

    .line 31
    return-wide p1
.end method

.method private H(Landroidx/media3/extractor/text/SubtitleDecoderException;)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "Subtitle decoding failed. streamFormat="

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->streamFormat:Landroidx/media3/common/Format;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    const-string v1, "TextRenderer"

    .line 22
    .line 23
    .line 24
    invoke-static {v1, v0, p1}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->D()V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->M()V

    .line 31
    return-void
.end method

.method private I()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    iput-boolean v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->waitingForKeyFrame:Z

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->decoderFactory:Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->streamFormat:Landroidx/media3/common/Format;

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    check-cast v1, Landroidx/media3/common/Format;

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;->b(Landroidx/media3/common/Format;)Landroidx/media3/extractor/text/SubtitleDecoder;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iput-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->decoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    .line 20
    return-void
.end method

.method private J(Landroidx/media3/common/text/CueGroup;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->output:Landroidx/media3/exoplayer/text/TextOutput;

    .line 3
    .line 4
    iget-object v1, p1, Landroidx/media3/common/text/CueGroup;->cues:Lcom/google/common/collect/a0;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/text/TextOutput;->onCues(Ljava/util/List;)V

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->output:Landroidx/media3/exoplayer/text/TextOutput;

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/text/TextOutput;->onCues(Landroidx/media3/common/text/CueGroup;)V

    .line 13
    return-void
.end method

.method private K()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->nextInputBuffer:Landroidx/media3/extractor/text/SubtitleInputBuffer;

    .line 4
    const/4 v1, -0x1

    .line 5
    .line 6
    iput v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitleEventIndex:I

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Landroidx/media3/decoder/DecoderOutputBuffer;->n()V

    .line 14
    .line 15
    iput-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 16
    .line 17
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Landroidx/media3/decoder/DecoderOutputBuffer;->n()V

    .line 23
    .line 24
    iput-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 25
    :cond_1
    return-void
.end method

.method private L()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->K()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->decoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Landroidx/media3/extractor/text/SubtitleDecoder;

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Landroidx/media3/decoder/Decoder;->release()V

    .line 15
    const/4 v0, 0x0

    .line 16
    .line 17
    iput-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->decoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    .line 18
    const/4 v0, 0x0

    .line 19
    .line 20
    iput v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->decoderReplacementState:I

    .line 21
    return-void
.end method

.method private M()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->L()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->I()V

    .line 7
    return-void
.end method

.method private O(Landroidx/media3/common/text/CueGroup;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->outputHandler:Landroid/os/Handler;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 13
    goto :goto_0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/text/TextRenderer;->J(Landroidx/media3/common/text/CueGroup;)V

    .line 17
    :goto_0
    return-void
.end method


# virtual methods
.method public N(J)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->isCurrentStreamFinal()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->g(Z)V

    .line 8
    .line 9
    iput-wide p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->finalStreamEndPositionUs:J

    .line 10
    return-void
.end method

.method public a(Landroidx/media3/common/Format;)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->decoderFactory:Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;->a(Landroidx/media3/common/Format;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget p1, p1, Landroidx/media3/common/Format;->cryptoType:I

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    const/4 p1, 0x4

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x2

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-static {p1}, Landroidx/media3/exoplayer/h2;->c(I)I

    .line 19
    move-result p1

    .line 20
    return p1

    .line 21
    .line 22
    :cond_1
    iget-object p1, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Landroidx/media3/common/MimeTypes;->r(Ljava/lang/String;)Z

    .line 26
    move-result p1

    .line 27
    .line 28
    if-eqz p1, :cond_2

    .line 29
    const/4 p1, 0x1

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Landroidx/media3/exoplayer/h2;->c(I)I

    .line 33
    move-result p1

    .line 34
    return p1

    .line 35
    :cond_2
    const/4 p1, 0x0

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Landroidx/media3/exoplayer/h2;->c(I)I

    .line 39
    move-result p1

    .line 40
    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "TextRenderer"

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 1
    .line 2
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Landroidx/media3/common/text/CueGroup;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/text/TextRenderer;->J(Landroidx/media3/common/text/CueGroup;)V

    .line 12
    const/4 p1, 0x1

    .line 13
    return p1

    .line 14
    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    .line 18
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 19
    throw p1
.end method

.method public isEnded()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->outputStreamEnded:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected r()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->streamFormat:Landroidx/media3/common/Format;

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    .line 10
    iput-wide v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->finalStreamEndPositionUs:J

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->D()V

    .line 14
    .line 15
    iput-wide v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->outputStreamOffsetUs:J

    .line 16
    .line 17
    iput-wide v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->lastRendererPositionUs:J

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->L()V

    .line 21
    return-void
.end method

.method public render(JJ)V
    .locals 8

    .line 1
    .line 2
    iput-wide p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->lastRendererPositionUs:J

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->isCurrentStreamFinal()Z

    .line 6
    move-result p3

    .line 7
    const/4 p4, 0x1

    .line 8
    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    iget-wide v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->finalStreamEndPositionUs:J

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 17
    .line 18
    cmp-long p3, v0, v2

    .line 19
    .line 20
    if-eqz p3, :cond_0

    .line 21
    .line 22
    cmp-long p3, p1, v0

    .line 23
    .line 24
    if-ltz p3, :cond_0

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->K()V

    .line 28
    .line 29
    iput-boolean p4, p0, Landroidx/media3/exoplayer/text/TextRenderer;->outputStreamEnded:Z

    .line 30
    .line 31
    :cond_0
    iget-boolean p3, p0, Landroidx/media3/exoplayer/text/TextRenderer;->outputStreamEnded:Z

    .line 32
    .line 33
    if-eqz p3, :cond_1

    .line 34
    return-void

    .line 35
    .line 36
    :cond_1
    iget-object p3, p0, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 37
    .line 38
    if-nez p3, :cond_2

    .line 39
    .line 40
    iget-object p3, p0, Landroidx/media3/exoplayer/text/TextRenderer;->decoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    .line 41
    .line 42
    .line 43
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    move-result-object p3

    .line 45
    .line 46
    check-cast p3, Landroidx/media3/extractor/text/SubtitleDecoder;

    .line 47
    .line 48
    .line 49
    invoke-interface {p3, p1, p2}, Landroidx/media3/extractor/text/SubtitleDecoder;->setPositionUs(J)V

    .line 50
    .line 51
    :try_start_0
    iget-object p3, p0, Landroidx/media3/exoplayer/text/TextRenderer;->decoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    .line 52
    .line 53
    .line 54
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    move-result-object p3

    .line 56
    .line 57
    check-cast p3, Landroidx/media3/extractor/text/SubtitleDecoder;

    .line 58
    .line 59
    .line 60
    invoke-interface {p3}, Landroidx/media3/decoder/Decoder;->dequeueOutputBuffer()Ljava/lang/Object;

    .line 61
    move-result-object p3

    .line 62
    .line 63
    check-cast p3, Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 64
    .line 65
    iput-object p3, p0, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;
    :try_end_0
    .catch Landroidx/media3/extractor/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    goto :goto_0

    .line 67
    :catch_0
    move-exception p1

    .line 68
    .line 69
    .line 70
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/text/TextRenderer;->H(Landroidx/media3/extractor/text/SubtitleDecoderException;)V

    .line 71
    return-void

    .line 72
    .line 73
    .line 74
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getState()I

    .line 75
    move-result p3

    .line 76
    const/4 v0, 0x2

    .line 77
    .line 78
    if-eq p3, v0, :cond_3

    .line 79
    return-void

    .line 80
    .line 81
    :cond_3
    iget-object p3, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 82
    const/4 v1, 0x0

    .line 83
    .line 84
    if-eqz p3, :cond_4

    .line 85
    .line 86
    .line 87
    invoke-direct {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->F()J

    .line 88
    move-result-wide v2

    .line 89
    move p3, v1

    .line 90
    .line 91
    :goto_1
    cmp-long v2, v2, p1

    .line 92
    .line 93
    if-gtz v2, :cond_5

    .line 94
    .line 95
    iget p3, p0, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitleEventIndex:I

    .line 96
    add-int/2addr p3, p4

    .line 97
    .line 98
    iput p3, p0, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitleEventIndex:I

    .line 99
    .line 100
    .line 101
    invoke-direct {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->F()J

    .line 102
    move-result-wide v2

    .line 103
    move p3, p4

    .line 104
    goto :goto_1

    .line 105
    :cond_4
    move p3, v1

    .line 106
    .line 107
    :cond_5
    iget-object v2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 108
    const/4 v3, 0x0

    .line 109
    .line 110
    if-eqz v2, :cond_9

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Landroidx/media3/decoder/Buffer;->h()Z

    .line 114
    move-result v4

    .line 115
    .line 116
    if-eqz v4, :cond_7

    .line 117
    .line 118
    if-nez p3, :cond_9

    .line 119
    .line 120
    .line 121
    invoke-direct {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->F()J

    .line 122
    move-result-wide v4

    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    const-wide v6, 0x7fffffffffffffffL

    .line 128
    .line 129
    cmp-long v2, v4, v6

    .line 130
    .line 131
    if-nez v2, :cond_9

    .line 132
    .line 133
    iget v2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->decoderReplacementState:I

    .line 134
    .line 135
    if-ne v2, v0, :cond_6

    .line 136
    .line 137
    .line 138
    invoke-direct {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->M()V

    .line 139
    goto :goto_2

    .line 140
    .line 141
    .line 142
    :cond_6
    invoke-direct {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->K()V

    .line 143
    .line 144
    iput-boolean p4, p0, Landroidx/media3/exoplayer/text/TextRenderer;->outputStreamEnded:Z

    .line 145
    goto :goto_2

    .line 146
    .line 147
    :cond_7
    iget-wide v4, v2, Landroidx/media3/decoder/DecoderOutputBuffer;->timeUs:J

    .line 148
    .line 149
    cmp-long v4, v4, p1

    .line 150
    .line 151
    if-gtz v4, :cond_9

    .line 152
    .line 153
    iget-object p3, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 154
    .line 155
    if-eqz p3, :cond_8

    .line 156
    .line 157
    .line 158
    invoke-virtual {p3}, Landroidx/media3/decoder/DecoderOutputBuffer;->n()V

    .line 159
    .line 160
    .line 161
    :cond_8
    invoke-virtual {v2, p1, p2}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->getNextEventTimeIndex(J)I

    .line 162
    move-result p3

    .line 163
    .line 164
    iput p3, p0, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitleEventIndex:I

    .line 165
    .line 166
    iput-object v2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 167
    .line 168
    iput-object v3, p0, Landroidx/media3/exoplayer/text/TextRenderer;->nextSubtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 169
    goto :goto_3

    .line 170
    .line 171
    :cond_9
    :goto_2
    if-eqz p3, :cond_a

    .line 172
    .line 173
    :goto_3
    iget-object p3, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 174
    .line 175
    .line 176
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/text/TextRenderer;->E(J)J

    .line 180
    move-result-wide v4

    .line 181
    .line 182
    .line 183
    invoke-direct {p0, v4, v5}, Landroidx/media3/exoplayer/text/TextRenderer;->G(J)J

    .line 184
    move-result-wide v4

    .line 185
    .line 186
    new-instance p3, Landroidx/media3/common/text/CueGroup;

    .line 187
    .line 188
    iget-object v2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->subtitle:Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v2, p1, p2}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->getCues(J)Ljava/util/List;

    .line 192
    move-result-object p1

    .line 193
    .line 194
    .line 195
    invoke-direct {p3, p1, v4, v5}, Landroidx/media3/common/text/CueGroup;-><init>(Ljava/util/List;J)V

    .line 196
    .line 197
    .line 198
    invoke-direct {p0, p3}, Landroidx/media3/exoplayer/text/TextRenderer;->O(Landroidx/media3/common/text/CueGroup;)V

    .line 199
    .line 200
    :cond_a
    iget p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->decoderReplacementState:I

    .line 201
    .line 202
    if-ne p1, v0, :cond_b

    .line 203
    return-void

    .line 204
    .line 205
    :cond_b
    :goto_4
    :try_start_1
    iget-boolean p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->inputStreamEnded:Z

    .line 206
    .line 207
    if-nez p1, :cond_12

    .line 208
    .line 209
    iget-object p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->nextInputBuffer:Landroidx/media3/extractor/text/SubtitleInputBuffer;

    .line 210
    .line 211
    if-nez p1, :cond_d

    .line 212
    .line 213
    iget-object p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->decoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    .line 214
    .line 215
    .line 216
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    move-result-object p1

    .line 218
    .line 219
    check-cast p1, Landroidx/media3/extractor/text/SubtitleDecoder;

    .line 220
    .line 221
    .line 222
    invoke-interface {p1}, Landroidx/media3/decoder/Decoder;->dequeueInputBuffer()Ljava/lang/Object;

    .line 223
    move-result-object p1

    .line 224
    .line 225
    check-cast p1, Landroidx/media3/extractor/text/SubtitleInputBuffer;

    .line 226
    .line 227
    if-nez p1, :cond_c

    .line 228
    return-void

    .line 229
    .line 230
    :cond_c
    iput-object p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->nextInputBuffer:Landroidx/media3/extractor/text/SubtitleInputBuffer;

    .line 231
    goto :goto_5

    .line 232
    :catch_1
    move-exception p1

    .line 233
    goto :goto_7

    .line 234
    .line 235
    :cond_d
    :goto_5
    iget p2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->decoderReplacementState:I

    .line 236
    .line 237
    if-ne p2, p4, :cond_e

    .line 238
    const/4 p2, 0x4

    .line 239
    .line 240
    .line 241
    invoke-virtual {p1, p2}, Landroidx/media3/decoder/Buffer;->l(I)V

    .line 242
    .line 243
    iget-object p2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->decoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    .line 244
    .line 245
    .line 246
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    move-result-object p2

    .line 248
    .line 249
    check-cast p2, Landroidx/media3/extractor/text/SubtitleDecoder;

    .line 250
    .line 251
    .line 252
    invoke-interface {p2, p1}, Landroidx/media3/decoder/Decoder;->queueInputBuffer(Ljava/lang/Object;)V

    .line 253
    .line 254
    iput-object v3, p0, Landroidx/media3/exoplayer/text/TextRenderer;->nextInputBuffer:Landroidx/media3/extractor/text/SubtitleInputBuffer;

    .line 255
    .line 256
    iput v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;->decoderReplacementState:I

    .line 257
    return-void

    .line 258
    .line 259
    :cond_e
    iget-object p2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->formatHolder:Landroidx/media3/exoplayer/FormatHolder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {p0, p2, p1, v1}, Landroidx/media3/exoplayer/BaseRenderer;->A(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    .line 263
    move-result p2

    .line 264
    const/4 p3, -0x4

    .line 265
    .line 266
    if-ne p2, p3, :cond_11

    .line 267
    .line 268
    .line 269
    invoke-virtual {p1}, Landroidx/media3/decoder/Buffer;->h()Z

    .line 270
    move-result p2

    .line 271
    .line 272
    if-eqz p2, :cond_f

    .line 273
    .line 274
    iput-boolean p4, p0, Landroidx/media3/exoplayer/text/TextRenderer;->inputStreamEnded:Z

    .line 275
    .line 276
    iput-boolean v1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->waitingForKeyFrame:Z

    .line 277
    goto :goto_6

    .line 278
    .line 279
    :cond_f
    iget-object p2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->formatHolder:Landroidx/media3/exoplayer/FormatHolder;

    .line 280
    .line 281
    iget-object p2, p2, Landroidx/media3/exoplayer/FormatHolder;->format:Landroidx/media3/common/Format;

    .line 282
    .line 283
    if-nez p2, :cond_10

    .line 284
    return-void

    .line 285
    .line 286
    :cond_10
    iget-wide p2, p2, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    .line 287
    .line 288
    iput-wide p2, p1, Landroidx/media3/extractor/text/SubtitleInputBuffer;->subsampleOffsetUs:J

    .line 289
    .line 290
    .line 291
    invoke-virtual {p1}, Landroidx/media3/decoder/DecoderInputBuffer;->p()V

    .line 292
    .line 293
    iget-boolean p2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->waitingForKeyFrame:Z

    .line 294
    .line 295
    .line 296
    invoke-virtual {p1}, Landroidx/media3/decoder/Buffer;->j()Z

    .line 297
    move-result p3

    .line 298
    xor-int/2addr p3, p4

    .line 299
    and-int/2addr p2, p3

    .line 300
    .line 301
    iput-boolean p2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->waitingForKeyFrame:Z

    .line 302
    .line 303
    :goto_6
    iget-boolean p2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->waitingForKeyFrame:Z

    .line 304
    .line 305
    if-nez p2, :cond_b

    .line 306
    .line 307
    iget-object p2, p0, Landroidx/media3/exoplayer/text/TextRenderer;->decoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    .line 308
    .line 309
    .line 310
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    move-result-object p2

    .line 312
    .line 313
    check-cast p2, Landroidx/media3/extractor/text/SubtitleDecoder;

    .line 314
    .line 315
    .line 316
    invoke-interface {p2, p1}, Landroidx/media3/decoder/Decoder;->queueInputBuffer(Ljava/lang/Object;)V

    .line 317
    .line 318
    iput-object v3, p0, Landroidx/media3/exoplayer/text/TextRenderer;->nextInputBuffer:Landroidx/media3/extractor/text/SubtitleInputBuffer;
    :try_end_1
    .catch Landroidx/media3/extractor/text/SubtitleDecoderException; {:try_start_1 .. :try_end_1} :catch_1

    .line 319
    goto :goto_4

    .line 320
    :cond_11
    const/4 p1, -0x3

    .line 321
    .line 322
    if-ne p2, p1, :cond_b

    .line 323
    return-void

    .line 324
    .line 325
    .line 326
    :goto_7
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/text/TextRenderer;->H(Landroidx/media3/extractor/text/SubtitleDecoderException;)V

    .line 327
    :cond_12
    return-void
.end method

.method protected t(JZ)V
    .locals 0

    .line 1
    .line 2
    iput-wide p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->lastRendererPositionUs:J

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->D()V

    .line 6
    const/4 p1, 0x0

    .line 7
    .line 8
    iput-boolean p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->inputStreamEnded:Z

    .line 9
    .line 10
    iput-boolean p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->outputStreamEnded:Z

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 16
    .line 17
    iput-wide p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->finalStreamEndPositionUs:J

    .line 18
    .line 19
    iget p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->decoderReplacementState:I

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->M()V

    .line 25
    goto :goto_0

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->K()V

    .line 29
    .line 30
    iget-object p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->decoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    check-cast p1, Landroidx/media3/extractor/text/SubtitleDecoder;

    .line 37
    .line 38
    .line 39
    invoke-interface {p1}, Landroidx/media3/decoder/Decoder;->flush()V

    .line 40
    :goto_0
    return-void
.end method

.method protected z([Landroidx/media3/common/Format;JJ)V
    .locals 0

    .line 1
    .line 2
    iput-wide p4, p0, Landroidx/media3/exoplayer/text/TextRenderer;->outputStreamOffsetUs:J

    .line 3
    const/4 p2, 0x0

    .line 4
    .line 5
    aget-object p1, p1, p2

    .line 6
    .line 7
    iput-object p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->streamFormat:Landroidx/media3/common/Format;

    .line 8
    .line 9
    iget-object p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->decoder:Landroidx/media3/extractor/text/SubtitleDecoder;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    const/4 p1, 0x1

    .line 13
    .line 14
    iput p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->decoderReplacementState:I

    .line 15
    goto :goto_0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/text/TextRenderer;->I()V

    .line 19
    :goto_0
    return-void
.end method
