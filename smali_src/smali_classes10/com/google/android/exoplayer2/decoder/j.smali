.class public abstract Lcom/google/android/exoplayer2/decoder/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/decoder/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lcom/google/android/exoplayer2/decoder/g;",
        "O:",
        "Lcom/google/android/exoplayer2/decoder/h;",
        "E:",
        "Lcom/google/android/exoplayer2/decoder/f;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/decoder/d<",
        "TI;TO;TE;>;"
    }
.end annotation


# instance fields
.field private availableInputBufferCount:I

.field private final availableInputBuffers:[Lcom/google/android/exoplayer2/decoder/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TI;"
        }
    .end annotation
.end field

.field private availableOutputBufferCount:I

.field private final availableOutputBuffers:[Lcom/google/android/exoplayer2/decoder/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TO;"
        }
    .end annotation
.end field

.field private final decodeThread:Ljava/lang/Thread;

.field private dequeuedInputBuffer:Lcom/google/android/exoplayer2/decoder/g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field

.field private exception:Lcom/google/android/exoplayer2/decoder/f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private flushed:Z

.field private final lock:Ljava/lang/Object;

.field private final queuedInputBuffers:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "TI;>;"
        }
    .end annotation
.end field

.field private final queuedOutputBuffers:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "TO;>;"
        }
    .end annotation
.end field

.field private released:Z

.field private skippedOutputBufferCount:I


# direct methods
.method protected constructor <init>([Lcom/google/android/exoplayer2/decoder/g;[Lcom/google/android/exoplayer2/decoder/h;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TI;[TO;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/exoplayer2/decoder/j;->lock:Ljava/lang/Object;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayDeque;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/google/android/exoplayer2/decoder/j;->queuedInputBuffers:Ljava/util/ArrayDeque;

    .line 18
    .line 19
    new-instance v0, Ljava/util/ArrayDeque;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/google/android/exoplayer2/decoder/j;->queuedOutputBuffers:Ljava/util/ArrayDeque;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/google/android/exoplayer2/decoder/j;->availableInputBuffers:[Lcom/google/android/exoplayer2/decoder/g;

    .line 27
    array-length p1, p1

    .line 28
    .line 29
    iput p1, p0, Lcom/google/android/exoplayer2/decoder/j;->availableInputBufferCount:I

    .line 30
    const/4 p1, 0x0

    .line 31
    move v0, p1

    .line 32
    .line 33
    :goto_0
    iget v1, p0, Lcom/google/android/exoplayer2/decoder/j;->availableInputBufferCount:I

    .line 34
    .line 35
    if-ge v0, v1, :cond_0

    .line 36
    .line 37
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/j;->availableInputBuffers:[Lcom/google/android/exoplayer2/decoder/g;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/decoder/j;->c()Lcom/google/android/exoplayer2/decoder/g;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    aput-object v2, v1, v0

    .line 44
    .line 45
    add-int/lit8 v0, v0, 0x1

    .line 46
    goto :goto_0

    .line 47
    .line 48
    :cond_0
    iput-object p2, p0, Lcom/google/android/exoplayer2/decoder/j;->availableOutputBuffers:[Lcom/google/android/exoplayer2/decoder/h;

    .line 49
    array-length p2, p2

    .line 50
    .line 51
    iput p2, p0, Lcom/google/android/exoplayer2/decoder/j;->availableOutputBufferCount:I

    .line 52
    .line 53
    :goto_1
    iget p2, p0, Lcom/google/android/exoplayer2/decoder/j;->availableOutputBufferCount:I

    .line 54
    .line 55
    if-ge p1, p2, :cond_1

    .line 56
    .line 57
    iget-object p2, p0, Lcom/google/android/exoplayer2/decoder/j;->availableOutputBuffers:[Lcom/google/android/exoplayer2/decoder/h;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/decoder/j;->d()Lcom/google/android/exoplayer2/decoder/h;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    aput-object v0, p2, p1

    .line 64
    .line 65
    add-int/lit8 p1, p1, 0x1

    .line 66
    goto :goto_1

    .line 67
    .line 68
    :cond_1
    new-instance p1, Lcom/google/android/exoplayer2/decoder/j$a;

    .line 69
    .line 70
    const-string p2, "ExoPlayer:SimpleDecoder"

    .line 71
    .line 72
    .line 73
    invoke-direct {p1, p0, p2}, Lcom/google/android/exoplayer2/decoder/j$a;-><init>(Lcom/google/android/exoplayer2/decoder/j;Ljava/lang/String;)V

    .line 74
    .line 75
    iput-object p1, p0, Lcom/google/android/exoplayer2/decoder/j;->decodeThread:Ljava/lang/Thread;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 79
    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/decoder/j;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/j;->p()V

    .line 4
    return-void
.end method

.method private b()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/j;->queuedInputBuffers:Ljava/util/ArrayDeque;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget v0, p0, Lcom/google/android/exoplayer2/decoder/j;->availableOutputBufferCount:I

    .line 11
    .line 12
    if-lez v0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method private g()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/j;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/decoder/j;->released:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/j;->b()Z

    .line 11
    move-result v1

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/j;->lock:Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    .line 22
    goto/16 :goto_5

    .line 23
    .line 24
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/decoder/j;->released:Z

    .line 25
    const/4 v2, 0x0

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    monitor-exit v0

    .line 29
    return v2

    .line 30
    .line 31
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/j;->queuedInputBuffers:Ljava/util/ArrayDeque;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    check-cast v1, Lcom/google/android/exoplayer2/decoder/g;

    .line 38
    .line 39
    iget-object v3, p0, Lcom/google/android/exoplayer2/decoder/j;->availableOutputBuffers:[Lcom/google/android/exoplayer2/decoder/h;

    .line 40
    .line 41
    iget v4, p0, Lcom/google/android/exoplayer2/decoder/j;->availableOutputBufferCount:I

    .line 42
    const/4 v5, 0x1

    .line 43
    sub-int/2addr v4, v5

    .line 44
    .line 45
    iput v4, p0, Lcom/google/android/exoplayer2/decoder/j;->availableOutputBufferCount:I

    .line 46
    .line 47
    aget-object v3, v3, v4

    .line 48
    .line 49
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/decoder/j;->flushed:Z

    .line 50
    .line 51
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/decoder/j;->flushed:Z

    .line 52
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/a;->h()Z

    .line 56
    move-result v0

    .line 57
    .line 58
    if-eqz v0, :cond_2

    .line 59
    const/4 v0, 0x4

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/decoder/a;->a(I)V

    .line 63
    goto :goto_2

    .line 64
    .line 65
    .line 66
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/a;->f()Z

    .line 67
    move-result v0

    .line 68
    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    const/high16 v0, -0x80000000

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/decoder/a;->a(I)V

    .line 75
    .line 76
    .line 77
    :cond_3
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/a;->i()Z

    .line 78
    move-result v0

    .line 79
    .line 80
    if-eqz v0, :cond_4

    .line 81
    .line 82
    const/high16 v0, 0x8000000

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/decoder/a;->a(I)V

    .line 86
    .line 87
    .line 88
    :cond_4
    :try_start_1
    invoke-virtual {p0, v1, v3, v4}, Lcom/google/android/exoplayer2/decoder/j;->f(Lcom/google/android/exoplayer2/decoder/g;Lcom/google/android/exoplayer2/decoder/h;Z)Lcom/google/android/exoplayer2/decoder/f;

    .line 89
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    .line 90
    goto :goto_1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/decoder/j;->e(Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/decoder/f;

    .line 95
    move-result-object v0

    .line 96
    goto :goto_1

    .line 97
    :catch_1
    move-exception v0

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/decoder/j;->e(Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/decoder/f;

    .line 101
    move-result-object v0

    .line 102
    .line 103
    :goto_1
    if-eqz v0, :cond_5

    .line 104
    .line 105
    iget-object v4, p0, Lcom/google/android/exoplayer2/decoder/j;->lock:Ljava/lang/Object;

    .line 106
    monitor-enter v4

    .line 107
    .line 108
    :try_start_2
    iput-object v0, p0, Lcom/google/android/exoplayer2/decoder/j;->exception:Lcom/google/android/exoplayer2/decoder/f;

    .line 109
    monitor-exit v4

    .line 110
    return v2

    .line 111
    :catchall_1
    move-exception v0

    .line 112
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 113
    throw v0

    .line 114
    .line 115
    :cond_5
    :goto_2
    iget-object v4, p0, Lcom/google/android/exoplayer2/decoder/j;->lock:Ljava/lang/Object;

    .line 116
    monitor-enter v4

    .line 117
    .line 118
    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/decoder/j;->flushed:Z

    .line 119
    .line 120
    if-eqz v0, :cond_6

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/decoder/h;->l()V

    .line 124
    goto :goto_3

    .line 125
    :catchall_2
    move-exception v0

    .line 126
    goto :goto_4

    .line 127
    .line 128
    .line 129
    :cond_6
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/decoder/a;->f()Z

    .line 130
    move-result v0

    .line 131
    .line 132
    if-eqz v0, :cond_7

    .line 133
    .line 134
    iget v0, p0, Lcom/google/android/exoplayer2/decoder/j;->skippedOutputBufferCount:I

    .line 135
    add-int/2addr v0, v5

    .line 136
    .line 137
    iput v0, p0, Lcom/google/android/exoplayer2/decoder/j;->skippedOutputBufferCount:I

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/decoder/h;->l()V

    .line 141
    goto :goto_3

    .line 142
    .line 143
    :cond_7
    iget v0, p0, Lcom/google/android/exoplayer2/decoder/j;->skippedOutputBufferCount:I

    .line 144
    .line 145
    iput v0, v3, Lcom/google/android/exoplayer2/decoder/h;->skippedOutputBufferCount:I

    .line 146
    .line 147
    iput v2, p0, Lcom/google/android/exoplayer2/decoder/j;->skippedOutputBufferCount:I

    .line 148
    .line 149
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/j;->queuedOutputBuffers:Ljava/util/ArrayDeque;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    :goto_3
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/decoder/j;->m(Lcom/google/android/exoplayer2/decoder/g;)V

    .line 156
    monitor-exit v4

    .line 157
    return v5

    .line 158
    :goto_4
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 159
    throw v0

    .line 160
    :goto_5
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 161
    throw v1
.end method

.method private j()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/j;->b()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/j;->lock:Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 12
    :cond_0
    return-void
.end method

.method private k()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/decoder/f;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/j;->exception:Lcom/google/android/exoplayer2/decoder/f;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    throw v0
.end method

.method private m(Lcom/google/android/exoplayer2/decoder/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/g;->b()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/j;->availableInputBuffers:[Lcom/google/android/exoplayer2/decoder/g;

    .line 6
    .line 7
    iget v1, p0, Lcom/google/android/exoplayer2/decoder/j;->availableInputBufferCount:I

    .line 8
    .line 9
    add-int/lit8 v2, v1, 0x1

    .line 10
    .line 11
    iput v2, p0, Lcom/google/android/exoplayer2/decoder/j;->availableInputBufferCount:I

    .line 12
    .line 13
    aput-object p1, v0, v1

    .line 14
    return-void
.end method

.method private o(Lcom/google/android/exoplayer2/decoder/h;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/a;->b()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/j;->availableOutputBuffers:[Lcom/google/android/exoplayer2/decoder/h;

    .line 6
    .line 7
    iget v1, p0, Lcom/google/android/exoplayer2/decoder/j;->availableOutputBufferCount:I

    .line 8
    .line 9
    add-int/lit8 v2, v1, 0x1

    .line 10
    .line 11
    iput v2, p0, Lcom/google/android/exoplayer2/decoder/j;->availableOutputBufferCount:I

    .line 12
    .line 13
    aput-object p1, v0, v1

    .line 14
    return-void
.end method

.method private p()V
    .locals 2

    .line 1
    .line 2
    .line 3
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/j;->g()Z

    .line 4
    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    return-void

    .line 9
    :catch_0
    move-exception v0

    .line 10
    .line 11
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 15
    throw v1
.end method


# virtual methods
.method protected abstract c()Lcom/google/android/exoplayer2/decoder/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation
.end method

.method protected abstract d()Lcom/google/android/exoplayer2/decoder/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation
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
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/decoder/j;->h()Lcom/google/android/exoplayer2/decoder/g;

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
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/decoder/j;->i()Lcom/google/android/exoplayer2/decoder/h;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected abstract e(Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/decoder/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")TE;"
        }
    .end annotation
.end method

.method protected abstract f(Lcom/google/android/exoplayer2/decoder/g;Lcom/google/android/exoplayer2/decoder/h;Z)Lcom/google/android/exoplayer2/decoder/f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;TO;Z)TE;"
        }
    .end annotation
.end method

.method public final flush()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/j;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    .line 6
    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/decoder/j;->flushed:Z

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    iput v1, p0, Lcom/google/android/exoplayer2/decoder/j;->skippedOutputBufferCount:I

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/j;->dequeuedInputBuffer:Lcom/google/android/exoplayer2/decoder/g;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/decoder/j;->m(Lcom/google/android/exoplayer2/decoder/g;)V

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    iput-object v1, p0, Lcom/google/android/exoplayer2/decoder/j;->dequeuedInputBuffer:Lcom/google/android/exoplayer2/decoder/g;

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    goto :goto_2

    .line 23
    .line 24
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/j;->queuedInputBuffers:Ljava/util/ArrayDeque;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 28
    move-result v1

    .line 29
    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/j;->queuedInputBuffers:Ljava/util/ArrayDeque;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    check-cast v1, Lcom/google/android/exoplayer2/decoder/g;

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/decoder/j;->m(Lcom/google/android/exoplayer2/decoder/g;)V

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/j;->queuedOutputBuffers:Ljava/util/ArrayDeque;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 48
    move-result v1

    .line 49
    .line 50
    if-nez v1, :cond_2

    .line 51
    .line 52
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/j;->queuedOutputBuffers:Ljava/util/ArrayDeque;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    check-cast v1, Lcom/google/android/exoplayer2/decoder/h;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/h;->l()V

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    monitor-exit v0

    .line 64
    return-void

    .line 65
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw v1
.end method

.method public final h()Lcom/google/android/exoplayer2/decoder/g;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/decoder/f;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/j;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/j;->k()V

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/j;->dequeuedInputBuffer:Lcom/google/android/exoplayer2/decoder/g;

    .line 9
    const/4 v2, 0x1

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    move v1, v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 18
    .line 19
    iget v1, p0, Lcom/google/android/exoplayer2/decoder/j;->availableInputBufferCount:I

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    const/4 v1, 0x0

    .line 23
    goto :goto_1

    .line 24
    .line 25
    :cond_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/decoder/j;->availableInputBuffers:[Lcom/google/android/exoplayer2/decoder/g;

    .line 26
    sub-int/2addr v1, v2

    .line 27
    .line 28
    iput v1, p0, Lcom/google/android/exoplayer2/decoder/j;->availableInputBufferCount:I

    .line 29
    .line 30
    aget-object v1, v3, v1

    .line 31
    .line 32
    :goto_1
    iput-object v1, p0, Lcom/google/android/exoplayer2/decoder/j;->dequeuedInputBuffer:Lcom/google/android/exoplayer2/decoder/g;

    .line 33
    monitor-exit v0

    .line 34
    return-object v1

    .line 35
    :catchall_0
    move-exception v1

    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw v1
.end method

.method public final i()Lcom/google/android/exoplayer2/decoder/h;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/decoder/f;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/j;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/j;->k()V

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/j;->queuedOutputBuffers:Ljava/util/ArrayDeque;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    monitor-exit v0

    .line 16
    const/4 v0, 0x0

    .line 17
    return-object v0

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/j;->queuedOutputBuffers:Ljava/util/ArrayDeque;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    check-cast v1, Lcom/google/android/exoplayer2/decoder/h;

    .line 28
    monitor-exit v0

    .line 29
    return-object v1

    .line 30
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw v1
.end method

.method public final l(Lcom/google/android/exoplayer2/decoder/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/decoder/f;
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/j;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/j;->k()V

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/j;->dequeuedInputBuffer:Lcom/google/android/exoplayer2/decoder/g;

    .line 9
    .line 10
    if-ne p1, v1, :cond_0

    .line 11
    const/4 v1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 17
    .line 18
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/j;->queuedInputBuffers:Ljava/util/ArrayDeque;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/j;->j()V

    .line 25
    const/4 p1, 0x0

    .line 26
    .line 27
    iput-object p1, p0, Lcom/google/android/exoplayer2/decoder/j;->dequeuedInputBuffer:Lcom/google/android/exoplayer2/decoder/g;

    .line 28
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p1
.end method

.method protected n(Lcom/google/android/exoplayer2/decoder/h;)V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/j;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/decoder/j;->o(Lcom/google/android/exoplayer2/decoder/h;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/j;->j()V

    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p1
.end method

.method protected final q(I)V
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/decoder/j;->availableInputBufferCount:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/j;->availableInputBuffers:[Lcom/google/android/exoplayer2/decoder/g;

    .line 5
    array-length v1, v1

    .line 6
    const/4 v2, 0x0

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v2

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/j;->availableInputBuffers:[Lcom/google/android/exoplayer2/decoder/g;

    .line 17
    array-length v1, v0

    .line 18
    .line 19
    :goto_1
    if-ge v2, v1, :cond_1

    .line 20
    .line 21
    aget-object v3, v0, v2

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, p1}, Lcom/google/android/exoplayer2/decoder/g;->n(I)V

    .line 25
    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
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
    check-cast p1, Lcom/google/android/exoplayer2/decoder/g;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/decoder/j;->l(Lcom/google/android/exoplayer2/decoder/g;)V

    .line 6
    return-void
.end method

.method public release()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/j;->lock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    .line 6
    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/decoder/j;->released:Z

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/exoplayer2/decoder/j;->lock:Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/decoder/j;->decodeThread:Ljava/lang/Thread;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 26
    :goto_0
    return-void

    .line 27
    :catchall_0
    move-exception v1

    .line 28
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    throw v1
.end method
