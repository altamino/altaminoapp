.class public abstract Lio/ktor/utils/io/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/ktor/utils/io/c;
.implements Lio/ktor/utils/io/g;
.implements Lio/ktor/utils/io/j;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nByteChannelSequential.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteChannelSequential.kt\nio/ktor/utils/io/ByteChannelSequentialBase\n+ 2 AtomicFU.kt\nkotlinx/atomicfu/AtomicInt\n+ 3 AtomicFU.kt\nkotlinx/atomicfu/AtomicRef\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 Buffer.kt\nio/ktor/utils/io/core/Buffer\n+ 6 Packet.kt\nio/ktor/utils/io/core/PacketKt\n*L\n1#1,855:1\n207#2,3:856\n302#2,2:874\n302#2,2:876\n295#2,2:878\n87#3,3:859\n1#4:862\n69#5:863\n69#5:864\n74#5:867\n74#5:868\n74#5:869\n69#5:870\n69#5:873\n43#6:865\n43#6:866\n43#6:871\n39#6:872\n*S KotlinDebug\n*F\n+ 1 ByteChannelSequential.kt\nio/ktor/utils/io/ByteChannelSequentialBase\n*L\n42#1:856,3\n838#1:874,2\n840#1:876,2\n849#1:878,2\n43#1:859,3\n194#1:863\n229#1:864\n483#1:867\n493#1:868\n504#1:869\n576#1:870\n651#1:873\n293#1:865\n315#1:866\n602#1:871\n640#1:872\n*E\n"
.end annotation


# static fields
.field private static final synthetic _availableForRead$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field private static final synthetic _closed$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic _totalBytesRead$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field private static final synthetic _totalBytesWritten$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field private static final synthetic channelSize$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile synthetic _availableForRead:I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile synthetic _closed:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile synthetic _lastReadView:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile synthetic _totalBytesRead:J
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile synthetic _totalBytesWritten:J
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final autoFlush:Z

.field private volatile synthetic channelSize:I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final flushBuffer:Lr7/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final flushMutex:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile synthetic lastReadAvailable$delegate:I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile synthetic lastReadView$delegate:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final readable:Lr7/j;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final slot:Lio/ktor/utils/io/internal/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final writable:Lr7/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "_totalBytesRead"

    const-class v1, Lio/ktor/utils/io/f;

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/utils/io/f;->_totalBytesRead$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "_totalBytesWritten"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/utils/io/f;->_totalBytesWritten$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "_availableForRead"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/utils/io/f;->_availableForRead$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v0, "channelSize"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/utils/io/f;->channelSize$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-class v0, Ljava/lang/Object;

    const-string v2, "_closed"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/utils/io/f;->_closed$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Ls7/a;ZLt7/g;)V
    .locals 3
    .param p1    # Ls7/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lt7/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls7/a;",
            "Z",
            "Lt7/g<",
            "Ls7/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "initial"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pool"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lio/ktor/utils/io/f;->autoFlush:Z

    .line 2
    sget-object p2, Ls7/a;->Companion:Ls7/a$d;

    invoke-virtual {p2}, Ls7/a$d;->a()Ls7/a;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/utils/io/f;->_lastReadView:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/ktor/utils/io/f;->_totalBytesRead:J

    iput-wide v0, p0, Lio/ktor/utils/io/f;->_totalBytesWritten:J

    const/4 v0, 0x0

    iput v0, p0, Lio/ktor/utils/io/f;->_availableForRead:I

    iput v0, p0, Lio/ktor/utils/io/f;->channelSize:I

    const/4 v1, 0x0

    iput-object v1, p0, Lio/ktor/utils/io/f;->_closed:Ljava/lang/Object;

    .line 3
    new-instance v2, Lr7/i;

    invoke-direct {v2, p3}, Lr7/i;-><init>(Lt7/g;)V

    iput-object v2, p0, Lio/ktor/utils/io/f;->writable:Lr7/i;

    .line 4
    new-instance v2, Lr7/j;

    invoke-direct {v2, p1, p3}, Lr7/j;-><init>(Ls7/a;Lt7/g;)V

    iput-object v2, p0, Lio/ktor/utils/io/f;->readable:Lr7/j;

    iput v0, p0, Lio/ktor/utils/io/f;->lastReadAvailable$delegate:I

    .line 5
    invoke-virtual {p2}, Ls7/a$d;->a()Ls7/a;

    move-result-object p2

    iput-object p2, p0, Lio/ktor/utils/io/f;->lastReadView$delegate:Ljava/lang/Object;

    .line 6
    new-instance p2, Lio/ktor/utils/io/internal/a;

    invoke-direct {p2}, Lio/ktor/utils/io/internal/a;-><init>()V

    iput-object p2, p0, Lio/ktor/utils/io/f;->slot:Lio/ktor/utils/io/internal/a;

    .line 7
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/ktor/utils/io/f;->flushMutex:Ljava/lang/Object;

    .line 8
    new-instance p2, Lr7/i;

    const/4 p3, 0x1

    invoke-direct {p2, v1, p3, v1}, Lr7/i;-><init>(Lt7/g;ILkotlin/jvm/internal/k;)V

    iput-object p2, p0, Lio/ktor/utils/io/f;->flushBuffer:Lr7/i;

    .line 9
    invoke-static {p1}, Lr7/h;->c(Ls7/a;)J

    move-result-wide p1

    long-to-int p1, p1

    .line 10
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/f;->s(I)V

    sget-object p2, Lio/ktor/utils/io/f;->_availableForRead$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 11
    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->addAndGet(Ljava/lang/Object;I)I

    return-void
.end method

.method public synthetic constructor <init>(Ls7/a;ZLt7/g;ILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 12
    sget-object p3, Ls7/a;->Companion:Ls7/a$d;

    invoke-virtual {p3}, Ls7/a$d;->c()Lt7/g;

    move-result-object p3

    .line 13
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/utils/io/f;-><init>(Ls7/a;ZLt7/g;)V

    return-void
.end method

.method private final A()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lio/ktor/utils/io/f;->writable:Lr7/i;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lr7/i;->N0()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lio/ktor/utils/io/f;->slot:Lio/ktor/utils/io/internal/a;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/a;->c()V

    .line 14
    const/4 v0, 0x0

    .line 15
    return v0

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-direct {p0}, Lio/ktor/utils/io/f;->B()V

    .line 19
    .line 20
    iget-object v0, p0, Lio/ktor/utils/io/f;->slot:Lio/ktor/utils/io/internal/a;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/a;->c()V

    .line 24
    const/4 v0, 0x1

    .line 25
    return v0
.end method

.method private final B()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lio/ktor/utils/io/f;->flushMutex:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lio/ktor/utils/io/f;->writable:Lr7/i;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Lr7/i;->M0()I

    .line 9
    move-result v1

    .line 10
    .line 11
    iget-object v2, p0, Lio/ktor/utils/io/f;->writable:Lr7/i;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Lr7/p;->t0()Ls7/a;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    .line 18
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 19
    .line 20
    iget-object v3, p0, Lio/ktor/utils/io/f;->flushBuffer:Lr7/i;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3, v2}, Lr7/p;->y0(Ls7/a;)V

    .line 24
    .line 25
    sget-object v2, Lio/ktor/utils/io/f;->_availableForRead$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, p0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->addAndGet(Ljava/lang/Object;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception v1

    .line 32
    monitor-exit v0

    .line 33
    throw v1
.end method

.method private final E()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lio/ktor/utils/io/f;->_closed:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Lio/ktor/utils/io/n;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lio/ktor/utils/io/n;->a()Ljava/lang/Throwable;

    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    .line 14
    :goto_0
    if-eqz v0, :cond_1

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    const/4 v0, 0x0

    .line 18
    :goto_1
    return v0
.end method

.method static synthetic H(Lio/ktor/utils/io/f;Ls7/a;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/f;",
            "Ls7/a;",
            "Lkotlin/coroutines/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "null cannot be cast to non-null type io.ktor.utils.io.core.Buffer"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1, p2}, Lio/ktor/utils/io/f;->G(Lr7/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method static synthetic I(Lio/ktor/utils/io/f;[BIILkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/f;",
            "[BII",
            "Lkotlin/coroutines/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p4, Lio/ktor/utils/io/f$g;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p4

    .line 6
    .line 7
    check-cast v0, Lio/ktor/utils/io/f$g;

    .line 8
    .line 9
    iget v1, v0, Lio/ktor/utils/io/f$g;->label:I

    .line 10
    .line 11
    const/high16 v2, -0x80000000

    .line 12
    .line 13
    and-int v3, v1, v2

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    sub-int/2addr v1, v2

    .line 17
    .line 18
    iput v1, v0, Lio/ktor/utils/io/f$g;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lio/ktor/utils/io/f$g;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p4}, Lio/ktor/utils/io/f$g;-><init>(Lio/ktor/utils/io/f;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p4, v0, Lio/ktor/utils/io/f$g;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lio/ktor/utils/io/f$g;->label:I

    .line 33
    const/4 v3, 0x1

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    iget p3, v0, Lio/ktor/utils/io/f$g;->I$1:I

    .line 40
    .line 41
    iget p2, v0, Lio/ktor/utils/io/f$g;->I$0:I

    .line 42
    .line 43
    iget-object p0, v0, Lio/ktor/utils/io/f$g;->L$1:Ljava/lang/Object;

    .line 44
    move-object p1, p0

    .line 45
    .line 46
    check-cast p1, [B

    .line 47
    .line 48
    iget-object p0, v0, Lio/ktor/utils/io/f$g;->L$0:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p0, Lio/ktor/utils/io/f;

    .line 51
    .line 52
    .line 53
    invoke-static {p4}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 54
    goto :goto_1

    .line 55
    .line 56
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 59
    .line 60
    .line 61
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    throw p0

    .line 63
    .line 64
    .line 65
    :cond_2
    invoke-static {p4}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lio/ktor/utils/io/f;->j()Ljava/lang/Throwable;

    .line 69
    move-result-object p4

    .line 70
    .line 71
    if-nez p4, :cond_7

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lio/ktor/utils/io/f;->D()Z

    .line 75
    move-result p4

    .line 76
    .line 77
    if-eqz p4, :cond_3

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lio/ktor/utils/io/f;->f()I

    .line 81
    move-result p4

    .line 82
    .line 83
    if-nez p4, :cond_3

    .line 84
    const/4 p0, -0x1

    .line 85
    .line 86
    .line 87
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/b;->d(I)Ljava/lang/Integer;

    .line 88
    move-result-object p0

    .line 89
    return-object p0

    .line 90
    .line 91
    :cond_3
    if-nez p3, :cond_4

    .line 92
    const/4 p0, 0x0

    .line 93
    .line 94
    .line 95
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/b;->d(I)Ljava/lang/Integer;

    .line 96
    move-result-object p0

    .line 97
    return-object p0

    .line 98
    .line 99
    .line 100
    :cond_4
    invoke-virtual {p0}, Lio/ktor/utils/io/f;->f()I

    .line 101
    move-result p4

    .line 102
    .line 103
    if-nez p4, :cond_5

    .line 104
    .line 105
    iput-object p0, v0, Lio/ktor/utils/io/f$g;->L$0:Ljava/lang/Object;

    .line 106
    .line 107
    iput-object p1, v0, Lio/ktor/utils/io/f$g;->L$1:Ljava/lang/Object;

    .line 108
    .line 109
    iput p2, v0, Lio/ktor/utils/io/f$g;->I$0:I

    .line 110
    .line 111
    iput p3, v0, Lio/ktor/utils/io/f$g;->I$1:I

    .line 112
    .line 113
    iput v3, v0, Lio/ktor/utils/io/f$g;->label:I

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v3, v0}, Lio/ktor/utils/io/f;->w(ILkotlin/coroutines/d;)Ljava/lang/Object;

    .line 117
    move-result-object p4

    .line 118
    .line 119
    if-ne p4, v1, :cond_5

    .line 120
    return-object v1

    .line 121
    .line 122
    :cond_5
    :goto_1
    iget-object p4, p0, Lio/ktor/utils/io/f;->readable:Lr7/j;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p4}, Lr7/m;->h()Z

    .line 126
    move-result p4

    .line 127
    .line 128
    if-nez p4, :cond_6

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Lio/ktor/utils/io/f;->F()V

    .line 132
    :cond_6
    int-to-long p3, p3

    .line 133
    .line 134
    iget-object v0, p0, Lio/ktor/utils/io/f;->readable:Lr7/j;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Lr7/m;->G0()J

    .line 138
    move-result-wide v0

    .line 139
    .line 140
    .line 141
    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 142
    move-result-wide p3

    .line 143
    long-to-int p3, p3

    .line 144
    .line 145
    iget-object p4, p0, Lio/ktor/utils/io/f;->readable:Lr7/j;

    .line 146
    .line 147
    .line 148
    invoke-static {p4, p1, p2, p3}, Lr7/n;->b(Lr7/m;[BII)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0, p3}, Lio/ktor/utils/io/f;->r(I)V

    .line 152
    .line 153
    .line 154
    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/b;->d(I)Ljava/lang/Integer;

    .line 155
    move-result-object p0

    .line 156
    return-object p0

    .line 157
    :cond_7
    throw p4
.end method

.method static synthetic J(Lio/ktor/utils/io/f;JLkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/f;",
            "J",
            "Lkotlin/coroutines/d<",
            "-",
            "Lr7/j;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/ktor/utils/io/f;->y()V

    .line 4
    .line 5
    new-instance v0, Lr7/i;

    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, v2, v1}, Lr7/i;-><init>(Lt7/g;ILkotlin/jvm/internal/k;)V

    .line 11
    .line 12
    iget-object v1, p0, Lio/ktor/utils/io/f;->readable:Lr7/j;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lr7/m;->G0()J

    .line 16
    move-result-wide v1

    .line 17
    .line 18
    .line 19
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 20
    move-result-wide v1

    .line 21
    .line 22
    iget-object v3, p0, Lio/ktor/utils/io/f;->readable:Lr7/j;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v3, v1, v2}, Lr7/p;->F0(Lr7/j;J)V

    .line 26
    long-to-int v1, v1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lio/ktor/utils/io/f;->r(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lr7/i;->M0()I

    .line 33
    move-result v1

    .line 34
    int-to-long v1, v1

    .line 35
    .line 36
    sub-long v1, p1, v1

    .line 37
    .line 38
    const-wide/16 v3, 0x0

    .line 39
    .line 40
    cmp-long v1, v1, v3

    .line 41
    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lio/ktor/utils/io/f;->o()Z

    .line 46
    move-result v1

    .line 47
    .line 48
    if-eqz v1, :cond_0

    .line 49
    goto :goto_0

    .line 50
    .line 51
    .line 52
    :cond_0
    invoke-direct {p0, v0, p1, p2, p3}, Lio/ktor/utils/io/f;->K(Lr7/i;JLkotlin/coroutines/d;)Ljava/lang/Object;

    .line 53
    move-result-object p0

    .line 54
    return-object p0

    .line 55
    .line 56
    .line 57
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lio/ktor/utils/io/f;->z(Lr7/i;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Lr7/i;->L0()Lr7/j;

    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method

.method private final K(Lr7/i;JLkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr7/i;",
            "J",
            "Lkotlin/coroutines/d<",
            "-",
            "Lr7/j;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p4, Lio/ktor/utils/io/f$h;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p4

    .line 6
    .line 7
    check-cast v0, Lio/ktor/utils/io/f$h;

    .line 8
    .line 9
    iget v1, v0, Lio/ktor/utils/io/f$h;->label:I

    .line 10
    .line 11
    const/high16 v2, -0x80000000

    .line 12
    .line 13
    and-int v3, v1, v2

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    sub-int/2addr v1, v2

    .line 17
    .line 18
    iput v1, v0, Lio/ktor/utils/io/f$h;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lio/ktor/utils/io/f$h;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p4}, Lio/ktor/utils/io/f$h;-><init>(Lio/ktor/utils/io/f;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p4, v0, Lio/ktor/utils/io/f$h;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lio/ktor/utils/io/f$h;->label:I

    .line 33
    const/4 v3, 0x1

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    iget-wide p1, v0, Lio/ktor/utils/io/f$h;->J$0:J

    .line 40
    .line 41
    iget-object p3, v0, Lio/ktor/utils/io/f$h;->L$1:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p3, Lr7/i;

    .line 44
    .line 45
    iget-object v2, v0, Lio/ktor/utils/io/f$h;->L$0:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v2, Lio/ktor/utils/io/f;

    .line 48
    .line 49
    .line 50
    invoke-static {p4}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 51
    move-wide v8, p1

    .line 52
    move-object p1, p3

    .line 53
    move-wide p2, v8

    .line 54
    goto :goto_1

    .line 55
    .line 56
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 59
    .line 60
    .line 61
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    throw p1

    .line 63
    .line 64
    .line 65
    :cond_2
    invoke-static {p4}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 66
    move-object v2, p0

    .line 67
    .line 68
    .line 69
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lr7/i;->M0()I

    .line 70
    move-result p4

    .line 71
    int-to-long v4, p4

    .line 72
    .line 73
    cmp-long p4, v4, p2

    .line 74
    .line 75
    if-gez p4, :cond_5

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Lr7/i;->M0()I

    .line 79
    move-result p4

    .line 80
    int-to-long v4, p4

    .line 81
    .line 82
    sub-long v4, p2, v4

    .line 83
    .line 84
    iget-object p4, v2, Lio/ktor/utils/io/f;->readable:Lr7/j;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p4}, Lr7/m;->G0()J

    .line 88
    move-result-wide v6

    .line 89
    .line 90
    .line 91
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 92
    move-result-wide v4

    .line 93
    .line 94
    iget-object p4, v2, Lio/ktor/utils/io/f;->readable:Lr7/j;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, p4, v4, v5}, Lr7/p;->F0(Lr7/j;J)V

    .line 98
    long-to-int p4, v4

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, p4}, Lio/ktor/utils/io/f;->r(I)V

    .line 102
    .line 103
    .line 104
    invoke-direct {v2, p1}, Lio/ktor/utils/io/f;->z(Lr7/i;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2}, Lio/ktor/utils/io/f;->o()Z

    .line 108
    move-result p4

    .line 109
    .line 110
    if-nez p4, :cond_5

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Lr7/i;->M0()I

    .line 114
    move-result p4

    .line 115
    long-to-int v4, p2

    .line 116
    .line 117
    if-ne p4, v4, :cond_4

    .line 118
    goto :goto_2

    .line 119
    .line 120
    :cond_4
    iput-object v2, v0, Lio/ktor/utils/io/f$h;->L$0:Ljava/lang/Object;

    .line 121
    .line 122
    iput-object p1, v0, Lio/ktor/utils/io/f$h;->L$1:Ljava/lang/Object;

    .line 123
    .line 124
    iput-wide p2, v0, Lio/ktor/utils/io/f$h;->J$0:J

    .line 125
    .line 126
    iput v3, v0, Lio/ktor/utils/io/f$h;->label:I

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2, v3, v0}, Lio/ktor/utils/io/f;->w(ILkotlin/coroutines/d;)Ljava/lang/Object;

    .line 130
    move-result-object p4

    .line 131
    .line 132
    if-ne p4, v1, :cond_3

    .line 133
    return-object v1

    .line 134
    .line 135
    .line 136
    :cond_5
    :goto_2
    invoke-direct {v2, p1}, Lio/ktor/utils/io/f;->z(Lr7/i;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1}, Lr7/i;->L0()Lr7/j;

    .line 140
    move-result-object p1

    .line 141
    return-object p1
.end method

.method static synthetic M(Lio/ktor/utils/io/f;Lr7/a;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/f;",
            "Lr7/a;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p2, Lio/ktor/utils/io/f$i;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p2

    .line 6
    .line 7
    check-cast v0, Lio/ktor/utils/io/f$i;

    .line 8
    .line 9
    iget v1, v0, Lio/ktor/utils/io/f$i;->label:I

    .line 10
    .line 11
    const/high16 v2, -0x80000000

    .line 12
    .line 13
    and-int v3, v1, v2

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    sub-int/2addr v1, v2

    .line 17
    .line 18
    iput v1, v0, Lio/ktor/utils/io/f$i;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lio/ktor/utils/io/f$i;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p2}, Lio/ktor/utils/io/f$i;-><init>(Lio/ktor/utils/io/f;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p2, v0, Lio/ktor/utils/io/f$i;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lio/ktor/utils/io/f$i;->label:I

    .line 33
    const/4 v3, 0x1

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    iget-object p0, v0, Lio/ktor/utils/io/f$i;->L$1:Ljava/lang/Object;

    .line 40
    move-object p1, p0

    .line 41
    .line 42
    check-cast p1, Lr7/a;

    .line 43
    .line 44
    iget-object p0, v0, Lio/ktor/utils/io/f$i;->L$0:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p0, Lio/ktor/utils/io/f;

    .line 47
    .line 48
    .line 49
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 50
    goto :goto_1

    .line 51
    .line 52
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    throw p0

    .line 59
    .line 60
    .line 61
    :cond_2
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 62
    .line 63
    iput-object p0, v0, Lio/ktor/utils/io/f$i;->L$0:Ljava/lang/Object;

    .line 64
    .line 65
    iput-object p1, v0, Lio/ktor/utils/io/f$i;->L$1:Ljava/lang/Object;

    .line 66
    .line 67
    iput v3, v0, Lio/ktor/utils/io/f$i;->label:I

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v3, v0}, Lio/ktor/utils/io/f;->u(ILkotlin/coroutines/d;)Ljava/lang/Object;

    .line 71
    move-result-object p2

    .line 72
    .line 73
    if-ne p2, v1, :cond_3

    .line 74
    return-object v1

    .line 75
    .line 76
    .line 77
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lr7/a;->j()I

    .line 78
    move-result p2

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Lr7/a;->h()I

    .line 82
    move-result v0

    .line 83
    sub-int/2addr p2, v0

    .line 84
    .line 85
    iget-object v0, p0, Lio/ktor/utils/io/f;->writable:Lr7/i;

    .line 86
    const/4 v1, 0x2

    .line 87
    const/4 v2, 0x0

    .line 88
    const/4 v3, 0x0

    .line 89
    .line 90
    .line 91
    invoke-static {v0, p1, v3, v1, v2}, Lr7/q;->c(Lr7/p;Lr7/a;IILjava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, p2}, Lio/ktor/utils/io/f;->s(I)V

    .line 95
    .line 96
    sget-object p0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 97
    return-object p0
.end method

.method static synthetic N(Lio/ktor/utils/io/f;[BIILkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/f;",
            "[BII",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p4, Lio/ktor/utils/io/f$j;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p4

    .line 6
    .line 7
    check-cast v0, Lio/ktor/utils/io/f$j;

    .line 8
    .line 9
    iget v1, v0, Lio/ktor/utils/io/f$j;->label:I

    .line 10
    .line 11
    const/high16 v2, -0x80000000

    .line 12
    .line 13
    and-int v3, v1, v2

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    sub-int/2addr v1, v2

    .line 17
    .line 18
    iput v1, v0, Lio/ktor/utils/io/f$j;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lio/ktor/utils/io/f$j;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p4}, Lio/ktor/utils/io/f$j;-><init>(Lio/ktor/utils/io/f;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p4, v0, Lio/ktor/utils/io/f$j;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lio/ktor/utils/io/f$j;->label:I

    .line 33
    const/4 v3, 0x1

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    iget p0, v0, Lio/ktor/utils/io/f$j;->I$1:I

    .line 40
    .line 41
    iget p1, v0, Lio/ktor/utils/io/f$j;->I$0:I

    .line 42
    .line 43
    iget-object p2, v0, Lio/ktor/utils/io/f$j;->L$1:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p2, [B

    .line 46
    .line 47
    iget-object p3, v0, Lio/ktor/utils/io/f$j;->L$0:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p3, Lio/ktor/utils/io/f;

    .line 50
    .line 51
    .line 52
    invoke-static {p4}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 53
    move-object v4, p3

    .line 54
    move p3, p1

    .line 55
    move-object p1, v4

    .line 56
    goto :goto_2

    .line 57
    .line 58
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 61
    .line 62
    .line 63
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 64
    throw p0

    .line 65
    .line 66
    .line 67
    :cond_2
    invoke-static {p4}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 68
    add-int/2addr p3, p2

    .line 69
    move-object v4, p1

    .line 70
    move-object p1, p0

    .line 71
    move p0, p3

    .line 72
    move p3, p2

    .line 73
    move-object p2, v4

    .line 74
    .line 75
    :goto_1
    if-ge p3, p0, :cond_4

    .line 76
    .line 77
    iput-object p1, v0, Lio/ktor/utils/io/f$j;->L$0:Ljava/lang/Object;

    .line 78
    .line 79
    iput-object p2, v0, Lio/ktor/utils/io/f$j;->L$1:Ljava/lang/Object;

    .line 80
    .line 81
    iput p3, v0, Lio/ktor/utils/io/f$j;->I$0:I

    .line 82
    .line 83
    iput p0, v0, Lio/ktor/utils/io/f$j;->I$1:I

    .line 84
    .line 85
    iput v3, v0, Lio/ktor/utils/io/f$j;->label:I

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v3, v0}, Lio/ktor/utils/io/f;->u(ILkotlin/coroutines/d;)Ljava/lang/Object;

    .line 89
    move-result-object p4

    .line 90
    .line 91
    if-ne p4, v1, :cond_3

    .line 92
    return-object v1

    .line 93
    .line 94
    .line 95
    :cond_3
    :goto_2
    invoke-virtual {p1}, Lio/ktor/utils/io/f;->C()I

    .line 96
    move-result p4

    .line 97
    .line 98
    sub-int v2, p0, p3

    .line 99
    .line 100
    .line 101
    invoke-static {p4, v2}, Ljava/lang/Math;->min(II)I

    .line 102
    move-result p4

    .line 103
    .line 104
    iget-object v2, p1, Lio/ktor/utils/io/f;->writable:Lr7/i;

    .line 105
    .line 106
    .line 107
    invoke-static {v2, p2, p3, p4}, Lr7/q;->b(Lr7/p;[BII)V

    .line 108
    add-int/2addr p3, p4

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, p4}, Lio/ktor/utils/io/f;->s(I)V

    .line 112
    goto :goto_1

    .line 113
    .line 114
    :cond_4
    sget-object p0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 115
    return-object p0
.end method

.method public static final synthetic b(Lio/ktor/utils/io/f;Lr7/i;JLkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/f;->K(Lr7/i;JLkotlin/coroutines/d;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final p(I)V
    .locals 4

    .line 1
    .line 2
    if-ltz p1, :cond_2

    .line 3
    .line 4
    sget-object v0, Lio/ktor/utils/io/f;->channelSize$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 5
    neg-int v1, p1

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndAdd(Ljava/lang/Object;I)I

    .line 9
    .line 10
    sget-object v0, Lio/ktor/utils/io/f;->_totalBytesRead$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 11
    int-to-long v2, p1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 15
    .line 16
    sget-object v0, Lio/ktor/utils/io/f;->_availableForRead$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndAdd(Ljava/lang/Object;I)I

    .line 20
    .line 21
    iget v0, p0, Lio/ktor/utils/io/f;->channelSize:I

    .line 22
    .line 23
    const-string v1, " in "

    .line 24
    .line 25
    const-string v2, ", "

    .line 26
    .line 27
    const-string v3, "Readable bytes count is negative: "

    .line 28
    .line 29
    if-ltz v0, :cond_1

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lio/ktor/utils/io/f;->f()I

    .line 33
    move-result v0

    .line 34
    .line 35
    if-ltz v0, :cond_0

    .line 36
    return-void

    .line 37
    .line 38
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lio/ktor/utils/io/f;->f()I

    .line 48
    move-result v3

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    .line 69
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    .line 76
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 77
    throw v0

    .line 78
    .line 79
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lio/ktor/utils/io/f;->f()I

    .line 89
    move-result v3

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object p1

    .line 109
    .line 110
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 114
    move-result-object p1

    .line 115
    .line 116
    .line 117
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 118
    throw v0

    .line 119
    .line 120
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    const-string v1, "Can\'t read negative amount of bytes: "

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    move-result-object p1

    .line 136
    .line 137
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 141
    move-result-object p1

    .line 142
    .line 143
    .line 144
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 145
    throw v0
.end method

.method private final q(I)V
    .locals 3

    .line 1
    .line 2
    if-ltz p1, :cond_1

    .line 3
    .line 4
    sget-object v0, Lio/ktor/utils/io/f;->channelSize$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndAdd(Ljava/lang/Object;I)I

    .line 8
    .line 9
    sget-object v0, Lio/ktor/utils/io/f;->_totalBytesWritten$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 10
    int-to-long v1, p1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 14
    .line 15
    iget v0, p0, Lio/ktor/utils/io/f;->channelSize:I

    .line 16
    .line 17
    if-ltz v0, :cond_0

    .line 18
    return-void

    .line 19
    .line 20
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    const-string v1, "Readable bytes count is negative: "

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    iget v1, p0, Lio/ktor/utils/io/f;->channelSize:I

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v1, ", "

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string p1, " in "

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    .line 55
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    .line 61
    .line 62
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    throw v0

    .line 64
    .line 65
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    const-string v1, "Can\'t write negative amount of bytes: "

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object p1

    .line 81
    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 86
    move-result-object p1

    .line 87
    .line 88
    .line 89
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 90
    throw v0
.end method

.method private final x()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lio/ktor/utils/io/f;->D()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lio/ktor/utils/io/f;->j()Ljava/lang/Throwable;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Lio/ktor/utils/io/p;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    const-string v2, "Channel "

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v2, " is already closed"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, v1}, Lio/ktor/utils/io/p;-><init>(Ljava/lang/String;)V

    .line 40
    :cond_0
    throw v0

    .line 41
    :cond_1
    return-void
.end method

.method private final y()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lio/ktor/utils/io/f;->j()Ljava/lang/Throwable;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    throw v0
.end method

.method private final z(Lr7/i;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lio/ktor/utils/io/f;->j()Ljava/lang/Throwable;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p1}, Lr7/p;->release()V

    .line 11
    throw v0
.end method


# virtual methods
.method public C()I
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lio/ktor/utils/io/f;->channelSize:I

    .line 3
    .line 4
    rsub-int v0, v0, 0xff8

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method protected final D()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/ktor/utils/io/f;->_closed:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final F()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lio/ktor/utils/io/f;->flushMutex:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lio/ktor/utils/io/f;->readable:Lr7/j;

    .line 6
    .line 7
    iget-object v2, p0, Lio/ktor/utils/io/f;->flushBuffer:Lr7/i;

    .line 8
    .line 9
    .line 10
    invoke-static {v1, v2}, Ls7/g;->e(Lr7/j;Lr7/i;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    monitor-exit v0

    .line 15
    throw v1
.end method

.method public final G(Lr7/a;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 5
    .param p1    # Lr7/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr7/a;",
            "Lkotlin/coroutines/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    instance-of v0, p2, Lio/ktor/utils/io/f$f;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p2

    .line 6
    .line 7
    check-cast v0, Lio/ktor/utils/io/f$f;

    .line 8
    .line 9
    iget v1, v0, Lio/ktor/utils/io/f$f;->label:I

    .line 10
    .line 11
    const/high16 v2, -0x80000000

    .line 12
    .line 13
    and-int v3, v1, v2

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    sub-int/2addr v1, v2

    .line 17
    .line 18
    iput v1, v0, Lio/ktor/utils/io/f$f;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lio/ktor/utils/io/f$f;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p2}, Lio/ktor/utils/io/f$f;-><init>(Lio/ktor/utils/io/f;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p2, v0, Lio/ktor/utils/io/f$f;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lio/ktor/utils/io/f$f;->label:I

    .line 33
    const/4 v3, 0x1

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    iget-object p1, v0, Lio/ktor/utils/io/f$f;->L$1:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, Lr7/a;

    .line 42
    .line 43
    iget-object v0, v0, Lio/ktor/utils/io/f$f;->L$0:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Lio/ktor/utils/io/f;

    .line 46
    .line 47
    .line 48
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 49
    goto :goto_1

    .line 50
    .line 51
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    .line 56
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    throw p1

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lio/ktor/utils/io/f;->j()Ljava/lang/Throwable;

    .line 64
    move-result-object p2

    .line 65
    .line 66
    if-nez p2, :cond_7

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lio/ktor/utils/io/f;->D()Z

    .line 70
    move-result p2

    .line 71
    .line 72
    if-eqz p2, :cond_3

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lio/ktor/utils/io/f;->f()I

    .line 76
    move-result p2

    .line 77
    .line 78
    if-nez p2, :cond_3

    .line 79
    const/4 p1, -0x1

    .line 80
    .line 81
    .line 82
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/b;->d(I)Ljava/lang/Integer;

    .line 83
    move-result-object p1

    .line 84
    return-object p1

    .line 85
    .line 86
    .line 87
    :cond_3
    invoke-virtual {p1}, Lr7/a;->f()I

    .line 88
    move-result p2

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Lr7/a;->j()I

    .line 92
    move-result v2

    .line 93
    sub-int/2addr p2, v2

    .line 94
    .line 95
    if-nez p2, :cond_4

    .line 96
    const/4 p1, 0x0

    .line 97
    .line 98
    .line 99
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/b;->d(I)Ljava/lang/Integer;

    .line 100
    move-result-object p1

    .line 101
    return-object p1

    .line 102
    .line 103
    .line 104
    :cond_4
    invoke-virtual {p0}, Lio/ktor/utils/io/f;->f()I

    .line 105
    move-result p2

    .line 106
    .line 107
    if-nez p2, :cond_5

    .line 108
    .line 109
    iput-object p0, v0, Lio/ktor/utils/io/f$f;->L$0:Ljava/lang/Object;

    .line 110
    .line 111
    iput-object p1, v0, Lio/ktor/utils/io/f$f;->L$1:Ljava/lang/Object;

    .line 112
    .line 113
    iput v3, v0, Lio/ktor/utils/io/f$f;->label:I

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v3, v0}, Lio/ktor/utils/io/f;->w(ILkotlin/coroutines/d;)Ljava/lang/Object;

    .line 117
    move-result-object p2

    .line 118
    .line 119
    if-ne p2, v1, :cond_5

    .line 120
    return-object v1

    .line 121
    :cond_5
    move-object v0, p0

    .line 122
    .line 123
    :goto_1
    iget-object p2, v0, Lio/ktor/utils/io/f;->readable:Lr7/j;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2}, Lr7/m;->h()Z

    .line 127
    move-result p2

    .line 128
    .line 129
    if-nez p2, :cond_6

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Lio/ktor/utils/io/f;->F()V

    .line 133
    .line 134
    .line 135
    :cond_6
    invoke-virtual {p1}, Lr7/a;->f()I

    .line 136
    move-result p2

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1}, Lr7/a;->j()I

    .line 140
    move-result v1

    .line 141
    sub-int/2addr p2, v1

    .line 142
    int-to-long v1, p2

    .line 143
    .line 144
    iget-object p2, v0, Lio/ktor/utils/io/f;->readable:Lr7/j;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2}, Lr7/m;->G0()J

    .line 148
    move-result-wide v3

    .line 149
    .line 150
    .line 151
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 152
    move-result-wide v1

    .line 153
    long-to-int p2, v1

    .line 154
    .line 155
    iget-object v1, v0, Lio/ktor/utils/io/f;->readable:Lr7/j;

    .line 156
    .line 157
    .line 158
    invoke-static {v1, p1, p2}, Lr7/n;->a(Lr7/m;Lr7/a;I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, p2}, Lio/ktor/utils/io/f;->r(I)V

    .line 162
    .line 163
    .line 164
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/b;->d(I)Ljava/lang/Integer;

    .line 165
    move-result-object p1

    .line 166
    return-object p1

    .line 167
    :cond_7
    throw p2
.end method

.method public final L(Lio/ktor/utils/io/f;J)J
    .locals 2
    .param p1    # Lio/ktor/utils/io/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "dst"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iget-object v0, p0, Lio/ktor/utils/io/f;->readable:Lr7/j;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lr7/m;->G0()J

    .line 11
    move-result-wide v0

    .line 12
    .line 13
    cmp-long p2, v0, p2

    .line 14
    .line 15
    if-gtz p2, :cond_0

    .line 16
    .line 17
    iget-object p2, p1, Lio/ktor/utils/io/f;->writable:Lr7/i;

    .line 18
    .line 19
    iget-object p3, p0, Lio/ktor/utils/io/f;->readable:Lr7/j;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p3}, Lr7/p;->E0(Lr7/j;)V

    .line 23
    long-to-int p2, v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Lio/ktor/utils/io/f;->s(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p2}, Lio/ktor/utils/io/f;->r(I)V

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_0
    const-wide/16 v0, 0x0

    .line 33
    :goto_0
    return-wide v0
.end method

.method public c(Ljava/lang/Throwable;)Z
    .locals 3
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lio/ktor/utils/io/o;->a()Lio/ktor/utils/io/n;

    .line 6
    move-result-object v0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_0
    new-instance v0, Lio/ktor/utils/io/n;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p1}, Lio/ktor/utils/io/n;-><init>(Ljava/lang/Throwable;)V

    .line 13
    .line 14
    :goto_0
    sget-object v1, Lio/ktor/utils/io/f;->_closed$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 15
    const/4 v2, 0x0

    .line 16
    .line 17
    .line 18
    invoke-static {v1, p0, v2, v0}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    const/4 p1, 0x0

    .line 23
    return p1

    .line 24
    .line 25
    :cond_1
    if-eqz p1, :cond_2

    .line 26
    .line 27
    iget-object v0, p0, Lio/ktor/utils/io/f;->readable:Lr7/j;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lr7/m;->release()V

    .line 31
    .line 32
    iget-object v0, p0, Lio/ktor/utils/io/f;->writable:Lr7/i;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lr7/p;->release()V

    .line 36
    .line 37
    iget-object v0, p0, Lio/ktor/utils/io/f;->flushBuffer:Lr7/i;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lr7/p;->release()V

    .line 41
    goto :goto_1

    .line 42
    .line 43
    .line 44
    :cond_2
    invoke-virtual {p0}, Lio/ktor/utils/io/f;->flush()V

    .line 45
    .line 46
    iget-object v0, p0, Lio/ktor/utils/io/f;->writable:Lr7/i;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lr7/p;->release()V

    .line 50
    .line 51
    :goto_1
    iget-object v0, p0, Lio/ktor/utils/io/f;->slot:Lio/ktor/utils/io/internal/a;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p1}, Lio/ktor/utils/io/internal/a;->b(Ljava/lang/Throwable;)V

    .line 55
    const/4 p1, 0x1

    .line 56
    return p1
.end method

.method public e(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lio/ktor/utils/io/f;->j()Ljava/lang/Throwable;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lio/ktor/utils/io/f;->D()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    if-nez p1, :cond_1

    .line 16
    .line 17
    new-instance p1, Ljava/util/concurrent/CancellationException;

    .line 18
    .line 19
    const-string v0, "Channel cancelled"

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/f;->c(Ljava/lang/Throwable;)Z

    .line 26
    move-result p1

    .line 27
    return p1

    .line 28
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 29
    return p1
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lio/ktor/utils/io/f;->_availableForRead:I

    return v0
.end method

.method public flush()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/ktor/utils/io/f;->A()Z

    .line 4
    return-void
.end method

.method public g(Ls7/a;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ls7/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls7/a;",
            "Lkotlin/coroutines/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/f;->H(Lio/ktor/utils/io/f;Ls7/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/ktor/utils/io/f;->autoFlush:Z

    return v0
.end method

.method public i(JLkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .param p3    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/d<",
            "-",
            "Lr7/j;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/f;->J(Lio/ktor/utils/io/f;JLkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final j()Ljava/lang/Throwable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/ktor/utils/io/f;->_closed:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Lio/ktor/utils/io/n;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lio/ktor/utils/io/n;->a()Ljava/lang/Throwable;

    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0
.end method

.method public k([BIILkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lkotlin/coroutines/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/f;->I(Lio/ktor/utils/io/f;[BIILkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public m([BIILkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/f;->N(Lio/ktor/utils/io/f;[BIILkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public n(Lr7/a;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lr7/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr7/a;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/f;->M(Lio/ktor/utils/io/f;Lr7/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public o()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lio/ktor/utils/io/f;->E()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lio/ktor/utils/io/f;->D()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget v0, p0, Lio/ktor/utils/io/f;->channelSize:I

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    return v0
.end method

.method protected final r(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lio/ktor/utils/io/f;->p(I)V

    .line 4
    .line 5
    iget-object p1, p0, Lio/ktor/utils/io/f;->slot:Lio/ktor/utils/io/internal/a;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lio/ktor/utils/io/internal/a;->c()V

    .line 9
    return-void
.end method

.method protected final s(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lio/ktor/utils/io/f;->q(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lio/ktor/utils/io/f;->D()Z

    .line 7
    move-result p1

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lio/ktor/utils/io/f;->writable:Lr7/i;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lr7/p;->release()V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lio/ktor/utils/io/f;->x()V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Lio/ktor/utils/io/f;->h()Z

    .line 21
    move-result p1

    .line 22
    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lio/ktor/utils/io/f;->C()I

    .line 27
    move-result p1

    .line 28
    .line 29
    if-nez p1, :cond_2

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-virtual {p0}, Lio/ktor/utils/io/f;->flush()V

    .line 33
    :cond_2
    return-void
.end method

.method public final t(ILkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 5
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    instance-of v0, p2, Lio/ktor/utils/io/f$a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p2

    .line 6
    .line 7
    check-cast v0, Lio/ktor/utils/io/f$a;

    .line 8
    .line 9
    iget v1, v0, Lio/ktor/utils/io/f$a;->label:I

    .line 10
    .line 11
    const/high16 v2, -0x80000000

    .line 12
    .line 13
    and-int v3, v1, v2

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    sub-int/2addr v1, v2

    .line 17
    .line 18
    iput v1, v0, Lio/ktor/utils/io/f$a;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lio/ktor/utils/io/f$a;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p2}, Lio/ktor/utils/io/f$a;-><init>(Lio/ktor/utils/io/f;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p2, v0, Lio/ktor/utils/io/f$a;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lio/ktor/utils/io/f$a;->label:I

    .line 33
    const/4 v3, 0x1

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    iget p1, v0, Lio/ktor/utils/io/f$a;->I$0:I

    .line 40
    .line 41
    iget-object v2, v0, Lio/ktor/utils/io/f$a;->L$0:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v2, Lio/ktor/utils/io/f;

    .line 44
    .line 45
    .line 46
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 47
    goto :goto_1

    .line 48
    .line 49
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    .line 53
    .line 54
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    throw p1

    .line 56
    .line 57
    .line 58
    :cond_2
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 59
    move-object v2, p0

    .line 60
    .line 61
    .line 62
    :cond_3
    :goto_1
    invoke-virtual {v2}, Lio/ktor/utils/io/f;->f()I

    .line 63
    move-result p2

    .line 64
    .line 65
    if-ge p2, p1, :cond_4

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Lio/ktor/utils/io/f;->o()Z

    .line 69
    move-result p2

    .line 70
    .line 71
    if-nez p2, :cond_4

    .line 72
    .line 73
    iget-object p2, v2, Lio/ktor/utils/io/f;->slot:Lio/ktor/utils/io/internal/a;

    .line 74
    .line 75
    new-instance v4, Lio/ktor/utils/io/f$b;

    .line 76
    .line 77
    .line 78
    invoke-direct {v4, v2, p1}, Lio/ktor/utils/io/f$b;-><init>(Lio/ktor/utils/io/f;I)V

    .line 79
    .line 80
    iput-object v2, v0, Lio/ktor/utils/io/f$a;->L$0:Ljava/lang/Object;

    .line 81
    .line 82
    iput p1, v0, Lio/ktor/utils/io/f$a;->I$0:I

    .line 83
    .line 84
    iput v3, v0, Lio/ktor/utils/io/f$a;->label:I

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, v4, v0}, Lio/ktor/utils/io/internal/a;->d(Le8/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 88
    move-result-object p2

    .line 89
    .line 90
    if-ne p2, v1, :cond_3

    .line 91
    return-object v1

    .line 92
    .line 93
    :cond_4
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 94
    return-object p1
.end method

.method public final u(ILkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 5
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    instance-of v0, p2, Lio/ktor/utils/io/f$c;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p2

    .line 6
    .line 7
    check-cast v0, Lio/ktor/utils/io/f$c;

    .line 8
    .line 9
    iget v1, v0, Lio/ktor/utils/io/f$c;->label:I

    .line 10
    .line 11
    const/high16 v2, -0x80000000

    .line 12
    .line 13
    and-int v3, v1, v2

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    sub-int/2addr v1, v2

    .line 17
    .line 18
    iput v1, v0, Lio/ktor/utils/io/f$c;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lio/ktor/utils/io/f$c;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p2}, Lio/ktor/utils/io/f$c;-><init>(Lio/ktor/utils/io/f;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p2, v0, Lio/ktor/utils/io/f$c;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lio/ktor/utils/io/f$c;->label:I

    .line 33
    const/4 v3, 0x1

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    iget p1, v0, Lio/ktor/utils/io/f$c;->I$0:I

    .line 40
    .line 41
    iget-object v2, v0, Lio/ktor/utils/io/f$c;->L$0:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v2, Lio/ktor/utils/io/f;

    .line 44
    .line 45
    .line 46
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 47
    goto :goto_1

    .line 48
    .line 49
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    .line 53
    .line 54
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    throw p1

    .line 56
    .line 57
    .line 58
    :cond_2
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 59
    move-object v2, p0

    .line 60
    .line 61
    .line 62
    :cond_3
    :goto_1
    invoke-virtual {v2}, Lio/ktor/utils/io/f;->C()I

    .line 63
    move-result p2

    .line 64
    .line 65
    if-ge p2, p1, :cond_4

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Lio/ktor/utils/io/f;->D()Z

    .line 69
    move-result p2

    .line 70
    .line 71
    if-nez p2, :cond_4

    .line 72
    .line 73
    .line 74
    invoke-direct {v2}, Lio/ktor/utils/io/f;->A()Z

    .line 75
    move-result p2

    .line 76
    .line 77
    if-nez p2, :cond_3

    .line 78
    .line 79
    iget-object p2, v2, Lio/ktor/utils/io/f;->slot:Lio/ktor/utils/io/internal/a;

    .line 80
    .line 81
    new-instance v4, Lio/ktor/utils/io/f$d;

    .line 82
    .line 83
    .line 84
    invoke-direct {v4, v2, p1}, Lio/ktor/utils/io/f$d;-><init>(Lio/ktor/utils/io/f;I)V

    .line 85
    .line 86
    iput-object v2, v0, Lio/ktor/utils/io/f$c;->L$0:Ljava/lang/Object;

    .line 87
    .line 88
    iput p1, v0, Lio/ktor/utils/io/f$c;->I$0:I

    .line 89
    .line 90
    iput v3, v0, Lio/ktor/utils/io/f$c;->label:I

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2, v4, v0}, Lio/ktor/utils/io/internal/a;->d(Le8/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 94
    move-result-object p2

    .line 95
    .line 96
    if-ne p2, v1, :cond_3

    .line 97
    return-object v1

    .line 98
    .line 99
    :cond_4
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 100
    return-object p1
.end method

.method public final v(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lio/ktor/utils/io/f;->readable:Lr7/j;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lr7/m;->g0()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    xor-int/2addr v0, v1

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0, v1, p1}, Lio/ktor/utils/io/f;->w(ILkotlin/coroutines/d;)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method protected final w(ILkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 4
    .param p2    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    instance-of v0, p2, Lio/ktor/utils/io/f$e;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p2

    .line 6
    .line 7
    check-cast v0, Lio/ktor/utils/io/f$e;

    .line 8
    .line 9
    iget v1, v0, Lio/ktor/utils/io/f$e;->label:I

    .line 10
    .line 11
    const/high16 v2, -0x80000000

    .line 12
    .line 13
    and-int v3, v1, v2

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    sub-int/2addr v1, v2

    .line 17
    .line 18
    iput v1, v0, Lio/ktor/utils/io/f$e;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lio/ktor/utils/io/f$e;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p2}, Lio/ktor/utils/io/f$e;-><init>(Lio/ktor/utils/io/f;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p2, v0, Lio/ktor/utils/io/f$e;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lio/ktor/utils/io/f$e;->label:I

    .line 33
    const/4 v3, 0x1

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    iget p1, v0, Lio/ktor/utils/io/f$e;->I$0:I

    .line 40
    .line 41
    iget-object v0, v0, Lio/ktor/utils/io/f$e;->L$0:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v0, Lio/ktor/utils/io/f;

    .line 44
    .line 45
    .line 46
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 47
    goto :goto_1

    .line 48
    .line 49
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    .line 53
    .line 54
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    throw p1

    .line 56
    .line 57
    .line 58
    :cond_2
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    if-ltz p1, :cond_6

    .line 61
    .line 62
    iput-object p0, v0, Lio/ktor/utils/io/f$e;->L$0:Ljava/lang/Object;

    .line 63
    .line 64
    iput p1, v0, Lio/ktor/utils/io/f$e;->I$0:I

    .line 65
    .line 66
    iput v3, v0, Lio/ktor/utils/io/f$e;->label:I

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, p1, v0}, Lio/ktor/utils/io/f;->t(ILkotlin/coroutines/d;)Ljava/lang/Object;

    .line 70
    move-result-object p2

    .line 71
    .line 72
    if-ne p2, v1, :cond_3

    .line 73
    return-object v1

    .line 74
    :cond_3
    move-object v0, p0

    .line 75
    .line 76
    .line 77
    :goto_1
    invoke-virtual {v0}, Lio/ktor/utils/io/f;->F()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Lio/ktor/utils/io/f;->j()Ljava/lang/Throwable;

    .line 81
    move-result-object p2

    .line 82
    .line 83
    if-nez p2, :cond_5

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Lio/ktor/utils/io/f;->o()Z

    .line 87
    move-result p2

    .line 88
    .line 89
    if-nez p2, :cond_4

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Lio/ktor/utils/io/f;->f()I

    .line 93
    move-result p2

    .line 94
    .line 95
    if-lt p2, p1, :cond_4

    .line 96
    goto :goto_2

    .line 97
    :cond_4
    const/4 v3, 0x0

    .line 98
    .line 99
    .line 100
    :goto_2
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    .line 101
    move-result-object p1

    .line 102
    return-object p1

    .line 103
    :cond_5
    throw p2

    .line 104
    .line 105
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 106
    .line 107
    const-string p2, "Failed requirement."

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 111
    move-result-object p2

    .line 112
    .line 113
    .line 114
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 115
    throw p1
.end method
