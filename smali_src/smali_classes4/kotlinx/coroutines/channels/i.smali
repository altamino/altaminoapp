.class public final Lkotlinx/coroutines/channels/i;
.super Lkotlinx/coroutines/internal/f0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/internal/f0<",
        "Lkotlinx/coroutines/channels/i<",
        "TE;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBufferedChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/ChannelSegment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,3055:1\n1#2:3056\n*E\n"
.end annotation


# instance fields
.field private final _channel:Lkotlinx/coroutines/channels/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/b<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final data:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLkotlinx/coroutines/channels/i;Lkotlinx/coroutines/channels/b;I)V
    .locals 0
    .param p3    # Lkotlinx/coroutines/channels/i;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lkotlinx/coroutines/channels/b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlinx/coroutines/channels/i<",
            "TE;>;",
            "Lkotlinx/coroutines/channels/b<",
            "TE;>;I)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3, p5}, Lkotlinx/coroutines/internal/f0;-><init>(JLkotlinx/coroutines/internal/f0;I)V

    .line 4
    .line 5
    iput-object p4, p0, Lkotlinx/coroutines/channels/i;->_channel:Lkotlinx/coroutines/channels/b;

    .line 6
    .line 7
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 8
    .line 9
    sget p2, Lkotlinx/coroutines/channels/c;->SEGMENT_SIZE:I

    .line 10
    .line 11
    mul-int/lit8 p2, p2, 0x2

    .line 12
    .line 13
    .line 14
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 15
    .line 16
    iput-object p1, p0, Lkotlinx/coroutines/channels/i;->data:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 17
    return-void
.end method

.method private final z(ILjava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/channels/i;->data:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3
    .line 4
    mul-int/lit8 p1, p1, 0x2

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 8
    return-void
.end method


# virtual methods
.method public final A(ILjava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/channels/i;->data:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3
    .line 4
    mul-int/lit8 p1, p1, 0x2

    .line 5
    .line 6
    add-int/lit8 p1, p1, 0x1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 10
    return-void
.end method

.method public final B(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/i;->z(ILjava/lang/Object;)V

    .line 4
    return-void
.end method

.method public n()I
    .locals 1

    .line 1
    .line 2
    sget v0, Lkotlinx/coroutines/channels/c;->SEGMENT_SIZE:I

    .line 3
    return v0
.end method

.method public o(ILjava/lang/Throwable;Lkotlin/coroutines/g;)V
    .locals 3
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    sget p2, Lkotlinx/coroutines/channels/c;->SEGMENT_SIZE:I

    .line 3
    .line 4
    if-lt p1, p2, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    .line 9
    :goto_0
    if-eqz v0, :cond_1

    .line 10
    sub-int/2addr p1, p2

    .line 11
    .line 12
    .line 13
    :cond_1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/i;->v(I)Ljava/lang/Object;

    .line 14
    move-result-object p2

    .line 15
    .line 16
    .line 17
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/i;->w(I)Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    instance-of v2, v1, Lkotlinx/coroutines/j3;

    .line 21
    .line 22
    if-nez v2, :cond_b

    .line 23
    .line 24
    instance-of v2, v1, Lkotlinx/coroutines/channels/v;

    .line 25
    .line 26
    if-eqz v2, :cond_3

    .line 27
    goto :goto_4

    .line 28
    .line 29
    .line 30
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/channels/c;->j()Lkotlinx/coroutines/internal/i0;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    if-eq v1, v2, :cond_9

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lkotlinx/coroutines/channels/c;->i()Lkotlinx/coroutines/internal/i0;

    .line 37
    move-result-object v2

    .line 38
    .line 39
    if-ne v1, v2, :cond_4

    .line 40
    goto :goto_3

    .line 41
    .line 42
    .line 43
    :cond_4
    invoke-static {}, Lkotlinx/coroutines/channels/c;->p()Lkotlinx/coroutines/internal/i0;

    .line 44
    move-result-object v2

    .line 45
    .line 46
    if-eq v1, v2, :cond_2

    .line 47
    .line 48
    .line 49
    invoke-static {}, Lkotlinx/coroutines/channels/c;->q()Lkotlinx/coroutines/internal/i0;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    if-ne v1, v2, :cond_5

    .line 53
    goto :goto_1

    .line 54
    .line 55
    .line 56
    :cond_5
    invoke-static {}, Lkotlinx/coroutines/channels/c;->f()Lkotlinx/coroutines/internal/i0;

    .line 57
    move-result-object p1

    .line 58
    .line 59
    if-eq v1, p1, :cond_8

    .line 60
    .line 61
    sget-object p1, Lkotlinx/coroutines/channels/c;->BUFFERED:Lkotlinx/coroutines/internal/i0;

    .line 62
    .line 63
    if-ne v1, p1, :cond_6

    .line 64
    goto :goto_2

    .line 65
    .line 66
    .line 67
    :cond_6
    invoke-static {}, Lkotlinx/coroutines/channels/c;->z()Lkotlinx/coroutines/internal/i0;

    .line 68
    move-result-object p1

    .line 69
    .line 70
    if-ne v1, p1, :cond_7

    .line 71
    return-void

    .line 72
    .line 73
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 74
    .line 75
    new-instance p2, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    const-string p3, "unexpected state: "

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object p2

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 94
    move-result-object p2

    .line 95
    .line 96
    .line 97
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 98
    throw p1

    .line 99
    :cond_8
    :goto_2
    return-void

    .line 100
    .line 101
    .line 102
    :cond_9
    :goto_3
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/i;->s(I)V

    .line 103
    .line 104
    if-eqz v0, :cond_a

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/i;->u()Lkotlinx/coroutines/channels/b;

    .line 108
    move-result-object p1

    .line 109
    .line 110
    iget-object p1, p1, Lkotlinx/coroutines/channels/b;->onUndeliveredElement:Le8/l;

    .line 111
    .line 112
    if-eqz p1, :cond_a

    .line 113
    .line 114
    .line 115
    invoke-static {p1, p2, p3}, Lkotlinx/coroutines/internal/a0;->b(Le8/l;Ljava/lang/Object;Lkotlin/coroutines/g;)V

    .line 116
    :cond_a
    return-void

    .line 117
    .line 118
    :cond_b
    :goto_4
    if-eqz v0, :cond_c

    .line 119
    .line 120
    .line 121
    invoke-static {}, Lkotlinx/coroutines/channels/c;->j()Lkotlinx/coroutines/internal/i0;

    .line 122
    move-result-object v2

    .line 123
    goto :goto_5

    .line 124
    .line 125
    .line 126
    :cond_c
    invoke-static {}, Lkotlinx/coroutines/channels/c;->i()Lkotlinx/coroutines/internal/i0;

    .line 127
    move-result-object v2

    .line 128
    .line 129
    .line 130
    :goto_5
    invoke-virtual {p0, p1, v1, v2}, Lkotlinx/coroutines/channels/i;->r(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 131
    move-result v1

    .line 132
    .line 133
    if-eqz v1, :cond_2

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/i;->s(I)V

    .line 137
    .line 138
    xor-int/lit8 v1, v0, 0x1

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0, p1, v1}, Lkotlinx/coroutines/channels/i;->x(IZ)V

    .line 142
    .line 143
    if-eqz v0, :cond_d

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/i;->u()Lkotlinx/coroutines/channels/b;

    .line 147
    move-result-object p1

    .line 148
    .line 149
    iget-object p1, p1, Lkotlinx/coroutines/channels/b;->onUndeliveredElement:Le8/l;

    .line 150
    .line 151
    if-eqz p1, :cond_d

    .line 152
    .line 153
    .line 154
    invoke-static {p1, p2, p3}, Lkotlinx/coroutines/internal/a0;->b(Le8/l;Ljava/lang/Object;Lkotlin/coroutines/g;)V

    .line 155
    :cond_d
    return-void
.end method

.method public final r(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/channels/i;->data:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3
    .line 4
    mul-int/lit8 p1, p1, 0x2

    .line 5
    .line 6
    add-int/lit8 p1, p1, 0x1

    .line 7
    .line 8
    .line 9
    invoke-static {v0, p1, p2, p3}, Lt7/c;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public final s(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/channels/i;->z(ILjava/lang/Object;)V

    .line 5
    return-void
.end method

.method public final t(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/channels/i;->data:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3
    .line 4
    mul-int/lit8 p1, p1, 0x2

    .line 5
    .line 6
    add-int/lit8 p1, p1, 0x1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public final u()Lkotlinx/coroutines/channels/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/b<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/channels/i;->_channel:Lkotlinx/coroutines/channels/b;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 6
    return-object v0
.end method

.method public final v(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/channels/i;->data:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3
    .line 4
    mul-int/lit8 p1, p1, 0x2

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final w(I)Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lkotlinx/coroutines/channels/i;->data:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3
    .line 4
    mul-int/lit8 p1, p1, 0x2

    .line 5
    .line 6
    add-int/lit8 p1, p1, 0x1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public final x(IZ)V
    .locals 4

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/i;->u()Lkotlinx/coroutines/channels/b;

    .line 6
    move-result-object p2

    .line 7
    .line 8
    iget-wide v0, p0, Lkotlinx/coroutines/internal/f0;->id:J

    .line 9
    .line 10
    sget v2, Lkotlinx/coroutines/channels/c;->SEGMENT_SIZE:I

    .line 11
    int-to-long v2, v2

    .line 12
    mul-long/2addr v0, v2

    .line 13
    int-to-long v2, p1

    .line 14
    add-long/2addr v0, v2

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, v0, v1}, Lkotlinx/coroutines/channels/b;->M0(J)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/f0;->p()V

    .line 21
    return-void
.end method

.method public final y(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/i;->v(I)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/i;->s(I)V

    .line 8
    return-object v0
.end method
