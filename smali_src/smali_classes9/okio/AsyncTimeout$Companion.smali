.class public final Lokio/AsyncTimeout$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/AsyncTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAsyncTimeout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsyncTimeout.kt\nokio/AsyncTimeout$Companion\n+ 2 -JvmPlatform.kt\nokio/_JvmPlatformKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,329:1\n27#2:330\n27#2:332\n1#3:331\n*S KotlinDebug\n*F\n+ 1 AsyncTimeout.kt\nokio/AsyncTimeout$Companion\n*L\n224#1:330\n267#1:332\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lokio/AsyncTimeout$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$cancelScheduledTimeout(Lokio/AsyncTimeout$Companion;Lokio/AsyncTimeout;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lokio/AsyncTimeout$Companion;->cancelScheduledTimeout(Lokio/AsyncTimeout;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$scheduleTimeout(Lokio/AsyncTimeout$Companion;Lokio/AsyncTimeout;JZ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lokio/AsyncTimeout$Companion;->scheduleTimeout(Lokio/AsyncTimeout;JZ)V

    .line 4
    return-void
.end method

.method private final cancelScheduledTimeout(Lokio/AsyncTimeout;)Z
    .locals 4

    .line 1
    .line 2
    const-class v0, Lokio/AsyncTimeout;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {p1}, Lokio/AsyncTimeout;->access$getInQueue$p(Lokio/AsyncTimeout;)Z

    .line 7
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    const/4 v2, 0x0

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    monitor-exit v0

    .line 12
    return v2

    .line 13
    .line 14
    .line 15
    :cond_0
    :try_start_1
    invoke-static {p1, v2}, Lokio/AsyncTimeout;->access$setInQueue$p(Lokio/AsyncTimeout;Z)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    :goto_0
    if-eqz v1, :cond_2

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    .line 25
    move-result-object v3

    .line 26
    .line 27
    if-ne v3, p1, :cond_1

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    .line 31
    move-result-object v3

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v3}, Lokio/AsyncTimeout;->access$setNext$p(Lokio/AsyncTimeout;Lokio/AsyncTimeout;)V

    .line 35
    const/4 v1, 0x0

    .line 36
    .line 37
    .line 38
    invoke-static {p1, v1}, Lokio/AsyncTimeout;->access$setNext$p(Lokio/AsyncTimeout;Lokio/AsyncTimeout;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    monitor-exit v0

    .line 40
    return v2

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto :goto_1

    .line 43
    .line 44
    .line 45
    :cond_1
    :try_start_2
    invoke-static {v1}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    .line 46
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    monitor-exit v0

    .line 49
    const/4 p1, 0x1

    .line 50
    return p1

    .line 51
    :goto_1
    monitor-exit v0

    .line 52
    throw p1
.end method

.method private final scheduleTimeout(Lokio/AsyncTimeout;JZ)V
    .locals 5

    .line 1
    .line 2
    const-class v0, Lokio/AsyncTimeout;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {p1}, Lokio/AsyncTimeout;->access$getInQueue$p(Lokio/AsyncTimeout;)Z

    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x1

    .line 9
    xor-int/2addr v1, v2

    .line 10
    .line 11
    if-eqz v1, :cond_7

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v2}, Lokio/AsyncTimeout;->access$setInQueue$p(Lokio/AsyncTimeout;Z)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    new-instance v1, Lokio/AsyncTimeout;

    .line 23
    .line 24
    .line 25
    invoke-direct {v1}, Lokio/AsyncTimeout;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Lokio/AsyncTimeout;->access$setHead$cp(Lokio/AsyncTimeout;)V

    .line 29
    .line 30
    new-instance v1, Lokio/AsyncTimeout$Watchdog;

    .line 31
    .line 32
    .line 33
    invoke-direct {v1}, Lokio/AsyncTimeout$Watchdog;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    .line 40
    goto/16 :goto_4

    .line 41
    .line 42
    .line 43
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 44
    move-result-wide v1

    .line 45
    .line 46
    const-wide/16 v3, 0x0

    .line 47
    .line 48
    cmp-long v3, p2, v3

    .line 49
    .line 50
    if-eqz v3, :cond_1

    .line 51
    .line 52
    if-eqz p4, :cond_1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lokio/Timeout;->deadlineNanoTime()J

    .line 56
    move-result-wide v3

    .line 57
    sub-long/2addr v3, v1

    .line 58
    .line 59
    .line 60
    invoke-static {p2, p3, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 61
    move-result-wide p2

    .line 62
    add-long/2addr p2, v1

    .line 63
    .line 64
    .line 65
    invoke-static {p1, p2, p3}, Lokio/AsyncTimeout;->access$setTimeoutAt$p(Lokio/AsyncTimeout;J)V

    .line 66
    goto :goto_1

    .line 67
    .line 68
    :cond_1
    if-eqz v3, :cond_2

    .line 69
    add-long/2addr p2, v1

    .line 70
    .line 71
    .line 72
    invoke-static {p1, p2, p3}, Lokio/AsyncTimeout;->access$setTimeoutAt$p(Lokio/AsyncTimeout;J)V

    .line 73
    goto :goto_1

    .line 74
    .line 75
    :cond_2
    if-eqz p4, :cond_6

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Lokio/Timeout;->deadlineNanoTime()J

    .line 79
    move-result-wide p2

    .line 80
    .line 81
    .line 82
    invoke-static {p1, p2, p3}, Lokio/AsyncTimeout;->access$setTimeoutAt$p(Lokio/AsyncTimeout;J)V

    .line 83
    .line 84
    .line 85
    :goto_1
    invoke-static {p1, v1, v2}, Lokio/AsyncTimeout;->access$remainingNanos(Lokio/AsyncTimeout;J)J

    .line 86
    move-result-wide p2

    .line 87
    .line 88
    .line 89
    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    .line 90
    move-result-object p4

    .line 91
    .line 92
    .line 93
    invoke-static {p4}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    :goto_2
    invoke-static {p4}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    .line 97
    move-result-object v3

    .line 98
    .line 99
    if-eqz v3, :cond_4

    .line 100
    .line 101
    .line 102
    invoke-static {p4}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    .line 103
    move-result-object v3

    .line 104
    .line 105
    .line 106
    invoke-static {v3}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    invoke-static {v3, v1, v2}, Lokio/AsyncTimeout;->access$remainingNanos(Lokio/AsyncTimeout;J)J

    .line 110
    move-result-wide v3

    .line 111
    .line 112
    cmp-long v3, p2, v3

    .line 113
    .line 114
    if-gez v3, :cond_3

    .line 115
    goto :goto_3

    .line 116
    .line 117
    .line 118
    :cond_3
    invoke-static {p4}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    .line 119
    move-result-object p4

    .line 120
    .line 121
    .line 122
    invoke-static {p4}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 123
    goto :goto_2

    .line 124
    .line 125
    .line 126
    :cond_4
    :goto_3
    invoke-static {p4}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    .line 127
    move-result-object p2

    .line 128
    .line 129
    .line 130
    invoke-static {p1, p2}, Lokio/AsyncTimeout;->access$setNext$p(Lokio/AsyncTimeout;Lokio/AsyncTimeout;)V

    .line 131
    .line 132
    .line 133
    invoke-static {p4, p1}, Lokio/AsyncTimeout;->access$setNext$p(Lokio/AsyncTimeout;Lokio/AsyncTimeout;)V

    .line 134
    .line 135
    .line 136
    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    .line 137
    move-result-object p1

    .line 138
    .line 139
    if-ne p4, p1, :cond_5

    .line 140
    .line 141
    const-class p1, Lokio/AsyncTimeout;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 145
    .line 146
    :cond_5
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    monitor-exit v0

    .line 148
    return-void

    .line 149
    .line 150
    :cond_6
    :try_start_1
    new-instance p1, Ljava/lang/AssertionError;

    .line 151
    .line 152
    .line 153
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 154
    throw p1

    .line 155
    .line 156
    :cond_7
    const-string p1, "Unbalanced enter/exit"

    .line 157
    .line 158
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 162
    move-result-object p1

    .line 163
    .line 164
    .line 165
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 166
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    :goto_4
    monitor-exit v0

    .line 168
    throw p1
.end method


# virtual methods
.method public final awaitTimeout$okio()Lokio/AsyncTimeout;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    const-class v1, Lokio/AsyncTimeout;

    .line 14
    const/4 v2, 0x0

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 20
    move-result-wide v3

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lokio/AsyncTimeout;->access$getIDLE_TIMEOUT_MILLIS$cp()J

    .line 24
    move-result-wide v5

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    .line 31
    move-result-object v0

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    if-nez v0, :cond_0

    .line 41
    .line 42
    .line 43
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 44
    move-result-wide v0

    .line 45
    sub-long/2addr v0, v3

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lokio/AsyncTimeout;->access$getIDLE_TIMEOUT_NANOS$cp()J

    .line 49
    move-result-wide v3

    .line 50
    .line 51
    cmp-long v0, v0, v3

    .line 52
    .line 53
    if-ltz v0, :cond_0

    .line 54
    .line 55
    .line 56
    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    .line 57
    move-result-object v2

    .line 58
    :cond_0
    return-object v2

    .line 59
    .line 60
    .line 61
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 62
    move-result-wide v3

    .line 63
    .line 64
    .line 65
    invoke-static {v0, v3, v4}, Lokio/AsyncTimeout;->access$remainingNanos(Lokio/AsyncTimeout;J)J

    .line 66
    move-result-wide v3

    .line 67
    .line 68
    const-wide/16 v5, 0x0

    .line 69
    .line 70
    cmp-long v5, v3, v5

    .line 71
    .line 72
    if-lez v5, :cond_2

    .line 73
    .line 74
    .line 75
    const-wide/32 v5, 0xf4240

    .line 76
    .line 77
    div-long v7, v3, v5

    .line 78
    mul-long/2addr v5, v7

    .line 79
    sub-long/2addr v3, v5

    .line 80
    long-to-int v0, v3

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v7, v8, v0}, Ljava/lang/Object;->wait(JI)V

    .line 84
    return-object v2

    .line 85
    .line 86
    .line 87
    :cond_2
    invoke-static {}, Lokio/AsyncTimeout;->access$getHead$cp()Lokio/AsyncTimeout;

    .line 88
    move-result-object v1

    .line 89
    .line 90
    .line 91
    invoke-static {v1}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v0}, Lokio/AsyncTimeout;->access$getNext$p(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    .line 95
    move-result-object v3

    .line 96
    .line 97
    .line 98
    invoke-static {v1, v3}, Lokio/AsyncTimeout;->access$setNext$p(Lokio/AsyncTimeout;Lokio/AsyncTimeout;)V

    .line 99
    .line 100
    .line 101
    invoke-static {v0, v2}, Lokio/AsyncTimeout;->access$setNext$p(Lokio/AsyncTimeout;Lokio/AsyncTimeout;)V

    .line 102
    return-object v0
.end method
