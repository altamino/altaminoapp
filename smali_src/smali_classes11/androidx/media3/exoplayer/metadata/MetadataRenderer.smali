.class public final Landroidx/media3/exoplayer/metadata/MetadataRenderer;
.super Landroidx/media3/exoplayer/BaseRenderer;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# static fields
.field private static final MSG_INVOKE_RENDERER:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MetadataRenderer"


# instance fields
.field private final buffer:Landroidx/media3/extractor/metadata/MetadataInputBuffer;

.field private decoder:Landroidx/media3/extractor/metadata/MetadataDecoder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final decoderFactory:Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;

.field private inputStreamEnded:Z

.field private final output:Landroidx/media3/exoplayer/metadata/MetadataOutput;

.field private final outputHandler:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final outputMetadataEarly:Z

.field private outputStreamEnded:Z

.field private outputStreamOffsetUs:J

.field private pendingMetadata:Landroidx/media3/common/Metadata;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private subsampleOffsetUs:J


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/metadata/MetadataOutput;Landroid/os/Looper;)V
    .locals 1
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;->DEFAULT:Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;

    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/exoplayer/metadata/MetadataRenderer;-><init>(Landroidx/media3/exoplayer/metadata/MetadataOutput;Landroid/os/Looper;Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/metadata/MetadataOutput;Landroid/os/Looper;Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;)V
    .locals 1
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/media3/exoplayer/metadata/MetadataRenderer;-><init>(Landroidx/media3/exoplayer/metadata/MetadataOutput;Landroid/os/Looper;Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;Z)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/metadata/MetadataOutput;Landroid/os/Looper;Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;Z)V
    .locals 1
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x5

    .line 3
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/BaseRenderer;-><init>(I)V

    .line 4
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/metadata/MetadataOutput;

    iput-object p1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->output:Landroidx/media3/exoplayer/metadata/MetadataOutput;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p2, p0}, Landroidx/media3/common/util/Util;->v(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->outputHandler:Landroid/os/Handler;

    .line 6
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;

    iput-object p1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->decoderFactory:Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;

    iput-boolean p4, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->outputMetadataEarly:Z

    .line 7
    new-instance p1, Landroidx/media3/extractor/metadata/MetadataInputBuffer;

    invoke-direct {p1}, Landroidx/media3/extractor/metadata/MetadataInputBuffer;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->buffer:Landroidx/media3/extractor/metadata/MetadataInputBuffer;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->outputStreamOffsetUs:J

    return-void
.end method

.method private D(Landroidx/media3/common/Metadata;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Metadata;",
            "Ljava/util/List<",
            "Landroidx/media3/common/Metadata$Entry;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/Metadata;->h()I

    .line 5
    move-result v1

    .line 6
    .line 7
    if-ge v0, v1, :cond_2

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroidx/media3/common/Metadata;->g(I)Landroidx/media3/common/Metadata$Entry;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-interface {v1}, Landroidx/media3/common/Metadata$Entry;->r()Landroidx/media3/common/Format;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v2, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->decoderFactory:Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;

    .line 20
    .line 21
    .line 22
    invoke-interface {v2, v1}, Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;->a(Landroidx/media3/common/Format;)Z

    .line 23
    move-result v2

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    iget-object v2, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->decoderFactory:Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;

    .line 28
    .line 29
    .line 30
    invoke-interface {v2, v1}, Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;->b(Landroidx/media3/common/Format;)Landroidx/media3/extractor/metadata/MetadataDecoder;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroidx/media3/common/Metadata;->g(I)Landroidx/media3/common/Metadata$Entry;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    .line 38
    invoke-interface {v2}, Landroidx/media3/common/Metadata$Entry;->q()[B

    .line 39
    move-result-object v2

    .line 40
    .line 41
    .line 42
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    move-result-object v2

    .line 44
    .line 45
    check-cast v2, [B

    .line 46
    .line 47
    iget-object v3, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->buffer:Landroidx/media3/extractor/metadata/MetadataInputBuffer;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Landroidx/media3/decoder/DecoderInputBuffer;->b()V

    .line 51
    .line 52
    iget-object v3, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->buffer:Landroidx/media3/extractor/metadata/MetadataInputBuffer;

    .line 53
    array-length v4, v2

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v4}, Landroidx/media3/decoder/DecoderInputBuffer;->o(I)V

    .line 57
    .line 58
    iget-object v3, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->buffer:Landroidx/media3/extractor/metadata/MetadataInputBuffer;

    .line 59
    .line 60
    iget-object v3, v3, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 61
    .line 62
    .line 63
    invoke-static {v3}, Landroidx/media3/common/util/Util;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    move-result-object v3

    .line 65
    .line 66
    check-cast v3, Ljava/nio/ByteBuffer;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 70
    .line 71
    iget-object v2, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->buffer:Landroidx/media3/extractor/metadata/MetadataInputBuffer;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Landroidx/media3/decoder/DecoderInputBuffer;->p()V

    .line 75
    .line 76
    iget-object v2, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->buffer:Landroidx/media3/extractor/metadata/MetadataInputBuffer;

    .line 77
    .line 78
    .line 79
    invoke-interface {v1, v2}, Landroidx/media3/extractor/metadata/MetadataDecoder;->a(Landroidx/media3/extractor/metadata/MetadataInputBuffer;)Landroidx/media3/common/Metadata;

    .line 80
    move-result-object v1

    .line 81
    .line 82
    if-eqz v1, :cond_1

    .line 83
    .line 84
    .line 85
    invoke-direct {p0, v1, p2}, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->D(Landroidx/media3/common/Metadata;Ljava/util/List;)V

    .line 86
    goto :goto_1

    .line 87
    .line 88
    .line 89
    :cond_0
    invoke-virtual {p1, v0}, Landroidx/media3/common/Metadata;->g(I)Landroidx/media3/common/Metadata$Entry;

    .line 90
    move-result-object v1

    .line 91
    .line 92
    .line 93
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 96
    goto :goto_0

    .line 97
    :cond_2
    return-void
.end method

.method private E(J)J
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
    iget-wide v5, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->outputStreamOffsetUs:J

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
    iget-wide v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->outputStreamOffsetUs:J

    .line 30
    sub-long/2addr p1, v0

    .line 31
    return-wide p1
.end method

.method private F(Landroidx/media3/common/Metadata;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->outputHandler:Landroid/os/Handler;

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
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->G(Landroidx/media3/common/Metadata;)V

    .line 17
    :goto_0
    return-void
.end method

.method private G(Landroidx/media3/common/Metadata;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->output:Landroidx/media3/exoplayer/metadata/MetadataOutput;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/metadata/MetadataOutput;->onMetadata(Landroidx/media3/common/Metadata;)V

    .line 6
    return-void
.end method

.method private H(J)Z
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->pendingMetadata:Landroidx/media3/common/Metadata;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-boolean v2, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->outputMetadataEarly:Z

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    iget-wide v2, v0, Landroidx/media3/common/Metadata;->presentationTimeUs:J

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->E(J)J

    .line 15
    move-result-wide p1

    .line 16
    .line 17
    cmp-long p1, v2, p1

    .line 18
    .line 19
    if-gtz p1, :cond_1

    .line 20
    .line 21
    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->pendingMetadata:Landroidx/media3/common/Metadata;

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->F(Landroidx/media3/common/Metadata;)V

    .line 25
    const/4 p1, 0x0

    .line 26
    .line 27
    iput-object p1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->pendingMetadata:Landroidx/media3/common/Metadata;

    .line 28
    move p1, v1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 p1, 0x0

    .line 31
    .line 32
    :goto_0
    iget-boolean p2, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->inputStreamEnded:Z

    .line 33
    .line 34
    if-eqz p2, :cond_2

    .line 35
    .line 36
    iget-object p2, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->pendingMetadata:Landroidx/media3/common/Metadata;

    .line 37
    .line 38
    if-nez p2, :cond_2

    .line 39
    .line 40
    iput-boolean v1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->outputStreamEnded:Z

    .line 41
    :cond_2
    return p1
.end method

.method private I()V
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->inputStreamEnded:Z

    .line 3
    .line 4
    if-nez v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->pendingMetadata:Landroidx/media3/common/Metadata;

    .line 7
    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->buffer:Landroidx/media3/extractor/metadata/MetadataInputBuffer;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->b()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->m()Landroidx/media3/exoplayer/FormatHolder;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->buffer:Landroidx/media3/extractor/metadata/MetadataInputBuffer;

    .line 20
    const/4 v2, 0x0

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/exoplayer/BaseRenderer;->A(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    .line 24
    move-result v1

    .line 25
    const/4 v2, -0x4

    .line 26
    .line 27
    if-ne v1, v2, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->buffer:Landroidx/media3/extractor/metadata/MetadataInputBuffer;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroidx/media3/decoder/Buffer;->h()Z

    .line 33
    move-result v0

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    const/4 v0, 0x1

    .line 37
    .line 38
    iput-boolean v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->inputStreamEnded:Z

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->buffer:Landroidx/media3/extractor/metadata/MetadataInputBuffer;

    .line 42
    .line 43
    iget-wide v1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->subsampleOffsetUs:J

    .line 44
    .line 45
    iput-wide v1, v0, Landroidx/media3/extractor/metadata/MetadataInputBuffer;->subsampleOffsetUs:J

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->p()V

    .line 49
    .line 50
    iget-object v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->decoder:Landroidx/media3/extractor/metadata/MetadataDecoder;

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Landroidx/media3/common/util/Util;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    check-cast v0, Landroidx/media3/extractor/metadata/MetadataDecoder;

    .line 57
    .line 58
    iget-object v1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->buffer:Landroidx/media3/extractor/metadata/MetadataInputBuffer;

    .line 59
    .line 60
    .line 61
    invoke-interface {v0, v1}, Landroidx/media3/extractor/metadata/MetadataDecoder;->a(Landroidx/media3/extractor/metadata/MetadataInputBuffer;)Landroidx/media3/common/Metadata;

    .line 62
    move-result-object v0

    .line 63
    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    new-instance v1, Ljava/util/ArrayList;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Landroidx/media3/common/Metadata;->h()I

    .line 70
    move-result v2

    .line 71
    .line 72
    .line 73
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 74
    .line 75
    .line 76
    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->D(Landroidx/media3/common/Metadata;Ljava/util/List;)V

    .line 77
    .line 78
    .line 79
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 80
    move-result v0

    .line 81
    .line 82
    if-nez v0, :cond_2

    .line 83
    .line 84
    new-instance v0, Landroidx/media3/common/Metadata;

    .line 85
    .line 86
    iget-object v2, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->buffer:Landroidx/media3/extractor/metadata/MetadataInputBuffer;

    .line 87
    .line 88
    iget-wide v2, v2, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    .line 89
    .line 90
    .line 91
    invoke-direct {p0, v2, v3}, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->E(J)J

    .line 92
    move-result-wide v2

    .line 93
    .line 94
    .line 95
    invoke-direct {v0, v2, v3, v1}, Landroidx/media3/common/Metadata;-><init>(JLjava/util/List;)V

    .line 96
    .line 97
    iput-object v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->pendingMetadata:Landroidx/media3/common/Metadata;

    .line 98
    goto :goto_0

    .line 99
    :cond_1
    const/4 v2, -0x5

    .line 100
    .line 101
    if-ne v1, v2, :cond_2

    .line 102
    .line 103
    iget-object v0, v0, Landroidx/media3/exoplayer/FormatHolder;->format:Landroidx/media3/common/Format;

    .line 104
    .line 105
    .line 106
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    move-result-object v0

    .line 108
    .line 109
    check-cast v0, Landroidx/media3/common/Format;

    .line 110
    .line 111
    iget-wide v0, v0, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    .line 112
    .line 113
    iput-wide v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->subsampleOffsetUs:J

    .line 114
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/common/Format;)I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->decoderFactory:Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;->a(Landroidx/media3/common/Format;)Z

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
    :cond_1
    const/4 p1, 0x0

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Landroidx/media3/exoplayer/h2;->c(I)I

    .line 25
    move-result p1

    .line 26
    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "MetadataRenderer"

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
    check-cast p1, Landroidx/media3/common/Metadata;

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->G(Landroidx/media3/common/Metadata;)V

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

    iget-boolean v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->outputStreamEnded:Z

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

    iput-object v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->pendingMetadata:Landroidx/media3/common/Metadata;

    iput-object v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->decoder:Landroidx/media3/extractor/metadata/MetadataDecoder;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->outputStreamOffsetUs:J

    return-void
.end method

.method public render(JJ)V
    .locals 0

    .line 1
    const/4 p3, 0x1

    .line 2
    .line 3
    :goto_0
    if-eqz p3, :cond_0

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->I()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->H(J)Z

    .line 10
    move-result p3

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    return-void
.end method

.method protected t(JZ)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->pendingMetadata:Landroidx/media3/common/Metadata;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->inputStreamEnded:Z

    iput-boolean p1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->outputStreamEnded:Z

    return-void
.end method

.method protected z([Landroidx/media3/common/Format;JJ)V
    .locals 2

    .line 1
    .line 2
    iget-object p2, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->decoderFactory:Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;

    .line 3
    const/4 p3, 0x0

    .line 4
    .line 5
    aget-object p1, p1, p3

    .line 6
    .line 7
    .line 8
    invoke-interface {p2, p1}, Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;->b(Landroidx/media3/common/Format;)Landroidx/media3/extractor/metadata/MetadataDecoder;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    iput-object p1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->decoder:Landroidx/media3/extractor/metadata/MetadataDecoder;

    .line 12
    .line 13
    iget-object p1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->pendingMetadata:Landroidx/media3/common/Metadata;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-wide p2, p1, Landroidx/media3/common/Metadata;->presentationTimeUs:J

    .line 18
    .line 19
    iget-wide v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->outputStreamOffsetUs:J

    .line 20
    add-long/2addr p2, v0

    .line 21
    sub-long/2addr p2, p4

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2, p3}, Landroidx/media3/common/Metadata;->e(J)Landroidx/media3/common/Metadata;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    iput-object p1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->pendingMetadata:Landroidx/media3/common/Metadata;

    .line 28
    .line 29
    :cond_0
    iput-wide p4, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->outputStreamOffsetUs:J

    .line 30
    return-void
.end method
