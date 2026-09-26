.class public Lkotlinx/coroutines/internal/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/internal/t$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLockFreeLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListNode\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,367:1\n73#1,3:369\n1#2:368\n*S KotlinDebug\n*F\n+ 1 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListNode\n*L\n134#1:369,3\n*E\n"
.end annotation


# static fields
.field private static final _next$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final _prev$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final _removedRef$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private volatile _next:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private volatile _prev:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private volatile _removedRef:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "_next"

    const-class v1, Lkotlinx/coroutines/internal/t;

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/t;->_next$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_prev"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/t;->_prev$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_removedRef"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/t;->_removedRef$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p0, p0, Lkotlinx/coroutines/internal/t;->_next:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p0, p0, Lkotlinx/coroutines/internal/t;->_prev:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method public static final synthetic c(Lkotlinx/coroutines/internal/t;Lkotlinx/coroutines/internal/t;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lkotlinx/coroutines/internal/t;->h(Lkotlinx/coroutines/internal/t;)V

    .line 4
    return-void
.end method

.method public static final synthetic d()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/internal/t;->_next$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private final f(Lkotlinx/coroutines/internal/b0;)Lkotlinx/coroutines/internal/t;
    .locals 8

    .line 1
    .line 2
    :goto_0
    sget-object v0, Lkotlinx/coroutines/internal/t;->_prev$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lkotlinx/coroutines/internal/t;

    .line 9
    const/4 v1, 0x0

    .line 10
    move-object v2, v0

    .line 11
    :goto_1
    move-object v3, v1

    .line 12
    .line 13
    :goto_2
    sget-object v4, Lkotlinx/coroutines/internal/t;->_next$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object v5

    .line 18
    .line 19
    if-ne v5, p0, :cond_2

    .line 20
    .line 21
    if-ne v0, v2, :cond_0

    .line 22
    return-object v2

    .line 23
    .line 24
    :cond_0
    sget-object v1, Lkotlinx/coroutines/internal/t;->_prev$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 25
    .line 26
    .line 27
    invoke-static {v1, p0, v0, v2}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return-object v2

    .line 33
    .line 34
    .line 35
    :cond_2
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/t;->l()Z

    .line 36
    move-result v6

    .line 37
    .line 38
    if-eqz v6, :cond_3

    .line 39
    return-object v1

    .line 40
    .line 41
    :cond_3
    if-ne v5, p1, :cond_4

    .line 42
    return-object v2

    .line 43
    .line 44
    :cond_4
    instance-of v6, v5, Lkotlinx/coroutines/internal/b0;

    .line 45
    .line 46
    if-eqz v6, :cond_5

    .line 47
    .line 48
    check-cast v5, Lkotlinx/coroutines/internal/b0;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5, v2}, Lkotlinx/coroutines/internal/b0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    goto :goto_0

    .line 53
    .line 54
    :cond_5
    instance-of v6, v5, Lkotlinx/coroutines/internal/c0;

    .line 55
    .line 56
    if-eqz v6, :cond_8

    .line 57
    .line 58
    if-eqz v3, :cond_7

    .line 59
    .line 60
    check-cast v5, Lkotlinx/coroutines/internal/c0;

    .line 61
    .line 62
    iget-object v5, v5, Lkotlinx/coroutines/internal/c0;->ref:Lkotlinx/coroutines/internal/t;

    .line 63
    .line 64
    .line 65
    invoke-static {v4, v3, v2, v5}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    move-result v2

    .line 67
    .line 68
    if-nez v2, :cond_6

    .line 69
    goto :goto_0

    .line 70
    :cond_6
    move-object v2, v3

    .line 71
    goto :goto_1

    .line 72
    .line 73
    :cond_7
    sget-object v4, Lkotlinx/coroutines/internal/t;->_prev$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    move-result-object v2

    .line 78
    .line 79
    check-cast v2, Lkotlinx/coroutines/internal/t;

    .line 80
    goto :goto_2

    .line 81
    .line 82
    :cond_8
    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    .line 83
    .line 84
    .line 85
    invoke-static {v5, v3}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    move-object v3, v5

    .line 87
    .line 88
    check-cast v3, Lkotlinx/coroutines/internal/t;

    .line 89
    move-object v7, v3

    .line 90
    move-object v3, v2

    .line 91
    move-object v2, v7

    .line 92
    goto :goto_2
.end method

.method private final g(Lkotlinx/coroutines/internal/t;)Lkotlinx/coroutines/internal/t;
    .locals 1

    .line 1
    .line 2
    .line 3
    :goto_0
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/t;->l()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-object p1

    .line 8
    .line 9
    :cond_0
    sget-object v0, Lkotlinx/coroutines/internal/t;->_prev$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    check-cast p1, Lkotlinx/coroutines/internal/t;

    .line 16
    goto :goto_0
.end method

.method private final h(Lkotlinx/coroutines/internal/t;)V
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/internal/t;->_prev$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 3
    .line 4
    .line 5
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    check-cast v1, Lkotlinx/coroutines/internal/t;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/t;->i()Ljava/lang/Object;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    if-eq v2, p1, :cond_1

    .line 15
    return-void

    .line 16
    .line 17
    :cond_1
    sget-object v2, Lkotlinx/coroutines/internal/t;->_prev$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 18
    .line 19
    .line 20
    invoke-static {v2, p1, v1, p0}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    move-result v1

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/t;->l()Z

    .line 27
    move-result v0

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    const/4 v0, 0x0

    .line 31
    .line 32
    .line 33
    invoke-direct {p1, v0}, Lkotlinx/coroutines/internal/t;->f(Lkotlinx/coroutines/internal/b0;)Lkotlinx/coroutines/internal/t;

    .line 34
    :cond_2
    return-void
.end method

.method private final o()Lkotlinx/coroutines/internal/c0;
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/internal/t;->_removedRef$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    check-cast v1, Lkotlinx/coroutines/internal/c0;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lkotlinx/coroutines/internal/c0;

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, p0}, Lkotlinx/coroutines/internal/c0;-><init>(Lkotlinx/coroutines/internal/t;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final e(Lkotlinx/coroutines/internal/t;)Z
    .locals 1
    .param p1    # Lkotlinx/coroutines/internal/t;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/internal/t;->_prev$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    .line 7
    sget-object v0, Lkotlinx/coroutines/internal/t;->_next$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/t;->i()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-eq v0, p0, :cond_1

    .line 17
    const/4 p1, 0x0

    .line 18
    return p1

    .line 19
    .line 20
    :cond_1
    sget-object v0, Lkotlinx/coroutines/internal/t;->_next$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 21
    .line 22
    .line 23
    invoke-static {v0, p0, p0, p1}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-direct {p1, p0}, Lkotlinx/coroutines/internal/t;->h(Lkotlinx/coroutines/internal/t;)V

    .line 30
    const/4 p1, 0x1

    .line 31
    return p1
.end method

.method public final i()Ljava/lang/Object;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/internal/t;->_next$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 3
    .line 4
    .line 5
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    instance-of v2, v1, Lkotlinx/coroutines/internal/b0;

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    return-object v1

    .line 12
    .line 13
    :cond_0
    check-cast v1, Lkotlinx/coroutines/internal/b0;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p0}, Lkotlinx/coroutines/internal/b0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    goto :goto_0
.end method

.method public final j()Lkotlinx/coroutines/internal/t;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/t;->i()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lkotlinx/coroutines/internal/s;->b(Ljava/lang/Object;)Lkotlinx/coroutines/internal/t;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final k()Lkotlinx/coroutines/internal/t;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, v0}, Lkotlinx/coroutines/internal/t;->f(Lkotlinx/coroutines/internal/b0;)Lkotlinx/coroutines/internal/t;

    .line 5
    move-result-object v0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lkotlinx/coroutines/internal/t;->_prev$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    check-cast v0, Lkotlinx/coroutines/internal/t;

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v0}, Lkotlinx/coroutines/internal/t;->g(Lkotlinx/coroutines/internal/t;)Lkotlinx/coroutines/internal/t;

    .line 19
    move-result-object v0

    .line 20
    :cond_0
    return-object v0
.end method

.method public l()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/t;->i()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v0, v0, Lkotlinx/coroutines/internal/c0;

    .line 7
    return v0
.end method

.method public m()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/t;->n()Lkotlinx/coroutines/internal/t;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public final n()Lkotlinx/coroutines/internal/t;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/t;->i()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v1, v0, Lkotlinx/coroutines/internal/c0;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    check-cast v0, Lkotlinx/coroutines/internal/c0;

    .line 11
    .line 12
    iget-object v0, v0, Lkotlinx/coroutines/internal/c0;->ref:Lkotlinx/coroutines/internal/t;

    .line 13
    return-object v0

    .line 14
    .line 15
    :cond_1
    if-ne v0, p0, :cond_2

    .line 16
    .line 17
    check-cast v0, Lkotlinx/coroutines/internal/t;

    .line 18
    return-object v0

    .line 19
    .line 20
    :cond_2
    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    move-object v1, v0

    .line 25
    .line 26
    check-cast v1, Lkotlinx/coroutines/internal/t;

    .line 27
    .line 28
    .line 29
    invoke-direct {v1}, Lkotlinx/coroutines/internal/t;->o()Lkotlinx/coroutines/internal/c0;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    sget-object v3, Lkotlinx/coroutines/internal/t;->_next$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 33
    .line 34
    .line 35
    invoke-static {v3, p0, v0, v2}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    move-result v0

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    const/4 v0, 0x0

    .line 40
    .line 41
    .line 42
    invoke-direct {v1, v0}, Lkotlinx/coroutines/internal/t;->f(Lkotlinx/coroutines/internal/b0;)Lkotlinx/coroutines/internal/t;

    .line 43
    return-object v0
.end method

.method public final q(Lkotlinx/coroutines/internal/t;Lkotlinx/coroutines/internal/t;Lkotlinx/coroutines/internal/t$a;)I
    .locals 1
    .param p1    # Lkotlinx/coroutines/internal/t;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/internal/t;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlinx/coroutines/internal/t$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/internal/t;->_prev$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    .line 7
    sget-object v0, Lkotlinx/coroutines/internal/t;->_next$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    .line 12
    iput-object p2, p3, Lkotlinx/coroutines/internal/t$a;->oldNext:Lkotlinx/coroutines/internal/t;

    .line 13
    .line 14
    .line 15
    invoke-static {v0, p0, p2, p3}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    move-result p1

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    const/4 p1, 0x0

    .line 20
    return p1

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p3, p0}, Lkotlinx/coroutines/internal/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    if-nez p1, :cond_1

    .line 27
    const/4 p1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p1, 0x2

    .line 30
    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    new-instance v1, Lkotlinx/coroutines/internal/t$b;

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, p0}, Lkotlinx/coroutines/internal/t$b;-><init>(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const/16 v1, 0x40

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-static {p0}, Lkotlinx/coroutines/s0;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method
