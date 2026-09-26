.class abstract Lcom/google/android/exoplayer2/text/cea/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/text/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/cea/e$c;,
        Lcom/google/android/exoplayer2/text/cea/e$b;
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
            "Lcom/google/android/exoplayer2/text/cea/e$b;",
            ">;"
        }
    .end annotation
.end field

.field private final availableOutputBuffers:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/android/exoplayer2/text/o;",
            ">;"
        }
    .end annotation
.end field

.field private dequeuedInputBuffer:Lcom/google/android/exoplayer2/text/cea/e$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private playbackPositionUs:J

.field private queuedInputBufferCount:J

.field private final queuedInputBuffers:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/google/android/exoplayer2/text/cea/e$b;",
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
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/e;->availableInputBuffers:Ljava/util/ArrayDeque;

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
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/cea/e;->availableInputBuffers:Ljava/util/ArrayDeque;

    .line 19
    .line 20
    new-instance v3, Lcom/google/android/exoplayer2/text/cea/e$b;

    .line 21
    const/4 v4, 0x0

    .line 22
    .line 23
    .line 24
    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/text/cea/e$b;-><init>(Lcom/google/android/exoplayer2/text/cea/e$a;)V

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
    iput-object v1, p0, Lcom/google/android/exoplayer2/text/cea/e;->availableOutputBuffers:Ljava/util/ArrayDeque;

    .line 38
    :goto_1
    const/4 v1, 0x2

    .line 39
    .line 40
    if-ge v0, v1, :cond_1

    .line 41
    .line 42
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/e;->availableOutputBuffers:Ljava/util/ArrayDeque;

    .line 43
    .line 44
    new-instance v2, Lcom/google/android/exoplayer2/text/cea/e$c;

    .line 45
    .line 46
    new-instance v3, Lcom/google/android/exoplayer2/text/cea/d;

    .line 47
    .line 48
    .line 49
    invoke-direct {v3, p0}, Lcom/google/android/exoplayer2/text/cea/d;-><init>(Lcom/google/android/exoplayer2/text/cea/e;)V

    .line 50
    .line 51
    .line 52
    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/text/cea/e$c;-><init>(Lcom/google/android/exoplayer2/decoder/h$a;)V

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
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/e;->queuedInputBuffers:Ljava/util/PriorityQueue;

    .line 66
    return-void
.end method

.method private i(Lcom/google/android/exoplayer2/text/cea/e$b;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/g;->b()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/e;->availableInputBuffers:Ljava/util/ArrayDeque;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 9
    return-void
.end method


# virtual methods
.method protected abstract a()Lcom/google/android/exoplayer2/text/i;
.end method

.method protected abstract b(Lcom/google/android/exoplayer2/text/n;)V
.end method

.method public c()Lcom/google/android/exoplayer2/text/n;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/k;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/e;->dequeuedInputBuffer:Lcom/google/android/exoplayer2/text/cea/e$b;

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
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/e;->availableInputBuffers:Ljava/util/ArrayDeque;

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/e;->availableInputBuffers:Ljava/util/ArrayDeque;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    check-cast v0, Lcom/google/android/exoplayer2/text/cea/e$b;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/e;->dequeuedInputBuffer:Lcom/google/android/exoplayer2/text/cea/e$b;

    .line 31
    return-object v0
.end method

.method public d()Lcom/google/android/exoplayer2/text/o;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/k;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/e;->availableOutputBuffers:Ljava/util/ArrayDeque;

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/e;->queuedInputBuffers:Ljava/util/PriorityQueue;

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/e;->queuedInputBuffers:Ljava/util/PriorityQueue;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    check-cast v0, Lcom/google/android/exoplayer2/text/cea/e$b;

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Lcom/google/android/exoplayer2/text/cea/e$b;

    .line 33
    .line 34
    iget-wide v2, v0, Lcom/google/android/exoplayer2/decoder/g;->timeUs:J

    .line 35
    .line 36
    iget-wide v4, p0, Lcom/google/android/exoplayer2/text/cea/e;->playbackPositionUs:J

    .line 37
    .line 38
    cmp-long v0, v2, v4

    .line 39
    .line 40
    if-gtz v0, :cond_3

    .line 41
    .line 42
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/e;->queuedInputBuffers:Ljava/util/PriorityQueue;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 46
    move-result-object v0

    .line 47
    .line 48
    check-cast v0, Lcom/google/android/exoplayer2/text/cea/e$b;

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    check-cast v0, Lcom/google/android/exoplayer2/text/cea/e$b;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/a;->h()Z

    .line 58
    move-result v2

    .line 59
    .line 60
    if-eqz v2, :cond_1

    .line 61
    .line 62
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/e;->availableOutputBuffers:Ljava/util/ArrayDeque;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    .line 66
    move-result-object v1

    .line 67
    .line 68
    check-cast v1, Lcom/google/android/exoplayer2/text/o;

    .line 69
    .line 70
    .line 71
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    move-result-object v1

    .line 73
    .line 74
    check-cast v1, Lcom/google/android/exoplayer2/text/o;

    .line 75
    const/4 v2, 0x4

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/decoder/a;->a(I)V

    .line 79
    .line 80
    .line 81
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/cea/e;->i(Lcom/google/android/exoplayer2/text/cea/e$b;)V

    .line 82
    return-object v1

    .line 83
    .line 84
    .line 85
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/text/cea/e;->b(Lcom/google/android/exoplayer2/text/n;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/e;->g()Z

    .line 89
    move-result v2

    .line 90
    .line 91
    if-eqz v2, :cond_2

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/e;->a()Lcom/google/android/exoplayer2/text/i;

    .line 95
    move-result-object v6

    .line 96
    .line 97
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/cea/e;->availableOutputBuffers:Ljava/util/ArrayDeque;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    .line 101
    move-result-object v1

    .line 102
    .line 103
    check-cast v1, Lcom/google/android/exoplayer2/text/o;

    .line 104
    .line 105
    .line 106
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    move-result-object v1

    .line 108
    .line 109
    check-cast v1, Lcom/google/android/exoplayer2/text/o;

    .line 110
    .line 111
    iget-wide v4, v0, Lcom/google/android/exoplayer2/decoder/g;->timeUs:J

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
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/text/o;->n(JLcom/google/android/exoplayer2/text/i;J)V

    .line 121
    .line 122
    .line 123
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/cea/e;->i(Lcom/google/android/exoplayer2/text/cea/e$b;)V

    .line 124
    return-object v1

    .line 125
    .line 126
    .line 127
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/cea/e;->i(Lcom/google/android/exoplayer2/text/cea/e$b;)V

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
            Lcom/google/android/exoplayer2/decoder/f;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/e;->c()Lcom/google/android/exoplayer2/text/n;

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
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/e;->d()Lcom/google/android/exoplayer2/text/o;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected final e()Lcom/google/android/exoplayer2/text/o;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/e;->availableOutputBuffers:Ljava/util/ArrayDeque;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/exoplayer2/text/o;

    .line 9
    return-object v0
.end method

.method protected final f()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/text/cea/e;->playbackPositionUs:J

    return-wide v0
.end method

.method public flush()V
    .locals 2

    .line 1
    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    iput-wide v0, p0, Lcom/google/android/exoplayer2/text/cea/e;->queuedInputBufferCount:J

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/google/android/exoplayer2/text/cea/e;->playbackPositionUs:J

    .line 7
    .line 8
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/e;->queuedInputBuffers:Ljava/util/PriorityQueue;

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/e;->queuedInputBuffers:Ljava/util/PriorityQueue;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    check-cast v0, Lcom/google/android/exoplayer2/text/cea/e$b;

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    check-cast v0, Lcom/google/android/exoplayer2/text/cea/e$b;

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/cea/e;->i(Lcom/google/android/exoplayer2/text/cea/e$b;)V

    .line 32
    goto :goto_0

    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/e;->dequeuedInputBuffer:Lcom/google/android/exoplayer2/text/cea/e$b;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/cea/e;->i(Lcom/google/android/exoplayer2/text/cea/e$b;)V

    .line 40
    const/4 v0, 0x0

    .line 41
    .line 42
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/cea/e;->dequeuedInputBuffer:Lcom/google/android/exoplayer2/text/cea/e$b;

    .line 43
    :cond_1
    return-void
.end method

.method protected abstract g()Z
.end method

.method public h(Lcom/google/android/exoplayer2/text/n;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/k;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/e;->dequeuedInputBuffer:Lcom/google/android/exoplayer2/text/cea/e$b;

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
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 11
    .line 12
    check-cast p1, Lcom/google/android/exoplayer2/text/cea/e$b;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/a;->f()Z

    .line 16
    move-result v0

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/cea/e;->i(Lcom/google/android/exoplayer2/text/cea/e$b;)V

    .line 22
    goto :goto_1

    .line 23
    .line 24
    :cond_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/text/cea/e;->queuedInputBufferCount:J

    .line 25
    .line 26
    const-wide/16 v2, 0x1

    .line 27
    add-long/2addr v2, v0

    .line 28
    .line 29
    iput-wide v2, p0, Lcom/google/android/exoplayer2/text/cea/e;->queuedInputBufferCount:J

    .line 30
    .line 31
    .line 32
    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/text/cea/e$b;->s(Lcom/google/android/exoplayer2/text/cea/e$b;J)J

    .line 33
    .line 34
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/e;->queuedInputBuffers:Ljava/util/PriorityQueue;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 38
    :goto_1
    const/4 p1, 0x0

    .line 39
    .line 40
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/cea/e;->dequeuedInputBuffer:Lcom/google/android/exoplayer2/text/cea/e$b;

    .line 41
    return-void
.end method

.method protected j(Lcom/google/android/exoplayer2/text/o;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/o;->b()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/cea/e;->availableOutputBuffers:Ljava/util/ArrayDeque;

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
            Lcom/google/android/exoplayer2/decoder/f;
        }
    .end annotation

    .line 1
    .line 2
    check-cast p1, Lcom/google/android/exoplayer2/text/n;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/cea/e;->h(Lcom/google/android/exoplayer2/text/n;)V

    .line 6
    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public setPositionUs(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/text/cea/e;->playbackPositionUs:J

    return-void
.end method
