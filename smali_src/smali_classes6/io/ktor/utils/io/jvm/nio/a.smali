.class public final Lio/ktor/utils/io/jvm/nio/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWriting.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Writing.kt\nio/ktor/utils/io/jvm/nio/WritingKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,65:1\n1#2:66\n*E\n"
.end annotation


# direct methods
.method public static final a(Lio/ktor/utils/io/g;Ljava/nio/channels/WritableByteChannel;JLkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 7
    .param p0    # Lio/ktor/utils/io/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/nio/channels/WritableByteChannel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/g;",
            "Ljava/nio/channels/WritableByteChannel;",
            "J",
            "Lkotlin/coroutines/d<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    instance-of v0, p4, Lio/ktor/utils/io/jvm/nio/a$a;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p4

    .line 6
    .line 7
    check-cast v0, Lio/ktor/utils/io/jvm/nio/a$a;

    .line 8
    .line 9
    iget v1, v0, Lio/ktor/utils/io/jvm/nio/a$a;->label:I

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
    iput v1, v0, Lio/ktor/utils/io/jvm/nio/a$a;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lio/ktor/utils/io/jvm/nio/a$a;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p4}, Lio/ktor/utils/io/jvm/nio/a$a;-><init>(Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p4, v0, Lio/ktor/utils/io/jvm/nio/a$a;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lio/ktor/utils/io/jvm/nio/a$a;->label:I

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
    iget-wide p0, v0, Lio/ktor/utils/io/jvm/nio/a$a;->J$0:J

    .line 40
    .line 41
    iget-object p2, v0, Lio/ktor/utils/io/jvm/nio/a$a;->L$2:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p2, Le8/l;

    .line 44
    .line 45
    iget-object p3, v0, Lio/ktor/utils/io/jvm/nio/a$a;->L$1:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p3, Lkotlin/jvm/internal/o0;

    .line 48
    .line 49
    iget-object v2, v0, Lio/ktor/utils/io/jvm/nio/a$a;->L$0:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v2, Lio/ktor/utils/io/g;

    .line 52
    .line 53
    .line 54
    invoke-static {p4}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 55
    move-object p4, p3

    .line 56
    move-object v6, v2

    .line 57
    move-object v2, p2

    .line 58
    move-wide p2, p0

    .line 59
    move-object p0, v6

    .line 60
    goto :goto_2

    .line 61
    .line 62
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 63
    .line 64
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 65
    .line 66
    .line 67
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 68
    throw p0

    .line 69
    .line 70
    .line 71
    :cond_2
    invoke-static {p4}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 72
    .line 73
    const-wide/16 v4, 0x0

    .line 74
    .line 75
    cmp-long p4, p2, v4

    .line 76
    .line 77
    if-ltz p4, :cond_b

    .line 78
    .line 79
    instance-of p4, p1, Ljava/nio/channels/SelectableChannel;

    .line 80
    .line 81
    if-eqz p4, :cond_4

    .line 82
    move-object p4, p1

    .line 83
    .line 84
    check-cast p4, Ljava/nio/channels/SelectableChannel;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p4}, Ljava/nio/channels/SelectableChannel;->isBlocking()Z

    .line 88
    move-result p4

    .line 89
    .line 90
    if-eqz p4, :cond_3

    .line 91
    goto :goto_1

    .line 92
    .line 93
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 94
    .line 95
    const-string p1, "Non-blocking channels are not supported"

    .line 96
    .line 97
    .line 98
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 99
    throw p0

    .line 100
    .line 101
    .line 102
    :cond_4
    :goto_1
    invoke-interface {p0}, Lio/ktor/utils/io/g;->o()Z

    .line 103
    move-result p4

    .line 104
    .line 105
    if-eqz p4, :cond_6

    .line 106
    .line 107
    .line 108
    invoke-interface {p0}, Lio/ktor/utils/io/g;->j()Ljava/lang/Throwable;

    .line 109
    move-result-object p0

    .line 110
    .line 111
    if-nez p0, :cond_5

    .line 112
    .line 113
    .line 114
    invoke-static {v4, v5}, Lkotlin/coroutines/jvm/internal/b;->e(J)Ljava/lang/Long;

    .line 115
    move-result-object p0

    .line 116
    return-object p0

    .line 117
    :cond_5
    throw p0

    .line 118
    .line 119
    :cond_6
    new-instance p4, Lkotlin/jvm/internal/o0;

    .line 120
    .line 121
    .line 122
    invoke-direct {p4}, Lkotlin/jvm/internal/o0;-><init>()V

    .line 123
    .line 124
    new-instance v2, Lio/ktor/utils/io/jvm/nio/a$b;

    .line 125
    .line 126
    .line 127
    invoke-direct {v2, p2, p3, p4, p1}, Lio/ktor/utils/io/jvm/nio/a$b;-><init>(JLkotlin/jvm/internal/o0;Ljava/nio/channels/WritableByteChannel;)V

    .line 128
    .line 129
    :cond_7
    iget-wide v4, p4, Lkotlin/jvm/internal/o0;->element:J

    .line 130
    .line 131
    cmp-long p1, v4, p2

    .line 132
    .line 133
    if-gez p1, :cond_9

    .line 134
    .line 135
    iput-object p0, v0, Lio/ktor/utils/io/jvm/nio/a$a;->L$0:Ljava/lang/Object;

    .line 136
    .line 137
    iput-object p4, v0, Lio/ktor/utils/io/jvm/nio/a$a;->L$1:Ljava/lang/Object;

    .line 138
    .line 139
    iput-object v2, v0, Lio/ktor/utils/io/jvm/nio/a$a;->L$2:Ljava/lang/Object;

    .line 140
    .line 141
    iput-wide p2, v0, Lio/ktor/utils/io/jvm/nio/a$a;->J$0:J

    .line 142
    .line 143
    iput v3, v0, Lio/ktor/utils/io/jvm/nio/a$a;->label:I

    .line 144
    const/4 p1, 0x0

    .line 145
    .line 146
    .line 147
    invoke-interface {p0, p1, v2, v0}, Lio/ktor/utils/io/g;->l(ILe8/l;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 148
    move-result-object p1

    .line 149
    .line 150
    if-ne p1, v1, :cond_8

    .line 151
    return-object v1

    .line 152
    .line 153
    .line 154
    :cond_8
    :goto_2
    invoke-interface {p0}, Lio/ktor/utils/io/g;->o()Z

    .line 155
    move-result p1

    .line 156
    .line 157
    if-eqz p1, :cond_7

    .line 158
    .line 159
    .line 160
    :cond_9
    invoke-interface {p0}, Lio/ktor/utils/io/g;->j()Ljava/lang/Throwable;

    .line 161
    move-result-object p0

    .line 162
    .line 163
    if-nez p0, :cond_a

    .line 164
    .line 165
    iget-wide p0, p4, Lkotlin/jvm/internal/o0;->element:J

    .line 166
    .line 167
    .line 168
    invoke-static {p0, p1}, Lkotlin/coroutines/jvm/internal/b;->e(J)Ljava/lang/Long;

    .line 169
    move-result-object p0

    .line 170
    return-object p0

    .line 171
    :cond_a
    throw p0

    .line 172
    .line 173
    :cond_b
    new-instance p0, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    const-string p1, "Limit shouldn\'t be negative: "

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    move-result-object p0

    .line 189
    .line 190
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 194
    move-result-object p0

    .line 195
    .line 196
    .line 197
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 198
    throw p1
.end method

.method public static synthetic b(Lio/ktor/utils/io/g;Ljava/nio/channels/WritableByteChannel;JLkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    and-int/lit8 p5, p5, 0x2

    .line 3
    .line 4
    if-eqz p5, :cond_0

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    const-wide p2, 0x7fffffffffffffffL

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/jvm/nio/a;->a(Lio/ktor/utils/io/g;Ljava/nio/channels/WritableByteChannel;JLkotlin/coroutines/d;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method
