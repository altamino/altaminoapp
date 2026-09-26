.class public final Lkotlinx/coroutines/channels/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BUFFERED:Lkotlinx/coroutines/internal/i0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BUFFER_END_RENDEZVOUS:J = 0x0L

.field private static final BUFFER_END_UNLIMITED:J = 0x7fffffffffffffffL

.field private static final CHANNEL_CLOSED:Lkotlinx/coroutines/internal/i0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final CLOSE_HANDLER_CLOSED:Lkotlinx/coroutines/internal/i0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final CLOSE_HANDLER_INVOKED:Lkotlinx/coroutines/internal/i0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final CLOSE_STATUS_ACTIVE:I = 0x0

.field private static final CLOSE_STATUS_CANCELLATION_STARTED:I = 0x1

.field private static final CLOSE_STATUS_CANCELLED:I = 0x3

.field private static final CLOSE_STATUS_CLOSED:I = 0x2

.field private static final DONE_RCV:Lkotlinx/coroutines/internal/i0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final EB_COMPLETED_COUNTER_MASK:J = 0x3fffffffffffffffL

.field private static final EB_COMPLETED_PAUSE_EXPAND_BUFFERS_BIT:J = 0x4000000000000000L

.field private static final EXPAND_BUFFER_COMPLETION_WAIT_ITERATIONS:I

.field private static final FAILED:Lkotlinx/coroutines/internal/i0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final INTERRUPTED_RCV:Lkotlinx/coroutines/internal/i0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final INTERRUPTED_SEND:Lkotlinx/coroutines/internal/i0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final IN_BUFFER:Lkotlinx/coroutines/internal/i0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final NO_CLOSE_CAUSE:Lkotlinx/coroutines/internal/i0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final NO_RECEIVE_RESULT:Lkotlinx/coroutines/internal/i0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final NULL_SEGMENT:Lkotlinx/coroutines/channels/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/i<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final POISONED:Lkotlinx/coroutines/internal/i0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final RESULT_BUFFERED:I = 0x1

.field private static final RESULT_CLOSED:I = 0x4

.field private static final RESULT_FAILED:I = 0x5

.field private static final RESULT_RENDEZVOUS:I = 0x0

.field private static final RESULT_SUSPEND:I = 0x2

.field private static final RESULT_SUSPEND_NO_WAITER:I = 0x3

.field private static final RESUMING_BY_EB:Lkotlinx/coroutines/internal/i0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final RESUMING_BY_RCV:Lkotlinx/coroutines/internal/i0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SEGMENT_SIZE:I

.field private static final SENDERS_CLOSE_STATUS_SHIFT:I = 0x3c

.field private static final SENDERS_COUNTER_MASK:J = 0xfffffffffffffffL

.field private static final SUSPEND:Lkotlinx/coroutines/internal/i0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SUSPEND_NO_WAITER:Lkotlinx/coroutines/internal/i0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    .line 2
    new-instance v6, Lkotlinx/coroutines/channels/i;

    .line 3
    .line 4
    const-wide/16 v1, -0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x0

    .line 8
    move-object v0, v6

    .line 9
    .line 10
    .line 11
    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/channels/i;-><init>(JLkotlinx/coroutines/channels/i;Lkotlinx/coroutines/channels/b;I)V

    .line 12
    .line 13
    sput-object v6, Lkotlinx/coroutines/channels/c;->NULL_SEGMENT:Lkotlinx/coroutines/channels/i;

    .line 14
    .line 15
    const-string v7, "kotlinx.coroutines.bufferedChannel.segmentSize"

    .line 16
    .line 17
    const/16 v8, 0x20

    .line 18
    const/4 v9, 0x0

    .line 19
    const/4 v10, 0x0

    .line 20
    .line 21
    const/16 v11, 0xc

    .line 22
    const/4 v12, 0x0

    .line 23
    .line 24
    .line 25
    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/internal/j0;->g(Ljava/lang/String;IIIILjava/lang/Object;)I

    .line 26
    move-result v0

    .line 27
    .line 28
    sput v0, Lkotlinx/coroutines/channels/c;->SEGMENT_SIZE:I

    .line 29
    .line 30
    const-string v1, "kotlinx.coroutines.bufferedChannel.expandBufferCompletionWaitIterations"

    .line 31
    .line 32
    const/16 v2, 0x2710

    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x0

    .line 35
    .line 36
    const/16 v5, 0xc

    .line 37
    const/4 v6, 0x0

    .line 38
    .line 39
    .line 40
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/internal/j0;->g(Ljava/lang/String;IIIILjava/lang/Object;)I

    .line 41
    move-result v0

    .line 42
    .line 43
    sput v0, Lkotlinx/coroutines/channels/c;->EXPAND_BUFFER_COMPLETION_WAIT_ITERATIONS:I

    .line 44
    .line 45
    new-instance v0, Lkotlinx/coroutines/internal/i0;

    .line 46
    .line 47
    const-string v1, "BUFFERED"

    .line 48
    .line 49
    .line 50
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/i0;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    sput-object v0, Lkotlinx/coroutines/channels/c;->BUFFERED:Lkotlinx/coroutines/internal/i0;

    .line 53
    .line 54
    new-instance v0, Lkotlinx/coroutines/internal/i0;

    .line 55
    .line 56
    const-string v1, "SHOULD_BUFFER"

    .line 57
    .line 58
    .line 59
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/i0;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    sput-object v0, Lkotlinx/coroutines/channels/c;->IN_BUFFER:Lkotlinx/coroutines/internal/i0;

    .line 62
    .line 63
    new-instance v0, Lkotlinx/coroutines/internal/i0;

    .line 64
    .line 65
    const-string v1, "S_RESUMING_BY_RCV"

    .line 66
    .line 67
    .line 68
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/i0;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    sput-object v0, Lkotlinx/coroutines/channels/c;->RESUMING_BY_RCV:Lkotlinx/coroutines/internal/i0;

    .line 71
    .line 72
    new-instance v0, Lkotlinx/coroutines/internal/i0;

    .line 73
    .line 74
    const-string v1, "RESUMING_BY_EB"

    .line 75
    .line 76
    .line 77
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/i0;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    sput-object v0, Lkotlinx/coroutines/channels/c;->RESUMING_BY_EB:Lkotlinx/coroutines/internal/i0;

    .line 80
    .line 81
    new-instance v0, Lkotlinx/coroutines/internal/i0;

    .line 82
    .line 83
    const-string v1, "POISONED"

    .line 84
    .line 85
    .line 86
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/i0;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    sput-object v0, Lkotlinx/coroutines/channels/c;->POISONED:Lkotlinx/coroutines/internal/i0;

    .line 89
    .line 90
    new-instance v0, Lkotlinx/coroutines/internal/i0;

    .line 91
    .line 92
    const-string v1, "DONE_RCV"

    .line 93
    .line 94
    .line 95
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/i0;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    sput-object v0, Lkotlinx/coroutines/channels/c;->DONE_RCV:Lkotlinx/coroutines/internal/i0;

    .line 98
    .line 99
    new-instance v0, Lkotlinx/coroutines/internal/i0;

    .line 100
    .line 101
    const-string v1, "INTERRUPTED_SEND"

    .line 102
    .line 103
    .line 104
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/i0;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    sput-object v0, Lkotlinx/coroutines/channels/c;->INTERRUPTED_SEND:Lkotlinx/coroutines/internal/i0;

    .line 107
    .line 108
    new-instance v0, Lkotlinx/coroutines/internal/i0;

    .line 109
    .line 110
    const-string v1, "INTERRUPTED_RCV"

    .line 111
    .line 112
    .line 113
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/i0;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    sput-object v0, Lkotlinx/coroutines/channels/c;->INTERRUPTED_RCV:Lkotlinx/coroutines/internal/i0;

    .line 116
    .line 117
    new-instance v0, Lkotlinx/coroutines/internal/i0;

    .line 118
    .line 119
    const-string v1, "CHANNEL_CLOSED"

    .line 120
    .line 121
    .line 122
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/i0;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    sput-object v0, Lkotlinx/coroutines/channels/c;->CHANNEL_CLOSED:Lkotlinx/coroutines/internal/i0;

    .line 125
    .line 126
    new-instance v0, Lkotlinx/coroutines/internal/i0;

    .line 127
    .line 128
    const-string v1, "SUSPEND"

    .line 129
    .line 130
    .line 131
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/i0;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    sput-object v0, Lkotlinx/coroutines/channels/c;->SUSPEND:Lkotlinx/coroutines/internal/i0;

    .line 134
    .line 135
    new-instance v0, Lkotlinx/coroutines/internal/i0;

    .line 136
    .line 137
    const-string v1, "SUSPEND_NO_WAITER"

    .line 138
    .line 139
    .line 140
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/i0;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    sput-object v0, Lkotlinx/coroutines/channels/c;->SUSPEND_NO_WAITER:Lkotlinx/coroutines/internal/i0;

    .line 143
    .line 144
    new-instance v0, Lkotlinx/coroutines/internal/i0;

    .line 145
    .line 146
    const-string v1, "FAILED"

    .line 147
    .line 148
    .line 149
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/i0;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    sput-object v0, Lkotlinx/coroutines/channels/c;->FAILED:Lkotlinx/coroutines/internal/i0;

    .line 152
    .line 153
    new-instance v0, Lkotlinx/coroutines/internal/i0;

    .line 154
    .line 155
    const-string v1, "NO_RECEIVE_RESULT"

    .line 156
    .line 157
    .line 158
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/i0;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    sput-object v0, Lkotlinx/coroutines/channels/c;->NO_RECEIVE_RESULT:Lkotlinx/coroutines/internal/i0;

    .line 161
    .line 162
    new-instance v0, Lkotlinx/coroutines/internal/i0;

    .line 163
    .line 164
    const-string v1, "CLOSE_HANDLER_CLOSED"

    .line 165
    .line 166
    .line 167
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/i0;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    sput-object v0, Lkotlinx/coroutines/channels/c;->CLOSE_HANDLER_CLOSED:Lkotlinx/coroutines/internal/i0;

    .line 170
    .line 171
    new-instance v0, Lkotlinx/coroutines/internal/i0;

    .line 172
    .line 173
    const-string v1, "CLOSE_HANDLER_INVOKED"

    .line 174
    .line 175
    .line 176
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/i0;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    sput-object v0, Lkotlinx/coroutines/channels/c;->CLOSE_HANDLER_INVOKED:Lkotlinx/coroutines/internal/i0;

    .line 179
    .line 180
    new-instance v0, Lkotlinx/coroutines/internal/i0;

    .line 181
    .line 182
    const-string v1, "NO_CLOSE_CAUSE"

    .line 183
    .line 184
    .line 185
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/i0;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    sput-object v0, Lkotlinx/coroutines/channels/c;->NO_CLOSE_CAUSE:Lkotlinx/coroutines/internal/i0;

    .line 188
    return-void
.end method

.method private static final A(I)J
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_0

    int-to-long v0, p0

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method private static final B(Lkotlinx/coroutines/o;Ljava/lang/Object;Le8/l;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/o<",
            "-TT;>;TT;",
            "Le8/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lw7/l0;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-interface {p0, p1, v0, p2}, Lkotlinx/coroutines/o;->r(Ljava/lang/Object;Ljava/lang/Object;Le8/l;)Ljava/lang/Object;

    .line 5
    move-result-object p1

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-interface {p0, p1}, Lkotlinx/coroutines/o;->K(Ljava/lang/Object;)V

    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method static synthetic C(Lkotlinx/coroutines/o;Ljava/lang/Object;Le8/l;ILjava/lang/Object;)Z
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p3, p3, 0x2

    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    const/4 p2, 0x0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/channels/c;->B(Lkotlinx/coroutines/o;Ljava/lang/Object;Le8/l;)Z

    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public static final synthetic a(JZ)J
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/channels/c;->v(JZ)J

    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static final synthetic b(JI)J
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/channels/c;->w(JI)J

    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static final synthetic c(JLkotlinx/coroutines/channels/i;)Lkotlinx/coroutines/channels/i;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/channels/c;->x(JLkotlinx/coroutines/channels/i;)Lkotlinx/coroutines/channels/i;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d()Lkotlinx/coroutines/internal/i0;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/c;->CLOSE_HANDLER_CLOSED:Lkotlinx/coroutines/internal/i0;

    return-object v0
.end method

.method public static final synthetic e()Lkotlinx/coroutines/internal/i0;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/c;->CLOSE_HANDLER_INVOKED:Lkotlinx/coroutines/internal/i0;

    return-object v0
.end method

.method public static final synthetic f()Lkotlinx/coroutines/internal/i0;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/c;->DONE_RCV:Lkotlinx/coroutines/internal/i0;

    return-object v0
.end method

.method public static final synthetic g()I
    .locals 1

    .line 1
    sget v0, Lkotlinx/coroutines/channels/c;->EXPAND_BUFFER_COMPLETION_WAIT_ITERATIONS:I

    return v0
.end method

.method public static final synthetic h()Lkotlinx/coroutines/internal/i0;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/c;->FAILED:Lkotlinx/coroutines/internal/i0;

    return-object v0
.end method

.method public static final synthetic i()Lkotlinx/coroutines/internal/i0;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/c;->INTERRUPTED_RCV:Lkotlinx/coroutines/internal/i0;

    return-object v0
.end method

.method public static final synthetic j()Lkotlinx/coroutines/internal/i0;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/c;->INTERRUPTED_SEND:Lkotlinx/coroutines/internal/i0;

    return-object v0
.end method

.method public static final synthetic k()Lkotlinx/coroutines/internal/i0;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/c;->IN_BUFFER:Lkotlinx/coroutines/internal/i0;

    return-object v0
.end method

.method public static final synthetic l()Lkotlinx/coroutines/internal/i0;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/c;->NO_CLOSE_CAUSE:Lkotlinx/coroutines/internal/i0;

    return-object v0
.end method

.method public static final synthetic m()Lkotlinx/coroutines/internal/i0;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/c;->NO_RECEIVE_RESULT:Lkotlinx/coroutines/internal/i0;

    return-object v0
.end method

.method public static final synthetic n()Lkotlinx/coroutines/channels/i;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/c;->NULL_SEGMENT:Lkotlinx/coroutines/channels/i;

    return-object v0
.end method

.method public static final synthetic o()Lkotlinx/coroutines/internal/i0;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/c;->POISONED:Lkotlinx/coroutines/internal/i0;

    return-object v0
.end method

.method public static final synthetic p()Lkotlinx/coroutines/internal/i0;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/c;->RESUMING_BY_EB:Lkotlinx/coroutines/internal/i0;

    return-object v0
.end method

.method public static final synthetic q()Lkotlinx/coroutines/internal/i0;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/c;->RESUMING_BY_RCV:Lkotlinx/coroutines/internal/i0;

    return-object v0
.end method

.method public static final synthetic r()Lkotlinx/coroutines/internal/i0;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/c;->SUSPEND:Lkotlinx/coroutines/internal/i0;

    return-object v0
.end method

.method public static final synthetic s()Lkotlinx/coroutines/internal/i0;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/c;->SUSPEND_NO_WAITER:Lkotlinx/coroutines/internal/i0;

    return-object v0
.end method

.method public static final synthetic t(I)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lkotlinx/coroutines/channels/c;->A(I)J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static final synthetic u(Lkotlinx/coroutines/o;Ljava/lang/Object;Le8/l;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/channels/c;->B(Lkotlinx/coroutines/o;Ljava/lang/Object;Le8/l;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final v(JZ)J
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    add-long/2addr v0, p0

    return-wide v0
.end method

.method private static final w(JI)J
    .locals 2

    .line 1
    int-to-long v0, p2

    const/16 p2, 0x3c

    shl-long/2addr v0, p2

    add-long/2addr v0, p0

    return-wide v0
.end method

.method private static final x(JLkotlinx/coroutines/channels/i;)Lkotlinx/coroutines/channels/i;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(J",
            "Lkotlinx/coroutines/channels/i<",
            "TE;>;)",
            "Lkotlinx/coroutines/channels/i<",
            "TE;>;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v6, Lkotlinx/coroutines/channels/i;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p2}, Lkotlinx/coroutines/channels/i;->u()Lkotlinx/coroutines/channels/b;

    .line 6
    move-result-object v4

    .line 7
    const/4 v5, 0x0

    .line 8
    move-object v0, v6

    .line 9
    move-wide v1, p0

    .line 10
    move-object v3, p2

    .line 11
    .line 12
    .line 13
    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/channels/i;-><init>(JLkotlinx/coroutines/channels/i;Lkotlinx/coroutines/channels/b;I)V

    .line 14
    return-object v6
.end method

.method public static final y()Lkotlin/reflect/KFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lkotlin/reflect/KFunction<",
            "Lkotlinx/coroutines/channels/i<",
            "TE;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lkotlinx/coroutines/channels/c$a;->INSTANCE:Lkotlinx/coroutines/channels/c$a;

    .line 3
    return-object v0
.end method

.method public static final z()Lkotlinx/coroutines/internal/i0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lkotlinx/coroutines/channels/c;->CHANNEL_CLOSED:Lkotlinx/coroutines/internal/i0;

    return-object v0
.end method
