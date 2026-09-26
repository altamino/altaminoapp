.class public Lkotlinx/coroutines/sync/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/sync/d;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSemaphore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 4 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n+ 5 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreSegment\n*L\n1#1,397:1\n205#1,10:411\n205#1,10:421\n1#2:398\n332#3,12:399\n72#4,3:431\n46#4,8:434\n72#4,3:445\n46#4,8:448\n375#5:442\n375#5:443\n367#5:444\n378#5:456\n367#5:457\n375#5:458\n*S KotlinDebug\n*F\n+ 1 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreImpl\n*L\n197#1:411,10\n221#1:421,10\n187#1:399,12\n289#1:431,3\n289#1:434,8\n322#1:445,3\n322#1:448,8\n293#1:442\n299#1:443\n313#1:444\n328#1:456\n334#1:457\n337#1:458\n*E\n"
.end annotation


# static fields
.field private static final _availablePermits$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final deqIdx$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final enqIdx$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final head$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final tail$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private volatile _availablePermits:I

.field private volatile deqIdx:J

.field private volatile enqIdx:J

.field private volatile head:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final onCancellationRelease:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Ljava/lang/Throwable;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final permits:I

.field private volatile tail:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "head"

    const-class v1, Lkotlinx/coroutines/sync/e;

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/sync/e;->head$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "deqIdx"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/sync/e;->deqIdx$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string/jumbo v0, "tail"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/sync/e;->tail$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "enqIdx"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/sync/e;->enqIdx$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "_availablePermits"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/sync/e;->_availablePermits$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Lkotlinx/coroutines/sync/e;->permits:I

    .line 6
    .line 7
    if-lez p1, :cond_1

    .line 8
    .line 9
    if-ltz p2, :cond_0

    .line 10
    .line 11
    if-gt p2, p1, :cond_0

    .line 12
    .line 13
    new-instance v0, Lkotlinx/coroutines/sync/g;

    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x2

    .line 16
    .line 17
    const-wide/16 v3, 0x0

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v3, v4, v1, v2}, Lkotlinx/coroutines/sync/g;-><init>(JLkotlinx/coroutines/sync/g;I)V

    .line 21
    .line 22
    iput-object v0, p0, Lkotlinx/coroutines/sync/e;->head:Ljava/lang/Object;

    .line 23
    .line 24
    iput-object v0, p0, Lkotlinx/coroutines/sync/e;->tail:Ljava/lang/Object;

    .line 25
    sub-int/2addr p1, p2

    .line 26
    .line 27
    iput p1, p0, Lkotlinx/coroutines/sync/e;->_availablePermits:I

    .line 28
    .line 29
    new-instance p1, Lkotlinx/coroutines/sync/e$b;

    .line 30
    .line 31
    .line 32
    invoke-direct {p1, p0}, Lkotlinx/coroutines/sync/e$b;-><init>(Lkotlinx/coroutines/sync/e;)V

    .line 33
    .line 34
    iput-object p1, p0, Lkotlinx/coroutines/sync/e;->onCancellationRelease:Le8/l;

    .line 35
    return-void

    .line 36
    .line 37
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    const-string v0, "The number of acquired permits should be in 0.."

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    .line 61
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 62
    throw p2

    .line 63
    .line 64
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    const-string v0, "Semaphore should have at least 1 permit, but had "

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object p1

    .line 80
    .line 81
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 85
    move-result-object p1

    .line 86
    .line 87
    .line 88
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 89
    throw p2
.end method

.method public static final synthetic f(Lkotlinx/coroutines/sync/e;Lkotlinx/coroutines/j3;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lkotlinx/coroutines/sync/e;->j(Lkotlinx/coroutines/j3;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic h(Lkotlinx/coroutines/sync/e;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/sync/e;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lkotlinx/coroutines/sync/e;->l()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    sget-object p0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 9
    return-object p0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-direct {p0, p1}, Lkotlinx/coroutines/sync/e;->i(Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    if-ne p0, p1, :cond_1

    .line 20
    return-object p0

    .line 21
    .line 22
    :cond_1
    sget-object p0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 23
    return-object p0
.end method

.method private final i(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lkotlin/coroutines/intrinsics/b;->c(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lkotlinx/coroutines/r;->b(Lkotlin/coroutines/d;)Lkotlinx/coroutines/p;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-static {p0, v0}, Lkotlinx/coroutines/sync/e;->f(Lkotlinx/coroutines/sync/e;Lkotlinx/coroutines/j3;)Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/sync/e;->g(Lkotlinx/coroutines/o;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_1

    .line 21
    .line 22
    .line 23
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/p;->u()Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    if-ne v0, v1, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/h;->c(Lkotlin/coroutines/d;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    if-ne v0, p1, :cond_2

    .line 40
    return-object v0

    .line 41
    .line 42
    :cond_2
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 43
    return-object p1

    .line 44
    .line 45
    .line 46
    :goto_1
    invoke-virtual {v0}, Lkotlinx/coroutines/p;->G()V

    .line 47
    throw p1
.end method

.method private final j(Lkotlinx/coroutines/j3;)Z
    .locals 14

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/sync/e;->tail$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    check-cast v1, Lkotlinx/coroutines/sync/g;

    .line 9
    .line 10
    sget-object v2, Lkotlinx/coroutines/sync/e;->enqIdx$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 14
    move-result-wide v2

    .line 15
    .line 16
    sget-object v4, Lkotlinx/coroutines/sync/e$a;->INSTANCE:Lkotlinx/coroutines/sync/e$a;

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lkotlinx/coroutines/sync/f;->h()I

    .line 20
    move-result v5

    .line 21
    int-to-long v5, v5

    .line 22
    .line 23
    div-long v5, v2, v5

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-static {v1, v5, v6, v4}, Lkotlinx/coroutines/internal/d;->c(Lkotlinx/coroutines/internal/f0;JLe8/p;)Ljava/lang/Object;

    .line 27
    move-result-object v7

    .line 28
    .line 29
    .line 30
    invoke-static {v7}, Lkotlinx/coroutines/internal/g0;->e(Ljava/lang/Object;)Z

    .line 31
    move-result v8

    .line 32
    .line 33
    if-nez v8, :cond_4

    .line 34
    .line 35
    .line 36
    invoke-static {v7}, Lkotlinx/coroutines/internal/g0;->c(Ljava/lang/Object;)Lkotlinx/coroutines/internal/f0;

    .line 37
    move-result-object v8

    .line 38
    .line 39
    .line 40
    :cond_0
    :goto_1
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    move-result-object v9

    .line 42
    .line 43
    check-cast v9, Lkotlinx/coroutines/internal/f0;

    .line 44
    .line 45
    iget-wide v10, v9, Lkotlinx/coroutines/internal/f0;->id:J

    .line 46
    .line 47
    iget-wide v12, v8, Lkotlinx/coroutines/internal/f0;->id:J

    .line 48
    .line 49
    cmp-long v10, v10, v12

    .line 50
    .line 51
    if-ltz v10, :cond_1

    .line 52
    goto :goto_2

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-virtual {v8}, Lkotlinx/coroutines/internal/f0;->q()Z

    .line 56
    move-result v10

    .line 57
    .line 58
    if-nez v10, :cond_2

    .line 59
    goto :goto_0

    .line 60
    .line 61
    .line 62
    :cond_2
    invoke-static {v0, p0, v9, v8}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    move-result v10

    .line 64
    .line 65
    if-eqz v10, :cond_3

    .line 66
    .line 67
    .line 68
    invoke-virtual {v9}, Lkotlinx/coroutines/internal/f0;->m()Z

    .line 69
    move-result v0

    .line 70
    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    .line 74
    invoke-virtual {v9}, Lkotlinx/coroutines/internal/e;->k()V

    .line 75
    goto :goto_2

    .line 76
    .line 77
    .line 78
    :cond_3
    invoke-virtual {v8}, Lkotlinx/coroutines/internal/f0;->m()Z

    .line 79
    move-result v9

    .line 80
    .line 81
    if-eqz v9, :cond_0

    .line 82
    .line 83
    .line 84
    invoke-virtual {v8}, Lkotlinx/coroutines/internal/e;->k()V

    .line 85
    goto :goto_1

    .line 86
    .line 87
    .line 88
    :cond_4
    :goto_2
    invoke-static {v7}, Lkotlinx/coroutines/internal/g0;->c(Ljava/lang/Object;)Lkotlinx/coroutines/internal/f0;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    check-cast v0, Lkotlinx/coroutines/sync/g;

    .line 92
    .line 93
    .line 94
    invoke-static {}, Lkotlinx/coroutines/sync/f;->h()I

    .line 95
    move-result v1

    .line 96
    int-to-long v4, v1

    .line 97
    rem-long/2addr v2, v4

    .line 98
    long-to-int v1, v2

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Lkotlinx/coroutines/sync/g;->r()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 102
    move-result-object v2

    .line 103
    const/4 v3, 0x0

    .line 104
    .line 105
    .line 106
    invoke-static {v2, v1, v3, p1}, Lt7/c;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 107
    move-result v2

    .line 108
    const/4 v3, 0x1

    .line 109
    .line 110
    if-eqz v2, :cond_5

    .line 111
    .line 112
    .line 113
    invoke-interface {p1, v0, v1}, Lkotlinx/coroutines/j3;->a(Lkotlinx/coroutines/internal/f0;I)V

    .line 114
    return v3

    .line 115
    .line 116
    .line 117
    :cond_5
    invoke-static {}, Lkotlinx/coroutines/sync/f;->g()Lkotlinx/coroutines/internal/i0;

    .line 118
    move-result-object v2

    .line 119
    .line 120
    .line 121
    invoke-static {}, Lkotlinx/coroutines/sync/f;->i()Lkotlinx/coroutines/internal/i0;

    .line 122
    move-result-object v4

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Lkotlinx/coroutines/sync/g;->r()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 126
    move-result-object v0

    .line 127
    .line 128
    .line 129
    invoke-static {v0, v1, v2, v4}, Lt7/c;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 130
    move-result v0

    .line 131
    .line 132
    if-eqz v0, :cond_8

    .line 133
    .line 134
    instance-of v0, p1, Lkotlinx/coroutines/o;

    .line 135
    .line 136
    if-eqz v0, :cond_6

    .line 137
    .line 138
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>"

    .line 139
    .line 140
    .line 141
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    .line 143
    check-cast p1, Lkotlinx/coroutines/o;

    .line 144
    .line 145
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 146
    .line 147
    iget-object v1, p0, Lkotlinx/coroutines/sync/e;->onCancellationRelease:Le8/l;

    .line 148
    .line 149
    .line 150
    invoke-interface {p1, v0, v1}, Lkotlinx/coroutines/o;->B(Ljava/lang/Object;Le8/l;)V

    .line 151
    goto :goto_3

    .line 152
    .line 153
    :cond_6
    instance-of v0, p1, Lkotlinx/coroutines/selects/b;

    .line 154
    .line 155
    if-eqz v0, :cond_7

    .line 156
    .line 157
    check-cast p1, Lkotlinx/coroutines/selects/b;

    .line 158
    .line 159
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 160
    .line 161
    .line 162
    invoke-interface {p1, v0}, Lkotlinx/coroutines/selects/b;->b(Ljava/lang/Object;)V

    .line 163
    :goto_3
    return v3

    .line 164
    .line 165
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 166
    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    const-string/jumbo v2, "unexpected: "

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    move-result-object p1

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 186
    move-result-object p1

    .line 187
    .line 188
    .line 189
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 190
    throw v0

    .line 191
    :cond_8
    const/4 p1, 0x0

    .line 192
    return p1
.end method

.method private final k()V
    .locals 3

    .line 1
    .line 2
    :cond_0
    sget-object v0, Lkotlinx/coroutines/sync/e;->_availablePermits$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 6
    move-result v1

    .line 7
    .line 8
    iget v2, p0, Lkotlinx/coroutines/sync/e;->permits:I

    .line 9
    .line 10
    if-le v1, v2, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    :cond_1
    return-void
.end method

.method private final l()I
    .locals 2

    .line 1
    .line 2
    :cond_0
    sget-object v0, Lkotlinx/coroutines/sync/e;->_availablePermits$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndDecrement(Ljava/lang/Object;)I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget v1, p0, Lkotlinx/coroutines/sync/e;->permits:I

    .line 9
    .line 10
    if-gt v0, v1, :cond_0

    .line 11
    return v0
.end method

.method private final o(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    .line 2
    instance-of v0, p1, Lkotlinx/coroutines/o;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>"

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    check-cast p1, Lkotlinx/coroutines/o;

    .line 12
    .line 13
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    iget-object v2, p0, Lkotlinx/coroutines/sync/e;->onCancellationRelease:Le8/l;

    .line 17
    .line 18
    .line 19
    invoke-interface {p1, v0, v1, v2}, Lkotlinx/coroutines/o;->r(Ljava/lang/Object;Ljava/lang/Object;Le8/l;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, v0}, Lkotlinx/coroutines/o;->K(Ljava/lang/Object;)V

    .line 26
    const/4 p1, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_1
    instance-of v0, p1, Lkotlinx/coroutines/selects/b;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    check-cast p1, Lkotlinx/coroutines/selects/b;

    .line 36
    .line 37
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 38
    .line 39
    .line 40
    invoke-interface {p1, p0, v0}, Lkotlinx/coroutines/selects/b;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    move-result p1

    .line 42
    :goto_0
    return p1

    .line 43
    .line 44
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    const-string/jumbo v2, "unexpected: "

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 66
    .line 67
    .line 68
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 69
    throw v0
.end method

.method private final p()Z
    .locals 14

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/sync/e;->head$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    check-cast v1, Lkotlinx/coroutines/sync/g;

    .line 9
    .line 10
    sget-object v2, Lkotlinx/coroutines/sync/e;->deqIdx$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    .line 14
    move-result-wide v2

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lkotlinx/coroutines/sync/f;->h()I

    .line 18
    move-result v4

    .line 19
    int-to-long v4, v4

    .line 20
    .line 21
    div-long v4, v2, v4

    .line 22
    .line 23
    sget-object v6, Lkotlinx/coroutines/sync/e$c;->INSTANCE:Lkotlinx/coroutines/sync/e$c;

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-static {v1, v4, v5, v6}, Lkotlinx/coroutines/internal/d;->c(Lkotlinx/coroutines/internal/f0;JLe8/p;)Ljava/lang/Object;

    .line 27
    move-result-object v7

    .line 28
    .line 29
    .line 30
    invoke-static {v7}, Lkotlinx/coroutines/internal/g0;->e(Ljava/lang/Object;)Z

    .line 31
    move-result v8

    .line 32
    .line 33
    if-nez v8, :cond_4

    .line 34
    .line 35
    .line 36
    invoke-static {v7}, Lkotlinx/coroutines/internal/g0;->c(Ljava/lang/Object;)Lkotlinx/coroutines/internal/f0;

    .line 37
    move-result-object v8

    .line 38
    .line 39
    .line 40
    :cond_0
    :goto_1
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    move-result-object v9

    .line 42
    .line 43
    check-cast v9, Lkotlinx/coroutines/internal/f0;

    .line 44
    .line 45
    iget-wide v10, v9, Lkotlinx/coroutines/internal/f0;->id:J

    .line 46
    .line 47
    iget-wide v12, v8, Lkotlinx/coroutines/internal/f0;->id:J

    .line 48
    .line 49
    cmp-long v10, v10, v12

    .line 50
    .line 51
    if-ltz v10, :cond_1

    .line 52
    goto :goto_2

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-virtual {v8}, Lkotlinx/coroutines/internal/f0;->q()Z

    .line 56
    move-result v10

    .line 57
    .line 58
    if-nez v10, :cond_2

    .line 59
    goto :goto_0

    .line 60
    .line 61
    .line 62
    :cond_2
    invoke-static {v0, p0, v9, v8}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    move-result v10

    .line 64
    .line 65
    if-eqz v10, :cond_3

    .line 66
    .line 67
    .line 68
    invoke-virtual {v9}, Lkotlinx/coroutines/internal/f0;->m()Z

    .line 69
    move-result v0

    .line 70
    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    .line 74
    invoke-virtual {v9}, Lkotlinx/coroutines/internal/e;->k()V

    .line 75
    goto :goto_2

    .line 76
    .line 77
    .line 78
    :cond_3
    invoke-virtual {v8}, Lkotlinx/coroutines/internal/f0;->m()Z

    .line 79
    move-result v9

    .line 80
    .line 81
    if-eqz v9, :cond_0

    .line 82
    .line 83
    .line 84
    invoke-virtual {v8}, Lkotlinx/coroutines/internal/e;->k()V

    .line 85
    goto :goto_1

    .line 86
    .line 87
    .line 88
    :cond_4
    :goto_2
    invoke-static {v7}, Lkotlinx/coroutines/internal/g0;->c(Ljava/lang/Object;)Lkotlinx/coroutines/internal/f0;

    .line 89
    move-result-object v0

    .line 90
    .line 91
    check-cast v0, Lkotlinx/coroutines/sync/g;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/e;->b()V

    .line 95
    .line 96
    iget-wide v6, v0, Lkotlinx/coroutines/internal/f0;->id:J

    .line 97
    .line 98
    cmp-long v1, v6, v4

    .line 99
    const/4 v4, 0x0

    .line 100
    .line 101
    if-lez v1, :cond_5

    .line 102
    return v4

    .line 103
    .line 104
    .line 105
    :cond_5
    invoke-static {}, Lkotlinx/coroutines/sync/f;->h()I

    .line 106
    move-result v1

    .line 107
    int-to-long v5, v1

    .line 108
    rem-long/2addr v2, v5

    .line 109
    long-to-int v1, v2

    .line 110
    .line 111
    .line 112
    invoke-static {}, Lkotlinx/coroutines/sync/f;->g()Lkotlinx/coroutines/internal/i0;

    .line 113
    move-result-object v2

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Lkotlinx/coroutines/sync/g;->r()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 117
    move-result-object v3

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    .line 121
    move-result-object v2

    .line 122
    .line 123
    if-nez v2, :cond_8

    .line 124
    .line 125
    .line 126
    invoke-static {}, Lkotlinx/coroutines/sync/f;->f()I

    .line 127
    move-result v2

    .line 128
    :goto_3
    const/4 v3, 0x1

    .line 129
    .line 130
    if-ge v4, v2, :cond_7

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0}, Lkotlinx/coroutines/sync/g;->r()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 134
    move-result-object v5

    .line 135
    .line 136
    .line 137
    invoke-virtual {v5, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    .line 138
    move-result-object v5

    .line 139
    .line 140
    .line 141
    invoke-static {}, Lkotlinx/coroutines/sync/f;->i()Lkotlinx/coroutines/internal/i0;

    .line 142
    move-result-object v6

    .line 143
    .line 144
    if-ne v5, v6, :cond_6

    .line 145
    return v3

    .line 146
    .line 147
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 148
    goto :goto_3

    .line 149
    .line 150
    .line 151
    :cond_7
    invoke-static {}, Lkotlinx/coroutines/sync/f;->g()Lkotlinx/coroutines/internal/i0;

    .line 152
    move-result-object v2

    .line 153
    .line 154
    .line 155
    invoke-static {}, Lkotlinx/coroutines/sync/f;->d()Lkotlinx/coroutines/internal/i0;

    .line 156
    move-result-object v4

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Lkotlinx/coroutines/sync/g;->r()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 160
    move-result-object v0

    .line 161
    .line 162
    .line 163
    invoke-static {v0, v1, v2, v4}, Lt7/c;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 164
    move-result v0

    .line 165
    xor-int/2addr v0, v3

    .line 166
    return v0

    .line 167
    .line 168
    .line 169
    :cond_8
    invoke-static {}, Lkotlinx/coroutines/sync/f;->e()Lkotlinx/coroutines/internal/i0;

    .line 170
    move-result-object v0

    .line 171
    .line 172
    if-ne v2, v0, :cond_9

    .line 173
    return v4

    .line 174
    .line 175
    .line 176
    :cond_9
    invoke-direct {p0, v2}, Lkotlinx/coroutines/sync/e;->o(Ljava/lang/Object;)Z

    .line 177
    move-result v0

    .line 178
    return v0
.end method


# virtual methods
.method public c(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    invoke-static {p0, p1}, Lkotlinx/coroutines/sync/e;->h(Lkotlinx/coroutines/sync/e;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected final g(Lkotlinx/coroutines/o;)V
    .locals 2
    .param p1    # Lkotlinx/coroutines/o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/o<",
            "-",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/sync/e;->l()I

    .line 4
    move-result v0

    .line 5
    .line 6
    if-lez v0, :cond_1

    .line 7
    .line 8
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 9
    .line 10
    iget-object v1, p0, Lkotlinx/coroutines/sync/e;->onCancellationRelease:Le8/l;

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0, v1}, Lkotlinx/coroutines/o;->B(Ljava/lang/Object;Le8/l;)V

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_1
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.Waiter"

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    move-object v0, p1

    .line 21
    .line 22
    check-cast v0, Lkotlinx/coroutines/j3;

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, v0}, Lkotlinx/coroutines/sync/e;->j(Lkotlinx/coroutines/j3;)Z

    .line 26
    move-result v0

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    :goto_0
    return-void
.end method

.method public m()I
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/sync/e;->_availablePermits$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public n()Z
    .locals 3

    .line 1
    .line 2
    :cond_0
    :goto_0
    sget-object v0, Lkotlinx/coroutines/sync/e;->_availablePermits$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 6
    move-result v1

    .line 7
    .line 8
    iget v2, p0, Lkotlinx/coroutines/sync/e;->permits:I

    .line 9
    .line 10
    if-le v1, v2, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lkotlinx/coroutines/sync/e;->k()V

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_1
    if-gtz v1, :cond_2

    .line 17
    const/4 v0, 0x0

    .line 18
    return v0

    .line 19
    .line 20
    :cond_2
    add-int/lit8 v2, v1, -0x1

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    const/4 v0, 0x1

    .line 28
    return v0
.end method

.method public release()V
    .locals 3

    .line 1
    .line 2
    :cond_0
    sget-object v0, Lkotlinx/coroutines/sync/e;->_availablePermits$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndIncrement(Ljava/lang/Object;)I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget v1, p0, Lkotlinx/coroutines/sync/e;->permits:I

    .line 9
    .line 10
    if-ge v0, v1, :cond_2

    .line 11
    .line 12
    if-ltz v0, :cond_1

    .line 13
    return-void

    .line 14
    .line 15
    .line 16
    :cond_1
    invoke-direct {p0}, Lkotlinx/coroutines/sync/e;->p()Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    return-void

    .line 21
    .line 22
    .line 23
    :cond_2
    invoke-direct {p0}, Lkotlinx/coroutines/sync/e;->k()V

    .line 24
    .line 25
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    const-string v2, "The number of released permits cannot be greater than "

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    iget v2, p0, Lkotlinx/coroutines/sync/e;->permits:I

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    throw v0
.end method
