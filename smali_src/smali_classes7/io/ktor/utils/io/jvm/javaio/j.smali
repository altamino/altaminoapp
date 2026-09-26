.class public final Lio/ktor/utils/io/jvm/javaio/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWriting.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Writing.kt\nio/ktor/utils/io/jvm/javaio/WritingKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,35:1\n1#2:36\n*E\n"
.end annotation


# direct methods
.method public static final a(Lio/ktor/utils/io/g;Ljava/io/OutputStream;JLkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 18
    .param p0    # Lio/ktor/utils/io/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/OutputStream;
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
            "Ljava/io/OutputStream;",
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
    move-wide/from16 v0, p2

    .line 3
    .line 4
    move-object/from16 v2, p4

    .line 5
    .line 6
    instance-of v3, v2, Lio/ktor/utils/io/jvm/javaio/j$a;

    .line 7
    .line 8
    if-eqz v3, :cond_0

    .line 9
    move-object v3, v2

    .line 10
    .line 11
    check-cast v3, Lio/ktor/utils/io/jvm/javaio/j$a;

    .line 12
    .line 13
    iget v4, v3, Lio/ktor/utils/io/jvm/javaio/j$a;->label:I

    .line 14
    .line 15
    const/high16 v5, -0x80000000

    .line 16
    .line 17
    and-int v6, v4, v5

    .line 18
    .line 19
    if-eqz v6, :cond_0

    .line 20
    sub-int/2addr v4, v5

    .line 21
    .line 22
    iput v4, v3, Lio/ktor/utils/io/jvm/javaio/j$a;->label:I

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    new-instance v3, Lio/ktor/utils/io/jvm/javaio/j$a;

    .line 26
    .line 27
    .line 28
    invoke-direct {v3, v2}, Lio/ktor/utils/io/jvm/javaio/j$a;-><init>(Lkotlin/coroutines/d;)V

    .line 29
    .line 30
    :goto_0
    iget-object v2, v3, Lio/ktor/utils/io/jvm/javaio/j$a;->result:Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 34
    move-result-object v4

    .line 35
    .line 36
    iget v5, v3, Lio/ktor/utils/io/jvm/javaio/j$a;->label:I

    .line 37
    const/4 v6, 0x0

    .line 38
    const/4 v7, 0x1

    .line 39
    .line 40
    if-eqz v5, :cond_2

    .line 41
    .line 42
    if-ne v5, v7, :cond_1

    .line 43
    .line 44
    iget-wide v0, v3, Lio/ktor/utils/io/jvm/javaio/j$a;->J$2:J

    .line 45
    .line 46
    iget-wide v8, v3, Lio/ktor/utils/io/jvm/javaio/j$a;->J$1:J

    .line 47
    .line 48
    iget-wide v10, v3, Lio/ktor/utils/io/jvm/javaio/j$a;->J$0:J

    .line 49
    .line 50
    iget-object v5, v3, Lio/ktor/utils/io/jvm/javaio/j$a;->L$2:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v5, [B

    .line 53
    .line 54
    iget-object v12, v3, Lio/ktor/utils/io/jvm/javaio/j$a;->L$1:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v12, Ljava/io/OutputStream;

    .line 57
    .line 58
    iget-object v13, v3, Lio/ktor/utils/io/jvm/javaio/j$a;->L$0:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v13, Lio/ktor/utils/io/g;

    .line 61
    .line 62
    .line 63
    :try_start_0
    invoke-static {v2}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    move-wide v14, v8

    .line 65
    move-object v8, v5

    .line 66
    move-object v5, v4

    .line 67
    move-object v4, v3

    .line 68
    .line 69
    move-wide/from16 v16, v0

    .line 70
    move-object v1, v12

    .line 71
    move-object v0, v13

    .line 72
    .line 73
    move-wide/from16 v12, v16

    .line 74
    goto :goto_2

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    .line 77
    goto/16 :goto_4

    .line 78
    .line 79
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 80
    .line 81
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 82
    .line 83
    .line 84
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 85
    throw v0

    .line 86
    .line 87
    .line 88
    :cond_2
    invoke-static {v2}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 89
    .line 90
    const-wide/16 v8, 0x0

    .line 91
    .line 92
    cmp-long v2, v0, v8

    .line 93
    .line 94
    if-ltz v2, :cond_7

    .line 95
    .line 96
    .line 97
    invoke-static {}, Lt7/a;->a()Lt7/g;

    .line 98
    move-result-object v2

    .line 99
    .line 100
    .line 101
    invoke-interface {v2}, Lt7/g;->s0()Ljava/lang/Object;

    .line 102
    move-result-object v2

    .line 103
    move-object v5, v2

    .line 104
    .line 105
    check-cast v5, [B

    .line 106
    :try_start_1
    array-length v2, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    int-to-long v10, v2

    .line 108
    move-wide v12, v8

    .line 109
    move-object v8, v5

    .line 110
    move-object v5, v4

    .line 111
    move-object v4, v3

    .line 112
    move-wide v2, v0

    .line 113
    .line 114
    move-object/from16 v0, p0

    .line 115
    .line 116
    move-object/from16 v1, p1

    .line 117
    .line 118
    :goto_1
    cmp-long v9, v12, v2

    .line 119
    .line 120
    if-gez v9, :cond_6

    .line 121
    .line 122
    sub-long v14, v2, v12

    .line 123
    .line 124
    .line 125
    :try_start_2
    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->min(JJ)J

    .line 126
    move-result-wide v14

    .line 127
    long-to-int v9, v14

    .line 128
    .line 129
    iput-object v0, v4, Lio/ktor/utils/io/jvm/javaio/j$a;->L$0:Ljava/lang/Object;

    .line 130
    .line 131
    iput-object v1, v4, Lio/ktor/utils/io/jvm/javaio/j$a;->L$1:Ljava/lang/Object;

    .line 132
    .line 133
    iput-object v8, v4, Lio/ktor/utils/io/jvm/javaio/j$a;->L$2:Ljava/lang/Object;

    .line 134
    .line 135
    iput-wide v2, v4, Lio/ktor/utils/io/jvm/javaio/j$a;->J$0:J

    .line 136
    .line 137
    iput-wide v12, v4, Lio/ktor/utils/io/jvm/javaio/j$a;->J$1:J

    .line 138
    .line 139
    iput-wide v10, v4, Lio/ktor/utils/io/jvm/javaio/j$a;->J$2:J

    .line 140
    .line 141
    iput v7, v4, Lio/ktor/utils/io/jvm/javaio/j$a;->label:I

    .line 142
    .line 143
    .line 144
    invoke-interface {v0, v8, v6, v9, v4}, Lio/ktor/utils/io/g;->k([BIILkotlin/coroutines/d;)Ljava/lang/Object;

    .line 145
    move-result-object v9

    .line 146
    .line 147
    if-ne v9, v5, :cond_3

    .line 148
    return-object v5

    .line 149
    :cond_3
    move-wide v14, v12

    .line 150
    move-wide v12, v10

    .line 151
    move-wide v10, v2

    .line 152
    move-object v2, v9

    .line 153
    .line 154
    :goto_2
    check-cast v2, Ljava/lang/Number;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 158
    move-result v2

    .line 159
    const/4 v3, -0x1

    .line 160
    .line 161
    if-eq v2, v3, :cond_5

    .line 162
    .line 163
    if-lez v2, :cond_4

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, v8, v6, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 167
    int-to-long v2, v2

    .line 168
    add-long/2addr v2, v14

    .line 169
    .line 170
    move-wide/from16 v16, v10

    .line 171
    move-wide v10, v12

    .line 172
    move-wide v12, v2

    .line 173
    .line 174
    move-wide/from16 v2, v16

    .line 175
    goto :goto_1

    .line 176
    :catchall_1
    move-exception v0

    .line 177
    move-object v5, v8

    .line 178
    goto :goto_4

    .line 179
    :cond_4
    move-wide v2, v10

    .line 180
    move-wide v10, v12

    .line 181
    move-wide v12, v14

    .line 182
    goto :goto_1

    .line 183
    :cond_5
    move-object v5, v8

    .line 184
    move-wide v12, v14

    .line 185
    goto :goto_3

    .line 186
    :cond_6
    move-object v5, v8

    .line 187
    .line 188
    .line 189
    :goto_3
    :try_start_3
    invoke-static {v12, v13}, Lkotlin/coroutines/jvm/internal/b;->e(J)Ljava/lang/Long;

    .line 190
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 191
    .line 192
    .line 193
    invoke-static {}, Lt7/a;->a()Lt7/g;

    .line 194
    move-result-object v1

    .line 195
    .line 196
    .line 197
    invoke-interface {v1, v5}, Lt7/g;->S(Ljava/lang/Object;)V

    .line 198
    return-object v0

    .line 199
    .line 200
    .line 201
    :goto_4
    invoke-static {}, Lt7/a;->a()Lt7/g;

    .line 202
    move-result-object v1

    .line 203
    .line 204
    .line 205
    invoke-interface {v1, v5}, Lt7/g;->S(Ljava/lang/Object;)V

    .line 206
    throw v0

    .line 207
    .line 208
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .line 213
    const-string v3, "Limit shouldn\'t be negative: "

    .line 214
    .line 215
    .line 216
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    move-result-object v0

    .line 224
    .line 225
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 229
    move-result-object v0

    .line 230
    .line 231
    .line 232
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 233
    throw v1
.end method

.method public static synthetic b(Lio/ktor/utils/io/g;Ljava/io/OutputStream;JLkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;
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
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/jvm/javaio/j;->a(Lio/ktor/utils/io/g;Ljava/io/OutputStream;JLkotlin/coroutines/d;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method
