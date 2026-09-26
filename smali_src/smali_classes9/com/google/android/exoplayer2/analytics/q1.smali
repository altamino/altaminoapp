.class public final Lcom/google/android/exoplayer2/analytics/q1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/analytics/s1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/analytics/q1$a;
    }
.end annotation


# static fields
.field public static final DEFAULT_SESSION_ID_GENERATOR:Lcom/google/common/base/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/u<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final RANDOM:Ljava/util/Random;

.field private static final SESSION_ID_LENGTH:I = 0xc


# instance fields
.field private currentSessionId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private currentTimeline:Lcom/google/android/exoplayer2/z3;

.field private listener:Lcom/google/android/exoplayer2/analytics/s1$a;

.field private final period:Lcom/google/android/exoplayer2/z3$b;

.field private final sessionIdGenerator:Lcom/google/common/base/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/u<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final sessions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/analytics/q1$a;",
            ">;"
        }
    .end annotation
.end field

.field private final window:Lcom/google/android/exoplayer2/z3$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/analytics/p1;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/exoplayer2/analytics/p1;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/google/android/exoplayer2/analytics/q1;->DEFAULT_SESSION_ID_GENERATOR:Lcom/google/common/base/u;

    .line 8
    .line 9
    new-instance v0, Ljava/util/Random;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 13
    .line 14
    sput-object v0, Lcom/google/android/exoplayer2/analytics/q1;->RANDOM:Ljava/util/Random;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/google/android/exoplayer2/analytics/q1;->DEFAULT_SESSION_ID_GENERATOR:Lcom/google/common/base/u;

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/analytics/q1;-><init>(Lcom/google/common/base/u;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/base/u;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/u<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/q1;->sessionIdGenerator:Lcom/google/common/base/u;

    .line 3
    new-instance p1, Lcom/google/android/exoplayer2/z3$d;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/z3$d;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/q1;->window:Lcom/google/android/exoplayer2/z3$d;

    .line 4
    new-instance p1, Lcom/google/android/exoplayer2/z3$b;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/z3$b;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/q1;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/q1;->sessions:Ljava/util/HashMap;

    .line 6
    sget-object p1, Lcom/google/android/exoplayer2/z3;->EMPTY:Lcom/google/android/exoplayer2/z3;

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/q1;->currentTimeline:Lcom/google/android/exoplayer2/z3;

    return-void
.end method

.method public static synthetic h()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/exoplayer2/analytics/q1;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/exoplayer2/analytics/q1;)Lcom/google/android/exoplayer2/z3$d;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/q1;->window:Lcom/google/android/exoplayer2/z3$d;

    .line 3
    return-object p0
.end method

.method static synthetic j(Lcom/google/android/exoplayer2/analytics/q1;)Lcom/google/android/exoplayer2/z3$b;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/q1;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 3
    return-object p0
.end method

.method private static k()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    const/16 v0, 0xc

    .line 3
    .line 4
    new-array v0, v0, [B

    .line 5
    .line 6
    sget-object v1, Lcom/google/android/exoplayer2/analytics/q1;->RANDOM:Ljava/util/Random;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 10
    .line 11
    const/16 v1, 0xa

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method private l(ILcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/analytics/q1$a;
    .locals 9
    .param p2    # Lcom/google/android/exoplayer2/source/b0$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/q1;->sessions:Ljava/util/HashMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    const-wide v2, 0x7fffffffffffffffL

    .line 17
    .line 18
    .line 19
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v4

    .line 21
    .line 22
    if-eqz v4, :cond_3

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v4

    .line 27
    .line 28
    check-cast v4, Lcom/google/android/exoplayer2/analytics/q1$a;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4, p1, p2}, Lcom/google/android/exoplayer2/analytics/q1$a;->k(ILcom/google/android/exoplayer2/source/b0$b;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4, p1, p2}, Lcom/google/android/exoplayer2/analytics/q1$a;->i(ILcom/google/android/exoplayer2/source/b0$b;)Z

    .line 35
    move-result v5

    .line 36
    .line 37
    if-eqz v5, :cond_0

    .line 38
    .line 39
    .line 40
    invoke-static {v4}, Lcom/google/android/exoplayer2/analytics/q1$a;->b(Lcom/google/android/exoplayer2/analytics/q1$a;)J

    .line 41
    move-result-wide v5

    .line 42
    .line 43
    const-wide/16 v7, -0x1

    .line 44
    .line 45
    cmp-long v7, v5, v7

    .line 46
    .line 47
    if-eqz v7, :cond_2

    .line 48
    .line 49
    cmp-long v7, v5, v2

    .line 50
    .line 51
    if-gez v7, :cond_1

    .line 52
    goto :goto_1

    .line 53
    .line 54
    :cond_1
    if-nez v7, :cond_0

    .line 55
    .line 56
    .line 57
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/o0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    move-result-object v5

    .line 59
    .line 60
    check-cast v5, Lcom/google/android/exoplayer2/analytics/q1$a;

    .line 61
    .line 62
    .line 63
    invoke-static {v5}, Lcom/google/android/exoplayer2/analytics/q1$a;->h(Lcom/google/android/exoplayer2/analytics/q1$a;)Lcom/google/android/exoplayer2/source/b0$b;

    .line 64
    move-result-object v5

    .line 65
    .line 66
    if-eqz v5, :cond_0

    .line 67
    .line 68
    .line 69
    invoke-static {v4}, Lcom/google/android/exoplayer2/analytics/q1$a;->h(Lcom/google/android/exoplayer2/analytics/q1$a;)Lcom/google/android/exoplayer2/source/b0$b;

    .line 70
    move-result-object v5

    .line 71
    .line 72
    if-eqz v5, :cond_0

    .line 73
    move-object v1, v4

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    :goto_1
    move-object v1, v4

    .line 76
    move-wide v2, v5

    .line 77
    goto :goto_0

    .line 78
    .line 79
    :cond_3
    if-nez v1, :cond_4

    .line 80
    .line 81
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/q1;->sessionIdGenerator:Lcom/google/common/base/u;

    .line 82
    .line 83
    .line 84
    invoke-interface {v0}, Lcom/google/common/base/u;->get()Ljava/lang/Object;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    check-cast v0, Ljava/lang/String;

    .line 88
    .line 89
    new-instance v1, Lcom/google/android/exoplayer2/analytics/q1$a;

    .line 90
    .line 91
    .line 92
    invoke-direct {v1, p0, v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/q1$a;-><init>(Lcom/google/android/exoplayer2/analytics/q1;Ljava/lang/String;ILcom/google/android/exoplayer2/source/b0$b;)V

    .line 93
    .line 94
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/q1;->sessions:Ljava/util/HashMap;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_4
    return-object v1
.end method

.method private m(Lcom/google/android/exoplayer2/analytics/c$a;)V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p1, Lcom/google/android/exoplayer2/analytics/c$a;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/z3;->u()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/q1;->currentSessionId:Ljava/lang/String;

    .line 12
    return-void

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/q1;->sessions:Ljava/util/HashMap;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/q1;->currentSessionId:Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    check-cast v0, Lcom/google/android/exoplayer2/analytics/q1$a;

    .line 23
    .line 24
    iget v1, p1, Lcom/google/android/exoplayer2/analytics/c$a;->windowIndex:I

    .line 25
    .line 26
    iget-object v2, p1, Lcom/google/android/exoplayer2/analytics/c$a;->mediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/analytics/q1;->l(ILcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/analytics/q1$a;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    .line 33
    invoke-static {v1}, Lcom/google/android/exoplayer2/analytics/q1$a;->a(Lcom/google/android/exoplayer2/analytics/q1$a;)Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    iput-object v2, p0, Lcom/google/android/exoplayer2/analytics/q1;->currentSessionId:Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/analytics/q1;->f(Lcom/google/android/exoplayer2/analytics/c$a;)V

    .line 40
    .line 41
    iget-object v2, p1, Lcom/google/android/exoplayer2/analytics/c$a;->mediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 42
    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/z;->b()Z

    .line 47
    move-result v2

    .line 48
    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    .line 54
    invoke-static {v0}, Lcom/google/android/exoplayer2/analytics/q1$a;->b(Lcom/google/android/exoplayer2/analytics/q1$a;)J

    .line 55
    move-result-wide v2

    .line 56
    .line 57
    iget-object v4, p1, Lcom/google/android/exoplayer2/analytics/c$a;->mediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 58
    .line 59
    iget-wide v4, v4, Lcom/google/android/exoplayer2/source/z;->windowSequenceNumber:J

    .line 60
    .line 61
    cmp-long v2, v2, v4

    .line 62
    .line 63
    if-nez v2, :cond_1

    .line 64
    .line 65
    .line 66
    invoke-static {v0}, Lcom/google/android/exoplayer2/analytics/q1$a;->h(Lcom/google/android/exoplayer2/analytics/q1$a;)Lcom/google/android/exoplayer2/source/b0$b;

    .line 67
    move-result-object v2

    .line 68
    .line 69
    if-eqz v2, :cond_1

    .line 70
    .line 71
    .line 72
    invoke-static {v0}, Lcom/google/android/exoplayer2/analytics/q1$a;->h(Lcom/google/android/exoplayer2/analytics/q1$a;)Lcom/google/android/exoplayer2/source/b0$b;

    .line 73
    move-result-object v2

    .line 74
    .line 75
    iget v2, v2, Lcom/google/android/exoplayer2/source/z;->adGroupIndex:I

    .line 76
    .line 77
    iget-object v3, p1, Lcom/google/android/exoplayer2/analytics/c$a;->mediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 78
    .line 79
    iget v3, v3, Lcom/google/android/exoplayer2/source/z;->adGroupIndex:I

    .line 80
    .line 81
    if-ne v2, v3, :cond_1

    .line 82
    .line 83
    .line 84
    invoke-static {v0}, Lcom/google/android/exoplayer2/analytics/q1$a;->h(Lcom/google/android/exoplayer2/analytics/q1$a;)Lcom/google/android/exoplayer2/source/b0$b;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    iget v0, v0, Lcom/google/android/exoplayer2/source/z;->adIndexInAdGroup:I

    .line 88
    .line 89
    iget-object v2, p1, Lcom/google/android/exoplayer2/analytics/c$a;->mediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 90
    .line 91
    iget v2, v2, Lcom/google/android/exoplayer2/source/z;->adIndexInAdGroup:I

    .line 92
    .line 93
    if-eq v0, v2, :cond_2

    .line 94
    .line 95
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/source/b0$b;

    .line 96
    .line 97
    iget-object v2, p1, Lcom/google/android/exoplayer2/analytics/c$a;->mediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 98
    .line 99
    iget-object v3, v2, Lcom/google/android/exoplayer2/source/z;->periodUid:Ljava/lang/Object;

    .line 100
    .line 101
    iget-wide v4, v2, Lcom/google/android/exoplayer2/source/z;->windowSequenceNumber:J

    .line 102
    .line 103
    .line 104
    invoke-direct {v0, v3, v4, v5}, Lcom/google/android/exoplayer2/source/b0$b;-><init>(Ljava/lang/Object;J)V

    .line 105
    .line 106
    iget v2, p1, Lcom/google/android/exoplayer2/analytics/c$a;->windowIndex:I

    .line 107
    .line 108
    .line 109
    invoke-direct {p0, v2, v0}, Lcom/google/android/exoplayer2/analytics/q1;->l(ILcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/analytics/q1$a;

    .line 110
    move-result-object v0

    .line 111
    .line 112
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/q1;->listener:Lcom/google/android/exoplayer2/analytics/s1$a;

    .line 113
    .line 114
    .line 115
    invoke-static {v0}, Lcom/google/android/exoplayer2/analytics/q1$a;->a(Lcom/google/android/exoplayer2/analytics/q1$a;)Ljava/lang/String;

    .line 116
    move-result-object v0

    .line 117
    .line 118
    .line 119
    invoke-static {v1}, Lcom/google/android/exoplayer2/analytics/q1$a;->a(Lcom/google/android/exoplayer2/analytics/q1$a;)Ljava/lang/String;

    .line 120
    move-result-object v1

    .line 121
    .line 122
    .line 123
    invoke-interface {v2, p1, v0, v1}, Lcom/google/android/exoplayer2/analytics/s1$a;->y0(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_2
    return-void
.end method


# virtual methods
.method public declared-synchronized a()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/q1;->currentSessionId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public declared-synchronized b(Lcom/google/android/exoplayer2/analytics/c$a;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    .line 4
    :try_start_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/q1;->currentSessionId:Ljava/lang/String;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/q1;->sessions:Ljava/util/HashMap;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v1

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    check-cast v1, Lcom/google/android/exoplayer2/analytics/q1$a;

    .line 27
    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 30
    .line 31
    .line 32
    invoke-static {v1}, Lcom/google/android/exoplayer2/analytics/q1$a;->d(Lcom/google/android/exoplayer2/analytics/q1$a;)Z

    .line 33
    move-result v2

    .line 34
    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/q1;->listener:Lcom/google/android/exoplayer2/analytics/s1$a;

    .line 38
    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    .line 42
    invoke-static {v1}, Lcom/google/android/exoplayer2/analytics/q1$a;->a(Lcom/google/android/exoplayer2/analytics/q1$a;)Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    const/4 v3, 0x0

    .line 45
    .line 46
    .line 47
    invoke-interface {v2, p1, v1, v3}, Lcom/google/android/exoplayer2/analytics/s1$a;->n0(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    monitor-exit p0

    .line 52
    return-void

    .line 53
    :goto_1
    monitor-exit p0

    .line 54
    throw p1
.end method

.method public declared-synchronized c(Lcom/google/android/exoplayer2/analytics/c$a;I)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/q1;->listener:Lcom/google/android/exoplayer2/analytics/s1$a;

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x1

    .line 9
    .line 10
    if-nez p2, :cond_0

    .line 11
    move p2, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move p2, v0

    .line 14
    .line 15
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/q1;->sessions:Ljava/util/HashMap;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    .line 22
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v2

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v3

    .line 28
    .line 29
    if-eqz v3, :cond_4

    .line 30
    .line 31
    .line 32
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v3

    .line 34
    .line 35
    check-cast v3, Lcom/google/android/exoplayer2/analytics/q1$a;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, p1}, Lcom/google/android/exoplayer2/analytics/q1$a;->j(Lcom/google/android/exoplayer2/analytics/c$a;)Z

    .line 39
    move-result v4

    .line 40
    .line 41
    if-eqz v4, :cond_1

    .line 42
    .line 43
    .line 44
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 45
    .line 46
    .line 47
    invoke-static {v3}, Lcom/google/android/exoplayer2/analytics/q1$a;->d(Lcom/google/android/exoplayer2/analytics/q1$a;)Z

    .line 48
    move-result v4

    .line 49
    .line 50
    if-eqz v4, :cond_1

    .line 51
    .line 52
    .line 53
    invoke-static {v3}, Lcom/google/android/exoplayer2/analytics/q1$a;->a(Lcom/google/android/exoplayer2/analytics/q1$a;)Ljava/lang/String;

    .line 54
    move-result-object v4

    .line 55
    .line 56
    iget-object v5, p0, Lcom/google/android/exoplayer2/analytics/q1;->currentSessionId:Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    move-result v4

    .line 61
    .line 62
    if-eqz p2, :cond_2

    .line 63
    .line 64
    if-eqz v4, :cond_2

    .line 65
    .line 66
    .line 67
    invoke-static {v3}, Lcom/google/android/exoplayer2/analytics/q1$a;->f(Lcom/google/android/exoplayer2/analytics/q1$a;)Z

    .line 68
    move-result v5

    .line 69
    .line 70
    if-eqz v5, :cond_2

    .line 71
    move v5, v1

    .line 72
    goto :goto_2

    .line 73
    :catchall_0
    move-exception p1

    .line 74
    goto :goto_3

    .line 75
    :cond_2
    move v5, v0

    .line 76
    .line 77
    :goto_2
    if-eqz v4, :cond_3

    .line 78
    const/4 v4, 0x0

    .line 79
    .line 80
    iput-object v4, p0, Lcom/google/android/exoplayer2/analytics/q1;->currentSessionId:Ljava/lang/String;

    .line 81
    .line 82
    :cond_3
    iget-object v4, p0, Lcom/google/android/exoplayer2/analytics/q1;->listener:Lcom/google/android/exoplayer2/analytics/s1$a;

    .line 83
    .line 84
    .line 85
    invoke-static {v3}, Lcom/google/android/exoplayer2/analytics/q1$a;->a(Lcom/google/android/exoplayer2/analytics/q1$a;)Ljava/lang/String;

    .line 86
    move-result-object v3

    .line 87
    .line 88
    .line 89
    invoke-interface {v4, p1, v3, v5}, Lcom/google/android/exoplayer2/analytics/s1$a;->n0(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/String;Z)V

    .line 90
    goto :goto_1

    .line 91
    .line 92
    .line 93
    :cond_4
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/analytics/q1;->m(Lcom/google/android/exoplayer2/analytics/c$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    .line 95
    return-void

    .line 96
    :goto_3
    monitor-exit p0

    .line 97
    throw p1
.end method

.method public declared-synchronized d(Lcom/google/android/exoplayer2/analytics/c$a;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/q1;->listener:Lcom/google/android/exoplayer2/analytics/s1$a;

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/q1;->currentTimeline:Lcom/google/android/exoplayer2/z3;

    .line 9
    .line 10
    iget-object v1, p1, Lcom/google/android/exoplayer2/analytics/c$a;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 11
    .line 12
    iput-object v1, p0, Lcom/google/android/exoplayer2/analytics/q1;->currentTimeline:Lcom/google/android/exoplayer2/z3;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/q1;->sessions:Ljava/util/HashMap;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v1

    .line 23
    .line 24
    .line 25
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v2

    .line 27
    .line 28
    if-eqz v2, :cond_3

    .line 29
    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    check-cast v2, Lcom/google/android/exoplayer2/analytics/q1$a;

    .line 35
    .line 36
    iget-object v3, p0, Lcom/google/android/exoplayer2/analytics/q1;->currentTimeline:Lcom/google/android/exoplayer2/z3;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v0, v3}, Lcom/google/android/exoplayer2/analytics/q1$a;->m(Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/z3;)Z

    .line 40
    move-result v3

    .line 41
    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/analytics/q1$a;->j(Lcom/google/android/exoplayer2/analytics/c$a;)Z

    .line 46
    move-result v3

    .line 47
    .line 48
    if-eqz v3, :cond_0

    .line 49
    goto :goto_1

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    goto :goto_2

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 55
    .line 56
    .line 57
    invoke-static {v2}, Lcom/google/android/exoplayer2/analytics/q1$a;->d(Lcom/google/android/exoplayer2/analytics/q1$a;)Z

    .line 58
    move-result v3

    .line 59
    .line 60
    if-eqz v3, :cond_0

    .line 61
    .line 62
    .line 63
    invoke-static {v2}, Lcom/google/android/exoplayer2/analytics/q1$a;->a(Lcom/google/android/exoplayer2/analytics/q1$a;)Ljava/lang/String;

    .line 64
    move-result-object v3

    .line 65
    .line 66
    iget-object v4, p0, Lcom/google/android/exoplayer2/analytics/q1;->currentSessionId:Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    move-result v3

    .line 71
    .line 72
    if-eqz v3, :cond_2

    .line 73
    const/4 v3, 0x0

    .line 74
    .line 75
    iput-object v3, p0, Lcom/google/android/exoplayer2/analytics/q1;->currentSessionId:Ljava/lang/String;

    .line 76
    .line 77
    :cond_2
    iget-object v3, p0, Lcom/google/android/exoplayer2/analytics/q1;->listener:Lcom/google/android/exoplayer2/analytics/s1$a;

    .line 78
    .line 79
    .line 80
    invoke-static {v2}, Lcom/google/android/exoplayer2/analytics/q1$a;->a(Lcom/google/android/exoplayer2/analytics/q1$a;)Ljava/lang/String;

    .line 81
    move-result-object v2

    .line 82
    const/4 v4, 0x0

    .line 83
    .line 84
    .line 85
    invoke-interface {v3, p1, v2, v4}, Lcom/google/android/exoplayer2/analytics/s1$a;->n0(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/String;Z)V

    .line 86
    goto :goto_0

    .line 87
    .line 88
    .line 89
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/analytics/q1;->m(Lcom/google/android/exoplayer2/analytics/c$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit p0

    .line 91
    return-void

    .line 92
    :goto_2
    monitor-exit p0

    .line 93
    throw p1
.end method

.method public e(Lcom/google/android/exoplayer2/analytics/s1$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/q1;->listener:Lcom/google/android/exoplayer2/analytics/s1$a;

    return-void
.end method

.method public declared-synchronized f(Lcom/google/android/exoplayer2/analytics/c$a;)V
    .locals 24

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    move-object/from16 v0, p1

    .line 5
    monitor-enter p0

    .line 6
    .line 7
    :try_start_0
    iget-object v2, v1, Lcom/google/android/exoplayer2/analytics/q1;->listener:Lcom/google/android/exoplayer2/analytics/s1$a;

    .line 8
    .line 9
    .line 10
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    iget-object v2, v0, Lcom/google/android/exoplayer2/analytics/c$a;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/z3;->u()Z

    .line 16
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    .line 22
    :cond_0
    :try_start_1
    iget-object v2, v1, Lcom/google/android/exoplayer2/analytics/q1;->sessions:Ljava/util/HashMap;

    .line 23
    .line 24
    iget-object v3, v1, Lcom/google/android/exoplayer2/analytics/q1;->currentSessionId:Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    check-cast v2, Lcom/google/android/exoplayer2/analytics/q1$a;

    .line 31
    .line 32
    iget-object v3, v0, Lcom/google/android/exoplayer2/analytics/c$a;->mediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 33
    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    .line 39
    invoke-static {v2}, Lcom/google/android/exoplayer2/analytics/q1$a;->b(Lcom/google/android/exoplayer2/analytics/q1$a;)J

    .line 40
    move-result-wide v3

    .line 41
    .line 42
    const-wide/16 v5, -0x1

    .line 43
    .line 44
    cmp-long v3, v3, v5

    .line 45
    .line 46
    if-nez v3, :cond_1

    .line 47
    .line 48
    .line 49
    invoke-static {v2}, Lcom/google/android/exoplayer2/analytics/q1$a;->c(Lcom/google/android/exoplayer2/analytics/q1$a;)I

    .line 50
    move-result v2

    .line 51
    .line 52
    iget v3, v0, Lcom/google/android/exoplayer2/analytics/c$a;->windowIndex:I

    .line 53
    .line 54
    if-eq v2, v3, :cond_2

    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    .line 58
    goto/16 :goto_3

    .line 59
    .line 60
    :cond_1
    iget-object v3, v0, Lcom/google/android/exoplayer2/analytics/c$a;->mediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 61
    .line 62
    iget-wide v3, v3, Lcom/google/android/exoplayer2/source/z;->windowSequenceNumber:J

    .line 63
    .line 64
    .line 65
    invoke-static {v2}, Lcom/google/android/exoplayer2/analytics/q1$a;->b(Lcom/google/android/exoplayer2/analytics/q1$a;)J

    .line 66
    move-result-wide v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    .line 68
    cmp-long v2, v3, v5

    .line 69
    .line 70
    if-gez v2, :cond_2

    .line 71
    :goto_0
    monitor-exit p0

    .line 72
    return-void

    .line 73
    .line 74
    :cond_2
    :try_start_2
    iget v2, v0, Lcom/google/android/exoplayer2/analytics/c$a;->windowIndex:I

    .line 75
    .line 76
    iget-object v3, v0, Lcom/google/android/exoplayer2/analytics/c$a;->mediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 77
    .line 78
    .line 79
    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/analytics/q1;->l(ILcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/analytics/q1$a;

    .line 80
    move-result-object v2

    .line 81
    .line 82
    iget-object v3, v1, Lcom/google/android/exoplayer2/analytics/q1;->currentSessionId:Ljava/lang/String;

    .line 83
    .line 84
    if-nez v3, :cond_3

    .line 85
    .line 86
    .line 87
    invoke-static {v2}, Lcom/google/android/exoplayer2/analytics/q1$a;->a(Lcom/google/android/exoplayer2/analytics/q1$a;)Ljava/lang/String;

    .line 88
    move-result-object v3

    .line 89
    .line 90
    iput-object v3, v1, Lcom/google/android/exoplayer2/analytics/q1;->currentSessionId:Ljava/lang/String;

    .line 91
    .line 92
    :cond_3
    iget-object v3, v0, Lcom/google/android/exoplayer2/analytics/c$a;->mediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 93
    const/4 v4, 0x1

    .line 94
    .line 95
    if-eqz v3, :cond_4

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/z;->b()Z

    .line 99
    move-result v3

    .line 100
    .line 101
    if-eqz v3, :cond_4

    .line 102
    .line 103
    new-instance v10, Lcom/google/android/exoplayer2/source/b0$b;

    .line 104
    .line 105
    iget-object v3, v0, Lcom/google/android/exoplayer2/analytics/c$a;->mediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 106
    .line 107
    iget-object v5, v3, Lcom/google/android/exoplayer2/source/z;->periodUid:Ljava/lang/Object;

    .line 108
    .line 109
    iget-wide v6, v3, Lcom/google/android/exoplayer2/source/z;->windowSequenceNumber:J

    .line 110
    .line 111
    iget v3, v3, Lcom/google/android/exoplayer2/source/z;->adGroupIndex:I

    .line 112
    .line 113
    .line 114
    invoke-direct {v10, v5, v6, v7, v3}, Lcom/google/android/exoplayer2/source/b0$b;-><init>(Ljava/lang/Object;JI)V

    .line 115
    .line 116
    iget v3, v0, Lcom/google/android/exoplayer2/analytics/c$a;->windowIndex:I

    .line 117
    .line 118
    .line 119
    invoke-direct {v1, v3, v10}, Lcom/google/android/exoplayer2/analytics/q1;->l(ILcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/analytics/q1$a;

    .line 120
    move-result-object v3

    .line 121
    .line 122
    .line 123
    invoke-static {v3}, Lcom/google/android/exoplayer2/analytics/q1$a;->d(Lcom/google/android/exoplayer2/analytics/q1$a;)Z

    .line 124
    move-result v5

    .line 125
    .line 126
    if-nez v5, :cond_4

    .line 127
    .line 128
    .line 129
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/analytics/q1$a;->e(Lcom/google/android/exoplayer2/analytics/q1$a;Z)Z

    .line 130
    .line 131
    iget-object v5, v0, Lcom/google/android/exoplayer2/analytics/c$a;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 132
    .line 133
    iget-object v6, v0, Lcom/google/android/exoplayer2/analytics/c$a;->mediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 134
    .line 135
    iget-object v6, v6, Lcom/google/android/exoplayer2/source/z;->periodUid:Ljava/lang/Object;

    .line 136
    .line 137
    iget-object v7, v1, Lcom/google/android/exoplayer2/analytics/q1;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v5, v6, v7}, Lcom/google/android/exoplayer2/z3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/z3$b;)Lcom/google/android/exoplayer2/z3$b;

    .line 141
    .line 142
    iget-object v5, v1, Lcom/google/android/exoplayer2/analytics/q1;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 143
    .line 144
    iget-object v6, v0, Lcom/google/android/exoplayer2/analytics/c$a;->mediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 145
    .line 146
    iget v6, v6, Lcom/google/android/exoplayer2/source/z;->adGroupIndex:I

    .line 147
    .line 148
    .line 149
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/z3$b;->i(I)J

    .line 150
    move-result-wide v5

    .line 151
    .line 152
    .line 153
    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/util/o0;->P0(J)J

    .line 154
    move-result-wide v5

    .line 155
    .line 156
    iget-object v7, v1, Lcom/google/android/exoplayer2/analytics/q1;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/z3$b;->p()J

    .line 160
    move-result-wide v7

    .line 161
    add-long/2addr v5, v7

    .line 162
    .line 163
    const-wide/16 v7, 0x0

    .line 164
    .line 165
    .line 166
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 167
    move-result-wide v11

    .line 168
    .line 169
    new-instance v15, Lcom/google/android/exoplayer2/analytics/c$a;

    .line 170
    .line 171
    iget-wide v6, v0, Lcom/google/android/exoplayer2/analytics/c$a;->realtimeMs:J

    .line 172
    .line 173
    iget-object v8, v0, Lcom/google/android/exoplayer2/analytics/c$a;->timeline:Lcom/google/android/exoplayer2/z3;

    .line 174
    .line 175
    iget v9, v0, Lcom/google/android/exoplayer2/analytics/c$a;->windowIndex:I

    .line 176
    .line 177
    iget-object v13, v0, Lcom/google/android/exoplayer2/analytics/c$a;->currentTimeline:Lcom/google/android/exoplayer2/z3;

    .line 178
    .line 179
    iget v14, v0, Lcom/google/android/exoplayer2/analytics/c$a;->currentWindowIndex:I

    .line 180
    .line 181
    iget-object v5, v0, Lcom/google/android/exoplayer2/analytics/c$a;->currentMediaPeriodId:Lcom/google/android/exoplayer2/source/b0$b;

    .line 182
    .line 183
    move-object/from16 v16, v5

    .line 184
    .line 185
    iget-wide v4, v0, Lcom/google/android/exoplayer2/analytics/c$a;->currentPlaybackPositionMs:J

    .line 186
    .line 187
    move-object/from16 v20, v2

    .line 188
    .line 189
    move-object/from16 v21, v3

    .line 190
    .line 191
    iget-wide v2, v0, Lcom/google/android/exoplayer2/analytics/c$a;->totalBufferedDurationMs:J

    .line 192
    .line 193
    move-wide/from16 v22, v4

    .line 194
    .line 195
    move-object/from16 v4, v16

    .line 196
    .line 197
    move-wide/from16 v16, v22

    .line 198
    move-object v5, v15

    .line 199
    move-object v0, v15

    .line 200
    move-object v15, v4

    .line 201
    .line 202
    move-wide/from16 v18, v2

    .line 203
    .line 204
    .line 205
    invoke-direct/range {v5 .. v19}, Lcom/google/android/exoplayer2/analytics/c$a;-><init>(JLcom/google/android/exoplayer2/z3;ILcom/google/android/exoplayer2/source/b0$b;JLcom/google/android/exoplayer2/z3;ILcom/google/android/exoplayer2/source/b0$b;JJ)V

    .line 206
    .line 207
    iget-object v2, v1, Lcom/google/android/exoplayer2/analytics/q1;->listener:Lcom/google/android/exoplayer2/analytics/s1$a;

    .line 208
    .line 209
    .line 210
    invoke-static/range {v21 .. v21}, Lcom/google/android/exoplayer2/analytics/q1$a;->a(Lcom/google/android/exoplayer2/analytics/q1$a;)Ljava/lang/String;

    .line 211
    move-result-object v3

    .line 212
    .line 213
    .line 214
    invoke-interface {v2, v0, v3}, Lcom/google/android/exoplayer2/analytics/s1$a;->u0(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/String;)V

    .line 215
    goto :goto_1

    .line 216
    .line 217
    :cond_4
    move-object/from16 v20, v2

    .line 218
    .line 219
    .line 220
    :goto_1
    invoke-static/range {v20 .. v20}, Lcom/google/android/exoplayer2/analytics/q1$a;->d(Lcom/google/android/exoplayer2/analytics/q1$a;)Z

    .line 221
    move-result v0

    .line 222
    .line 223
    if-nez v0, :cond_5

    .line 224
    .line 225
    move-object/from16 v0, v20

    .line 226
    const/4 v2, 0x1

    .line 227
    .line 228
    .line 229
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/analytics/q1$a;->e(Lcom/google/android/exoplayer2/analytics/q1$a;Z)Z

    .line 230
    .line 231
    iget-object v2, v1, Lcom/google/android/exoplayer2/analytics/q1;->listener:Lcom/google/android/exoplayer2/analytics/s1$a;

    .line 232
    .line 233
    .line 234
    invoke-static {v0}, Lcom/google/android/exoplayer2/analytics/q1$a;->a(Lcom/google/android/exoplayer2/analytics/q1$a;)Ljava/lang/String;

    .line 235
    move-result-object v3

    .line 236
    .line 237
    move-object/from16 v4, p1

    .line 238
    .line 239
    .line 240
    invoke-interface {v2, v4, v3}, Lcom/google/android/exoplayer2/analytics/s1$a;->u0(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/String;)V

    .line 241
    goto :goto_2

    .line 242
    .line 243
    :cond_5
    move-object/from16 v4, p1

    .line 244
    .line 245
    move-object/from16 v0, v20

    .line 246
    .line 247
    .line 248
    :goto_2
    invoke-static {v0}, Lcom/google/android/exoplayer2/analytics/q1$a;->a(Lcom/google/android/exoplayer2/analytics/q1$a;)Ljava/lang/String;

    .line 249
    move-result-object v2

    .line 250
    .line 251
    iget-object v3, v1, Lcom/google/android/exoplayer2/analytics/q1;->currentSessionId:Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 255
    move-result v2

    .line 256
    .line 257
    if-eqz v2, :cond_6

    .line 258
    .line 259
    .line 260
    invoke-static {v0}, Lcom/google/android/exoplayer2/analytics/q1$a;->f(Lcom/google/android/exoplayer2/analytics/q1$a;)Z

    .line 261
    move-result v2

    .line 262
    .line 263
    if-nez v2, :cond_6

    .line 264
    const/4 v2, 0x1

    .line 265
    .line 266
    .line 267
    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/analytics/q1$a;->g(Lcom/google/android/exoplayer2/analytics/q1$a;Z)Z

    .line 268
    .line 269
    iget-object v2, v1, Lcom/google/android/exoplayer2/analytics/q1;->listener:Lcom/google/android/exoplayer2/analytics/s1$a;

    .line 270
    .line 271
    .line 272
    invoke-static {v0}, Lcom/google/android/exoplayer2/analytics/q1$a;->a(Lcom/google/android/exoplayer2/analytics/q1$a;)Ljava/lang/String;

    .line 273
    move-result-object v0

    .line 274
    .line 275
    .line 276
    invoke-interface {v2, v4, v0}, Lcom/google/android/exoplayer2/analytics/s1$a;->o0(Lcom/google/android/exoplayer2/analytics/c$a;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 277
    :cond_6
    monitor-exit p0

    .line 278
    return-void

    .line 279
    :goto_3
    monitor-exit p0

    .line 280
    throw v0
.end method

.method public declared-synchronized g(Lcom/google/android/exoplayer2/z3;Lcom/google/android/exoplayer2/source/b0$b;)Ljava/lang/String;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p2, Lcom/google/android/exoplayer2/source/z;->periodUid:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/q1;->period:Lcom/google/android/exoplayer2/z3$b;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/z3;->l(Ljava/lang/Object;Lcom/google/android/exoplayer2/z3$b;)Lcom/google/android/exoplayer2/z3$b;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    iget p1, p1, Lcom/google/android/exoplayer2/z3$b;->windowIndex:I

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/q1;->l(ILcom/google/android/exoplayer2/source/b0$b;)Lcom/google/android/exoplayer2/analytics/q1$a;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lcom/google/android/exoplayer2/analytics/q1$a;->a(Lcom/google/android/exoplayer2/analytics/q1$a;)Ljava/lang/String;

    .line 19
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit p0

    .line 21
    return-object p1

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    monitor-exit p0

    .line 24
    throw p1
.end method
