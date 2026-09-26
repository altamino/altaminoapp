.class public final Lcom/google/android/exoplayer2/text/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/text/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/g$b;
    }
.end annotation


# static fields
.field private static final INPUT_BUFFER_AVAILABLE:I = 0x0

.field private static final INPUT_BUFFER_DEQUEUED:I = 0x1

.field private static final INPUT_BUFFER_QUEUED:I = 0x2

.field private static final OUTPUT_BUFFERS_COUNT:I = 0x2


# instance fields
.field private final availableOutputBuffers:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/google/android/exoplayer2/text/o;",
            ">;"
        }
    .end annotation
.end field

.field private final cueDecoder:Lcom/google/android/exoplayer2/text/c;

.field private final inputBuffer:Lcom/google/android/exoplayer2/text/n;

.field private inputBufferState:I

.field private released:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/exoplayer2/text/c;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/c;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/g;->cueDecoder:Lcom/google/android/exoplayer2/text/c;

    .line 11
    .line 12
    new-instance v0, Lcom/google/android/exoplayer2/text/n;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/n;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/g;->inputBuffer:Lcom/google/android/exoplayer2/text/n;

    .line 18
    .line 19
    new-instance v0, Ljava/util/ArrayDeque;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/g;->availableOutputBuffers:Ljava/util/Deque;

    .line 25
    const/4 v0, 0x0

    .line 26
    move v1, v0

    .line 27
    :goto_0
    const/4 v2, 0x2

    .line 28
    .line 29
    if-ge v1, v2, :cond_0

    .line 30
    .line 31
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/g;->availableOutputBuffers:Ljava/util/Deque;

    .line 32
    .line 33
    new-instance v3, Lcom/google/android/exoplayer2/text/g$a;

    .line 34
    .line 35
    .line 36
    invoke-direct {v3, p0}, Lcom/google/android/exoplayer2/text/g$a;-><init>(Lcom/google/android/exoplayer2/text/g;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v2, v3}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 40
    .line 41
    add-int/lit8 v1, v1, 0x1

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_0
    iput v0, p0, Lcom/google/android/exoplayer2/text/g;->inputBufferState:I

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/text/g;Lcom/google/android/exoplayer2/text/o;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/g;->e(Lcom/google/android/exoplayer2/text/o;)V

    .line 4
    return-void
.end method

.method private e(Lcom/google/android/exoplayer2/text/o;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/g;->availableOutputBuffers:Ljava/util/Deque;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Deque;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    const/4 v2, 0x1

    .line 9
    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    move v0, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/g;->availableOutputBuffers:Ljava/util/Deque;

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, p1}, Ljava/util/Deque;->contains(Ljava/lang/Object;)Z

    .line 22
    move-result v0

    .line 23
    xor-int/2addr v0, v2

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/o;->b()V

    .line 30
    .line 31
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/g;->availableOutputBuffers:Ljava/util/Deque;

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 35
    return-void
.end method


# virtual methods
.method public b()Lcom/google/android/exoplayer2/text/n;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/k;
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/g;->released:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 8
    .line 9
    iget v0, p0, Lcom/google/android/exoplayer2/text/g;->inputBufferState:I

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    const/4 v0, 0x0

    .line 13
    return-object v0

    .line 14
    .line 15
    :cond_0
    iput v1, p0, Lcom/google/android/exoplayer2/text/g;->inputBufferState:I

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/g;->inputBuffer:Lcom/google/android/exoplayer2/text/n;

    .line 18
    return-object v0
.end method

.method public c()Lcom/google/android/exoplayer2/text/o;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/k;
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/g;->released:Z

    .line 3
    .line 4
    xor-int/lit8 v0, v0, 0x1

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 8
    .line 9
    iget v0, p0, Lcom/google/android/exoplayer2/text/g;->inputBufferState:I

    .line 10
    const/4 v1, 0x2

    .line 11
    .line 12
    if-ne v0, v1, :cond_2

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/g;->availableOutputBuffers:Ljava/util/Deque;

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    goto :goto_1

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/g;->availableOutputBuffers:Ljava/util/Deque;

    .line 24
    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    check-cast v0, Lcom/google/android/exoplayer2/text/o;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/g;->inputBuffer:Lcom/google/android/exoplayer2/text/n;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/a;->h()Z

    .line 35
    move-result v1

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    const/4 v1, 0x4

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/decoder/a;->a(I)V

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_1
    new-instance v4, Lcom/google/android/exoplayer2/text/g$b;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/g;->inputBuffer:Lcom/google/android/exoplayer2/text/n;

    .line 47
    .line 48
    iget-wide v2, v1, Lcom/google/android/exoplayer2/decoder/g;->timeUs:J

    .line 49
    .line 50
    iget-object v5, p0, Lcom/google/android/exoplayer2/text/g;->cueDecoder:Lcom/google/android/exoplayer2/text/c;

    .line 51
    .line 52
    iget-object v1, v1, Lcom/google/android/exoplayer2/decoder/g;->data:Ljava/nio/ByteBuffer;

    .line 53
    .line 54
    .line 55
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    check-cast v1, Ljava/nio/ByteBuffer;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 62
    move-result-object v1

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/text/c;->a([B)Lcom/google/common/collect/a0;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    .line 69
    invoke-direct {v4, v2, v3, v1}, Lcom/google/android/exoplayer2/text/g$b;-><init>(JLcom/google/common/collect/a0;)V

    .line 70
    .line 71
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/g;->inputBuffer:Lcom/google/android/exoplayer2/text/n;

    .line 72
    .line 73
    iget-wide v2, v1, Lcom/google/android/exoplayer2/decoder/g;->timeUs:J

    .line 74
    .line 75
    const-wide/16 v5, 0x0

    .line 76
    move-object v1, v0

    .line 77
    .line 78
    .line 79
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/text/o;->n(JLcom/google/android/exoplayer2/text/i;J)V

    .line 80
    .line 81
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/g;->inputBuffer:Lcom/google/android/exoplayer2/text/n;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/g;->b()V

    .line 85
    const/4 v1, 0x0

    .line 86
    .line 87
    iput v1, p0, Lcom/google/android/exoplayer2/text/g;->inputBufferState:I

    .line 88
    return-object v0

    .line 89
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 90
    return-object v0
.end method

.method public d(Lcom/google/android/exoplayer2/text/n;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/k;
        }
    .end annotation

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/g;->released:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 8
    .line 9
    iget v0, p0, Lcom/google/android/exoplayer2/text/g;->inputBufferState:I

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    move v0, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v2

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/g;->inputBuffer:Lcom/google/android/exoplayer2/text/n;

    .line 21
    .line 22
    if-ne v0, p1, :cond_1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v1, v2

    .line 25
    .line 26
    .line 27
    :goto_1
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 28
    const/4 p1, 0x2

    .line 29
    .line 30
    iput p1, p0, Lcom/google/android/exoplayer2/text/g;->inputBufferState:I

    .line 31
    return-void
.end method

.method public bridge synthetic dequeueInputBuffer()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/decoder/f;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/g;->b()Lcom/google/android/exoplayer2/text/n;

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
            Lcom/google/android/exoplayer2/decoder/f;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/g;->c()Lcom/google/android/exoplayer2/text/o;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public flush()V
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/g;->released:Z

    .line 3
    .line 4
    xor-int/lit8 v0, v0, 0x1

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/g;->inputBuffer:Lcom/google/android/exoplayer2/text/n;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/g;->b()V

    .line 13
    const/4 v0, 0x0

    .line 14
    .line 15
    iput v0, p0, Lcom/google/android/exoplayer2/text/g;->inputBufferState:I

    .line 16
    return-void
.end method

.method public bridge synthetic queueInputBuffer(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/decoder/f;
        }
    .end annotation

    .line 1
    .line 2
    check-cast p1, Lcom/google/android/exoplayer2/text/n;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/g;->d(Lcom/google/android/exoplayer2/text/n;)V

    .line 6
    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/g;->released:Z

    return-void
.end method

.method public setPositionUs(J)V
    .locals 0

    return-void
.end method
