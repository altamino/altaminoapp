.class public abstract Lcom/google/common/util/concurrent/a;
.super Lu3/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/a$h;,
        Lcom/google/common/util/concurrent/a$f;,
        Lcom/google/common/util/concurrent/a$k;,
        Lcom/google/common/util/concurrent/a$b;,
        Lcom/google/common/util/concurrent/a$g;,
        Lcom/google/common/util/concurrent/a$c;,
        Lcom/google/common/util/concurrent/a$d;,
        Lcom/google/common/util/concurrent/a$e;,
        Lcom/google/common/util/concurrent/a$l;,
        Lcom/google/common/util/concurrent/a$j;,
        Lcom/google/common/util/concurrent/a$i;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lu3/a;",
        "Lcom/google/common/util/concurrent/k<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final ATOMIC_HELPER:Lcom/google/common/util/concurrent/a$b;

.field static final GENERATE_CANCELLATION_CAUSES:Z

.field private static final NULL:Ljava/lang/Object;

.field private static final SPIN_THRESHOLD_NANOS:J = 0x3e8L

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private volatile listeners:Lcom/google/common/util/concurrent/a$e;

.field private volatile value:Ljava/lang/Object;

.field private volatile waiters:Lcom/google/common/util/concurrent/a$l;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    .line 2
    const-class v0, Lcom/google/common/util/concurrent/a$l;

    .line 3
    .line 4
    :try_start_0
    const-string v1, "guava.concurrent.generate_cancellation_cause"

    .line 5
    .line 6
    const-string v2, "false"

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 14
    move-result v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    const/4 v1, 0x0

    .line 17
    .line 18
    :goto_0
    sput-boolean v1, Lcom/google/common/util/concurrent/a;->GENERATE_CANCELLATION_CAUSES:Z

    .line 19
    .line 20
    const-class v1, Lcom/google/common/util/concurrent/a;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    .line 27
    invoke-static {v2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    sput-object v2, Lcom/google/common/util/concurrent/a;->log:Ljava/util/logging/Logger;

    .line 31
    const/4 v2, 0x0

    .line 32
    .line 33
    :try_start_1
    new-instance v3, Lcom/google/common/util/concurrent/a$k;

    .line 34
    .line 35
    .line 36
    invoke-direct {v3, v2}, Lcom/google/common/util/concurrent/a$k;-><init>(Lcom/google/common/util/concurrent/a$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    move-object v1, v3

    .line 38
    move-object v3, v2

    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception v3

    .line 41
    .line 42
    :try_start_2
    new-instance v10, Lcom/google/common/util/concurrent/a$f;

    .line 43
    .line 44
    const-class v4, Ljava/lang/Thread;

    .line 45
    .line 46
    const-string v5, "thread"

    .line 47
    .line 48
    .line 49
    invoke-static {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 50
    move-result-object v5

    .line 51
    .line 52
    const-string v4, "next"

    .line 53
    .line 54
    .line 55
    invoke-static {v0, v0, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 56
    move-result-object v6

    .line 57
    .line 58
    const-string v4, "waiters"

    .line 59
    .line 60
    .line 61
    invoke-static {v1, v0, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 62
    move-result-object v7

    .line 63
    .line 64
    const-class v0, Lcom/google/common/util/concurrent/a$e;

    .line 65
    .line 66
    const-string v4, "listeners"

    .line 67
    .line 68
    .line 69
    invoke-static {v1, v0, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 70
    move-result-object v8

    .line 71
    .line 72
    const-class v0, Ljava/lang/Object;

    .line 73
    .line 74
    const-string v4, "value"

    .line 75
    .line 76
    .line 77
    invoke-static {v1, v0, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 78
    move-result-object v9

    .line 79
    move-object v4, v10

    .line 80
    .line 81
    .line 82
    invoke-direct/range {v4 .. v9}, Lcom/google/common/util/concurrent/a$f;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 83
    move-object v1, v10

    .line 84
    goto :goto_1

    .line 85
    :catchall_1
    move-exception v0

    .line 86
    .line 87
    new-instance v1, Lcom/google/common/util/concurrent/a$h;

    .line 88
    .line 89
    .line 90
    invoke-direct {v1, v2}, Lcom/google/common/util/concurrent/a$h;-><init>(Lcom/google/common/util/concurrent/a$a;)V

    .line 91
    move-object v2, v0

    .line 92
    .line 93
    :goto_1
    sput-object v1, Lcom/google/common/util/concurrent/a;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/a$b;

    .line 94
    .line 95
    if-eqz v2, :cond_0

    .line 96
    .line 97
    sget-object v0, Lcom/google/common/util/concurrent/a;->log:Ljava/util/logging/Logger;

    .line 98
    .line 99
    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 100
    .line 101
    const-string v4, "UnsafeAtomicHelper is broken!"

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1, v4, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    .line 106
    const-string v3, "SafeAtomicHelper is broken!"

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1, v3, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    .line 111
    :cond_0
    new-instance v0, Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 115
    .line 116
    sput-object v0, Lcom/google/common/util/concurrent/a;->NULL:Ljava/lang/Object;

    .line 117
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lu3/a;-><init>()V

    .line 4
    return-void
.end method

.method static synthetic b()Lcom/google/common/util/concurrent/a$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/util/concurrent/a;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/a$b;

    return-object v0
.end method

.method static synthetic c(Lcom/google/common/util/concurrent/a;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/common/util/concurrent/a;->value:Ljava/lang/Object;

    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/google/common/util/concurrent/a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/common/util/concurrent/a;->value:Ljava/lang/Object;

    .line 3
    return-object p1
.end method

.method static synthetic e(Lcom/google/common/util/concurrent/k;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/common/util/concurrent/a;->u(Lcom/google/common/util/concurrent/k;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic f(Lcom/google/common/util/concurrent/a;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/common/util/concurrent/a;->r(Lcom/google/common/util/concurrent/a;)V

    .line 4
    return-void
.end method

.method static synthetic g(Lcom/google/common/util/concurrent/a;)Lcom/google/common/util/concurrent/a$e;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/common/util/concurrent/a;->listeners:Lcom/google/common/util/concurrent/a$e;

    .line 3
    return-object p0
.end method

.method static synthetic h(Lcom/google/common/util/concurrent/a;Lcom/google/common/util/concurrent/a$e;)Lcom/google/common/util/concurrent/a$e;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/common/util/concurrent/a;->listeners:Lcom/google/common/util/concurrent/a$e;

    .line 3
    return-object p1
.end method

.method static synthetic i(Lcom/google/common/util/concurrent/a;)Lcom/google/common/util/concurrent/a$l;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/common/util/concurrent/a;->waiters:Lcom/google/common/util/concurrent/a$l;

    .line 3
    return-object p0
.end method

.method static synthetic j(Lcom/google/common/util/concurrent/a;Lcom/google/common/util/concurrent/a$l;)Lcom/google/common/util/concurrent/a$l;
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/google/common/util/concurrent/a;->waiters:Lcom/google/common/util/concurrent/a$l;

    .line 3
    return-object p1
.end method

.method private k(Ljava/lang/StringBuilder;)V
    .locals 3

    .line 1
    .line 2
    const-string v0, "]"

    .line 3
    .line 4
    .line 5
    :try_start_0
    invoke-static {p0}, Lcom/google/common/util/concurrent/a;->v(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    const-string v2, "SUCCESS, result=["

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1, v1}, Lcom/google/common/util/concurrent/a;->n(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_2

    .line 19
    :catch_0
    move-exception v0

    .line 20
    goto :goto_0

    .line 21
    :catch_1
    move-exception v1

    .line 22
    goto :goto_1

    .line 23
    .line 24
    :goto_0
    const-string v1, "UNKNOWN, cause=["

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v0, " thrown from get()]"

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    goto :goto_2

    .line 41
    .line 42
    :catch_2
    const-string v0, "CANCELLED"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    goto :goto_2

    .line 47
    .line 48
    :goto_1
    const-string v2, "FAILURE, cause=["

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 55
    move-result-object v1

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    :goto_2
    return-void
.end method

.method private l(Ljava/lang/StringBuilder;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 4
    move-result v0

    .line 5
    .line 6
    const-string v1, "PENDING"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/common/util/concurrent/a;->value:Ljava/lang/Object;

    .line 12
    .line 13
    instance-of v2, v1, Lcom/google/common/util/concurrent/a$g;

    .line 14
    .line 15
    const-string v3, "]"

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    const-string v2, ", setFuture=["

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    check-cast v1, Lcom/google/common/util/concurrent/a$g;

    .line 25
    .line 26
    iget-object v1, v1, Lcom/google/common/util/concurrent/a$g;->future:Lcom/google/common/util/concurrent/k;

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, p1, v1}, Lcom/google/common/util/concurrent/a;->o(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    goto :goto_2

    .line 34
    .line 35
    .line 36
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/a;->x()Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    .line 40
    invoke-static {v1}, Lcom/google/common/base/t;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_1

    .line 43
    :catch_0
    move-exception v1

    .line 44
    goto :goto_0

    .line 45
    :catch_1
    move-exception v1

    .line 46
    .line 47
    .line 48
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    .line 52
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 57
    move-result v2

    .line 58
    .line 59
    add-int/lit8 v2, v2, 0x26

    .line 60
    .line 61
    new-instance v4, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 65
    .line 66
    const-string v2, "Exception thrown from implementation: "

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object v1

    .line 77
    .line 78
    :goto_1
    if-eqz v1, :cond_1

    .line 79
    .line 80
    const-string v2, ", info=["

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/a;->isDone()Z

    .line 93
    move-result v1

    .line 94
    .line 95
    if-eqz v1, :cond_2

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 99
    move-result v1

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/a;->k(Ljava/lang/StringBuilder;)V

    .line 106
    :cond_2
    return-void
.end method

.method private n(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    const-string p2, "null"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    if-ne p2, p0, :cond_1

    .line 11
    .line 12
    const-string p2, "this future"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v0, "@"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 36
    move-result p2

    .line 37
    .line 38
    .line 39
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 40
    move-result-object p2

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    :goto_0
    return-void
.end method

.method private o(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    if-ne p2, p0, :cond_0

    .line 3
    .line 4
    :try_start_0
    const-string p2, "this future"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    goto :goto_1

    .line 9
    :catch_0
    move-exception p2

    .line 10
    goto :goto_0

    .line 11
    :catch_1
    move-exception p2

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    goto :goto_1

    .line 17
    .line 18
    :goto_0
    const-string v0, "Exception thrown from implementation: "

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    move-result-object p2

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    :goto_1
    return-void
.end method

.method private static p(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/util/concurrent/CancellationException;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 9
    return-object v0
.end method

.method private q(Lcom/google/common/util/concurrent/a$e;)Lcom/google/common/util/concurrent/a$e;
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lcom/google/common/util/concurrent/a;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/a$b;

    .line 3
    .line 4
    sget-object v1, Lcom/google/common/util/concurrent/a$e;->TOMBSTONE:Lcom/google/common/util/concurrent/a$e;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p0, v1}, Lcom/google/common/util/concurrent/a$b;->d(Lcom/google/common/util/concurrent/a;Lcom/google/common/util/concurrent/a$e;)Lcom/google/common/util/concurrent/a$e;

    .line 8
    move-result-object v0

    .line 9
    move-object v2, v0

    .line 10
    move-object v0, p1

    .line 11
    move-object p1, v2

    .line 12
    .line 13
    :goto_0
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object v1, p1, Lcom/google/common/util/concurrent/a$e;->next:Lcom/google/common/util/concurrent/a$e;

    .line 16
    .line 17
    iput-object v0, p1, Lcom/google/common/util/concurrent/a$e;->next:Lcom/google/common/util/concurrent/a$e;

    .line 18
    move-object v0, p1

    .line 19
    move-object p1, v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-object v0
.end method

.method private static r(Lcom/google/common/util/concurrent/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/a<",
            "*>;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    :goto_0
    invoke-direct {p0}, Lcom/google/common/util/concurrent/a;->y()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/a;->m()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/a;->q(Lcom/google/common/util/concurrent/a$e;)Lcom/google/common/util/concurrent/a$e;

    .line 11
    move-result-object p0

    .line 12
    .line 13
    :goto_1
    if-eqz p0, :cond_2

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/common/util/concurrent/a$e;->next:Lcom/google/common/util/concurrent/a$e;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/common/util/concurrent/a$e;->task:Ljava/lang/Runnable;

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Ljava/lang/Runnable;

    .line 23
    .line 24
    instance-of v2, v1, Lcom/google/common/util/concurrent/a$g;

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    check-cast v1, Lcom/google/common/util/concurrent/a$g;

    .line 29
    .line 30
    iget-object p0, v1, Lcom/google/common/util/concurrent/a$g;->owner:Lcom/google/common/util/concurrent/a;

    .line 31
    .line 32
    iget-object v2, p0, Lcom/google/common/util/concurrent/a;->value:Ljava/lang/Object;

    .line 33
    .line 34
    if-ne v2, v1, :cond_1

    .line 35
    .line 36
    iget-object v2, v1, Lcom/google/common/util/concurrent/a$g;->future:Lcom/google/common/util/concurrent/k;

    .line 37
    .line 38
    .line 39
    invoke-static {v2}, Lcom/google/common/util/concurrent/a;->u(Lcom/google/common/util/concurrent/k;)Ljava/lang/Object;

    .line 40
    move-result-object v2

    .line 41
    .line 42
    sget-object v3, Lcom/google/common/util/concurrent/a;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/a$b;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, p0, v1, v2}, Lcom/google/common/util/concurrent/a$b;->b(Lcom/google/common/util/concurrent/a;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    move-result v1

    .line 47
    .line 48
    if-eqz v1, :cond_1

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_0
    iget-object p0, p0, Lcom/google/common/util/concurrent/a$e;->executor:Ljava/util/concurrent/Executor;

    .line 52
    .line 53
    .line 54
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p0, Ljava/util/concurrent/Executor;

    .line 57
    .line 58
    .line 59
    invoke-static {v1, p0}, Lcom/google/common/util/concurrent/a;->s(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 60
    :cond_1
    move-object p0, v0

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    return-void
.end method

.method private static s(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 5

    .line 1
    .line 2
    .line 3
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception v0

    .line 6
    .line 7
    sget-object v1, Lcom/google/common/util/concurrent/a;->log:Ljava/util/logging/Logger;

    .line 8
    .line 9
    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    move-result-object p0

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 21
    move-result v3

    .line 22
    .line 23
    add-int/lit8 v3, v3, 0x39

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 27
    move-result v4

    .line 28
    add-int/2addr v3, v4

    .line 29
    .line 30
    new-instance v4, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 34
    .line 35
    const-string v3, "RuntimeException while executing runnable "

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string p0, " with executor "

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object p0

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2, p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    :goto_0
    return-void
.end method

.method private t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p1, Lcom/google/common/util/concurrent/a$c;

    .line 3
    .line 4
    if-nez v0, :cond_2

    .line 5
    .line 6
    instance-of v0, p1, Lcom/google/common/util/concurrent/a$d;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    sget-object v0, Lcom/google/common/util/concurrent/a;->NULL:Ljava/lang/Object;

    .line 11
    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/google/common/util/concurrent/o;->b()Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    :cond_0
    return-object p1

    .line 18
    .line 19
    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    .line 20
    .line 21
    check-cast p1, Lcom/google/common/util/concurrent/a$d;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/google/common/util/concurrent/a$d;->exception:Ljava/lang/Throwable;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    .line 27
    throw v0

    .line 28
    .line 29
    :cond_2
    check-cast p1, Lcom/google/common/util/concurrent/a$c;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/google/common/util/concurrent/a$c;->cause:Ljava/lang/Throwable;

    .line 32
    .line 33
    const-string v0, "Task was cancelled."

    .line 34
    .line 35
    .line 36
    invoke-static {v0, p1}, Lcom/google/common/util/concurrent/a;->p(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    .line 37
    move-result-object p1

    .line 38
    throw p1
.end method

.method private static u(Lcom/google/common/util/concurrent/k;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/k<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "get() did not throw CancellationException, despite reporting isCancelled() == true: "

    .line 3
    .line 4
    instance-of v1, p0, Lcom/google/common/util/concurrent/a$i;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    check-cast p0, Lcom/google/common/util/concurrent/a;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/google/common/util/concurrent/a;->value:Ljava/lang/Object;

    .line 12
    .line 13
    instance-of v0, p0, Lcom/google/common/util/concurrent/a$c;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    move-object v0, p0

    .line 17
    .line 18
    check-cast v0, Lcom/google/common/util/concurrent/a$c;

    .line 19
    .line 20
    iget-boolean v1, v0, Lcom/google/common/util/concurrent/a$c;->wasInterrupted:Z

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-object p0, v0, Lcom/google/common/util/concurrent/a$c;->cause:Ljava/lang/Throwable;

    .line 25
    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    new-instance p0, Lcom/google/common/util/concurrent/a$c;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/google/common/util/concurrent/a$c;->cause:Ljava/lang/Throwable;

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, v2, v0}, Lcom/google/common/util/concurrent/a$c;-><init>(ZLjava/lang/Throwable;)V

    .line 34
    goto :goto_0

    .line 35
    .line 36
    :cond_0
    sget-object p0, Lcom/google/common/util/concurrent/a$c;->CAUSELESS_CANCELLED:Lcom/google/common/util/concurrent/a$c;

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-object p0

    .line 41
    .line 42
    :cond_2
    instance-of v1, p0, Lu3/a;

    .line 43
    .line 44
    if-eqz v1, :cond_3

    .line 45
    move-object v1, p0

    .line 46
    .line 47
    check-cast v1, Lu3/a;

    .line 48
    .line 49
    .line 50
    invoke-static {v1}, Lu3/b;->a(Lu3/a;)Ljava/lang/Throwable;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    if-eqz v1, :cond_3

    .line 54
    .line 55
    new-instance p0, Lcom/google/common/util/concurrent/a$d;

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, v1}, Lcom/google/common/util/concurrent/a$d;-><init>(Ljava/lang/Throwable;)V

    .line 59
    return-object p0

    .line 60
    .line 61
    .line 62
    :cond_3
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 63
    move-result v1

    .line 64
    .line 65
    sget-boolean v3, Lcom/google/common/util/concurrent/a;->GENERATE_CANCELLATION_CAUSES:Z

    .line 66
    .line 67
    xor-int/lit8 v3, v3, 0x1

    .line 68
    and-int/2addr v3, v1

    .line 69
    .line 70
    if-eqz v3, :cond_4

    .line 71
    .line 72
    sget-object p0, Lcom/google/common/util/concurrent/a$c;->CAUSELESS_CANCELLED:Lcom/google/common/util/concurrent/a$c;

    .line 73
    .line 74
    .line 75
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-object p0

    .line 77
    .line 78
    .line 79
    :cond_4
    :try_start_0
    invoke-static {p0}, Lcom/google/common/util/concurrent/a;->v(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    .line 80
    move-result-object v3

    .line 81
    .line 82
    if-eqz v1, :cond_5

    .line 83
    .line 84
    new-instance v3, Lcom/google/common/util/concurrent/a$c;

    .line 85
    .line 86
    new-instance v4, Ljava/lang/IllegalArgumentException;

    .line 87
    .line 88
    .line 89
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 90
    move-result-object v5

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 94
    move-result v6

    .line 95
    .line 96
    add-int/lit8 v6, v6, 0x54

    .line 97
    .line 98
    new-instance v7, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    move-result-object v5

    .line 112
    .line 113
    .line 114
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-direct {v3, v2, v4}, Lcom/google/common/util/concurrent/a$c;-><init>(ZLjava/lang/Throwable;)V

    .line 118
    return-object v3

    .line 119
    :catchall_0
    move-exception p0

    .line 120
    goto :goto_1

    .line 121
    :catch_0
    move-exception v0

    .line 122
    goto :goto_2

    .line 123
    :catch_1
    move-exception v3

    .line 124
    goto :goto_3

    .line 125
    .line 126
    :cond_5
    if-nez v3, :cond_6

    .line 127
    .line 128
    sget-object v3, Lcom/google/common/util/concurrent/a;->NULL:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :cond_6
    return-object v3

    .line 130
    .line 131
    :goto_1
    new-instance v0, Lcom/google/common/util/concurrent/a$d;

    .line 132
    .line 133
    .line 134
    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/a$d;-><init>(Ljava/lang/Throwable;)V

    .line 135
    return-object v0

    .line 136
    .line 137
    :goto_2
    if-nez v1, :cond_7

    .line 138
    .line 139
    new-instance v1, Lcom/google/common/util/concurrent/a$d;

    .line 140
    .line 141
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 142
    .line 143
    .line 144
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 145
    move-result-object p0

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 149
    move-result v3

    .line 150
    .line 151
    add-int/lit8 v3, v3, 0x4d

    .line 152
    .line 153
    new-instance v4, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 157
    .line 158
    const-string v3, "get() threw CancellationException, despite reporting isCancelled() == false: "

    .line 159
    .line 160
    .line 161
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    move-result-object p0

    .line 169
    .line 170
    .line 171
    invoke-direct {v2, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 172
    .line 173
    .line 174
    invoke-direct {v1, v2}, Lcom/google/common/util/concurrent/a$d;-><init>(Ljava/lang/Throwable;)V

    .line 175
    return-object v1

    .line 176
    .line 177
    :cond_7
    new-instance p0, Lcom/google/common/util/concurrent/a$c;

    .line 178
    .line 179
    .line 180
    invoke-direct {p0, v2, v0}, Lcom/google/common/util/concurrent/a$c;-><init>(ZLjava/lang/Throwable;)V

    .line 181
    return-object p0

    .line 182
    .line 183
    :goto_3
    if-eqz v1, :cond_8

    .line 184
    .line 185
    new-instance v1, Lcom/google/common/util/concurrent/a$c;

    .line 186
    .line 187
    new-instance v4, Ljava/lang/IllegalArgumentException;

    .line 188
    .line 189
    .line 190
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 191
    move-result-object p0

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 195
    move-result v5

    .line 196
    .line 197
    add-int/lit8 v5, v5, 0x54

    .line 198
    .line 199
    new-instance v6, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    move-result-object p0

    .line 213
    .line 214
    .line 215
    invoke-direct {v4, p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 216
    .line 217
    .line 218
    invoke-direct {v1, v2, v4}, Lcom/google/common/util/concurrent/a$c;-><init>(ZLjava/lang/Throwable;)V

    .line 219
    return-object v1

    .line 220
    .line 221
    :cond_8
    new-instance p0, Lcom/google/common/util/concurrent/a$d;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 225
    move-result-object v0

    .line 226
    .line 227
    .line 228
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/a$d;-><init>(Ljava/lang/Throwable;)V

    .line 229
    return-object p0
.end method

.method private static v(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 5
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 15
    :cond_0
    return-object p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 26
    :cond_1
    throw p0

    .line 27
    :catch_0
    const/4 v0, 0x1

    .line 28
    goto :goto_0
.end method

.method private y()V
    .locals 2

    .line 1
    .line 2
    sget-object v0, Lcom/google/common/util/concurrent/a;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/a$b;

    .line 3
    .line 4
    sget-object v1, Lcom/google/common/util/concurrent/a$l;->TOMBSTONE:Lcom/google/common/util/concurrent/a$l;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p0, v1}, Lcom/google/common/util/concurrent/a$b;->e(Lcom/google/common/util/concurrent/a;Lcom/google/common/util/concurrent/a$l;)Lcom/google/common/util/concurrent/a$l;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    :goto_0
    if-eqz v0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/a$l;->b()V

    .line 14
    .line 15
    iget-object v0, v0, Lcom/google/common/util/concurrent/a$l;->next:Lcom/google/common/util/concurrent/a$l;

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return-void
.end method

.method private z(Lcom/google/common/util/concurrent/a$l;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    iput-object v0, p1, Lcom/google/common/util/concurrent/a$l;->thread:Ljava/lang/Thread;

    .line 4
    .line 5
    :goto_0
    iget-object p1, p0, Lcom/google/common/util/concurrent/a;->waiters:Lcom/google/common/util/concurrent/a$l;

    .line 6
    .line 7
    sget-object v1, Lcom/google/common/util/concurrent/a$l;->TOMBSTONE:Lcom/google/common/util/concurrent/a$l;

    .line 8
    .line 9
    if-ne p1, v1, :cond_0

    .line 10
    return-void

    .line 11
    :cond_0
    move-object v1, v0

    .line 12
    .line 13
    :goto_1
    if-eqz p1, :cond_4

    .line 14
    .line 15
    iget-object v2, p1, Lcom/google/common/util/concurrent/a$l;->next:Lcom/google/common/util/concurrent/a$l;

    .line 16
    .line 17
    iget-object v3, p1, Lcom/google/common/util/concurrent/a$l;->thread:Ljava/lang/Thread;

    .line 18
    .line 19
    if-eqz v3, :cond_1

    .line 20
    move-object v1, p1

    .line 21
    goto :goto_2

    .line 22
    .line 23
    :cond_1
    if-eqz v1, :cond_2

    .line 24
    .line 25
    iput-object v2, v1, Lcom/google/common/util/concurrent/a$l;->next:Lcom/google/common/util/concurrent/a$l;

    .line 26
    .line 27
    iget-object p1, v1, Lcom/google/common/util/concurrent/a$l;->thread:Ljava/lang/Thread;

    .line 28
    .line 29
    if-nez p1, :cond_3

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_2
    sget-object v3, Lcom/google/common/util/concurrent/a;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/a$b;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, p0, p1, v2}, Lcom/google/common/util/concurrent/a$b;->c(Lcom/google/common/util/concurrent/a;Lcom/google/common/util/concurrent/a$l;Lcom/google/common/util/concurrent/a$l;)Z

    .line 36
    move-result p1

    .line 37
    .line 38
    if-nez p1, :cond_3

    .line 39
    goto :goto_0

    .line 40
    :cond_3
    :goto_2
    move-object p1, v2

    .line 41
    goto :goto_1

    .line 42
    :cond_4
    return-void
.end method


# virtual methods
.method protected A(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    sget-object p1, Lcom/google/common/util/concurrent/a;->NULL:Ljava/lang/Object;

    .line 5
    .line 6
    :cond_0
    sget-object v0, Lcom/google/common/util/concurrent/a;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/a$b;

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0, v1, p1}, Lcom/google/common/util/concurrent/a$b;->b(Lcom/google/common/util/concurrent/a;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    move-result p1

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-static {p0}, Lcom/google/common/util/concurrent/a;->r(Lcom/google/common/util/concurrent/a;)V

    .line 17
    const/4 p1, 0x1

    .line 18
    return p1

    .line 19
    :cond_1
    const/4 p1, 0x0

    .line 20
    return p1
.end method

.method protected B(Ljava/lang/Throwable;)Z
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/google/common/util/concurrent/a$d;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/google/common/base/o;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Ljava/lang/Throwable;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p1}, Lcom/google/common/util/concurrent/a$d;-><init>(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    sget-object p1, Lcom/google/common/util/concurrent/a;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/a$b;

    .line 14
    const/4 v1, 0x0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p0, v1, v0}, Lcom/google/common/util/concurrent/a$b;->b(Lcom/google/common/util/concurrent/a;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result p1

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-static {p0}, Lcom/google/common/util/concurrent/a;->r(Lcom/google/common/util/concurrent/a;)V

    .line 24
    const/4 p1, 0x1

    .line 25
    return p1

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    return p1
.end method

.method protected final C()Z
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/common/util/concurrent/a;->value:Ljava/lang/Object;

    .line 3
    .line 4
    instance-of v1, v0, Lcom/google/common/util/concurrent/a$c;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lcom/google/common/util/concurrent/a$c;

    .line 9
    .line 10
    iget-boolean v0, v0, Lcom/google/common/util/concurrent/a$c;->wasInterrupted:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

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

.method protected final a()Ljava/lang/Throwable;
    .locals 2

    .line 1
    .line 2
    instance-of v0, p0, Lcom/google/common/util/concurrent/a$i;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/common/util/concurrent/a;->value:Ljava/lang/Object;

    .line 7
    .line 8
    instance-of v1, v0, Lcom/google/common/util/concurrent/a$d;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Lcom/google/common/util/concurrent/a$d;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/google/common/util/concurrent/a$d;->exception:Ljava/lang/Throwable;

    .line 15
    return-object v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return-object v0
.end method

.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 3

    .line 1
    .line 2
    const-string v0, "Runnable was null."

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/google/common/base/o;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    const-string v0, "Executor was null."

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lcom/google/common/base/o;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/a;->isDone()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/common/util/concurrent/a;->listeners:Lcom/google/common/util/concurrent/a$e;

    .line 19
    .line 20
    sget-object v1, Lcom/google/common/util/concurrent/a$e;->TOMBSTONE:Lcom/google/common/util/concurrent/a$e;

    .line 21
    .line 22
    if-eq v0, v1, :cond_2

    .line 23
    .line 24
    new-instance v1, Lcom/google/common/util/concurrent/a$e;

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, p1, p2}, Lcom/google/common/util/concurrent/a$e;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 28
    .line 29
    :cond_0
    iput-object v0, v1, Lcom/google/common/util/concurrent/a$e;->next:Lcom/google/common/util/concurrent/a$e;

    .line 30
    .line 31
    sget-object v2, Lcom/google/common/util/concurrent/a;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/a$b;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, p0, v0, v1}, Lcom/google/common/util/concurrent/a$b;->a(Lcom/google/common/util/concurrent/a;Lcom/google/common/util/concurrent/a$e;Lcom/google/common/util/concurrent/a$e;)Z

    .line 35
    move-result v0

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    return-void

    .line 39
    .line 40
    :cond_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/a;->listeners:Lcom/google/common/util/concurrent/a$e;

    .line 41
    .line 42
    sget-object v2, Lcom/google/common/util/concurrent/a$e;->TOMBSTONE:Lcom/google/common/util/concurrent/a$e;

    .line 43
    .line 44
    if-ne v0, v2, :cond_0

    .line 45
    .line 46
    .line 47
    :cond_2
    invoke-static {p1, p2}, Lcom/google/common/util/concurrent/a;->s(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 48
    return-void
.end method

.method public cancel(Z)Z
    .locals 7

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/common/util/concurrent/a;->value:Ljava/lang/Object;

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    move v3, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v3, v2

    .line 10
    .line 11
    :goto_0
    instance-of v4, v0, Lcom/google/common/util/concurrent/a$g;

    .line 12
    or-int/2addr v3, v4

    .line 13
    .line 14
    if-eqz v3, :cond_8

    .line 15
    .line 16
    sget-boolean v3, Lcom/google/common/util/concurrent/a;->GENERATE_CANCELLATION_CAUSES:Z

    .line 17
    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    new-instance v3, Lcom/google/common/util/concurrent/a$c;

    .line 21
    .line 22
    new-instance v4, Ljava/util/concurrent/CancellationException;

    .line 23
    .line 24
    const-string v5, "Future.cancel() was called."

    .line 25
    .line 26
    .line 27
    invoke-direct {v4, v5}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v3, p1, v4}, Lcom/google/common/util/concurrent/a$c;-><init>(ZLjava/lang/Throwable;)V

    .line 31
    goto :goto_2

    .line 32
    .line 33
    :cond_1
    if-eqz p1, :cond_2

    .line 34
    .line 35
    sget-object v3, Lcom/google/common/util/concurrent/a$c;->CAUSELESS_INTERRUPTED:Lcom/google/common/util/concurrent/a$c;

    .line 36
    goto :goto_1

    .line 37
    .line 38
    :cond_2
    sget-object v3, Lcom/google/common/util/concurrent/a$c;->CAUSELESS_CANCELLED:Lcom/google/common/util/concurrent/a$c;

    .line 39
    .line 40
    .line 41
    :goto_1
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :goto_2
    move-object v4, p0

    .line 43
    move v5, v2

    .line 44
    .line 45
    :cond_3
    :goto_3
    sget-object v6, Lcom/google/common/util/concurrent/a;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/a$b;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v6, v4, v0, v3}, Lcom/google/common/util/concurrent/a$b;->b(Lcom/google/common/util/concurrent/a;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    move-result v6

    .line 50
    .line 51
    if-eqz v6, :cond_7

    .line 52
    .line 53
    if-eqz p1, :cond_4

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4}, Lcom/google/common/util/concurrent/a;->w()V

    .line 57
    .line 58
    .line 59
    :cond_4
    invoke-static {v4}, Lcom/google/common/util/concurrent/a;->r(Lcom/google/common/util/concurrent/a;)V

    .line 60
    .line 61
    instance-of v4, v0, Lcom/google/common/util/concurrent/a$g;

    .line 62
    .line 63
    if-eqz v4, :cond_9

    .line 64
    .line 65
    check-cast v0, Lcom/google/common/util/concurrent/a$g;

    .line 66
    .line 67
    iget-object v0, v0, Lcom/google/common/util/concurrent/a$g;->future:Lcom/google/common/util/concurrent/k;

    .line 68
    .line 69
    instance-of v4, v0, Lcom/google/common/util/concurrent/a$i;

    .line 70
    .line 71
    if-eqz v4, :cond_6

    .line 72
    move-object v4, v0

    .line 73
    .line 74
    check-cast v4, Lcom/google/common/util/concurrent/a;

    .line 75
    .line 76
    iget-object v0, v4, Lcom/google/common/util/concurrent/a;->value:Ljava/lang/Object;

    .line 77
    .line 78
    if-nez v0, :cond_5

    .line 79
    move v5, v1

    .line 80
    goto :goto_4

    .line 81
    :cond_5
    move v5, v2

    .line 82
    .line 83
    :goto_4
    instance-of v6, v0, Lcom/google/common/util/concurrent/a$g;

    .line 84
    or-int/2addr v5, v6

    .line 85
    .line 86
    if-eqz v5, :cond_9

    .line 87
    move v5, v1

    .line 88
    goto :goto_3

    .line 89
    .line 90
    .line 91
    :cond_6
    invoke-interface {v0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 92
    goto :goto_5

    .line 93
    .line 94
    :cond_7
    iget-object v0, v4, Lcom/google/common/util/concurrent/a;->value:Ljava/lang/Object;

    .line 95
    .line 96
    instance-of v6, v0, Lcom/google/common/util/concurrent/a$g;

    .line 97
    .line 98
    if-nez v6, :cond_3

    .line 99
    move v1, v5

    .line 100
    goto :goto_5

    .line 101
    :cond_8
    move v1, v2

    .line 102
    :cond_9
    :goto_5
    return v1
.end method

.method public get()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 40
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/common/util/concurrent/a;->value:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 41
    :goto_0
    instance-of v4, v0, Lcom/google/common/util/concurrent/a$g;

    xor-int/2addr v4, v2

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 42
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/a;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/a;->waiters:Lcom/google/common/util/concurrent/a$l;

    .line 43
    sget-object v3, Lcom/google/common/util/concurrent/a$l;->TOMBSTONE:Lcom/google/common/util/concurrent/a$l;

    if-eq v0, v3, :cond_7

    .line 44
    new-instance v3, Lcom/google/common/util/concurrent/a$l;

    invoke-direct {v3}, Lcom/google/common/util/concurrent/a$l;-><init>()V

    .line 45
    :cond_2
    invoke-virtual {v3, v0}, Lcom/google/common/util/concurrent/a$l;->a(Lcom/google/common/util/concurrent/a$l;)V

    sget-object v4, Lcom/google/common/util/concurrent/a;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/a$b;

    .line 46
    invoke-virtual {v4, p0, v0, v3}, Lcom/google/common/util/concurrent/a$b;->c(Lcom/google/common/util/concurrent/a;Lcom/google/common/util/concurrent/a$l;Lcom/google/common/util/concurrent/a$l;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 47
    :cond_3
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 48
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/common/util/concurrent/a;->value:Ljava/lang/Object;

    if-eqz v0, :cond_4

    move v4, v2

    goto :goto_1

    :cond_4
    move v4, v1

    .line 49
    :goto_1
    instance-of v5, v0, Lcom/google/common/util/concurrent/a$g;

    xor-int/2addr v5, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 50
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/a;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 51
    :cond_5
    invoke-direct {p0, v3}, Lcom/google/common/util/concurrent/a;->z(Lcom/google/common/util/concurrent/a$l;)V

    .line 52
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_6
    iget-object v0, p0, Lcom/google/common/util/concurrent/a;->waiters:Lcom/google/common/util/concurrent/a$l;

    .line 53
    sget-object v4, Lcom/google/common/util/concurrent/a$l;->TOMBSTONE:Lcom/google/common/util/concurrent/a$l;

    if-ne v0, v4, :cond_2

    :cond_7
    iget-object v0, p0, Lcom/google/common/util/concurrent/a;->value:Ljava/lang/Object;

    .line 54
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/a;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 55
    :cond_8
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    .line 1
    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-nez v6, :cond_16

    iget-object v6, v0, Lcom/google/common/util/concurrent/a;->value:Ljava/lang/Object;

    const/4 v8, 0x1

    if-eqz v6, :cond_0

    move v9, v8

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 3
    :goto_0
    instance-of v10, v6, Lcom/google/common/util/concurrent/a$g;

    xor-int/2addr v10, v8

    and-int/2addr v9, v10

    if-eqz v9, :cond_1

    .line 4
    invoke-direct {v0, v6}, Lcom/google/common/util/concurrent/a;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_1
    const-wide/16 v9, 0x0

    cmp-long v6, v4, v9

    if-lez v6, :cond_2

    .line 5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    add-long/2addr v11, v4

    goto :goto_1

    :cond_2
    move-wide v11, v9

    :goto_1
    const-wide/16 v13, 0x3e8

    cmp-long v6, v4, v13

    if-ltz v6, :cond_a

    iget-object v6, v0, Lcom/google/common/util/concurrent/a;->waiters:Lcom/google/common/util/concurrent/a$l;

    .line 6
    sget-object v15, Lcom/google/common/util/concurrent/a$l;->TOMBSTONE:Lcom/google/common/util/concurrent/a$l;

    if-eq v6, v15, :cond_9

    .line 7
    new-instance v15, Lcom/google/common/util/concurrent/a$l;

    invoke-direct {v15}, Lcom/google/common/util/concurrent/a$l;-><init>()V

    .line 8
    :cond_3
    invoke-virtual {v15, v6}, Lcom/google/common/util/concurrent/a$l;->a(Lcom/google/common/util/concurrent/a$l;)V

    sget-object v7, Lcom/google/common/util/concurrent/a;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/a$b;

    .line 9
    invoke-virtual {v7, v0, v6, v15}, Lcom/google/common/util/concurrent/a$b;->c(Lcom/google/common/util/concurrent/a;Lcom/google/common/util/concurrent/a$l;Lcom/google/common/util/concurrent/a$l;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 10
    :cond_4
    invoke-static {v0, v4, v5}, Lcom/google/common/util/concurrent/p;->a(Ljava/lang/Object;J)V

    .line 11
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, v0, Lcom/google/common/util/concurrent/a;->value:Ljava/lang/Object;

    if-eqz v4, :cond_5

    move v5, v8

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    .line 12
    :goto_2
    instance-of v6, v4, Lcom/google/common/util/concurrent/a$g;

    xor-int/2addr v6, v8

    and-int/2addr v5, v6

    if-eqz v5, :cond_6

    .line 13
    invoke-direct {v0, v4}, Lcom/google/common/util/concurrent/a;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 14
    :cond_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v11, v4

    cmp-long v6, v4, v13

    if-gez v6, :cond_4

    .line 15
    invoke-direct {v0, v15}, Lcom/google/common/util/concurrent/a;->z(Lcom/google/common/util/concurrent/a$l;)V

    goto :goto_3

    .line 16
    :cond_7
    invoke-direct {v0, v15}, Lcom/google/common/util/concurrent/a;->z(Lcom/google/common/util/concurrent/a$l;)V

    .line 17
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    :cond_8
    iget-object v6, v0, Lcom/google/common/util/concurrent/a;->waiters:Lcom/google/common/util/concurrent/a$l;

    .line 18
    sget-object v7, Lcom/google/common/util/concurrent/a$l;->TOMBSTONE:Lcom/google/common/util/concurrent/a$l;

    if-ne v6, v7, :cond_3

    :cond_9
    iget-object v1, v0, Lcom/google/common/util/concurrent/a;->value:Ljava/lang/Object;

    .line 19
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/a;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_a
    :goto_3
    cmp-long v6, v4, v9

    if-lez v6, :cond_e

    iget-object v4, v0, Lcom/google/common/util/concurrent/a;->value:Ljava/lang/Object;

    if-eqz v4, :cond_b

    move v5, v8

    goto :goto_4

    :cond_b
    const/4 v5, 0x0

    .line 20
    :goto_4
    instance-of v6, v4, Lcom/google/common/util/concurrent/a$g;

    xor-int/2addr v6, v8

    and-int/2addr v5, v6

    if-eqz v5, :cond_c

    .line 21
    invoke-direct {v0, v4}, Lcom/google/common/util/concurrent/a;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 22
    :cond_c
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_d

    .line 23
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v11, v4

    goto :goto_3

    .line 24
    :cond_d
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 25
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/util/concurrent/a;->toString()Ljava/lang/String;

    move-result-object v6

    .line 26
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 27
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x1c

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "Waited "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-long v11, v4, v13

    cmp-long v11, v11, v9

    if-gez v11, :cond_14

    .line 28
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v11, " (plus "

    invoke-virtual {v2, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    neg-long v4, v4

    .line 29
    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v11}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v11

    .line 30
    invoke-virtual {v3, v11, v12}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v17

    sub-long v4, v4, v17

    cmp-long v3, v11, v9

    if-eqz v3, :cond_10

    cmp-long v9, v4, v13

    if-lez v9, :cond_f

    goto :goto_5

    :cond_f
    const/16 v16, 0x0

    goto :goto_6

    :cond_10
    :goto_5
    move/from16 v16, v8

    :goto_6
    if-lez v3, :cond_12

    .line 31
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x15

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v3, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v16, :cond_11

    .line 32
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 33
    :cond_11
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_12
    if-eqz v16, :cond_13

    .line 34
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x21

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " nanoseconds "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 35
    :cond_13
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "delay)"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 36
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/util/concurrent/a;->isDone()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 37
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " but future completed as timeout expired"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 38
    :cond_15
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 39
    :cond_16
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1
.end method

.method public isCancelled()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/common/util/concurrent/a;->value:Ljava/lang/Object;

    .line 3
    .line 4
    instance-of v0, v0, Lcom/google/common/util/concurrent/a$c;

    .line 5
    return v0
.end method

.method public isDone()Z
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/common/util/concurrent/a;->value:Ljava/lang/Object;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    move v2, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v2, 0x0

    .line 9
    .line 10
    :goto_0
    instance-of v0, v0, Lcom/google/common/util/concurrent/a$g;

    .line 11
    xor-int/2addr v0, v1

    .line 12
    and-int/2addr v0, v2

    .line 13
    return v0
.end method

.method protected m()V
    .locals 0

    .line 1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

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
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    const-string v2, "com.google.common.util.concurrent."

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 19
    move-result v1

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    goto :goto_0

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    :goto_0
    const/16 v1, 0x40

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 53
    move-result v1

    .line 54
    .line 55
    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 57
    move-result-object v1

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v1, "[status="

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/a;->isCancelled()Z

    .line 69
    move-result v1

    .line 70
    .line 71
    if-eqz v1, :cond_1

    .line 72
    .line 73
    const-string v1, "CANCELLED"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    goto :goto_1

    .line 78
    .line 79
    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/a;->isDone()Z

    .line 81
    move-result v1

    .line 82
    .line 83
    if-eqz v1, :cond_2

    .line 84
    .line 85
    .line 86
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/a;->k(Ljava/lang/StringBuilder;)V

    .line 87
    goto :goto_1

    .line 88
    .line 89
    .line 90
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/a;->l(Ljava/lang/StringBuilder;)V

    .line 91
    .line 92
    :goto_1
    const-string v1, "]"

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object v0

    .line 100
    return-object v0
.end method

.method protected w()V
    .locals 0

    .line 1
    return-void
.end method

.method protected x()Ljava/lang/String;
    .locals 4

    .line 1
    .line 2
    instance-of v0, p0, Ljava/util/concurrent/ScheduledFuture;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p0

    .line 6
    .line 7
    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    .line 8
    .line 9
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/concurrent/Delayed;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    .line 13
    move-result-wide v0

    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const/16 v3, 0x29

    .line 18
    .line 19
    .line 20
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 21
    .line 22
    const-string v3, "remaining delay=["

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v0, " ms]"

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    return-object v0

    .line 39
    :cond_0
    const/4 v0, 0x0

    .line 40
    return-object v0
.end method
