.class public Lk2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk2/e;


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private final backendRegistry:Lg2/e;

.field private final eventStore:Lcom/google/android/datatransport/runtime/scheduling/persistence/d;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final guard:Ll2/b;

.field private final workScheduler:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/x;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    const-class v0, Lcom/google/android/datatransport/runtime/u;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    sput-object v0, Lk2/c;->LOGGER:Ljava/util/logging/Logger;

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lg2/e;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/x;Lcom/google/android/datatransport/runtime/scheduling/persistence/d;Ll2/b;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lk2/c;->executor:Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    iput-object p2, p0, Lk2/c;->backendRegistry:Lg2/e;

    .line 8
    .line 9
    iput-object p3, p0, Lk2/c;->workScheduler:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/x;

    .line 10
    .line 11
    iput-object p4, p0, Lk2/c;->eventStore:Lcom/google/android/datatransport/runtime/scheduling/persistence/d;

    .line 12
    .line 13
    iput-object p5, p0, Lk2/c;->guard:Ll2/b;

    .line 14
    return-void
.end method

.method public static synthetic b(Lk2/c;Lcom/google/android/datatransport/runtime/p;Lf2/h;Lcom/google/android/datatransport/runtime/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lk2/c;->e(Lcom/google/android/datatransport/runtime/p;Lf2/h;Lcom/google/android/datatransport/runtime/i;)V

    return-void
.end method

.method public static synthetic c(Lk2/c;Lcom/google/android/datatransport/runtime/p;Lcom/google/android/datatransport/runtime/i;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lk2/c;->d(Lcom/google/android/datatransport/runtime/p;Lcom/google/android/datatransport/runtime/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic d(Lcom/google/android/datatransport/runtime/p;Lcom/google/android/datatransport/runtime/i;)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lk2/c;->eventStore:Lcom/google/android/datatransport/runtime/scheduling/persistence/d;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/d;->A0(Lcom/google/android/datatransport/runtime/p;Lcom/google/android/datatransport/runtime/i;)Lcom/google/android/datatransport/runtime/scheduling/persistence/k;

    .line 6
    .line 7
    iget-object p2, p0, Lk2/c;->workScheduler:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/x;

    .line 8
    const/4 v0, 0x1

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, p1, v0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/x;->b(Lcom/google/android/datatransport/runtime/p;I)V

    .line 12
    const/4 p1, 0x0

    .line 13
    return-object p1
.end method

.method private synthetic e(Lcom/google/android/datatransport/runtime/p;Lf2/h;Lcom/google/android/datatransport/runtime/i;)V
    .locals 2

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lk2/c;->backendRegistry:Lg2/e;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/p;->b()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Lg2/e;->get(Ljava/lang/String;)Lg2/m;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const-string p3, "Transport backend \'%s\' is not registered"

    .line 15
    const/4 v0, 0x1

    .line 16
    .line 17
    new-array v0, v0, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/p;->b()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    const/4 v1, 0x0

    .line 23
    .line 24
    aput-object p1, v0, v1

    .line 25
    .line 26
    .line 27
    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    sget-object p3, Lk2/c;->LOGGER:Ljava/util/logging/Logger;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 34
    .line 35
    new-instance p3, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    .line 38
    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {p2, p3}, Lf2/h;->a(Ljava/lang/Exception;)V

    .line 42
    return-void

    .line 43
    :catch_0
    move-exception p1

    .line 44
    goto :goto_0

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-interface {v0, p3}, Lg2/m;->b(Lcom/google/android/datatransport/runtime/i;)Lcom/google/android/datatransport/runtime/i;

    .line 48
    move-result-object p3

    .line 49
    .line 50
    iget-object v0, p0, Lk2/c;->guard:Ll2/b;

    .line 51
    .line 52
    new-instance v1, Lk2/b;

    .line 53
    .line 54
    .line 55
    invoke-direct {v1, p0, p1, p3}, Lk2/b;-><init>(Lk2/c;Lcom/google/android/datatransport/runtime/p;Lcom/google/android/datatransport/runtime/i;)V

    .line 56
    .line 57
    .line 58
    invoke-interface {v0, v1}, Ll2/b;->a(Ll2/b$a;)Ljava/lang/Object;

    .line 59
    const/4 p1, 0x0

    .line 60
    .line 61
    .line 62
    invoke-interface {p2, p1}, Lf2/h;->a(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    goto :goto_1

    .line 64
    .line 65
    :goto_0
    sget-object p3, Lk2/c;->LOGGER:Ljava/util/logging/Logger;

    .line 66
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    const-string v1, "Error scheduling event "

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 79
    move-result-object v1

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    .line 89
    invoke-virtual {p3, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-interface {p2, p1}, Lf2/h;->a(Ljava/lang/Exception;)V

    .line 93
    :goto_1
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/datatransport/runtime/p;Lcom/google/android/datatransport/runtime/i;Lf2/h;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lk2/c;->executor:Ljava/util/concurrent/Executor;

    .line 3
    .line 4
    new-instance v1, Lk2/a;

    .line 5
    .line 6
    .line 7
    invoke-direct {v1, p0, p1, p3, p2}, Lk2/a;-><init>(Lk2/c;Lcom/google/android/datatransport/runtime/p;Lf2/h;Lcom/google/android/datatransport/runtime/i;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 11
    return-void
.end method
