.class abstract Landroidx/media3/extractor/text/cea/CeaDecoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/text/SubtitleDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;,
        Landroidx/media3/extractor/text/cea/CeaDecoder$CeaOutputBuffer;
    }
.end annotation


# static fields
.field private static final NUM_INPUT_BUFFERS:I = 0xa

.field private static final NUM_OUTPUT_BUFFERS:I = 0x2


# instance fields
.field private final availableInputBuffers:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final availableOutputBuffers:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media3/extractor/text/SubtitleOutputBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private dequeuedInputBuffer:Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private playbackPositionUs:J

.field private queuedInputBufferCount:J

.field private final queuedInputBuffers:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayDeque;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->availableInputBuffers:Ljava/util/ArrayDeque;

    .line 11
    const/4 v0, 0x0

    .line 12
    move v1, v0

    .line 13
    .line 14
    :goto_0
    const/16 v2, 0xa

    .line 15
    .line 16
    if-ge v1, v2, :cond_0

    .line 17
    .line 18
    iget-object v2, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->availableInputBuffers:Ljava/util/ArrayDeque;

    .line 19
    .line 20
    new-instance v3, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    .line 21
    const/4 v4, 0x0

    .line 22
    .line 23
    .line 24
    invoke-direct {v3, v4}, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;-><init>(Landroidx/media3/extractor/text/cea/CeaDecoder$1;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_0
    new-instance v1, Ljava/util/ArrayDeque;

    .line 33
    .line 34
    .line 35
    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 36
    .line 37
    iput-object v1, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->availableOutputBuffers:Ljava/util/ArrayDeque;

    .line 38
    :goto_1
    const/4 v1, 0x2

    .line 39
    .line 40
    if-ge v0, v1, :cond_1

    .line 41
    .line 42
    iget-object v1, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->availableOutputBuffers:Ljava/util/ArrayDeque;

    .line 43
    .line 44
    new-instance v2, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaOutputBuffer;

    .line 45
    .line 46
    new-instance v3, Landroidx/media3/extractor/text/cea/b;

    .line 47
    .line 48
    .line 49
    invoke-direct {v3, p0}, Landroidx/media3/extractor/text/cea/b;-><init>(Landroidx/media3/extractor/text/cea/CeaDecoder;)V

    .line 50
    .line 51
    .line 52
    invoke-direct {v2, v3}, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaOutputBuffer;-><init>(Landroidx/media3/decoder/DecoderOutputBuffer$Owner;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    add-int/lit8 v0, v0, 0x1

    .line 58
    goto :goto_1

    .line 59
    .line 60
    :cond_1
    new-instance v0, Ljava/util/PriorityQueue;

    .line 61
    .line 62
    .line 63
    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    .line 64
    .line 65
    iput-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->queuedInputBuffers:Ljava/util/PriorityQueue;

    .line 66
    return-void
.end method

.method private i(Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/media3/decoder/DecoderInputBuffer;->b()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->availableInputBuffers:Ljava/util/ArrayDeque;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 9
    return-void
.end method


# virtual methods
.method protected abstract a()Landroidx/media3/extractor/text/Subtitle;
.end method

.method protected abstract b(Landroidx/media3/extractor/text/SubtitleInputBuffer;)V
.end method

.method public c()Landroidx/media3/extractor/text/SubtitleInputBuffer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/extractor/text/SubtitleDecoderException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->dequeuedInputBuffer:Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->g(Z)V

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->availableInputBuffers:Ljava/util/ArrayDeque;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    const/4 v0, 0x0

    .line 20
    return-object v0

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->availableInputBuffers:Ljava/util/ArrayDeque;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    check-cast v0, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    .line 29
    .line 30
    iput-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->dequeuedInputBuffer:Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    .line 31
    return-object v0
.end method

.method public d()Landroidx/media3/extractor/text/SubtitleOutputBuffer;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/extractor/text/SubtitleDecoderException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->availableOutputBuffers:Ljava/util/ArrayDeque;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    return-object v1

    .line 11
    .line 12
    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->queuedInputBuffers:Ljava/util/PriorityQueue;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-nez v0, :cond_3

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->queuedInputBuffers:Ljava/util/PriorityQueue;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Landroidx/media3/common/util/Util;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    .line 33
    .line 34
    iget-wide v2, v0, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    .line 35
    .line 36
    iget-wide v4, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->playbackPositionUs:J

    .line 37
    .line 38
    cmp-long v0, v2, v4

    .line 39
    .line 40
    if-gtz v0, :cond_3

    .line 41
    .line 42
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->queuedInputBuffers:Ljava/util/PriorityQueue;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    check-cast v0, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Landroidx/media3/common/util/Util;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    check-cast v0, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Landroidx/media3/decoder/Buffer;->h()Z

    .line 58
    move-result v2

    .line 59
    .line 60
    if-eqz v2, :cond_1

    .line 61
    .line 62
    iget-object v1, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->availableOutputBuffers:Ljava/util/ArrayDeque;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    check-cast v1, Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 69
    .line 70
    .line 71
    invoke-static {v1}, Landroidx/media3/common/util/Util;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    move-result-object v1

    .line 73
    .line 74
    check-cast v1, Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 75
    const/4 v2, 0x4

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v2}, Landroidx/media3/decoder/Buffer;->a(I)V

    .line 79
    .line 80
    .line 81
    invoke-direct {p0, v0}, Landroidx/media3/extractor/text/cea/CeaDecoder;->i(Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;)V

    .line 82
    return-object v1

    .line 83
    .line 84
    .line 85
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/media3/extractor/text/cea/CeaDecoder;->b(Landroidx/media3/extractor/text/SubtitleInputBuffer;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Landroidx/media3/extractor/text/cea/CeaDecoder;->g()Z

    .line 89
    move-result v2

    .line 90
    .line 91
    if-eqz v2, :cond_2

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Landroidx/media3/extractor/text/cea/CeaDecoder;->a()Landroidx/media3/extractor/text/Subtitle;

    .line 95
    move-result-object v6

    .line 96
    .line 97
    iget-object v1, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->availableOutputBuffers:Ljava/util/ArrayDeque;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    .line 101
    move-result-object v1

    .line 102
    .line 103
    check-cast v1, Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 104
    .line 105
    .line 106
    invoke-static {v1}, Landroidx/media3/common/util/Util;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    move-result-object v1

    .line 108
    .line 109
    check-cast v1, Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 110
    .line 111
    iget-wide v4, v0, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    const-wide v7, 0x7fffffffffffffffL

    .line 117
    move-object v3, v1

    .line 118
    .line 119
    .line 120
    invoke-virtual/range {v3 .. v8}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->o(JLandroidx/media3/extractor/text/Subtitle;J)V

    .line 121
    .line 122
    .line 123
    invoke-direct {p0, v0}, Landroidx/media3/extractor/text/cea/CeaDecoder;->i(Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;)V

    .line 124
    return-object v1

    .line 125
    .line 126
    .line 127
    :cond_2
    invoke-direct {p0, v0}, Landroidx/media3/extractor/text/cea/CeaDecoder;->i(Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;)V

    .line 128
    goto :goto_0

    .line 129
    :cond_3
    return-object v1
.end method

.method public bridge synthetic dequeueInputBuffer()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/decoder/DecoderException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/extractor/text/cea/CeaDecoder;->c()Landroidx/media3/extractor/text/SubtitleInputBuffer;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic dequeueOutputBuffer()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/decoder/DecoderException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/extractor/text/cea/CeaDecoder;->d()Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected final e()Landroidx/media3/extractor/text/SubtitleOutputBuffer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->availableOutputBuffers:Ljava/util/ArrayDeque;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 9
    return-object v0
.end method

.method protected final f()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->playbackPositionUs:J

    return-wide v0
.end method

.method public flush()V
    .locals 2

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    iput-wide v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->queuedInputBufferCount:J

    .line 5
    .line 6
    iput-wide v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->playbackPositionUs:J

    .line 7
    .line 8
    :goto_0
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->queuedInputBuffers:Ljava/util/PriorityQueue;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->queuedInputBuffers:Ljava/util/PriorityQueue;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    check-cast v0, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Landroidx/media3/common/util/Util;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    check-cast v0, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v0}, Landroidx/media3/extractor/text/cea/CeaDecoder;->i(Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;)V

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->dequeuedInputBuffer:Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, v0}, Landroidx/media3/extractor/text/cea/CeaDecoder;->i(Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;)V

    .line 40
    const/4 v0, 0x0

    .line 41
    .line 42
    iput-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->dequeuedInputBuffer:Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    .line 43
    :cond_1
    return-void
.end method

.method protected abstract g()Z
.end method

.method public h(Landroidx/media3/extractor/text/SubtitleInputBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/extractor/text/SubtitleDecoderException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->dequeuedInputBuffer:Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->a(Z)V

    .line 11
    .line 12
    check-cast p1, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/media3/decoder/Buffer;->f()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1}, Landroidx/media3/extractor/text/cea/CeaDecoder;->i(Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;)V

    .line 22
    goto :goto_1

    .line 23
    .line 24
    :cond_1
    iget-wide v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->queuedInputBufferCount:J

    .line 25
    .line 26
    const-wide/16 v2, 0x1

    .line 27
    add-long/2addr v2, v0

    .line 28
    .line 29
    iput-wide v2, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->queuedInputBufferCount:J

    .line 30
    .line 31
    .line 32
    invoke-static {p1, v0, v1}, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;->t(Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;J)J

    .line 33
    .line 34
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->queuedInputBuffers:Ljava/util/PriorityQueue;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 38
    :goto_1
    const/4 p1, 0x0

    .line 39
    .line 40
    iput-object p1, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->dequeuedInputBuffer:Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    .line 41
    return-void
.end method

.method protected j(Landroidx/media3/extractor/text/SubtitleOutputBuffer;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->b()V

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->availableOutputBuffers:Ljava/util/ArrayDeque;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 9
    return-void
.end method

.method public bridge synthetic queueInputBuffer(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/decoder/DecoderException;
        }
    .end annotation

    .line 1
    .line 2
    check-cast p1, Landroidx/media3/extractor/text/SubtitleInputBuffer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/text/cea/CeaDecoder;->h(Landroidx/media3/extractor/text/SubtitleInputBuffer;)V

    .line 6
    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public setPositionUs(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->playbackPositionUs:J

    return-void
.end method
