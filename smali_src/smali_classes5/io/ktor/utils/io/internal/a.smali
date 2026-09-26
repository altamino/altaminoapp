.class public final Lio/ktor/utils/io/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final synthetic suspension$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic suspension:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "suspension"

    const-class v2, Lio/ktor/utils/io/internal/a;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/utils/io/internal/a;->suspension$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-object v0, p0, Lio/ktor/utils/io/internal/a;->suspension:Ljava/lang/Object;

    .line 7
    return-void
.end method

.method public static final synthetic a(Lio/ktor/utils/io/internal/a;Le8/a;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/internal/a;->e(Le8/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final e(Le8/a;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/a<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p2, Lio/ktor/utils/io/internal/a$b;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p2

    .line 6
    .line 7
    check-cast v0, Lio/ktor/utils/io/internal/a$b;

    .line 8
    .line 9
    iget v1, v0, Lio/ktor/utils/io/internal/a$b;->label:I

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
    iput v1, v0, Lio/ktor/utils/io/internal/a$b;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lio/ktor/utils/io/internal/a$b;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p2}, Lio/ktor/utils/io/internal/a$b;-><init>(Lio/ktor/utils/io/internal/a;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p2, v0, Lio/ktor/utils/io/internal/a$b;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lio/ktor/utils/io/internal/a$b;->label:I

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
    iget p1, v0, Lio/ktor/utils/io/internal/a$b;->I$0:I

    .line 40
    .line 41
    .line 42
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    if-eqz p1, :cond_3

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    .line 52
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    throw p1

    .line 54
    .line 55
    .line 56
    :cond_2
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 57
    const/4 p2, 0x0

    .line 58
    .line 59
    .line 60
    invoke-static {p2, v3, p2}, Lkotlinx/coroutines/f2;->b(Lkotlinx/coroutines/b2;ILjava/lang/Object;)Lkotlinx/coroutines/a0;

    .line 61
    move-result-object v2

    .line 62
    .line 63
    sget-object v4, Lio/ktor/utils/io/internal/a;->suspension$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 64
    .line 65
    .line 66
    invoke-static {v4, p0, p2, v2}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    move-result p2

    .line 68
    .line 69
    if-eqz p2, :cond_3

    .line 70
    .line 71
    .line 72
    invoke-interface {p1}, Le8/a;->invoke()Ljava/lang/Object;

    .line 73
    move-result-object p1

    .line 74
    .line 75
    check-cast p1, Ljava/lang/Boolean;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 79
    move-result p1

    .line 80
    .line 81
    if-eqz p1, :cond_3

    .line 82
    .line 83
    iput v3, v0, Lio/ktor/utils/io/internal/a$b;->I$0:I

    .line 84
    .line 85
    iput v3, v0, Lio/ktor/utils/io/internal/a$b;->label:I

    .line 86
    .line 87
    .line 88
    invoke-interface {v2, v0}, Lkotlinx/coroutines/b2;->t0(Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    if-ne p1, v1, :cond_4

    .line 92
    return-object v1

    .line 93
    :cond_3
    const/4 v3, 0x0

    .line 94
    .line 95
    .line 96
    :cond_4
    :goto_1
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    .line 97
    move-result-object p1

    .line 98
    return-object p1
.end method


# virtual methods
.method public final b(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    sget-object v0, Lio/ktor/utils/io/internal/a;->suspension$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Lkotlinx/coroutines/a0;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    return-void

    .line 13
    .line 14
    :cond_0
    if-eqz p1, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, p1}, Lkotlinx/coroutines/a0;->a(Ljava/lang/Throwable;)Z

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-interface {v0}, Lkotlinx/coroutines/a0;->complete()Z

    .line 22
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lio/ktor/utils/io/internal/a;->suspension$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    check-cast v0, Lkotlinx/coroutines/a0;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Lkotlinx/coroutines/a0;->complete()Z

    .line 15
    :cond_0
    return-void
.end method

.method public final d(Le8/a;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 4
    .param p1    # Le8/a;
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
            "Le8/a<",
            "Ljava/lang/Boolean;",
            ">;",
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
    instance-of v0, p2, Lio/ktor/utils/io/internal/a$a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p2

    .line 6
    .line 7
    check-cast v0, Lio/ktor/utils/io/internal/a$a;

    .line 8
    .line 9
    iget v1, v0, Lio/ktor/utils/io/internal/a$a;->label:I

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
    iput v1, v0, Lio/ktor/utils/io/internal/a$a;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lio/ktor/utils/io/internal/a$a;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p0, p2}, Lio/ktor/utils/io/internal/a$a;-><init>(Lio/ktor/utils/io/internal/a;Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p2, v0, Lio/ktor/utils/io/internal/a$a;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lio/ktor/utils/io/internal/a$a;->label:I

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
    iget-object p1, v0, Lio/ktor/utils/io/internal/a$a;->L$0:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, Lio/ktor/utils/io/internal/a;

    .line 42
    .line 43
    .line 44
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    .line 52
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    throw p1

    .line 54
    .line 55
    .line 56
    :cond_2
    invoke-static {p2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    iput-object p0, v0, Lio/ktor/utils/io/internal/a$a;->L$0:Ljava/lang/Object;

    .line 59
    .line 60
    iput v3, v0, Lio/ktor/utils/io/internal/a$a;->label:I

    .line 61
    .line 62
    .line 63
    invoke-direct {p0, p1, v0}, Lio/ktor/utils/io/internal/a;->e(Le8/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 64
    move-result-object p2

    .line 65
    .line 66
    if-ne p2, v1, :cond_3

    .line 67
    return-object v1

    .line 68
    :cond_3
    move-object p1, p0

    .line 69
    .line 70
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 74
    move-result p2

    .line 75
    .line 76
    if-eqz p2, :cond_4

    .line 77
    .line 78
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 79
    return-object p1

    .line 80
    .line 81
    .line 82
    :cond_4
    invoke-virtual {p1}, Lio/ktor/utils/io/internal/a;->c()V

    .line 83
    .line 84
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 85
    return-object p1
.end method
