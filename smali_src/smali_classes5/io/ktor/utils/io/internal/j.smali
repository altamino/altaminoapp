.class public final Lio/ktor/utils/io/internal/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic a(Lio/ktor/utils/io/f;Lio/ktor/utils/io/f;JLkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/internal/j;->c(Lio/ktor/utils/io/f;Lio/ktor/utils/io/f;JLkotlin/coroutines/d;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final b(Lio/ktor/utils/io/f;Lio/ktor/utils/io/f;JLkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 19
    .param p0    # Lio/ktor/utils/io/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lio/ktor/utils/io/f;
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
            "Lio/ktor/utils/io/f;",
            "Lio/ktor/utils/io/f;",
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
    move-object/from16 v0, p1

    .line 3
    .line 4
    move-object/from16 v1, p4

    .line 5
    .line 6
    instance-of v2, v1, Lio/ktor/utils/io/internal/j$a;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    move-object v2, v1

    .line 10
    .line 11
    check-cast v2, Lio/ktor/utils/io/internal/j$a;

    .line 12
    .line 13
    iget v3, v2, Lio/ktor/utils/io/internal/j$a;->label:I

    .line 14
    .line 15
    const/high16 v4, -0x80000000

    .line 16
    .line 17
    and-int v5, v3, v4

    .line 18
    .line 19
    if-eqz v5, :cond_0

    .line 20
    sub-int/2addr v3, v4

    .line 21
    .line 22
    iput v3, v2, Lio/ktor/utils/io/internal/j$a;->label:I

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_0
    new-instance v2, Lio/ktor/utils/io/internal/j$a;

    .line 26
    .line 27
    .line 28
    invoke-direct {v2, v1}, Lio/ktor/utils/io/internal/j$a;-><init>(Lkotlin/coroutines/d;)V

    .line 29
    .line 30
    :goto_0
    iget-object v1, v2, Lio/ktor/utils/io/internal/j$a;->result:Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 34
    move-result-object v3

    .line 35
    .line 36
    iget v4, v2, Lio/ktor/utils/io/internal/j$a;->label:I

    .line 37
    const/4 v5, 0x3

    .line 38
    const/4 v6, 0x2

    .line 39
    const/4 v7, 0x1

    .line 40
    .line 41
    const-wide/16 v8, 0x0

    .line 42
    .line 43
    if-eqz v4, :cond_4

    .line 44
    .line 45
    if-eq v4, v7, :cond_3

    .line 46
    .line 47
    if-eq v4, v6, :cond_2

    .line 48
    .line 49
    if-ne v4, v5, :cond_1

    .line 50
    .line 51
    iget-wide v10, v2, Lio/ktor/utils/io/internal/j$a;->J$2:J

    .line 52
    .line 53
    iget-wide v12, v2, Lio/ktor/utils/io/internal/j$a;->J$1:J

    .line 54
    .line 55
    iget-wide v14, v2, Lio/ktor/utils/io/internal/j$a;->J$0:J

    .line 56
    .line 57
    iget-object v0, v2, Lio/ktor/utils/io/internal/j$a;->L$1:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v0, Lio/ktor/utils/io/f;

    .line 60
    .line 61
    iget-object v4, v2, Lio/ktor/utils/io/internal/j$a;->L$0:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v4, Lio/ktor/utils/io/f;

    .line 64
    .line 65
    .line 66
    invoke-static {v1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 67
    .line 68
    goto/16 :goto_4

    .line 69
    .line 70
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 71
    .line 72
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 73
    .line 74
    .line 75
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 76
    throw v0

    .line 77
    .line 78
    :cond_2
    iget-wide v10, v2, Lio/ktor/utils/io/internal/j$a;->J$1:J

    .line 79
    .line 80
    iget-wide v12, v2, Lio/ktor/utils/io/internal/j$a;->J$0:J

    .line 81
    .line 82
    iget-object v0, v2, Lio/ktor/utils/io/internal/j$a;->L$1:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v0, Lio/ktor/utils/io/f;

    .line 85
    .line 86
    iget-object v4, v2, Lio/ktor/utils/io/internal/j$a;->L$0:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v4, Lio/ktor/utils/io/f;

    .line 89
    .line 90
    .line 91
    invoke-static {v1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 92
    .line 93
    goto/16 :goto_3

    .line 94
    .line 95
    :cond_3
    iget-wide v10, v2, Lio/ktor/utils/io/internal/j$a;->J$1:J

    .line 96
    .line 97
    iget-wide v12, v2, Lio/ktor/utils/io/internal/j$a;->J$0:J

    .line 98
    .line 99
    iget-object v0, v2, Lio/ktor/utils/io/internal/j$a;->L$1:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v0, Lio/ktor/utils/io/f;

    .line 102
    .line 103
    iget-object v4, v2, Lio/ktor/utils/io/internal/j$a;->L$0:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v4, Lio/ktor/utils/io/f;

    .line 106
    .line 107
    .line 108
    invoke-static {v1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 109
    move-wide v14, v12

    .line 110
    move-wide v12, v10

    .line 111
    goto :goto_2

    .line 112
    .line 113
    .line 114
    :cond_4
    invoke-static {v1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 115
    .line 116
    move-object/from16 v1, p0

    .line 117
    .line 118
    if-eq v1, v0, :cond_e

    .line 119
    .line 120
    .line 121
    invoke-virtual/range {p0 .. p0}, Lio/ktor/utils/io/f;->j()Ljava/lang/Throwable;

    .line 122
    move-result-object v4

    .line 123
    .line 124
    if-eqz v4, :cond_5

    .line 125
    .line 126
    .line 127
    invoke-virtual/range {p0 .. p0}, Lio/ktor/utils/io/f;->j()Ljava/lang/Throwable;

    .line 128
    move-result-object v1

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v1}, Lio/ktor/utils/io/f;->c(Ljava/lang/Throwable;)Z

    .line 132
    .line 133
    .line 134
    invoke-static {v8, v9}, Lkotlin/coroutines/jvm/internal/b;->e(J)Ljava/lang/Long;

    .line 135
    move-result-object v0

    .line 136
    return-object v0

    .line 137
    .line 138
    :cond_5
    move-wide/from16 v10, p2

    .line 139
    move-object v4, v2

    .line 140
    move-object v12, v3

    .line 141
    move-wide v2, v10

    .line 142
    .line 143
    :goto_1
    cmp-long v13, v2, v8

    .line 144
    .line 145
    if-lez v13, :cond_d

    .line 146
    .line 147
    iput-object v1, v4, Lio/ktor/utils/io/internal/j$a;->L$0:Ljava/lang/Object;

    .line 148
    .line 149
    iput-object v0, v4, Lio/ktor/utils/io/internal/j$a;->L$1:Ljava/lang/Object;

    .line 150
    .line 151
    iput-wide v10, v4, Lio/ktor/utils/io/internal/j$a;->J$0:J

    .line 152
    .line 153
    iput-wide v2, v4, Lio/ktor/utils/io/internal/j$a;->J$1:J

    .line 154
    .line 155
    iput v7, v4, Lio/ktor/utils/io/internal/j$a;->label:I

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v4}, Lio/ktor/utils/io/f;->v(Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 159
    move-result-object v13

    .line 160
    .line 161
    if-ne v13, v12, :cond_6

    .line 162
    return-object v12

    .line 163
    :cond_6
    move-wide v14, v10

    .line 164
    .line 165
    move-object/from16 v16, v4

    .line 166
    move-object v4, v1

    .line 167
    move-object v1, v13

    .line 168
    .line 169
    move-wide/from16 v17, v2

    .line 170
    .line 171
    move-object/from16 v2, v16

    .line 172
    move-object v3, v12

    .line 173
    .line 174
    move-wide/from16 v12, v17

    .line 175
    .line 176
    :goto_2
    check-cast v1, Ljava/lang/Boolean;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 180
    move-result v1

    .line 181
    .line 182
    if-nez v1, :cond_7

    .line 183
    move-wide v2, v12

    .line 184
    move-wide v10, v14

    .line 185
    .line 186
    goto/16 :goto_6

    .line 187
    .line 188
    .line 189
    :cond_7
    invoke-virtual {v4, v0, v12, v13}, Lio/ktor/utils/io/f;->L(Lio/ktor/utils/io/f;J)J

    .line 190
    move-result-wide v10

    .line 191
    .line 192
    cmp-long v1, v10, v8

    .line 193
    .line 194
    if-nez v1, :cond_a

    .line 195
    .line 196
    iput-object v4, v2, Lio/ktor/utils/io/internal/j$a;->L$0:Ljava/lang/Object;

    .line 197
    .line 198
    iput-object v0, v2, Lio/ktor/utils/io/internal/j$a;->L$1:Ljava/lang/Object;

    .line 199
    .line 200
    iput-wide v14, v2, Lio/ktor/utils/io/internal/j$a;->J$0:J

    .line 201
    .line 202
    iput-wide v12, v2, Lio/ktor/utils/io/internal/j$a;->J$1:J

    .line 203
    .line 204
    iput v6, v2, Lio/ktor/utils/io/internal/j$a;->label:I

    .line 205
    .line 206
    .line 207
    invoke-static {v4, v0, v12, v13, v2}, Lio/ktor/utils/io/internal/j;->c(Lio/ktor/utils/io/f;Lio/ktor/utils/io/f;JLkotlin/coroutines/d;)Ljava/lang/Object;

    .line 208
    move-result-object v1

    .line 209
    .line 210
    if-ne v1, v3, :cond_8

    .line 211
    return-object v3

    .line 212
    :cond_8
    move-wide v10, v12

    .line 213
    move-wide v12, v14

    .line 214
    .line 215
    :goto_3
    check-cast v1, Ljava/lang/Number;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 219
    move-result-wide v14

    .line 220
    .line 221
    cmp-long v1, v14, v8

    .line 222
    .line 223
    if-nez v1, :cond_9

    .line 224
    move-wide v2, v10

    .line 225
    move-wide v10, v12

    .line 226
    goto :goto_6

    .line 227
    :cond_9
    move-object v1, v4

    .line 228
    move-object v4, v2

    .line 229
    goto :goto_5

    .line 230
    .line 231
    .line 232
    :cond_a
    invoke-virtual {v0}, Lio/ktor/utils/io/f;->C()I

    .line 233
    move-result v1

    .line 234
    .line 235
    if-nez v1, :cond_b

    .line 236
    .line 237
    iput-object v4, v2, Lio/ktor/utils/io/internal/j$a;->L$0:Ljava/lang/Object;

    .line 238
    .line 239
    iput-object v0, v2, Lio/ktor/utils/io/internal/j$a;->L$1:Ljava/lang/Object;

    .line 240
    .line 241
    iput-wide v14, v2, Lio/ktor/utils/io/internal/j$a;->J$0:J

    .line 242
    .line 243
    iput-wide v12, v2, Lio/ktor/utils/io/internal/j$a;->J$1:J

    .line 244
    .line 245
    iput-wide v10, v2, Lio/ktor/utils/io/internal/j$a;->J$2:J

    .line 246
    .line 247
    iput v5, v2, Lio/ktor/utils/io/internal/j$a;->label:I

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0, v7, v2}, Lio/ktor/utils/io/f;->u(ILkotlin/coroutines/d;)Ljava/lang/Object;

    .line 251
    move-result-object v1

    .line 252
    .line 253
    if-ne v1, v3, :cond_b

    .line 254
    return-object v3

    .line 255
    :cond_b
    :goto_4
    move-object v1, v4

    .line 256
    move-object v4, v2

    .line 257
    .line 258
    move-wide/from16 v16, v12

    .line 259
    move-wide v12, v14

    .line 260
    move-wide v14, v10

    .line 261
    .line 262
    move-wide/from16 v10, v16

    .line 263
    :goto_5
    sub-long/2addr v10, v14

    .line 264
    .line 265
    cmp-long v2, v14, v8

    .line 266
    .line 267
    if-lez v2, :cond_c

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0}, Lio/ktor/utils/io/f;->flush()V

    .line 271
    .line 272
    :cond_c
    move-wide/from16 v16, v12

    .line 273
    move-object v12, v3

    .line 274
    move-wide v2, v10

    .line 275
    .line 276
    move-wide/from16 v10, v16

    .line 277
    .line 278
    goto/16 :goto_1

    .line 279
    :cond_d
    :goto_6
    sub-long/2addr v10, v2

    .line 280
    .line 281
    .line 282
    invoke-static {v10, v11}, Lkotlin/coroutines/jvm/internal/b;->e(J)Ljava/lang/Long;

    .line 283
    move-result-object v0

    .line 284
    return-object v0

    .line 285
    .line 286
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 287
    .line 288
    const-string v1, "Failed requirement."

    .line 289
    .line 290
    .line 291
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 292
    move-result-object v1

    .line 293
    .line 294
    .line 295
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 296
    throw v0
.end method

.method private static final c(Lio/ktor/utils/io/f;Lio/ktor/utils/io/f;JLkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/f;",
            "Lio/ktor/utils/io/f;",
            "J",
            "Lkotlin/coroutines/d<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    .line 2
    instance-of v0, p4, Lio/ktor/utils/io/internal/j$b;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p4

    .line 6
    .line 7
    check-cast v0, Lio/ktor/utils/io/internal/j$b;

    .line 8
    .line 9
    iget v1, v0, Lio/ktor/utils/io/internal/j$b;->label:I

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
    iput v1, v0, Lio/ktor/utils/io/internal/j$b;->label:I

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    new-instance v0, Lio/ktor/utils/io/internal/j$b;

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p4}, Lio/ktor/utils/io/internal/j$b;-><init>(Lkotlin/coroutines/d;)V

    .line 25
    .line 26
    :goto_0
    iget-object p4, v0, Lio/ktor/utils/io/internal/j$b;->result:Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 31
    .line 32
    iget v2, v0, Lio/ktor/utils/io/internal/j$b;->label:I

    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    if-eq v2, v4, :cond_2

    .line 39
    .line 40
    if-ne v2, v3, :cond_1

    .line 41
    .line 42
    iget p0, v0, Lio/ktor/utils/io/internal/j$b;->I$0:I

    .line 43
    .line 44
    iget-object p1, v0, Lio/ktor/utils/io/internal/j$b;->L$0:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p1, Ls7/a;

    .line 47
    .line 48
    .line 49
    :try_start_0
    invoke-static {p4}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    goto/16 :goto_2

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    .line 54
    goto/16 :goto_3

    .line 55
    .line 56
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 59
    .line 60
    .line 61
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    throw p0

    .line 63
    .line 64
    :cond_2
    iget-object p0, v0, Lio/ktor/utils/io/internal/j$b;->L$1:Ljava/lang/Object;

    .line 65
    move-object p1, p0

    .line 66
    .line 67
    check-cast p1, Ls7/a;

    .line 68
    .line 69
    iget-object p0, v0, Lio/ktor/utils/io/internal/j$b;->L$0:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast p0, Lio/ktor/utils/io/f;

    .line 72
    .line 73
    .line 74
    :try_start_1
    invoke-static {p4}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    move-object v7, p1

    .line 76
    move-object p1, p0

    .line 77
    move-object p0, p4

    .line 78
    move-object p4, v7

    .line 79
    goto :goto_1

    .line 80
    .line 81
    .line 82
    :cond_3
    invoke-static {p4}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 83
    .line 84
    sget-object p4, Ls7/a;->Companion:Ls7/a$d;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p4}, Ls7/a$d;->c()Lt7/g;

    .line 88
    move-result-object p4

    .line 89
    .line 90
    .line 91
    invoke-interface {p4}, Lt7/g;->s0()Ljava/lang/Object;

    .line 92
    move-result-object p4

    .line 93
    .line 94
    check-cast p4, Ls7/a;

    .line 95
    .line 96
    .line 97
    :try_start_2
    invoke-virtual {p4}, Lr7/a;->e()I

    .line 98
    move-result v2

    .line 99
    int-to-long v5, v2

    .line 100
    .line 101
    .line 102
    invoke-static {p2, p3, v5, v6}, Lj8/m;->k(JJ)J

    .line 103
    move-result-wide p2

    .line 104
    long-to-int p2, p2

    .line 105
    .line 106
    .line 107
    invoke-virtual {p4, p2}, Lr7/a;->s(I)V

    .line 108
    .line 109
    iput-object p1, v0, Lio/ktor/utils/io/internal/j$b;->L$0:Ljava/lang/Object;

    .line 110
    .line 111
    iput-object p4, v0, Lio/ktor/utils/io/internal/j$b;->L$1:Ljava/lang/Object;

    .line 112
    .line 113
    iput v4, v0, Lio/ktor/utils/io/internal/j$b;->label:I

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, p4, v0}, Lio/ktor/utils/io/f;->g(Ls7/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 117
    move-result-object p0

    .line 118
    .line 119
    if-ne p0, v1, :cond_4

    .line 120
    return-object v1

    .line 121
    .line 122
    :cond_4
    :goto_1
    check-cast p0, Ljava/lang/Number;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 126
    move-result p0

    .line 127
    const/4 p2, -0x1

    .line 128
    .line 129
    if-ne p0, p2, :cond_5

    .line 130
    .line 131
    sget-object p0, Ls7/a;->Companion:Ls7/a$d;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Ls7/a$d;->c()Lt7/g;

    .line 135
    move-result-object p1

    .line 136
    .line 137
    .line 138
    invoke-virtual {p4, p1}, Ls7/a;->A(Lt7/g;)V

    .line 139
    .line 140
    const-wide/16 p1, 0x0

    .line 141
    .line 142
    .line 143
    invoke-static {p1, p2}, Lkotlin/coroutines/jvm/internal/b;->e(J)Ljava/lang/Long;

    .line 144
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Ls7/a$d;->c()Lt7/g;

    .line 148
    move-result-object p0

    .line 149
    .line 150
    .line 151
    invoke-virtual {p4, p0}, Ls7/a;->A(Lt7/g;)V

    .line 152
    return-object p1

    .line 153
    :catchall_1
    move-exception p0

    .line 154
    move-object p1, p4

    .line 155
    goto :goto_3

    .line 156
    .line 157
    :cond_5
    :try_start_3
    iput-object p4, v0, Lio/ktor/utils/io/internal/j$b;->L$0:Ljava/lang/Object;

    .line 158
    const/4 p2, 0x0

    .line 159
    .line 160
    iput-object p2, v0, Lio/ktor/utils/io/internal/j$b;->L$1:Ljava/lang/Object;

    .line 161
    .line 162
    iput p0, v0, Lio/ktor/utils/io/internal/j$b;->I$0:I

    .line 163
    .line 164
    iput v3, v0, Lio/ktor/utils/io/internal/j$b;->label:I

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, p4, v0}, Lio/ktor/utils/io/f;->n(Lr7/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 168
    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 169
    .line 170
    if-ne p1, v1, :cond_6

    .line 171
    return-object v1

    .line 172
    :cond_6
    move-object p1, p4

    .line 173
    :goto_2
    int-to-long p2, p0

    .line 174
    .line 175
    .line 176
    :try_start_4
    invoke-static {p2, p3}, Lkotlin/coroutines/jvm/internal/b;->e(J)Ljava/lang/Long;

    .line 177
    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 178
    .line 179
    sget-object p2, Ls7/a;->Companion:Ls7/a$d;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p2}, Ls7/a$d;->c()Lt7/g;

    .line 183
    move-result-object p2

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1, p2}, Ls7/a;->A(Lt7/g;)V

    .line 187
    return-object p0

    .line 188
    .line 189
    :goto_3
    sget-object p2, Ls7/a;->Companion:Ls7/a$d;

    .line 190
    .line 191
    .line 192
    invoke-virtual {p2}, Ls7/a$d;->c()Lt7/g;

    .line 193
    move-result-object p2

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1, p2}, Ls7/a;->A(Lt7/g;)V

    .line 197
    throw p0
.end method
