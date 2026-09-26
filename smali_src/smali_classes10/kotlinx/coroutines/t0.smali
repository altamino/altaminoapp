.class public final Lkotlinx/coroutines/t0;
.super Lkotlinx/coroutines/l1;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultExecutor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultExecutor.kt\nkotlinx/coroutines/DefaultExecutor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,187:1\n1#2:188\n*E\n"
.end annotation


# static fields
.field private static final ACTIVE:I = 0x1

.field private static final DEFAULT_KEEP_ALIVE_MS:J = 0x3e8L

.field private static final FRESH:I = 0x0

.field public static final INSTANCE:Lkotlinx/coroutines/t0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final KEEP_ALIVE_NANOS:J

.field private static final SHUTDOWN:I = 0x4

.field private static final SHUTDOWN_ACK:I = 0x3

.field private static final SHUTDOWN_REQ:I = 0x2

.field public static final THREAD_NAME:Ljava/lang/String; = "kotlinx.coroutines.DefaultExecutor"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static volatile _thread:Ljava/lang/Thread;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static volatile debugStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Lkotlinx/coroutines/t0;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lkotlinx/coroutines/t0;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lkotlinx/coroutines/t0;->INSTANCE:Lkotlinx/coroutines/t0;

    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v3, v1, v2}, Lkotlinx/coroutines/k1;->J0(Lkotlinx/coroutines/k1;ZILjava/lang/Object;)V

    .line 14
    .line 15
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 16
    .line 17
    const-wide/16 v1, 0x3e8

    .line 18
    .line 19
    :try_start_0
    const-string v3, "kotlinx.coroutines.DefaultExecutor.keepAlive"

    .line 20
    .line 21
    .line 22
    invoke-static {v3, v1, v2}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    .line 23
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :catch_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 32
    move-result-wide v1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 36
    move-result-wide v0

    .line 37
    .line 38
    sput-wide v0, Lkotlinx/coroutines/t0;->KEEP_ALIVE_NANOS:J

    .line 39
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lkotlinx/coroutines/l1;-><init>()V

    .line 4
    return-void
.end method

.method private final declared-synchronized f1()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-direct {p0}, Lkotlinx/coroutines/t0;->i1()Z

    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v0, 0x3

    .line 11
    .line 12
    :try_start_1
    sput v0, Lkotlinx/coroutines/t0;->debugStatus:I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lkotlinx/coroutines/l1;->Z0()V

    .line 16
    .line 17
    const-string v0, "null cannot be cast to non-null type java.lang.Object"

    .line 18
    .line 19
    .line 20
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    monitor-exit p0

    .line 28
    throw v0
.end method

.method private final declared-synchronized g1()Ljava/lang/Thread;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    :try_start_0
    sget-object v0, Lkotlinx/coroutines/t0;->_thread:Ljava/lang/Thread;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/Thread;

    .line 8
    .line 9
    const-string v1, "kotlinx.coroutines.DefaultExecutor"

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 13
    .line 14
    sput-object v0, Lkotlinx/coroutines/t0;->_thread:Ljava/lang/Thread;

    .line 15
    const/4 v1, 0x1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    monitor-exit p0

    .line 26
    return-object v0

    .line 27
    :goto_1
    monitor-exit p0

    .line 28
    throw v0
.end method

.method private final h1()Z
    .locals 2

    .line 1
    sget v0, Lkotlinx/coroutines/t0;->debugStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final i1()Z
    .locals 2

    .line 1
    sget v0, Lkotlinx/coroutines/t0;->debugStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private final declared-synchronized j1()Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-direct {p0}, Lkotlinx/coroutines/t0;->i1()Z

    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    monitor-exit p0

    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x1

    .line 12
    .line 13
    :try_start_1
    sput v0, Lkotlinx/coroutines/t0;->debugStatus:I

    .line 14
    .line 15
    const-string v1, "null cannot be cast to non-null type java.lang.Object"

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v1}, Lkotlin/jvm/internal/t;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    monitor-exit p0

    .line 23
    return v0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    monitor-exit p0

    .line 26
    throw v0
.end method

.method private final k1()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    .line 3
    .line 4
    const-string v1, "DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    .line 8
    throw v0
.end method


# virtual methods
.method protected P0()Ljava/lang/Thread;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/t0;->_thread:Ljava/lang/Thread;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lkotlinx/coroutines/t0;->g1()Ljava/lang/Thread;

    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method protected Q0(JLkotlinx/coroutines/l1$c;)V
    .locals 0
    .param p3    # Lkotlinx/coroutines/l1$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lkotlinx/coroutines/t0;->k1()V

    .line 4
    return-void
.end method

.method public V0(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lkotlinx/coroutines/t0;->h1()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lkotlinx/coroutines/t0;->k1()V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-super {p0, p1}, Lkotlinx/coroutines/l1;->V0(Ljava/lang/Runnable;)V

    .line 13
    return-void
.end method

.method public invokeOnTimeout(JLjava/lang/Runnable;Lkotlin/coroutines/g;)Lkotlinx/coroutines/g1;
    .locals 0
    .param p3    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/l1;->c1(JLjava/lang/Runnable;)Lkotlinx/coroutines/g1;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public run()V
    .locals 12

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/b3;->INSTANCE:Lkotlinx/coroutines/b3;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/b3;->d(Lkotlinx/coroutines/k1;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lkotlinx/coroutines/c;->a()Lkotlinx/coroutines/b;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lkotlinx/coroutines/b;->c()V

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    .line 17
    .line 18
    :try_start_0
    invoke-direct {p0}, Lkotlinx/coroutines/t0;->j1()Z

    .line 19
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    if-nez v1, :cond_3

    .line 22
    .line 23
    sput-object v0, Lkotlinx/coroutines/t0;->_thread:Ljava/lang/Thread;

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lkotlinx/coroutines/t0;->f1()V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlinx/coroutines/c;->a()Lkotlinx/coroutines/b;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lkotlinx/coroutines/b;->g()V

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/l1;->X0()Z

    .line 39
    move-result v0

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lkotlinx/coroutines/t0;->P0()Ljava/lang/Thread;

    .line 45
    :cond_2
    return-void

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    :cond_3
    const-wide v1, 0x7fffffffffffffffL

    .line 51
    move-wide v3, v1

    .line 52
    .line 53
    .line 54
    :cond_4
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lkotlinx/coroutines/l1;->M0()J

    .line 58
    move-result-wide v5

    .line 59
    .line 60
    cmp-long v7, v5, v1

    .line 61
    .line 62
    const-wide/16 v8, 0x0

    .line 63
    .line 64
    if-nez v7, :cond_a

    .line 65
    .line 66
    .line 67
    invoke-static {}, Lkotlinx/coroutines/c;->a()Lkotlinx/coroutines/b;

    .line 68
    move-result-object v7

    .line 69
    .line 70
    if-eqz v7, :cond_5

    .line 71
    .line 72
    .line 73
    invoke-virtual {v7}, Lkotlinx/coroutines/b;->a()J

    .line 74
    move-result-wide v10

    .line 75
    goto :goto_1

    .line 76
    :catchall_0
    move-exception v1

    .line 77
    goto :goto_4

    .line 78
    .line 79
    .line 80
    :cond_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 81
    move-result-wide v10

    .line 82
    .line 83
    :goto_1
    cmp-long v7, v3, v1

    .line 84
    .line 85
    if-nez v7, :cond_6

    .line 86
    .line 87
    sget-wide v3, Lkotlinx/coroutines/t0;->KEEP_ALIVE_NANOS:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    add-long/2addr v3, v10

    .line 89
    .line 90
    :cond_6
    sub-long v10, v3, v10

    .line 91
    .line 92
    cmp-long v7, v10, v8

    .line 93
    .line 94
    if-gtz v7, :cond_9

    .line 95
    .line 96
    sput-object v0, Lkotlinx/coroutines/t0;->_thread:Ljava/lang/Thread;

    .line 97
    .line 98
    .line 99
    invoke-direct {p0}, Lkotlinx/coroutines/t0;->f1()V

    .line 100
    .line 101
    .line 102
    invoke-static {}, Lkotlinx/coroutines/c;->a()Lkotlinx/coroutines/b;

    .line 103
    move-result-object v0

    .line 104
    .line 105
    if-eqz v0, :cond_7

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Lkotlinx/coroutines/b;->g()V

    .line 109
    .line 110
    .line 111
    :cond_7
    invoke-virtual {p0}, Lkotlinx/coroutines/l1;->X0()Z

    .line 112
    move-result v0

    .line 113
    .line 114
    if-nez v0, :cond_8

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Lkotlinx/coroutines/t0;->P0()Ljava/lang/Thread;

    .line 118
    :cond_8
    return-void

    .line 119
    .line 120
    .line 121
    :cond_9
    :try_start_2
    invoke-static {v5, v6, v10, v11}, Lj8/m;->k(JJ)J

    .line 122
    move-result-wide v5

    .line 123
    goto :goto_2

    .line 124
    :cond_a
    move-wide v3, v1

    .line 125
    .line 126
    :goto_2
    cmp-long v7, v5, v8

    .line 127
    .line 128
    if-lez v7, :cond_4

    .line 129
    .line 130
    .line 131
    invoke-direct {p0}, Lkotlinx/coroutines/t0;->i1()Z

    .line 132
    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    .line 134
    if-eqz v7, :cond_d

    .line 135
    .line 136
    sput-object v0, Lkotlinx/coroutines/t0;->_thread:Ljava/lang/Thread;

    .line 137
    .line 138
    .line 139
    invoke-direct {p0}, Lkotlinx/coroutines/t0;->f1()V

    .line 140
    .line 141
    .line 142
    invoke-static {}, Lkotlinx/coroutines/c;->a()Lkotlinx/coroutines/b;

    .line 143
    move-result-object v0

    .line 144
    .line 145
    if-eqz v0, :cond_b

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Lkotlinx/coroutines/b;->g()V

    .line 149
    .line 150
    .line 151
    :cond_b
    invoke-virtual {p0}, Lkotlinx/coroutines/l1;->X0()Z

    .line 152
    move-result v0

    .line 153
    .line 154
    if-nez v0, :cond_c

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Lkotlinx/coroutines/t0;->P0()Ljava/lang/Thread;

    .line 158
    :cond_c
    return-void

    .line 159
    .line 160
    .line 161
    :cond_d
    :try_start_3
    invoke-static {}, Lkotlinx/coroutines/c;->a()Lkotlinx/coroutines/b;

    .line 162
    move-result-object v7

    .line 163
    .line 164
    if-eqz v7, :cond_e

    .line 165
    .line 166
    .line 167
    invoke-virtual {v7, p0, v5, v6}, Lkotlinx/coroutines/b;->b(Ljava/lang/Object;J)V

    .line 168
    .line 169
    sget-object v7, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 170
    goto :goto_3

    .line 171
    :cond_e
    move-object v7, v0

    .line 172
    .line 173
    :goto_3
    if-nez v7, :cond_4

    .line 174
    .line 175
    .line 176
    invoke-static {p0, v5, v6}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 177
    goto :goto_0

    .line 178
    .line 179
    :goto_4
    sput-object v0, Lkotlinx/coroutines/t0;->_thread:Ljava/lang/Thread;

    .line 180
    .line 181
    .line 182
    invoke-direct {p0}, Lkotlinx/coroutines/t0;->f1()V

    .line 183
    .line 184
    .line 185
    invoke-static {}, Lkotlinx/coroutines/c;->a()Lkotlinx/coroutines/b;

    .line 186
    move-result-object v0

    .line 187
    .line 188
    if-eqz v0, :cond_f

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0}, Lkotlinx/coroutines/b;->g()V

    .line 192
    .line 193
    .line 194
    :cond_f
    invoke-virtual {p0}, Lkotlinx/coroutines/l1;->X0()Z

    .line 195
    move-result v0

    .line 196
    .line 197
    if-nez v0, :cond_10

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0}, Lkotlinx/coroutines/t0;->P0()Ljava/lang/Thread;

    .line 201
    :cond_10
    throw v1
.end method

.method public shutdown()V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    .line 3
    sput v0, Lkotlinx/coroutines/t0;->debugStatus:I

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lkotlinx/coroutines/l1;->shutdown()V

    .line 7
    return-void
.end method
