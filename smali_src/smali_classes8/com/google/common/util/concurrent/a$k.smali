.class final Lcom/google/common/util/concurrent/a$k;
.super Lcom/google/common/util/concurrent/a$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "k"
.end annotation


# static fields
.field static final LISTENERS_OFFSET:J

.field static final UNSAFE:Lsun/misc/Unsafe;

.field static final VALUE_OFFSET:J

.field static final WAITERS_OFFSET:J

.field static final WAITER_NEXT_OFFSET:J

.field static final WAITER_THREAD_OFFSET:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    .line 2
    const-class v0, Lcom/google/common/util/concurrent/a$l;

    .line 3
    .line 4
    .line 5
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    .line 6
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :catch_0
    :try_start_1
    new-instance v1, Lcom/google/common/util/concurrent/a$k$a;

    .line 10
    .line 11
    .line 12
    invoke-direct {v1}, Lcom/google/common/util/concurrent/a$k$a;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    check-cast v1, Lsun/misc/Unsafe;
    :try_end_1
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_1} :catch_2

    .line 19
    .line 20
    :goto_0
    :try_start_2
    const-class v2, Lcom/google/common/util/concurrent/a;

    .line 21
    .line 22
    const-string v3, "waiters"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 30
    move-result-wide v3

    .line 31
    .line 32
    sput-wide v3, Lcom/google/common/util/concurrent/a$k;->WAITERS_OFFSET:J

    .line 33
    .line 34
    const-string v3, "listeners"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 38
    move-result-object v3

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 42
    move-result-wide v3

    .line 43
    .line 44
    sput-wide v3, Lcom/google/common/util/concurrent/a$k;->LISTENERS_OFFSET:J

    .line 45
    .line 46
    const-string v3, "value"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 50
    move-result-object v2

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 54
    move-result-wide v2

    .line 55
    .line 56
    sput-wide v2, Lcom/google/common/util/concurrent/a$k;->VALUE_OFFSET:J

    .line 57
    .line 58
    const-string v2, "thread"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 62
    move-result-object v2

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 66
    move-result-wide v2

    .line 67
    .line 68
    sput-wide v2, Lcom/google/common/util/concurrent/a$k;->WAITER_THREAD_OFFSET:J

    .line 69
    .line 70
    const-string v2, "next"

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    .line 78
    move-result-wide v2

    .line 79
    .line 80
    sput-wide v2, Lcom/google/common/util/concurrent/a$k;->WAITER_NEXT_OFFSET:J

    .line 81
    .line 82
    sput-object v1, Lcom/google/common/util/concurrent/a$k;->UNSAFE:Lsun/misc/Unsafe;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 83
    return-void

    .line 84
    :catch_1
    move-exception v0

    .line 85
    .line 86
    .line 87
    invoke-static {v0}, Lcom/google/common/base/w;->f(Ljava/lang/Throwable;)V

    .line 88
    .line 89
    new-instance v1, Ljava/lang/RuntimeException;

    .line 90
    .line 91
    .line 92
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 93
    throw v1

    .line 94
    :catch_2
    move-exception v0

    .line 95
    .line 96
    new-instance v1, Ljava/lang/RuntimeException;

    .line 97
    .line 98
    const-string v2, "Could not initialize intrinsics"

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    .line 102
    move-result-object v0

    .line 103
    .line 104
    .line 105
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    throw v1
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/a$b;-><init>(Lcom/google/common/util/concurrent/a$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/common/util/concurrent/a$k;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/google/common/util/concurrent/a;Lcom/google/common/util/concurrent/a$e;Lcom/google/common/util/concurrent/a$e;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/a<",
            "*>;",
            "Lcom/google/common/util/concurrent/a$e;",
            "Lcom/google/common/util/concurrent/a$e;",
            ")Z"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/google/common/util/concurrent/a$k;->UNSAFE:Lsun/misc/Unsafe;

    .line 3
    .line 4
    sget-wide v2, Lcom/google/common/util/concurrent/a$k;->LISTENERS_OFFSET:J

    .line 5
    move-object v1, p1

    .line 6
    move-object v4, p2

    .line 7
    move-object v5, p3

    .line 8
    .line 9
    .line 10
    invoke-static/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/i;->a(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method b(Lcom/google/common/util/concurrent/a;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/a<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/google/common/util/concurrent/a$k;->UNSAFE:Lsun/misc/Unsafe;

    .line 3
    .line 4
    sget-wide v2, Lcom/google/common/util/concurrent/a$k;->VALUE_OFFSET:J

    .line 5
    move-object v1, p1

    .line 6
    move-object v4, p2

    .line 7
    move-object v5, p3

    .line 8
    .line 9
    .line 10
    invoke-static/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/i;->a(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method c(Lcom/google/common/util/concurrent/a;Lcom/google/common/util/concurrent/a$l;Lcom/google/common/util/concurrent/a$l;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/a<",
            "*>;",
            "Lcom/google/common/util/concurrent/a$l;",
            "Lcom/google/common/util/concurrent/a$l;",
            ")Z"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/google/common/util/concurrent/a$k;->UNSAFE:Lsun/misc/Unsafe;

    .line 3
    .line 4
    sget-wide v2, Lcom/google/common/util/concurrent/a$k;->WAITERS_OFFSET:J

    .line 5
    move-object v1, p1

    .line 6
    move-object v4, p2

    .line 7
    move-object v5, p3

    .line 8
    .line 9
    .line 10
    invoke-static/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/i;->a(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method d(Lcom/google/common/util/concurrent/a;Lcom/google/common/util/concurrent/a$e;)Lcom/google/common/util/concurrent/a$e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/a<",
            "*>;",
            "Lcom/google/common/util/concurrent/a$e;",
            ")",
            "Lcom/google/common/util/concurrent/a$e;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    :cond_0
    invoke-static {p1}, Lcom/google/common/util/concurrent/a;->g(Lcom/google/common/util/concurrent/a;)Lcom/google/common/util/concurrent/a$e;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-ne p2, v0, :cond_1

    .line 7
    return-object v0

    .line 8
    .line 9
    .line 10
    :cond_1
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/common/util/concurrent/a$k;->a(Lcom/google/common/util/concurrent/a;Lcom/google/common/util/concurrent/a$e;Lcom/google/common/util/concurrent/a$e;)Z

    .line 11
    move-result v1

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    return-object v0
.end method

.method e(Lcom/google/common/util/concurrent/a;Lcom/google/common/util/concurrent/a$l;)Lcom/google/common/util/concurrent/a$l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/a<",
            "*>;",
            "Lcom/google/common/util/concurrent/a$l;",
            ")",
            "Lcom/google/common/util/concurrent/a$l;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    :cond_0
    invoke-static {p1}, Lcom/google/common/util/concurrent/a;->i(Lcom/google/common/util/concurrent/a;)Lcom/google/common/util/concurrent/a$l;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-ne p2, v0, :cond_1

    .line 7
    return-object v0

    .line 8
    .line 9
    .line 10
    :cond_1
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/common/util/concurrent/a$k;->c(Lcom/google/common/util/concurrent/a;Lcom/google/common/util/concurrent/a$l;Lcom/google/common/util/concurrent/a$l;)Z

    .line 11
    move-result v1

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    return-object v0
.end method

.method f(Lcom/google/common/util/concurrent/a$l;Lcom/google/common/util/concurrent/a$l;)V
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lcom/google/common/util/concurrent/a$k;->UNSAFE:Lsun/misc/Unsafe;

    .line 3
    .line 4
    sget-wide v1, Lcom/google/common/util/concurrent/a$k;->WAITER_NEXT_OFFSET:J

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 8
    return-void
.end method

.method g(Lcom/google/common/util/concurrent/a$l;Ljava/lang/Thread;)V
    .locals 3

    .line 1
    .line 2
    sget-object v0, Lcom/google/common/util/concurrent/a$k;->UNSAFE:Lsun/misc/Unsafe;

    .line 3
    .line 4
    sget-wide v1, Lcom/google/common/util/concurrent/a$k;->WAITER_THREAD_OFFSET:J

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 8
    return-void
.end method
