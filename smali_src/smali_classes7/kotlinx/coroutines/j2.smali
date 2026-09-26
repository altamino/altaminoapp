.class public Lkotlinx/coroutines/j2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/b2;
.implements Lkotlinx/coroutines/w;
.implements Lkotlinx/coroutines/s2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/j2$a;,
        Lkotlinx/coroutines/j2$b;,
        Lkotlinx/coroutines/j2$c;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJobSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 4 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 Concurrent.kt\nkotlinx/coroutines/internal/ConcurrentKt\n+ 7 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n+ 8 Exceptions.kt\nkotlinx/coroutines/ExceptionsKt\n+ 9 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListHead\n+ 10 CompletionHandler.common.kt\nkotlinx/coroutines/CompletionHandler_commonKt\n+ 11 CompletionHandler.kt\nkotlinx/coroutines/CompletionHandlerKt\n+ 12 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListNode\n+ 13 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,1454:1\n706#1,2:1461\n367#1,2:1471\n369#1,4:1476\n373#1,4:1482\n377#1,2:1489\n367#1,2:1491\n369#1,4:1496\n373#1,4:1502\n377#1,2:1509\n178#1,2:1518\n707#1:1520\n178#1,2:1521\n178#1,2:1540\n178#1,2:1555\n706#1,2:1557\n706#1,2:1559\n178#1,2:1561\n706#1,2:1563\n178#1,2:1565\n178#1,2:1572\n178#1,2:1574\n1#2:1455\n1#2:1480\n1#2:1500\n28#3,4:1456\n28#3,4:1523\n28#3,4:1567\n28#3,4:1576\n20#4:1460\n20#4:1527\n20#4:1571\n20#4:1580\n288#5,2:1463\n288#5,2:1465\n19#6:1467\n163#7:1468\n163#7:1469\n153#7,4:1583\n75#8:1470\n75#8:1481\n75#8:1501\n75#8:1514\n341#9,3:1473\n344#9,3:1486\n341#9,3:1493\n344#9,3:1506\n341#9,3:1511\n344#9,3:1515\n47#10:1528\n22#11:1529\n22#11:1530\n13#11:1551\n13#11:1554\n13#11:1581\n13#11:1582\n13#11:1587\n13#11:1588\n134#12:1531\n73#12,3:1532\n135#12,5:1535\n314#13,9:1542\n323#13,2:1552\n*S KotlinDebug\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/JobSupport\n*L\n250#1:1461,2\n332#1:1471,2\n332#1:1476,4\n332#1:1482,4\n332#1:1489,2\n364#1:1491,2\n364#1:1496,4\n364#1:1502,4\n364#1:1509,2\n381#1:1518,2\n426#1:1520\n461#1:1521,2\n553#1:1540,2\n594#1:1555,2\n621#1:1557,2\n630#1:1559,2\n694#1:1561,2\n723#1:1563,2\n736#1:1565,2\n809#1:1572,2\n831#1:1574,2\n332#1:1480\n364#1:1500\n213#1:1456,4\n478#1:1523,4\n739#1:1567,4\n884#1:1576,4\n213#1:1460\n478#1:1527\n739#1:1571\n884#1:1580\n261#1:1463,2\n265#1:1465,2\n273#1:1467\n279#1:1468\n281#1:1469\n1218#1:1583,4\n284#1:1470\n332#1:1481\n364#1:1501\n372#1:1514\n332#1:1473,3\n332#1:1486,3\n364#1:1493,3\n364#1:1506,3\n368#1:1511,3\n368#1:1515,3\n483#1:1528\n495#1:1529\n505#1:1530\n561#1:1551\n577#1:1554\n924#1:1581\n974#1:1582\n1237#1:1587\n1259#1:1588\n526#1:1531\n526#1:1532,3\n526#1:1535,5\n559#1:1542,9\n559#1:1552,2\n*E\n"
.end annotation


# static fields
.field private static final _parentHandle$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final _state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private volatile _parentHandle:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private volatile _state:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "_state"

    const-class v1, Lkotlinx/coroutines/j2;

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/j2;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_parentHandle"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/j2;->_parentHandle$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lkotlinx/coroutines/k2;->c()Lkotlinx/coroutines/j1;

    .line 9
    move-result-object p1

    .line 10
    goto :goto_0

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/k2;->d()Lkotlinx/coroutines/j1;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    :goto_0
    iput-object p1, p0, Lkotlinx/coroutines/j2;->_state:Ljava/lang/Object;

    .line 17
    return-void
.end method

.method private final A(Ljava/lang/Throwable;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-gt v0, v1, :cond_0

    .line 8
    return-void

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 12
    move-result v0

    .line 13
    .line 14
    new-instance v1, Ljava/util/IdentityHashMap;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v0}, Ljava/util/IdentityHashMap;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    .line 24
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v1

    .line 30
    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    .line 34
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 36
    .line 37
    check-cast v1, Ljava/lang/Throwable;

    .line 38
    .line 39
    if-eq v1, p1, :cond_1

    .line 40
    .line 41
    if-eq v1, p1, :cond_1

    .line 42
    .line 43
    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    .line 44
    .line 45
    if-nez v2, :cond_1

    .line 46
    .line 47
    .line 48
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    move-result v2

    .line 50
    .line 51
    if-eqz v2, :cond_1

    .line 52
    .line 53
    .line 54
    invoke-static {p1, v1}, Lw7/e;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    return-void
.end method

.method private final B0(Lkotlinx/coroutines/internal/t;)Lkotlinx/coroutines/v;
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
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/t;->k()Lkotlinx/coroutines/internal/t;

    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/t;->j()Lkotlinx/coroutines/internal/t;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/t;->l()Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    instance-of v0, p1, Lkotlinx/coroutines/v;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    check-cast p1, Lkotlinx/coroutines/v;

    .line 28
    return-object p1

    .line 29
    .line 30
    :cond_1
    instance-of v0, p1, Lkotlinx/coroutines/o2;

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    const/4 p1, 0x0

    .line 34
    return-object p1
.end method

.method private final C0(Lkotlinx/coroutines/o2;Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/j2;->F0(Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/t;->i()Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    .line 9
    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    check-cast v0, Lkotlinx/coroutines/internal/t;

    .line 15
    const/4 v1, 0x0

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-static {v0, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    move-result v2

    .line 20
    .line 21
    if-nez v2, :cond_2

    .line 22
    .line 23
    instance-of v2, v0, Lkotlinx/coroutines/d2;

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    move-object v2, v0

    .line 27
    .line 28
    check-cast v2, Lkotlinx/coroutines/i2;

    .line 29
    .line 30
    .line 31
    :try_start_0
    invoke-virtual {v2, p2}, Lkotlinx/coroutines/e0;->r(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    goto :goto_1

    .line 33
    :catchall_0
    move-exception v3

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    .line 38
    invoke-static {v1, v3}, Lw7/e;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 39
    goto :goto_1

    .line 40
    .line 41
    :cond_0
    new-instance v1, Lkotlinx/coroutines/f0;

    .line 42
    .line 43
    new-instance v4, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    const-string v5, "Exception in completion handler "

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v2, " for "

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v2

    .line 67
    .line 68
    .line 69
    invoke-direct {v1, v2, v3}, Lkotlinx/coroutines/f0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    .line 71
    sget-object v2, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 72
    .line 73
    .line 74
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/t;->j()Lkotlinx/coroutines/internal/t;

    .line 75
    move-result-object v0

    .line 76
    goto :goto_0

    .line 77
    .line 78
    :cond_2
    if-eqz v1, :cond_3

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v1}, Lkotlinx/coroutines/j2;->p0(Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    :cond_3
    invoke-direct {p0, p2}, Lkotlinx/coroutines/j2;->N(Ljava/lang/Throwable;)Z

    .line 85
    return-void
.end method

.method private final D0(Lkotlinx/coroutines/o2;Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/t;->i()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    check-cast v0, Lkotlinx/coroutines/internal/t;

    .line 12
    const/4 v1, 0x0

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-static {v0, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    move-result v2

    .line 17
    .line 18
    if-nez v2, :cond_2

    .line 19
    .line 20
    instance-of v2, v0, Lkotlinx/coroutines/i2;

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    move-object v2, v0

    .line 24
    .line 25
    check-cast v2, Lkotlinx/coroutines/i2;

    .line 26
    .line 27
    .line 28
    :try_start_0
    invoke-virtual {v2, p2}, Lkotlinx/coroutines/e0;->r(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    goto :goto_1

    .line 30
    :catchall_0
    move-exception v3

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    .line 35
    invoke-static {v1, v3}, Lw7/e;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 36
    goto :goto_1

    .line 37
    .line 38
    :cond_0
    new-instance v1, Lkotlinx/coroutines/f0;

    .line 39
    .line 40
    new-instance v4, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    const-string v5, "Exception in completion handler "

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v2, " for "

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v2

    .line 64
    .line 65
    .line 66
    invoke-direct {v1, v2, v3}, Lkotlinx/coroutines/f0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    .line 68
    sget-object v2, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 69
    .line 70
    .line 71
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/t;->j()Lkotlinx/coroutines/internal/t;

    .line 72
    move-result-object v0

    .line 73
    goto :goto_0

    .line 74
    .line 75
    :cond_2
    if-eqz v1, :cond_3

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v1}, Lkotlinx/coroutines/j2;->p0(Ljava/lang/Throwable;)V

    .line 79
    :cond_3
    return-void
.end method

.method private final E(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lkotlinx/coroutines/j2$a;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lkotlin/coroutines/intrinsics/b;->c(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, p0}, Lkotlinx/coroutines/j2$a;-><init>(Lkotlin/coroutines/d;Lkotlinx/coroutines/j2;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lkotlinx/coroutines/p;->x()V

    .line 13
    .line 14
    new-instance v1, Lkotlinx/coroutines/t2;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v0}, Lkotlinx/coroutines/t2;-><init>(Lkotlinx/coroutines/p;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v1}, Lkotlinx/coroutines/j2;->U(Le8/l;)Lkotlinx/coroutines/g1;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Lkotlinx/coroutines/r;->a(Lkotlinx/coroutines/o;Lkotlinx/coroutines/g1;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lkotlinx/coroutines/p;->u()Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    if-ne v0, v1, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/h;->c(Lkotlin/coroutines/d;)V

    .line 38
    :cond_0
    return-object v0
.end method

.method private final I0(Lkotlinx/coroutines/j1;)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lkotlinx/coroutines/o2;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lkotlinx/coroutines/o2;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lkotlinx/coroutines/j1;->isActive()Z

    .line 9
    move-result v1

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    :cond_0
    new-instance v1, Lkotlinx/coroutines/u1;

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v0}, Lkotlinx/coroutines/u1;-><init>(Lkotlinx/coroutines/o2;)V

    .line 18
    move-object v0, v1

    .line 19
    .line 20
    :goto_0
    sget-object v1, Lkotlinx/coroutines/j2;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 21
    .line 22
    .line 23
    invoke-static {v1, p0, p1, v0}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    return-void
.end method

.method private final J(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    .line 2
    .line 3
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/j2;->n0()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v1, v0, Lkotlinx/coroutines/v1;

    .line 7
    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    instance-of v1, v0, Lkotlinx/coroutines/j2$c;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    move-object v1, v0

    .line 14
    .line 15
    check-cast v1, Lkotlinx/coroutines/j2$c;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lkotlinx/coroutines/j2$c;->g()Z

    .line 19
    move-result v1

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :cond_1
    new-instance v1, Lkotlinx/coroutines/c0;

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, p1}, Lkotlinx/coroutines/j2;->a0(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 28
    move-result-object v2

    .line 29
    const/4 v3, 0x2

    .line 30
    const/4 v4, 0x0

    .line 31
    const/4 v5, 0x0

    .line 32
    .line 33
    .line 34
    invoke-direct {v1, v2, v5, v3, v4}, Lkotlinx/coroutines/c0;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/k;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/j2;->T0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lkotlinx/coroutines/k2;->b()Lkotlinx/coroutines/internal/i0;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    if-eq v0, v1, :cond_0

    .line 45
    return-object v0

    .line 46
    .line 47
    .line 48
    :cond_2
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/k2;->a()Lkotlinx/coroutines/internal/i0;

    .line 49
    move-result-object p1

    .line 50
    return-object p1
.end method

.method private final J0(Lkotlinx/coroutines/i2;)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lkotlinx/coroutines/o2;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lkotlinx/coroutines/o2;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lkotlinx/coroutines/internal/t;->e(Lkotlinx/coroutines/internal/t;)Z

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/t;->j()Lkotlinx/coroutines/internal/t;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    sget-object v1, Lkotlinx/coroutines/j2;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 15
    .line 16
    .line 17
    invoke-static {v1, p0, p1, v0}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    return-void
.end method

.method private final M0(Ljava/lang/Object;)I
    .locals 4

    .line 1
    .line 2
    instance-of v0, p1, Lkotlinx/coroutines/j1;

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, -0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    move-object v0, p1

    .line 9
    .line 10
    check-cast v0, Lkotlinx/coroutines/j1;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lkotlinx/coroutines/j1;->isActive()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    return v3

    .line 18
    .line 19
    :cond_0
    sget-object v0, Lkotlinx/coroutines/j2;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lkotlinx/coroutines/k2;->c()Lkotlinx/coroutines/j1;

    .line 23
    move-result-object v3

    .line 24
    .line 25
    .line 26
    invoke-static {v0, p0, p1, v3}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    move-result p1

    .line 28
    .line 29
    if-nez p1, :cond_1

    .line 30
    return v2

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/j2;->H0()V

    .line 34
    return v1

    .line 35
    .line 36
    :cond_2
    instance-of v0, p1, Lkotlinx/coroutines/u1;

    .line 37
    .line 38
    if-eqz v0, :cond_4

    .line 39
    .line 40
    sget-object v0, Lkotlinx/coroutines/j2;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 41
    move-object v3, p1

    .line 42
    .line 43
    check-cast v3, Lkotlinx/coroutines/u1;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Lkotlinx/coroutines/u1;->a()Lkotlinx/coroutines/o2;

    .line 47
    move-result-object v3

    .line 48
    .line 49
    .line 50
    invoke-static {v0, p0, p1, v3}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    move-result p1

    .line 52
    .line 53
    if-nez p1, :cond_3

    .line 54
    return v2

    .line 55
    .line 56
    .line 57
    :cond_3
    invoke-virtual {p0}, Lkotlinx/coroutines/j2;->H0()V

    .line 58
    return v1

    .line 59
    :cond_4
    return v3
.end method

.method private final N(Ljava/lang/Throwable;)Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/coroutines/j2;->r0()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    :cond_0
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lkotlinx/coroutines/j2;->m0()Lkotlinx/coroutines/u;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    if-eqz v2, :cond_4

    .line 17
    .line 18
    sget-object v3, Lkotlinx/coroutines/q2;->INSTANCE:Lkotlinx/coroutines/q2;

    .line 19
    .line 20
    if-ne v2, v3, :cond_1

    .line 21
    goto :goto_1

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-interface {v2, p1}, Lkotlinx/coroutines/u;->b(Ljava/lang/Throwable;)Z

    .line 25
    move-result p1

    .line 26
    .line 27
    if-nez p1, :cond_3

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const/4 v1, 0x0

    .line 32
    :cond_3
    :goto_0
    return v1

    .line 33
    :cond_4
    :goto_1
    return v0
.end method

.method private final N0(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    instance-of v0, p1, Lkotlinx/coroutines/j2$c;

    .line 3
    .line 4
    const-string v1, "Active"

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    check-cast p1, Lkotlinx/coroutines/j2$c;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lkotlinx/coroutines/j2$c;->f()Z

    .line 12
    move-result v0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-string v1, "Cancelling"

    .line 17
    goto :goto_0

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p1}, Lkotlinx/coroutines/j2$c;->g()Z

    .line 21
    move-result p1

    .line 22
    .line 23
    if-eqz p1, :cond_5

    .line 24
    .line 25
    const-string v1, "Completing"

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_1
    instance-of v0, p1, Lkotlinx/coroutines/v1;

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    check-cast p1, Lkotlinx/coroutines/v1;

    .line 33
    .line 34
    .line 35
    invoke-interface {p1}, Lkotlinx/coroutines/v1;->isActive()Z

    .line 36
    move-result p1

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_2
    const-string v1, "New"

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_3
    instance-of p1, p1, Lkotlinx/coroutines/c0;

    .line 45
    .line 46
    if-eqz p1, :cond_4

    .line 47
    .line 48
    const-string v1, "Cancelled"

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_4
    const-string v1, "Completed"

    .line 52
    :cond_5
    :goto_0
    return-object v1
.end method

.method public static synthetic P0(Lkotlinx/coroutines/j2;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;
    .locals 0

    .line 1
    .line 2
    if-nez p4, :cond_1

    .line 3
    .line 4
    and-int/lit8 p3, p3, 0x1

    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    const/4 p2, 0x0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/j2;->O0(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    .line 14
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 15
    .line 16
    const-string p1, "Super calls with default arguments not supported in this target, function: toCancellationException"

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 20
    throw p0
.end method

.method private final R0(Lkotlinx/coroutines/v1;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/j2;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 3
    .line 4
    .line 5
    invoke-static {p2}, Lkotlinx/coroutines/k2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-static {v0, p0, p1, v1}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    const/4 p1, 0x0

    .line 14
    return p1

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/j2;->F0(Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/j2;->G0(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/j2;->X(Lkotlinx/coroutines/v1;Ljava/lang/Object;)V

    .line 25
    const/4 p1, 0x1

    .line 26
    return p1
.end method

.method private final S0(Lkotlinx/coroutines/v1;Ljava/lang/Throwable;)Z
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lkotlinx/coroutines/j2;->l0(Lkotlinx/coroutines/v1;)Lkotlinx/coroutines/o2;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    return v1

    .line 9
    .line 10
    :cond_0
    new-instance v2, Lkotlinx/coroutines/j2$c;

    .line 11
    .line 12
    .line 13
    invoke-direct {v2, v0, v1, p2}, Lkotlinx/coroutines/j2$c;-><init>(Lkotlinx/coroutines/o2;ZLjava/lang/Throwable;)V

    .line 14
    .line 15
    sget-object v3, Lkotlinx/coroutines/j2;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 16
    .line 17
    .line 18
    invoke-static {v3, p0, p1, v2}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    move-result p1

    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    return v1

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-direct {p0, v0, p2}, Lkotlinx/coroutines/j2;->C0(Lkotlinx/coroutines/o2;Ljava/lang/Throwable;)V

    .line 26
    const/4 p1, 0x1

    .line 27
    return p1
.end method

.method private final T0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lkotlinx/coroutines/v1;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lkotlinx/coroutines/k2;->a()Lkotlinx/coroutines/internal/i0;

    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    .line 11
    :cond_0
    instance-of v0, p1, Lkotlinx/coroutines/j1;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    instance-of v0, p1, Lkotlinx/coroutines/i2;

    .line 16
    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    :cond_1
    instance-of v0, p1, Lkotlinx/coroutines/v;

    .line 20
    .line 21
    if-nez v0, :cond_3

    .line 22
    .line 23
    instance-of v0, p2, Lkotlinx/coroutines/c0;

    .line 24
    .line 25
    if-nez v0, :cond_3

    .line 26
    .line 27
    check-cast p1, Lkotlinx/coroutines/v1;

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/j2;->R0(Lkotlinx/coroutines/v1;Ljava/lang/Object;)Z

    .line 31
    move-result p1

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    return-object p2

    .line 35
    .line 36
    .line 37
    :cond_2
    invoke-static {}, Lkotlinx/coroutines/k2;->b()Lkotlinx/coroutines/internal/i0;

    .line 38
    move-result-object p1

    .line 39
    return-object p1

    .line 40
    .line 41
    :cond_3
    check-cast p1, Lkotlinx/coroutines/v1;

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/j2;->U0(Lkotlinx/coroutines/v1;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    move-result-object p1

    .line 46
    return-object p1
.end method

.method private final U0(Lkotlinx/coroutines/v1;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lkotlinx/coroutines/j2;->l0(Lkotlinx/coroutines/v1;)Lkotlinx/coroutines/o2;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lkotlinx/coroutines/k2;->b()Lkotlinx/coroutines/internal/i0;

    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    .line 13
    :cond_0
    instance-of v1, p1, Lkotlinx/coroutines/j2$c;

    .line 14
    const/4 v2, 0x0

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    move-object v1, p1

    .line 18
    .line 19
    check-cast v1, Lkotlinx/coroutines/j2$c;

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    move-object v1, v2

    .line 22
    :goto_0
    const/4 v3, 0x0

    .line 23
    .line 24
    if-nez v1, :cond_2

    .line 25
    .line 26
    new-instance v1, Lkotlinx/coroutines/j2$c;

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, v0, v3, v2}, Lkotlinx/coroutines/j2$c;-><init>(Lkotlinx/coroutines/o2;ZLjava/lang/Throwable;)V

    .line 30
    .line 31
    :cond_2
    new-instance v3, Lkotlin/jvm/internal/p0;

    .line 32
    .line 33
    .line 34
    invoke-direct {v3}, Lkotlin/jvm/internal/p0;-><init>()V

    .line 35
    monitor-enter v1

    .line 36
    .line 37
    .line 38
    :try_start_0
    invoke-virtual {v1}, Lkotlinx/coroutines/j2$c;->g()Z

    .line 39
    move-result v4

    .line 40
    .line 41
    if-eqz v4, :cond_3

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lkotlinx/coroutines/k2;->a()Lkotlinx/coroutines/internal/i0;

    .line 45
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit v1

    .line 47
    return-object p1

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    goto :goto_2

    .line 50
    :cond_3
    const/4 v4, 0x1

    .line 51
    .line 52
    .line 53
    :try_start_1
    invoke-virtual {v1, v4}, Lkotlinx/coroutines/j2$c;->j(Z)V

    .line 54
    .line 55
    if-eq v1, p1, :cond_4

    .line 56
    .line 57
    sget-object v5, Lkotlinx/coroutines/j2;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 58
    .line 59
    .line 60
    invoke-static {v5, p0, p1, v1}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    move-result v5

    .line 62
    .line 63
    if-nez v5, :cond_4

    .line 64
    .line 65
    .line 66
    invoke-static {}, Lkotlinx/coroutines/k2;->b()Lkotlinx/coroutines/internal/i0;

    .line 67
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    monitor-exit v1

    .line 69
    return-object p1

    .line 70
    .line 71
    .line 72
    :cond_4
    :try_start_2
    invoke-virtual {v1}, Lkotlinx/coroutines/j2$c;->f()Z

    .line 73
    move-result v5

    .line 74
    .line 75
    instance-of v6, p2, Lkotlinx/coroutines/c0;

    .line 76
    .line 77
    if-eqz v6, :cond_5

    .line 78
    move-object v6, p2

    .line 79
    .line 80
    check-cast v6, Lkotlinx/coroutines/c0;

    .line 81
    goto :goto_1

    .line 82
    :cond_5
    move-object v6, v2

    .line 83
    .line 84
    :goto_1
    if-eqz v6, :cond_6

    .line 85
    .line 86
    iget-object v6, v6, Lkotlinx/coroutines/c0;->cause:Ljava/lang/Throwable;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v6}, Lkotlinx/coroutines/j2$c;->b(Ljava/lang/Throwable;)V

    .line 90
    .line 91
    .line 92
    :cond_6
    invoke-virtual {v1}, Lkotlinx/coroutines/j2$c;->e()Ljava/lang/Throwable;

    .line 93
    move-result-object v6

    .line 94
    xor-int/2addr v4, v5

    .line 95
    .line 96
    .line 97
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 98
    move-result-object v4

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 102
    move-result v4

    .line 103
    .line 104
    if-eqz v4, :cond_7

    .line 105
    move-object v2, v6

    .line 106
    .line 107
    :cond_7
    iput-object v2, v3, Lkotlin/jvm/internal/p0;->element:Ljava/lang/Object;

    .line 108
    .line 109
    sget-object v3, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    monitor-exit v1

    .line 111
    .line 112
    if-eqz v2, :cond_8

    .line 113
    .line 114
    .line 115
    invoke-direct {p0, v0, v2}, Lkotlinx/coroutines/j2;->C0(Lkotlinx/coroutines/o2;Ljava/lang/Throwable;)V

    .line 116
    .line 117
    .line 118
    :cond_8
    invoke-direct {p0, p1}, Lkotlinx/coroutines/j2;->d0(Lkotlinx/coroutines/v1;)Lkotlinx/coroutines/v;

    .line 119
    move-result-object p1

    .line 120
    .line 121
    if-eqz p1, :cond_9

    .line 122
    .line 123
    .line 124
    invoke-direct {p0, v1, p1, p2}, Lkotlinx/coroutines/j2;->V0(Lkotlinx/coroutines/j2$c;Lkotlinx/coroutines/v;Ljava/lang/Object;)Z

    .line 125
    move-result p1

    .line 126
    .line 127
    if-eqz p1, :cond_9

    .line 128
    .line 129
    sget-object p1, Lkotlinx/coroutines/k2;->COMPLETING_WAITING_CHILDREN:Lkotlinx/coroutines/internal/i0;

    .line 130
    return-object p1

    .line 131
    .line 132
    .line 133
    :cond_9
    invoke-direct {p0, v1, p2}, Lkotlinx/coroutines/j2;->c0(Lkotlinx/coroutines/j2$c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    move-result-object p1

    .line 135
    return-object p1

    .line 136
    :goto_2
    monitor-exit v1

    .line 137
    throw p1
.end method

.method private final V0(Lkotlinx/coroutines/j2$c;Lkotlinx/coroutines/v;Ljava/lang/Object;)Z
    .locals 6

    .line 1
    .line 2
    :cond_0
    iget-object v0, p2, Lkotlinx/coroutines/v;->childJob:Lkotlinx/coroutines/w;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    new-instance v3, Lkotlinx/coroutines/j2$b;

    .line 7
    .line 8
    .line 9
    invoke-direct {v3, p0, p1, p2, p3}, Lkotlinx/coroutines/j2$b;-><init>(Lkotlinx/coroutines/j2;Lkotlinx/coroutines/j2$c;Lkotlinx/coroutines/v;Ljava/lang/Object;)V

    .line 10
    const/4 v4, 0x1

    .line 11
    const/4 v5, 0x0

    .line 12
    .line 13
    .line 14
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/b2$a;->d(Lkotlinx/coroutines/b2;ZZLe8/l;ILjava/lang/Object;)Lkotlinx/coroutines/g1;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    sget-object v1, Lkotlinx/coroutines/q2;->INSTANCE:Lkotlinx/coroutines/q2;

    .line 18
    .line 19
    if-eq v0, v1, :cond_1

    .line 20
    const/4 p1, 0x1

    .line 21
    return p1

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-direct {p0, p2}, Lkotlinx/coroutines/j2;->B0(Lkotlinx/coroutines/internal/t;)Lkotlinx/coroutines/v;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    if-nez p2, :cond_0

    .line 28
    const/4 p1, 0x0

    .line 29
    return p1
.end method

.method private final X(Lkotlinx/coroutines/v1;Ljava/lang/Object;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/coroutines/j2;->m0()Lkotlinx/coroutines/u;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Lkotlinx/coroutines/g1;->t()V

    .line 10
    .line 11
    sget-object v0, Lkotlinx/coroutines/q2;->INSTANCE:Lkotlinx/coroutines/q2;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/j2;->L0(Lkotlinx/coroutines/u;)V

    .line 15
    .line 16
    :cond_0
    instance-of v0, p2, Lkotlinx/coroutines/c0;

    .line 17
    const/4 v1, 0x0

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    check-cast p2, Lkotlinx/coroutines/c0;

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move-object p2, v1

    .line 24
    .line 25
    :goto_0
    if-eqz p2, :cond_2

    .line 26
    .line 27
    iget-object v1, p2, Lkotlinx/coroutines/c0;->cause:Ljava/lang/Throwable;

    .line 28
    .line 29
    :cond_2
    instance-of p2, p1, Lkotlinx/coroutines/i2;

    .line 30
    .line 31
    if-eqz p2, :cond_3

    .line 32
    :try_start_0
    move-object p2, p1

    .line 33
    .line 34
    check-cast p2, Lkotlinx/coroutines/i2;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, v1}, Lkotlinx/coroutines/e0;->r(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    goto :goto_1

    .line 39
    :catchall_0
    move-exception p2

    .line 40
    .line 41
    new-instance v0, Lkotlinx/coroutines/f0;

    .line 42
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    const-string v2, "Exception in completion handler "

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string p1, " for "

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    .line 69
    invoke-direct {v0, p1, p2}, Lkotlinx/coroutines/f0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/j2;->p0(Ljava/lang/Throwable;)V

    .line 73
    goto :goto_1

    .line 74
    .line 75
    .line 76
    :cond_3
    invoke-interface {p1}, Lkotlinx/coroutines/v1;->a()Lkotlinx/coroutines/o2;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    if-eqz p1, :cond_4

    .line 80
    .line 81
    .line 82
    invoke-direct {p0, p1, v1}, Lkotlinx/coroutines/j2;->D0(Lkotlinx/coroutines/o2;Ljava/lang/Throwable;)V

    .line 83
    :cond_4
    :goto_1
    return-void
.end method

.method private final Y(Lkotlinx/coroutines/j2$c;Lkotlinx/coroutines/v;Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p2}, Lkotlinx/coroutines/j2;->B0(Lkotlinx/coroutines/internal/t;)Lkotlinx/coroutines/v;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/j2;->V0(Lkotlinx/coroutines/j2$c;Lkotlinx/coroutines/v;Ljava/lang/Object;)Z

    .line 10
    move-result p2

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    return-void

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-direct {p0, p1, p3}, Lkotlinx/coroutines/j2;->c0(Lkotlinx/coroutines/j2$c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/j2;->C(Ljava/lang/Object;)V

    .line 21
    return-void
.end method

.method private final a0(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    goto :goto_0

    .line 4
    .line 5
    :cond_0
    instance-of v0, p1, Ljava/lang/Throwable;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    :goto_0
    check-cast p1, Ljava/lang/Throwable;

    .line 10
    .line 11
    if-nez p1, :cond_2

    .line 12
    .line 13
    new-instance p1, Lkotlinx/coroutines/c2;

    .line 14
    .line 15
    .line 16
    invoke-static {p0}, Lkotlinx/coroutines/j2;->x(Lkotlinx/coroutines/j2;)Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    .line 20
    .line 21
    invoke-direct {p1, v0, v1, p0}, Lkotlinx/coroutines/c2;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/b2;)V

    .line 22
    goto :goto_1

    .line 23
    .line 24
    :cond_1
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob"

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    check-cast p1, Lkotlinx/coroutines/s2;

    .line 30
    .line 31
    .line 32
    invoke-interface {p1}, Lkotlinx/coroutines/s2;->k0()Ljava/util/concurrent/CancellationException;

    .line 33
    move-result-object p1

    .line 34
    :cond_2
    :goto_1
    return-object p1
.end method

.method private final c0(Lkotlinx/coroutines/j2$c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    .line 2
    instance-of v0, p2, Lkotlinx/coroutines/c0;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    move-object v0, p2

    .line 7
    .line 8
    check-cast v0, Lkotlinx/coroutines/c0;

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object v0, v1

    .line 11
    .line 12
    :goto_0
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, v0, Lkotlinx/coroutines/c0;->cause:Ljava/lang/Throwable;

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    move-object v0, v1

    .line 17
    :goto_1
    monitor-enter p1

    .line 18
    .line 19
    .line 20
    :try_start_0
    invoke-virtual {p1}, Lkotlinx/coroutines/j2$c;->f()Z

    .line 21
    move-result v2

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lkotlinx/coroutines/j2$c;->i(Ljava/lang/Throwable;)Ljava/util/List;

    .line 25
    move-result-object v3

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, p1, v3}, Lkotlinx/coroutines/j2;->h0(Lkotlinx/coroutines/j2$c;Ljava/util/List;)Ljava/lang/Throwable;

    .line 29
    move-result-object v4

    .line 30
    .line 31
    if-eqz v4, :cond_2

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, v4, v3}, Lkotlinx/coroutines/j2;->A(Ljava/lang/Throwable;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    goto :goto_2

    .line 36
    :catchall_0
    move-exception p2

    .line 37
    goto :goto_4

    .line 38
    :cond_2
    :goto_2
    monitor-exit p1

    .line 39
    .line 40
    if-nez v4, :cond_3

    .line 41
    goto :goto_3

    .line 42
    .line 43
    :cond_3
    if-ne v4, v0, :cond_4

    .line 44
    goto :goto_3

    .line 45
    .line 46
    :cond_4
    new-instance p2, Lkotlinx/coroutines/c0;

    .line 47
    const/4 v0, 0x0

    .line 48
    const/4 v3, 0x2

    .line 49
    .line 50
    .line 51
    invoke-direct {p2, v4, v0, v3, v1}, Lkotlinx/coroutines/c0;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/k;)V

    .line 52
    .line 53
    :goto_3
    if-eqz v4, :cond_6

    .line 54
    .line 55
    .line 56
    invoke-direct {p0, v4}, Lkotlinx/coroutines/j2;->N(Ljava/lang/Throwable;)Z

    .line 57
    move-result v0

    .line 58
    .line 59
    if-nez v0, :cond_5

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v4}, Lkotlinx/coroutines/j2;->o0(Ljava/lang/Throwable;)Z

    .line 63
    move-result v0

    .line 64
    .line 65
    if-eqz v0, :cond_6

    .line 66
    .line 67
    :cond_5
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally"

    .line 68
    .line 69
    .line 70
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    move-object v0, p2

    .line 72
    .line 73
    check-cast v0, Lkotlinx/coroutines/c0;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Lkotlinx/coroutines/c0;->b()Z

    .line 77
    .line 78
    :cond_6
    if-nez v2, :cond_7

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v4}, Lkotlinx/coroutines/j2;->F0(Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    :cond_7
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/j2;->G0(Ljava/lang/Object;)V

    .line 85
    .line 86
    sget-object v0, Lkotlinx/coroutines/j2;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 87
    .line 88
    .line 89
    invoke-static {p2}, Lkotlinx/coroutines/k2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    move-result-object v1

    .line 91
    .line 92
    .line 93
    invoke-static {v0, p0, p1, v1}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/j2;->X(Lkotlinx/coroutines/v1;Ljava/lang/Object;)V

    .line 97
    return-object p2

    .line 98
    :goto_4
    monitor-exit p1

    .line 99
    throw p2
.end method

.method private final d0(Lkotlinx/coroutines/v1;)Lkotlinx/coroutines/v;
    .locals 2

    .line 1
    .line 2
    instance-of v0, p1, Lkotlinx/coroutines/v;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    move-object v0, p1

    .line 7
    .line 8
    check-cast v0, Lkotlinx/coroutines/v;

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object v0, v1

    .line 11
    .line 12
    :goto_0
    if-nez v0, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Lkotlinx/coroutines/v1;->a()Lkotlinx/coroutines/o2;

    .line 16
    move-result-object p1

    .line 17
    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1}, Lkotlinx/coroutines/j2;->B0(Lkotlinx/coroutines/internal/t;)Lkotlinx/coroutines/v;

    .line 22
    move-result-object v1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move-object v1, v0

    .line 25
    :cond_2
    :goto_1
    return-object v1
.end method

.method private final f0(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2

    .line 1
    .line 2
    instance-of v0, p1, Lkotlinx/coroutines/c0;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Lkotlinx/coroutines/c0;

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object p1, v1

    .line 10
    .line 11
    :goto_0
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-object v1, p1, Lkotlinx/coroutines/c0;->cause:Ljava/lang/Throwable;

    .line 14
    :cond_1
    return-object v1
.end method

.method private final h0(Lkotlinx/coroutines/j2$c;Ljava/util/List;)Ljava/lang/Throwable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/j2$c;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lkotlinx/coroutines/j2$c;->f()Z

    .line 11
    move-result p1

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    new-instance p1, Lkotlinx/coroutines/c2;

    .line 16
    .line 17
    .line 18
    invoke-static {p0}, Lkotlinx/coroutines/j2;->x(Lkotlinx/coroutines/j2;)Ljava/lang/String;

    .line 19
    move-result-object p2

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, p2, v1, p0}, Lkotlinx/coroutines/c2;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/b2;)V

    .line 23
    return-object p1

    .line 24
    :cond_0
    return-object v1

    .line 25
    :cond_1
    move-object p1, p2

    .line 26
    .line 27
    check-cast p1, Ljava/lang/Iterable;

    .line 28
    .line 29
    .line 30
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v2

    .line 36
    .line 37
    if-eqz v2, :cond_3

    .line 38
    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v2

    .line 42
    move-object v3, v2

    .line 43
    .line 44
    check-cast v3, Ljava/lang/Throwable;

    .line 45
    .line 46
    instance-of v3, v3, Ljava/util/concurrent/CancellationException;

    .line 47
    .line 48
    xor-int/lit8 v3, v3, 0x1

    .line 49
    .line 50
    if-eqz v3, :cond_2

    .line 51
    goto :goto_0

    .line 52
    :cond_3
    move-object v2, v1

    .line 53
    .line 54
    :goto_0
    check-cast v2, Ljava/lang/Throwable;

    .line 55
    .line 56
    if-eqz v2, :cond_4

    .line 57
    return-object v2

    .line 58
    :cond_4
    const/4 v0, 0x0

    .line 59
    .line 60
    .line 61
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    move-result-object p2

    .line 63
    .line 64
    check-cast p2, Ljava/lang/Throwable;

    .line 65
    .line 66
    instance-of v0, p2, Lkotlinx/coroutines/d3;

    .line 67
    .line 68
    if-eqz v0, :cond_7

    .line 69
    .line 70
    .line 71
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    .line 75
    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    move-result v0

    .line 77
    .line 78
    if-eqz v0, :cond_6

    .line 79
    .line 80
    .line 81
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    move-result-object v0

    .line 83
    move-object v2, v0

    .line 84
    .line 85
    check-cast v2, Ljava/lang/Throwable;

    .line 86
    .line 87
    if-eq v2, p2, :cond_5

    .line 88
    .line 89
    instance-of v2, v2, Lkotlinx/coroutines/d3;

    .line 90
    .line 91
    if-eqz v2, :cond_5

    .line 92
    move-object v1, v0

    .line 93
    .line 94
    :cond_6
    check-cast v1, Ljava/lang/Throwable;

    .line 95
    .line 96
    if-eqz v1, :cond_7

    .line 97
    return-object v1

    .line 98
    :cond_7
    return-object p2
.end method

.method private final l0(Lkotlinx/coroutines/v1;)Lkotlinx/coroutines/o2;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Lkotlinx/coroutines/v1;->a()Lkotlinx/coroutines/o2;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    instance-of v0, p1, Lkotlinx/coroutines/j1;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lkotlinx/coroutines/o2;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Lkotlinx/coroutines/o2;-><init>()V

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    instance-of v0, p1, Lkotlinx/coroutines/i2;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    check-cast p1, Lkotlinx/coroutines/i2;

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p1}, Lkotlinx/coroutines/j2;->J0(Lkotlinx/coroutines/i2;)V

    .line 26
    const/4 v0, 0x0

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    const-string v2, "State should have list: "

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    throw v0

    .line 55
    :cond_2
    :goto_0
    return-object v0
.end method

.method private final s0()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/j2;->n0()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v1, v0, Lkotlinx/coroutines/v1;

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    .line 12
    .line 13
    :cond_1
    invoke-direct {p0, v0}, Lkotlinx/coroutines/j2;->M0(Ljava/lang/Object;)I

    .line 14
    move-result v0

    .line 15
    .line 16
    if-ltz v0, :cond_0

    .line 17
    const/4 v0, 0x1

    .line 18
    return v0
.end method

.method private final u0(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 3
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
    new-instance v0, Lkotlinx/coroutines/p;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lkotlin/coroutines/intrinsics/b;->c(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/p;-><init>(Lkotlin/coroutines/d;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lkotlinx/coroutines/p;->x()V

    .line 14
    .line 15
    new-instance v1, Lkotlinx/coroutines/u2;

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v0}, Lkotlinx/coroutines/u2;-><init>(Lkotlin/coroutines/d;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v1}, Lkotlinx/coroutines/j2;->U(Le8/l;)Lkotlinx/coroutines/g1;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Lkotlinx/coroutines/r;->a(Lkotlinx/coroutines/o;Lkotlinx/coroutines/g1;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lkotlinx/coroutines/p;->u()Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    if-ne v0, v1, :cond_0

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/h;->c(Lkotlin/coroutines/d;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    if-ne v0, p1, :cond_1

    .line 45
    return-object v0

    .line 46
    .line 47
    :cond_1
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 48
    return-object p1
.end method

.method private final v0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move-object v1, v0

    .line 3
    .line 4
    .line 5
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/j2;->n0()Ljava/lang/Object;

    .line 6
    move-result-object v2

    .line 7
    .line 8
    instance-of v3, v2, Lkotlinx/coroutines/j2$c;

    .line 9
    .line 10
    if-eqz v3, :cond_7

    .line 11
    monitor-enter v2

    .line 12
    :try_start_0
    move-object v3, v2

    .line 13
    .line 14
    check-cast v3, Lkotlinx/coroutines/j2$c;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3}, Lkotlinx/coroutines/j2$c;->h()Z

    .line 18
    move-result v3

    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lkotlinx/coroutines/k2;->f()Lkotlinx/coroutines/internal/i0;

    .line 24
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    monitor-exit v2

    .line 26
    return-object p1

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    :try_start_1
    move-object v3, v2

    .line 30
    .line 31
    check-cast v3, Lkotlinx/coroutines/j2$c;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Lkotlinx/coroutines/j2$c;->f()Z

    .line 35
    move-result v3

    .line 36
    .line 37
    if-nez p1, :cond_2

    .line 38
    .line 39
    if-nez v3, :cond_4

    .line 40
    .line 41
    :cond_2
    if-nez v1, :cond_3

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, p1}, Lkotlinx/coroutines/j2;->a0(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 45
    move-result-object v1

    .line 46
    :cond_3
    move-object p1, v2

    .line 47
    .line 48
    check-cast p1, Lkotlinx/coroutines/j2$c;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v1}, Lkotlinx/coroutines/j2$c;->b(Ljava/lang/Throwable;)V

    .line 52
    :cond_4
    move-object p1, v2

    .line 53
    .line 54
    check-cast p1, Lkotlinx/coroutines/j2$c;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Lkotlinx/coroutines/j2$c;->e()Ljava/lang/Throwable;

    .line 58
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    .line 60
    xor-int/lit8 v1, v3, 0x1

    .line 61
    .line 62
    if-eqz v1, :cond_5

    .line 63
    move-object v0, p1

    .line 64
    :cond_5
    monitor-exit v2

    .line 65
    .line 66
    if-eqz v0, :cond_6

    .line 67
    .line 68
    check-cast v2, Lkotlinx/coroutines/j2$c;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Lkotlinx/coroutines/j2$c;->a()Lkotlinx/coroutines/o2;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    .line 75
    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/j2;->C0(Lkotlinx/coroutines/o2;Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    :cond_6
    invoke-static {}, Lkotlinx/coroutines/k2;->a()Lkotlinx/coroutines/internal/i0;

    .line 79
    move-result-object p1

    .line 80
    return-object p1

    .line 81
    :goto_0
    monitor-exit v2

    .line 82
    throw p1

    .line 83
    .line 84
    :cond_7
    instance-of v3, v2, Lkotlinx/coroutines/v1;

    .line 85
    .line 86
    if-eqz v3, :cond_b

    .line 87
    .line 88
    if-nez v1, :cond_8

    .line 89
    .line 90
    .line 91
    invoke-direct {p0, p1}, Lkotlinx/coroutines/j2;->a0(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 92
    move-result-object v1

    .line 93
    :cond_8
    move-object v3, v2

    .line 94
    .line 95
    check-cast v3, Lkotlinx/coroutines/v1;

    .line 96
    .line 97
    .line 98
    invoke-interface {v3}, Lkotlinx/coroutines/v1;->isActive()Z

    .line 99
    move-result v4

    .line 100
    .line 101
    if-eqz v4, :cond_9

    .line 102
    .line 103
    .line 104
    invoke-direct {p0, v3, v1}, Lkotlinx/coroutines/j2;->S0(Lkotlinx/coroutines/v1;Ljava/lang/Throwable;)Z

    .line 105
    move-result v2

    .line 106
    .line 107
    if-eqz v2, :cond_0

    .line 108
    .line 109
    .line 110
    invoke-static {}, Lkotlinx/coroutines/k2;->a()Lkotlinx/coroutines/internal/i0;

    .line 111
    move-result-object p1

    .line 112
    return-object p1

    .line 113
    .line 114
    :cond_9
    new-instance v3, Lkotlinx/coroutines/c0;

    .line 115
    const/4 v4, 0x0

    .line 116
    const/4 v5, 0x2

    .line 117
    .line 118
    .line 119
    invoke-direct {v3, v1, v4, v5, v0}, Lkotlinx/coroutines/c0;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/k;)V

    .line 120
    .line 121
    .line 122
    invoke-direct {p0, v2, v3}, Lkotlinx/coroutines/j2;->T0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    move-result-object v3

    .line 124
    .line 125
    .line 126
    invoke-static {}, Lkotlinx/coroutines/k2;->a()Lkotlinx/coroutines/internal/i0;

    .line 127
    move-result-object v4

    .line 128
    .line 129
    if-eq v3, v4, :cond_a

    .line 130
    .line 131
    .line 132
    invoke-static {}, Lkotlinx/coroutines/k2;->b()Lkotlinx/coroutines/internal/i0;

    .line 133
    move-result-object v2

    .line 134
    .line 135
    if-eq v3, v2, :cond_0

    .line 136
    return-object v3

    .line 137
    .line 138
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 139
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    const-string v1, "Cannot happen in "

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    move-result-object v0

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 159
    move-result-object v0

    .line 160
    .line 161
    .line 162
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 163
    throw p1

    .line 164
    .line 165
    .line 166
    :cond_b
    invoke-static {}, Lkotlinx/coroutines/k2;->f()Lkotlinx/coroutines/internal/i0;

    .line 167
    move-result-object p1

    .line 168
    return-object p1
.end method

.method public static final synthetic x(Lkotlinx/coroutines/j2;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/coroutines/j2;->P()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic y(Lkotlinx/coroutines/j2;Lkotlinx/coroutines/j2$c;Lkotlinx/coroutines/v;Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/j2;->Y(Lkotlinx/coroutines/j2$c;Lkotlinx/coroutines/v;Ljava/lang/Object;)V

    .line 4
    return-void
.end method

.method private final z(Ljava/lang/Object;Lkotlinx/coroutines/o2;Lkotlinx/coroutines/i2;)Z
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lkotlinx/coroutines/j2$d;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p3, p0, p1}, Lkotlinx/coroutines/j2$d;-><init>(Lkotlinx/coroutines/internal/t;Lkotlinx/coroutines/j2;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    :goto_0
    invoke-virtual {p2}, Lkotlinx/coroutines/internal/t;->k()Lkotlinx/coroutines/internal/t;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p3, p2, v0}, Lkotlinx/coroutines/internal/t;->q(Lkotlinx/coroutines/internal/t;Lkotlinx/coroutines/internal/t;Lkotlinx/coroutines/internal/t$a;)I

    .line 13
    move-result p1

    .line 14
    const/4 v1, 0x1

    .line 15
    .line 16
    if-eq p1, v1, :cond_1

    .line 17
    const/4 v1, 0x2

    .line 18
    .line 19
    if-eq p1, v1, :cond_0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :cond_1
    return v1
.end method

.method private final z0(Le8/l;Z)Lkotlinx/coroutines/i2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lw7/l0;",
            ">;Z)",
            "Lkotlinx/coroutines/i2;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    instance-of p2, p1, Lkotlinx/coroutines/d2;

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    move-object v0, p1

    .line 9
    .line 10
    check-cast v0, Lkotlinx/coroutines/d2;

    .line 11
    .line 12
    :cond_0
    if-nez v0, :cond_4

    .line 13
    .line 14
    new-instance v0, Lkotlinx/coroutines/z1;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, p1}, Lkotlinx/coroutines/z1;-><init>(Le8/l;)V

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_1
    instance-of p2, p1, Lkotlinx/coroutines/i2;

    .line 21
    .line 22
    if-eqz p2, :cond_2

    .line 23
    move-object v0, p1

    .line 24
    .line 25
    check-cast v0, Lkotlinx/coroutines/i2;

    .line 26
    .line 27
    :cond_2
    if-eqz v0, :cond_3

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_3
    new-instance v0, Lkotlinx/coroutines/a2;

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, p1}, Lkotlinx/coroutines/a2;-><init>(Le8/l;)V

    .line 34
    .line 35
    .line 36
    :cond_4
    :goto_0
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/i2;->v(Lkotlinx/coroutines/j2;)V

    .line 37
    return-object v0
.end method


# virtual methods
.method public A0()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lkotlinx/coroutines/s0;->a(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected C(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method protected final D(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/j2;->n0()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v1, v0, Lkotlinx/coroutines/v1;

    .line 7
    .line 8
    if-nez v1, :cond_2

    .line 9
    .line 10
    instance-of p1, v0, Lkotlinx/coroutines/c0;

    .line 11
    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lkotlinx/coroutines/k2;->h(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    .line 19
    :cond_1
    check-cast v0, Lkotlinx/coroutines/c0;

    .line 20
    .line 21
    iget-object p1, v0, Lkotlinx/coroutines/c0;->cause:Ljava/lang/Throwable;

    .line 22
    throw p1

    .line 23
    .line 24
    .line 25
    :cond_2
    invoke-direct {p0, v0}, Lkotlinx/coroutines/j2;->M0(Ljava/lang/Object;)I

    .line 26
    move-result v0

    .line 27
    .line 28
    if-ltz v0, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, p1}, Lkotlinx/coroutines/j2;->E(Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 32
    move-result-object p1

    .line 33
    return-object p1
.end method

.method public final F(Ljava/lang/Throwable;)Z
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/j2;->H(Ljava/lang/Object;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method protected F0(Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method protected G0(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public final H(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lkotlinx/coroutines/k2;->a()Lkotlinx/coroutines/internal/i0;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lkotlinx/coroutines/j2;->j0()Z

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1}, Lkotlinx/coroutines/j2;->J(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    sget-object v1, Lkotlinx/coroutines/k2;->COMPLETING_WAITING_CHILDREN:Lkotlinx/coroutines/internal/i0;

    .line 18
    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    return v2

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/k2;->a()Lkotlinx/coroutines/internal/i0;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    if-ne v0, v1, :cond_1

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, p1}, Lkotlinx/coroutines/j2;->v0(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/k2;->a()Lkotlinx/coroutines/internal/i0;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    if-ne v0, p1, :cond_2

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_2
    sget-object p1, Lkotlinx/coroutines/k2;->COMPLETING_WAITING_CHILDREN:Lkotlinx/coroutines/internal/i0;

    .line 40
    .line 41
    if-ne v0, p1, :cond_3

    .line 42
    goto :goto_0

    .line 43
    .line 44
    .line 45
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/k2;->f()Lkotlinx/coroutines/internal/i0;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    if-ne v0, p1, :cond_4

    .line 49
    const/4 v2, 0x0

    .line 50
    goto :goto_0

    .line 51
    .line 52
    .line 53
    :cond_4
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/j2;->C(Ljava/lang/Object;)V

    .line 54
    :goto_0
    return v2
.end method

.method protected H0()V
    .locals 0

    .line 1
    return-void
.end method

.method public I(Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/j2;->H(Ljava/lang/Object;)Z

    .line 4
    return-void
.end method

.method public final K0(Lkotlinx/coroutines/i2;)V
    .locals 3
    .param p1    # Lkotlinx/coroutines/i2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/j2;->n0()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v1, v0, Lkotlinx/coroutines/i2;

    .line 7
    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    if-eq v0, p1, :cond_1

    .line 11
    return-void

    .line 12
    .line 13
    :cond_1
    sget-object v1, Lkotlinx/coroutines/j2;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lkotlinx/coroutines/k2;->c()Lkotlinx/coroutines/j1;

    .line 17
    move-result-object v2

    .line 18
    .line 19
    .line 20
    invoke-static {v1, p0, v0, v2}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    move-result v0

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    return-void

    .line 25
    .line 26
    :cond_2
    instance-of v1, v0, Lkotlinx/coroutines/v1;

    .line 27
    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    check-cast v0, Lkotlinx/coroutines/v1;

    .line 31
    .line 32
    .line 33
    invoke-interface {v0}, Lkotlinx/coroutines/v1;->a()Lkotlinx/coroutines/o2;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/t;->m()Z

    .line 40
    :cond_3
    return-void
.end method

.method public final L0(Lkotlinx/coroutines/u;)V
    .locals 1
    .param p1    # Lkotlinx/coroutines/u;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/j2;->_parentHandle$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public final O(ZZLe8/l;)Lkotlinx/coroutines/g1;
    .locals 6
    .param p3    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Le8/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lw7/l0;",
            ">;)",
            "Lkotlinx/coroutines/g1;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p3, p1}, Lkotlinx/coroutines/j2;->z0(Le8/l;Z)Lkotlinx/coroutines/i2;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/j2;->n0()Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    instance-of v2, v1, Lkotlinx/coroutines/j1;

    .line 11
    .line 12
    if-eqz v2, :cond_2

    .line 13
    move-object v2, v1

    .line 14
    .line 15
    check-cast v2, Lkotlinx/coroutines/j1;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Lkotlinx/coroutines/j1;->isActive()Z

    .line 19
    move-result v3

    .line 20
    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    sget-object v2, Lkotlinx/coroutines/j2;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 24
    .line 25
    .line 26
    invoke-static {v2, p0, v1, v0}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    move-result v1

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    return-object v0

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-direct {p0, v2}, Lkotlinx/coroutines/j2;->I0(Lkotlinx/coroutines/j1;)V

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_2
    instance-of v2, v1, Lkotlinx/coroutines/v1;

    .line 37
    const/4 v3, 0x0

    .line 38
    .line 39
    if-eqz v2, :cond_b

    .line 40
    move-object v2, v1

    .line 41
    .line 42
    check-cast v2, Lkotlinx/coroutines/v1;

    .line 43
    .line 44
    .line 45
    invoke-interface {v2}, Lkotlinx/coroutines/v1;->a()Lkotlinx/coroutines/o2;

    .line 46
    move-result-object v2

    .line 47
    .line 48
    if-nez v2, :cond_3

    .line 49
    .line 50
    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.JobNode"

    .line 51
    .line 52
    .line 53
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    check-cast v1, Lkotlinx/coroutines/i2;

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, v1}, Lkotlinx/coroutines/j2;->J0(Lkotlinx/coroutines/i2;)V

    .line 59
    goto :goto_0

    .line 60
    .line 61
    :cond_3
    sget-object v4, Lkotlinx/coroutines/q2;->INSTANCE:Lkotlinx/coroutines/q2;

    .line 62
    .line 63
    if-eqz p1, :cond_8

    .line 64
    .line 65
    instance-of v5, v1, Lkotlinx/coroutines/j2$c;

    .line 66
    .line 67
    if-eqz v5, :cond_8

    .line 68
    monitor-enter v1

    .line 69
    :try_start_0
    move-object v3, v1

    .line 70
    .line 71
    check-cast v3, Lkotlinx/coroutines/j2$c;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3}, Lkotlinx/coroutines/j2$c;->e()Ljava/lang/Throwable;

    .line 75
    move-result-object v3

    .line 76
    .line 77
    if-eqz v3, :cond_4

    .line 78
    .line 79
    instance-of v5, p3, Lkotlinx/coroutines/v;

    .line 80
    .line 81
    if-eqz v5, :cond_7

    .line 82
    move-object v5, v1

    .line 83
    .line 84
    check-cast v5, Lkotlinx/coroutines/j2$c;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5}, Lkotlinx/coroutines/j2$c;->g()Z

    .line 88
    move-result v5

    .line 89
    .line 90
    if-nez v5, :cond_7

    .line 91
    goto :goto_1

    .line 92
    :catchall_0
    move-exception p1

    .line 93
    goto :goto_2

    .line 94
    .line 95
    .line 96
    :cond_4
    :goto_1
    invoke-direct {p0, v1, v2, v0}, Lkotlinx/coroutines/j2;->z(Ljava/lang/Object;Lkotlinx/coroutines/o2;Lkotlinx/coroutines/i2;)Z

    .line 97
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .line 99
    if-nez v4, :cond_5

    .line 100
    monitor-exit v1

    .line 101
    goto :goto_0

    .line 102
    .line 103
    :cond_5
    if-nez v3, :cond_6

    .line 104
    monitor-exit v1

    .line 105
    return-object v0

    .line 106
    :cond_6
    move-object v4, v0

    .line 107
    .line 108
    :cond_7
    :try_start_1
    sget-object v5, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    monitor-exit v1

    .line 110
    goto :goto_3

    .line 111
    :goto_2
    monitor-exit v1

    .line 112
    throw p1

    .line 113
    .line 114
    :cond_8
    :goto_3
    if-eqz v3, :cond_a

    .line 115
    .line 116
    if-eqz p2, :cond_9

    .line 117
    .line 118
    .line 119
    invoke-interface {p3, v3}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_9
    return-object v4

    .line 121
    .line 122
    .line 123
    :cond_a
    invoke-direct {p0, v1, v2, v0}, Lkotlinx/coroutines/j2;->z(Ljava/lang/Object;Lkotlinx/coroutines/o2;Lkotlinx/coroutines/i2;)Z

    .line 124
    move-result v1

    .line 125
    .line 126
    if-eqz v1, :cond_0

    .line 127
    return-object v0

    .line 128
    .line 129
    :cond_b
    if-eqz p2, :cond_e

    .line 130
    .line 131
    instance-of p1, v1, Lkotlinx/coroutines/c0;

    .line 132
    .line 133
    if-eqz p1, :cond_c

    .line 134
    .line 135
    check-cast v1, Lkotlinx/coroutines/c0;

    .line 136
    goto :goto_4

    .line 137
    :cond_c
    move-object v1, v3

    .line 138
    .line 139
    :goto_4
    if-eqz v1, :cond_d

    .line 140
    .line 141
    iget-object v3, v1, Lkotlinx/coroutines/c0;->cause:Ljava/lang/Throwable;

    .line 142
    .line 143
    .line 144
    :cond_d
    invoke-interface {p3, v3}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    :cond_e
    sget-object p1, Lkotlinx/coroutines/q2;->INSTANCE:Lkotlinx/coroutines/q2;

    .line 147
    return-object p1
.end method

.method protected final O0(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p1

    .line 6
    .line 7
    check-cast v0, Ljava/util/concurrent/CancellationException;

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    .line 11
    :goto_0
    if-nez v0, :cond_2

    .line 12
    .line 13
    new-instance v0, Lkotlinx/coroutines/c2;

    .line 14
    .line 15
    if-nez p2, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-static {p0}, Lkotlinx/coroutines/j2;->x(Lkotlinx/coroutines/j2;)Ljava/lang/String;

    .line 19
    move-result-object p2

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-direct {v0, p2, p1, p0}, Lkotlinx/coroutines/c2;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/b2;)V

    .line 23
    :cond_2
    return-object v0
.end method

.method protected P()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "Job was cancelled"

    return-object v0
.end method

.method public final Q(Lkotlinx/coroutines/w;)Lkotlinx/coroutines/u;
    .locals 6
    .param p1    # Lkotlinx/coroutines/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v1, 0x1

    .line 2
    const/4 v2, 0x0

    .line 3
    .line 4
    new-instance v3, Lkotlinx/coroutines/v;

    .line 5
    .line 6
    .line 7
    invoke-direct {v3, p1}, Lkotlinx/coroutines/v;-><init>(Lkotlinx/coroutines/w;)V

    .line 8
    const/4 v4, 0x2

    .line 9
    const/4 v5, 0x0

    .line 10
    move-object v0, p0

    .line 11
    .line 12
    .line 13
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/b2$a;->d(Lkotlinx/coroutines/b2;ZZLe8/l;ILjava/lang/Object;)Lkotlinx/coroutines/g1;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ChildHandle"

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    check-cast p1, Lkotlinx/coroutines/u;

    .line 22
    return-object p1
.end method

.method public final Q0()Ljava/lang/String;
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
    .line 8
    invoke-virtual {p0}, Lkotlinx/coroutines/j2;->A0()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const/16 v1, 0x7b

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lkotlinx/coroutines/j2;->n0()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, v1}, Lkotlinx/coroutines/j2;->N0(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const/16 v1, 0x7d

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    return-object v0
.end method

.method public final U(Le8/l;)Lkotlinx/coroutines/g1;
    .locals 2
    .param p1    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lw7/l0;",
            ">;)",
            "Lkotlinx/coroutines/g1;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, p1}, Lkotlinx/coroutines/j2;->O(ZZLe8/l;)Lkotlinx/coroutines/g1;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public W(Ljava/lang/Throwable;)Z
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/j2;->H(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lkotlinx/coroutines/j2;->i0()Z

    .line 16
    move-result p1

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v1, 0x0

    .line 21
    :goto_0
    return v1
.end method

.method public b(Ljava/util/concurrent/CancellationException;)V
    .locals 2
    .param p1    # Ljava/util/concurrent/CancellationException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    new-instance p1, Lkotlinx/coroutines/c2;

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lkotlinx/coroutines/j2;->x(Lkotlinx/coroutines/j2;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, v0, v1, p0}, Lkotlinx/coroutines/c2;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/b2;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/j2;->I(Ljava/lang/Throwable;)V

    .line 16
    return-void
.end method

.method public final b0()Ljava/util/concurrent/CancellationException;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/coroutines/j2;->n0()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v1, v0, Lkotlinx/coroutines/j2$c;

    .line 7
    .line 8
    const-string v2, "Job is still new or active: "

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    check-cast v0, Lkotlinx/coroutines/j2$c;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lkotlinx/coroutines/j2$c;->e()Ljava/lang/Throwable;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-static {p0}, Lkotlinx/coroutines/s0;->a(Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v3, " is cancelling"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/j2;->O0(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    .line 43
    move-result-object v0

    .line 44
    .line 45
    if-eqz v0, :cond_0

    .line 46
    goto :goto_0

    .line 47
    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 67
    move-result-object v1

    .line 68
    .line 69
    .line 70
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 71
    throw v0

    .line 72
    .line 73
    :cond_1
    instance-of v1, v0, Lkotlinx/coroutines/v1;

    .line 74
    .line 75
    if-nez v1, :cond_3

    .line 76
    .line 77
    instance-of v1, v0, Lkotlinx/coroutines/c0;

    .line 78
    const/4 v2, 0x0

    .line 79
    .line 80
    if-eqz v1, :cond_2

    .line 81
    .line 82
    check-cast v0, Lkotlinx/coroutines/c0;

    .line 83
    .line 84
    iget-object v0, v0, Lkotlinx/coroutines/c0;->cause:Ljava/lang/Throwable;

    .line 85
    const/4 v1, 0x1

    .line 86
    .line 87
    .line 88
    invoke-static {p0, v0, v2, v1, v2}, Lkotlinx/coroutines/j2;->P0(Lkotlinx/coroutines/j2;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;

    .line 89
    move-result-object v0

    .line 90
    goto :goto_0

    .line 91
    .line 92
    :cond_2
    new-instance v0, Lkotlinx/coroutines/c2;

    .line 93
    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-static {p0}, Lkotlinx/coroutines/s0;->a(Ljava/lang/Object;)Ljava/lang/String;

    .line 101
    move-result-object v3

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string v3, " has completed normally"

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object v1

    .line 114
    .line 115
    .line 116
    invoke-direct {v0, v1, v2, p0}, Lkotlinx/coroutines/c2;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/b2;)V

    .line 117
    :goto_0
    return-object v0

    .line 118
    .line 119
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 120
    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object v1

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 138
    move-result-object v1

    .line 139
    .line 140
    .line 141
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 142
    throw v0
.end method

.method public final e0()Ljava/lang/Object;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/coroutines/j2;->n0()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v1, v0, Lkotlinx/coroutines/v1;

    .line 7
    .line 8
    xor-int/lit8 v1, v1, 0x1

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    instance-of v1, v0, Lkotlinx/coroutines/c0;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lkotlinx/coroutines/k2;->h(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    .line 21
    :cond_0
    check-cast v0, Lkotlinx/coroutines/c0;

    .line 22
    .line 23
    iget-object v0, v0, Lkotlinx/coroutines/c0;->cause:Ljava/lang/Throwable;

    .line 24
    throw v0

    .line 25
    .line 26
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    const-string v1, "This job has not completed yet"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    throw v0
.end method

.method public fold(Ljava/lang/Object;Le8/p;)Ljava/lang/Object;
    .locals 0
    .param p2    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Le8/p<",
            "-TR;-",
            "Lkotlin/coroutines/g$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/b2$a;->b(Lkotlinx/coroutines/b2;Ljava/lang/Object;Le8/p;)Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;
    .locals 0
    .param p1    # Lkotlin/coroutines/g$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lkotlin/coroutines/g$b;",
            ">(",
            "Lkotlin/coroutines/g$c<",
            "TE;>;)TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlinx/coroutines/b2$a;->c(Lkotlinx/coroutines/b2;Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final getChildren()Lkotlin/sequences/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/sequences/g<",
            "Lkotlinx/coroutines/b2;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lkotlinx/coroutines/j2$e;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1}, Lkotlinx/coroutines/j2$e;-><init>(Lkotlinx/coroutines/j2;Lkotlin/coroutines/d;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/sequences/j;->b(Le8/p;)Lkotlin/sequences/g;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final getKey()Lkotlin/coroutines/g$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/g$c<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lkotlinx/coroutines/b2;->Key:Lkotlinx/coroutines/b2$b;

    return-object v0
.end method

.method public getParent()Lkotlinx/coroutines/b2;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/coroutines/j2;->m0()Lkotlinx/coroutines/u;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Lkotlinx/coroutines/u;->getParent()Lkotlinx/coroutines/b2;

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

.method public i0()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public isActive()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/coroutines/j2;->n0()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v1, v0, Lkotlinx/coroutines/v1;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, Lkotlinx/coroutines/v1;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Lkotlinx/coroutines/v1;->isActive()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public final isCancelled()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/coroutines/j2;->n0()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v1, v0, Lkotlinx/coroutines/c0;

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    instance-of v1, v0, Lkotlinx/coroutines/j2$c;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    check-cast v0, Lkotlinx/coroutines/j2$c;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lkotlinx/coroutines/j2$c;->f()Z

    .line 18
    move-result v0

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 25
    :goto_1
    return v0
.end method

.method public final j(Lkotlinx/coroutines/s2;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/s2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/j2;->H(Ljava/lang/Object;)Z

    .line 4
    return-void
.end method

.method public j0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public k0()Ljava/util/concurrent/CancellationException;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/coroutines/j2;->n0()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v1, v0, Lkotlinx/coroutines/j2$c;

    .line 7
    const/4 v2, 0x0

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    move-object v1, v0

    .line 11
    .line 12
    check-cast v1, Lkotlinx/coroutines/j2$c;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lkotlinx/coroutines/j2$c;->e()Ljava/lang/Throwable;

    .line 16
    move-result-object v1

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    instance-of v1, v0, Lkotlinx/coroutines/c0;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    move-object v1, v0

    .line 23
    .line 24
    check-cast v1, Lkotlinx/coroutines/c0;

    .line 25
    .line 26
    iget-object v1, v1, Lkotlinx/coroutines/c0;->cause:Ljava/lang/Throwable;

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_1
    instance-of v1, v0, Lkotlinx/coroutines/v1;

    .line 30
    .line 31
    if-nez v1, :cond_4

    .line 32
    move-object v1, v2

    .line 33
    .line 34
    :goto_0
    instance-of v3, v1, Ljava/util/concurrent/CancellationException;

    .line 35
    .line 36
    if-eqz v3, :cond_2

    .line 37
    move-object v2, v1

    .line 38
    .line 39
    check-cast v2, Ljava/util/concurrent/CancellationException;

    .line 40
    .line 41
    :cond_2
    if-nez v2, :cond_3

    .line 42
    .line 43
    new-instance v2, Lkotlinx/coroutines/c2;

    .line 44
    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    const-string v4, "Parent job is "

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-direct {p0, v0}, Lkotlinx/coroutines/j2;->N0(Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    .line 67
    invoke-direct {v2, v0, v1, p0}, Lkotlinx/coroutines/c2;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/b2;)V

    .line 68
    :cond_3
    return-object v2

    .line 69
    .line 70
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 71
    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    const-string v3, "Cannot be cancelling child in this state: "

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object v0

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 91
    move-result-object v0

    .line 92
    .line 93
    .line 94
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 95
    throw v1
.end method

.method public final m()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlinx/coroutines/j2;->n0()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v0, v0, Lkotlinx/coroutines/v1;

    .line 7
    .line 8
    xor-int/lit8 v0, v0, 0x1

    .line 9
    return v0
.end method

.method public final m0()Lkotlinx/coroutines/u;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/j2;->_parentHandle$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lkotlinx/coroutines/u;

    .line 9
    return-object v0
.end method

.method public minusKey(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g;
    .locals 0
    .param p1    # Lkotlin/coroutines/g$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/g$c<",
            "*>;)",
            "Lkotlin/coroutines/g;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlinx/coroutines/b2$a;->e(Lkotlinx/coroutines/b2;Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final n0()Ljava/lang/Object;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/j2;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

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

.method protected o0(Ljava/lang/Throwable;)Z
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public p0(Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    throw p1
.end method

.method public plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;
    .locals 0
    .param p1    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlinx/coroutines/b2$a;->f(Lkotlinx/coroutines/b2;Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method protected final q0(Lkotlinx/coroutines/b2;)V
    .locals 1
    .param p1    # Lkotlinx/coroutines/b2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    sget-object p1, Lkotlinx/coroutines/q2;->INSTANCE:Lkotlinx/coroutines/q2;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/j2;->L0(Lkotlinx/coroutines/u;)V

    .line 8
    return-void

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-interface {p1}, Lkotlinx/coroutines/b2;->start()Z

    .line 12
    .line 13
    .line 14
    invoke-interface {p1, p0}, Lkotlinx/coroutines/b2;->Q(Lkotlinx/coroutines/w;)Lkotlinx/coroutines/u;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/j2;->L0(Lkotlinx/coroutines/u;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lkotlinx/coroutines/j2;->m()Z

    .line 22
    move-result v0

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    .line 27
    invoke-interface {p1}, Lkotlinx/coroutines/g1;->t()V

    .line 28
    .line 29
    sget-object p1, Lkotlinx/coroutines/q2;->INSTANCE:Lkotlinx/coroutines/q2;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/j2;->L0(Lkotlinx/coroutines/u;)V

    .line 33
    :cond_1
    return-void
.end method

.method protected r0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final start()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/j2;->n0()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0}, Lkotlinx/coroutines/j2;->M0(Ljava/lang/Object;)I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return v1

    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method public final t0(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 1
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
    .line 2
    .line 3
    invoke-direct {p0}, Lkotlinx/coroutines/j2;->s0()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/g;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lkotlinx/coroutines/f2;->j(Lkotlin/coroutines/g;)V

    .line 14
    .line 15
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 16
    return-object p1

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-direct {p0, p1}, Lkotlinx/coroutines/j2;->u0(Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    if-ne p1, v0, :cond_1

    .line 27
    return-object p1

    .line 28
    .line 29
    :cond_1
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 30
    return-object p1
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
    .line 8
    invoke-virtual {p0}, Lkotlinx/coroutines/j2;->Q0()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const/16 v1, 0x40

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-static {p0}, Lkotlinx/coroutines/s0;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method

.method public final w0(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/j2;->n0()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0, p1}, Lkotlinx/coroutines/j2;->T0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lkotlinx/coroutines/k2;->a()Lkotlinx/coroutines/internal/i0;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    const/4 p1, 0x0

    .line 16
    return p1

    .line 17
    .line 18
    :cond_1
    sget-object v1, Lkotlinx/coroutines/k2;->COMPLETING_WAITING_CHILDREN:Lkotlinx/coroutines/internal/i0;

    .line 19
    const/4 v2, 0x1

    .line 20
    .line 21
    if-ne v0, v1, :cond_2

    .line 22
    return v2

    .line 23
    .line 24
    .line 25
    :cond_2
    invoke-static {}, Lkotlinx/coroutines/k2;->b()Lkotlinx/coroutines/internal/i0;

    .line 26
    move-result-object v1

    .line 27
    .line 28
    if-eq v0, v1, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/j2;->C(Ljava/lang/Object;)V

    .line 32
    return v2
.end method

.method public final x0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/j2;->n0()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0, p1}, Lkotlinx/coroutines/j2;->T0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lkotlinx/coroutines/k2;->a()Lkotlinx/coroutines/internal/i0;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lkotlinx/coroutines/k2;->b()Lkotlinx/coroutines/internal/i0;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    if-eq v0, v1, :cond_0

    .line 21
    return-object v0

    .line 22
    .line 23
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    const-string v2, "Job "

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v2, " is already complete or completing, but is being completed with "

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, p1}, Lkotlinx/coroutines/j2;->f0(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    .line 55
    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    throw v0
.end method
