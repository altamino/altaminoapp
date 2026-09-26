.class public final Lio/ktor/utils/io/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic a(Lio/ktor/utils/io/g;Lio/ktor/utils/io/j;JLkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/h;->c(Lio/ktor/utils/io/g;Lio/ktor/utils/io/j;JLkotlin/coroutines/d;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final b(Lio/ktor/utils/io/g;Lio/ktor/utils/io/j;JLkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 7
    .param p0    # Lio/ktor/utils/io/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lio/ktor/utils/io/j;
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
            "Lio/ktor/utils/io/j;",
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
    if-eq p0, p1, :cond_3

    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    cmp-long v2, p2, v0

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/coroutines/jvm/internal/b;->e(J)Ljava/lang/Long;

    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    .line 15
    :cond_0
    instance-of v0, p0, Lio/ktor/utils/io/a;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    instance-of v0, p1, Lio/ktor/utils/io/a;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    move-object v1, p1

    .line 23
    .line 24
    check-cast v1, Lio/ktor/utils/io/a;

    .line 25
    move-object v2, p0

    .line 26
    .line 27
    check-cast v2, Lio/ktor/utils/io/a;

    .line 28
    const/4 v5, 0x0

    .line 29
    move-wide v3, p2

    .line 30
    move-object v6, p4

    .line 31
    .line 32
    .line 33
    invoke-virtual/range {v1 .. v6}, Lio/ktor/utils/io/a;->J(Lio/ktor/utils/io/a;JLio/ktor/utils/io/internal/d;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    .line 37
    :cond_1
    instance-of v0, p0, Lio/ktor/utils/io/f;

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    instance-of v0, p1, Lio/ktor/utils/io/f;

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    check-cast p0, Lio/ktor/utils/io/f;

    .line 46
    .line 47
    check-cast p1, Lio/ktor/utils/io/f;

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    const-wide p2, 0x7fffffffffffffffL

    .line 53
    .line 54
    .line 55
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/internal/j;->b(Lio/ktor/utils/io/f;Lio/ktor/utils/io/f;JLkotlin/coroutines/d;)Ljava/lang/Object;

    .line 56
    move-result-object p0

    .line 57
    return-object p0

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/h;->c(Lio/ktor/utils/io/g;Lio/ktor/utils/io/j;JLkotlin/coroutines/d;)Ljava/lang/Object;

    .line 61
    move-result-object p0

    .line 62
    return-object p0

    .line 63
    .line 64
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 65
    .line 66
    const-string p1, "Failed requirement."

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 71
    .line 72
    .line 73
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 74
    throw p0
.end method

.method private static final c(Lio/ktor/utils/io/g;Lio/ktor/utils/io/j;JLkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/g;",
            "Lio/ktor/utils/io/j;",
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
    move-object/from16 v0, p4

    .line 3
    .line 4
    instance-of v1, v0, Lio/ktor/utils/io/h$a;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    move-object v1, v0

    .line 8
    .line 9
    check-cast v1, Lio/ktor/utils/io/h$a;

    .line 10
    .line 11
    iget v2, v1, Lio/ktor/utils/io/h$a;->label:I

    .line 12
    .line 13
    const/high16 v3, -0x80000000

    .line 14
    .line 15
    and-int v4, v2, v3

    .line 16
    .line 17
    if-eqz v4, :cond_0

    .line 18
    sub-int/2addr v2, v3

    .line 19
    .line 20
    iput v2, v1, Lio/ktor/utils/io/h$a;->label:I

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    new-instance v1, Lio/ktor/utils/io/h$a;

    .line 24
    .line 25
    .line 26
    invoke-direct {v1, v0}, Lio/ktor/utils/io/h$a;-><init>(Lkotlin/coroutines/d;)V

    .line 27
    .line 28
    :goto_0
    iget-object v0, v1, Lio/ktor/utils/io/h$a;->result:Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    iget v3, v1, Lio/ktor/utils/io/h$a;->label:I

    .line 35
    .line 36
    const-wide/16 v4, 0x0

    .line 37
    const/4 v6, 0x2

    .line 38
    const/4 v7, 0x1

    .line 39
    .line 40
    if-eqz v3, :cond_3

    .line 41
    .line 42
    if-eq v3, v7, :cond_2

    .line 43
    .line 44
    if-ne v3, v6, :cond_1

    .line 45
    .line 46
    iget v3, v1, Lio/ktor/utils/io/h$a;->I$1:I

    .line 47
    .line 48
    iget-wide v8, v1, Lio/ktor/utils/io/h$a;->J$1:J

    .line 49
    .line 50
    iget v10, v1, Lio/ktor/utils/io/h$a;->I$0:I

    .line 51
    .line 52
    iget-wide v11, v1, Lio/ktor/utils/io/h$a;->J$0:J

    .line 53
    .line 54
    iget-object v13, v1, Lio/ktor/utils/io/h$a;->L$2:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v13, Ls7/a;

    .line 57
    .line 58
    iget-object v14, v1, Lio/ktor/utils/io/h$a;->L$1:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v14, Lio/ktor/utils/io/j;

    .line 61
    .line 62
    iget-object v15, v1, Lio/ktor/utils/io/h$a;->L$0:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v15, Lio/ktor/utils/io/g;

    .line 65
    .line 66
    .line 67
    :try_start_0
    invoke-static {v0}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    move-object v5, v1

    .line 69
    move v4, v3

    .line 70
    move-object v1, v14

    .line 71
    move-object v0, v15

    .line 72
    .line 73
    move/from16 v17, v10

    .line 74
    move-object v10, v2

    .line 75
    move-wide v2, v11

    .line 76
    .line 77
    move/from16 v11, v17

    .line 78
    .line 79
    goto/16 :goto_3

    .line 80
    :catchall_0
    move-exception v0

    .line 81
    .line 82
    goto/16 :goto_6

    .line 83
    .line 84
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 85
    .line 86
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 87
    .line 88
    .line 89
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 90
    throw v0

    .line 91
    .line 92
    :cond_2
    iget-wide v8, v1, Lio/ktor/utils/io/h$a;->J$1:J

    .line 93
    .line 94
    iget v3, v1, Lio/ktor/utils/io/h$a;->I$0:I

    .line 95
    .line 96
    iget-wide v10, v1, Lio/ktor/utils/io/h$a;->J$0:J

    .line 97
    .line 98
    iget-object v12, v1, Lio/ktor/utils/io/h$a;->L$2:Ljava/lang/Object;

    .line 99
    move-object v13, v12

    .line 100
    .line 101
    check-cast v13, Ls7/a;

    .line 102
    .line 103
    iget-object v12, v1, Lio/ktor/utils/io/h$a;->L$1:Ljava/lang/Object;

    .line 104
    move-object v14, v12

    .line 105
    .line 106
    check-cast v14, Lio/ktor/utils/io/j;

    .line 107
    .line 108
    iget-object v12, v1, Lio/ktor/utils/io/h$a;->L$0:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v12, Lio/ktor/utils/io/g;

    .line 111
    .line 112
    .line 113
    :try_start_1
    invoke-static {v0}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    goto :goto_2

    .line 115
    .line 116
    .line 117
    :cond_3
    invoke-static {v0}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 118
    .line 119
    sget-object v0, Ls7/a;->Companion:Ls7/a$d;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Ls7/a$d;->c()Lt7/g;

    .line 123
    move-result-object v0

    .line 124
    .line 125
    .line 126
    invoke-interface {v0}, Lt7/g;->s0()Ljava/lang/Object;

    .line 127
    move-result-object v0

    .line 128
    .line 129
    check-cast v0, Ls7/a;

    .line 130
    .line 131
    .line 132
    invoke-interface/range {p1 .. p1}, Lio/ktor/utils/io/j;->h()Z

    .line 133
    move-result v3

    .line 134
    xor-int/2addr v3, v7

    .line 135
    move-object v13, v0

    .line 136
    move-object v8, v1

    .line 137
    move-object v9, v2

    .line 138
    move v10, v3

    .line 139
    move-wide v11, v4

    .line 140
    .line 141
    move-object/from16 v0, p0

    .line 142
    .line 143
    move-object/from16 v1, p1

    .line 144
    .line 145
    move-wide/from16 v2, p2

    .line 146
    .line 147
    :goto_1
    sub-long v14, v2, v11

    .line 148
    .line 149
    cmp-long v16, v14, v4

    .line 150
    .line 151
    if-eqz v16, :cond_8

    .line 152
    .line 153
    .line 154
    :try_start_2
    invoke-virtual {v13}, Lr7/a;->e()I

    .line 155
    move-result v4

    .line 156
    int-to-long v4, v4

    .line 157
    .line 158
    .line 159
    invoke-static {v4, v5, v14, v15}, Ljava/lang/Math;->min(JJ)J

    .line 160
    move-result-wide v4

    .line 161
    long-to-int v4, v4

    .line 162
    .line 163
    .line 164
    invoke-virtual {v13, v4}, Lr7/a;->s(I)V

    .line 165
    .line 166
    iput-object v0, v8, Lio/ktor/utils/io/h$a;->L$0:Ljava/lang/Object;

    .line 167
    .line 168
    iput-object v1, v8, Lio/ktor/utils/io/h$a;->L$1:Ljava/lang/Object;

    .line 169
    .line 170
    iput-object v13, v8, Lio/ktor/utils/io/h$a;->L$2:Ljava/lang/Object;

    .line 171
    .line 172
    iput-wide v2, v8, Lio/ktor/utils/io/h$a;->J$0:J

    .line 173
    .line 174
    iput v10, v8, Lio/ktor/utils/io/h$a;->I$0:I

    .line 175
    .line 176
    iput-wide v11, v8, Lio/ktor/utils/io/h$a;->J$1:J

    .line 177
    .line 178
    iput v7, v8, Lio/ktor/utils/io/h$a;->label:I

    .line 179
    .line 180
    .line 181
    invoke-interface {v0, v13, v8}, Lio/ktor/utils/io/g;->g(Ls7/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 182
    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 183
    .line 184
    if-ne v4, v9, :cond_4

    .line 185
    return-object v9

    .line 186
    :cond_4
    move-object v14, v1

    .line 187
    move-object v1, v8

    .line 188
    .line 189
    move-wide/from16 v17, v11

    .line 190
    move-object v12, v0

    .line 191
    move-object v0, v4

    .line 192
    .line 193
    move-wide/from16 v19, v2

    .line 194
    move-object v2, v9

    .line 195
    move v3, v10

    .line 196
    .line 197
    move-wide/from16 v8, v17

    .line 198
    .line 199
    move-wide/from16 v10, v19

    .line 200
    .line 201
    :goto_2
    :try_start_3
    check-cast v0, Ljava/lang/Number;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 205
    move-result v0

    .line 206
    const/4 v4, -0x1

    .line 207
    .line 208
    if-eq v0, v4, :cond_7

    .line 209
    .line 210
    iput-object v12, v1, Lio/ktor/utils/io/h$a;->L$0:Ljava/lang/Object;

    .line 211
    .line 212
    iput-object v14, v1, Lio/ktor/utils/io/h$a;->L$1:Ljava/lang/Object;

    .line 213
    .line 214
    iput-object v13, v1, Lio/ktor/utils/io/h$a;->L$2:Ljava/lang/Object;

    .line 215
    .line 216
    iput-wide v10, v1, Lio/ktor/utils/io/h$a;->J$0:J

    .line 217
    .line 218
    iput v3, v1, Lio/ktor/utils/io/h$a;->I$0:I

    .line 219
    .line 220
    iput-wide v8, v1, Lio/ktor/utils/io/h$a;->J$1:J

    .line 221
    .line 222
    iput v0, v1, Lio/ktor/utils/io/h$a;->I$1:I

    .line 223
    .line 224
    iput v6, v1, Lio/ktor/utils/io/h$a;->label:I

    .line 225
    .line 226
    .line 227
    invoke-interface {v14, v13, v1}, Lio/ktor/utils/io/j;->n(Lr7/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 228
    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 229
    .line 230
    if-ne v4, v2, :cond_5

    .line 231
    return-object v2

    .line 232
    :cond_5
    move v4, v0

    .line 233
    move-object v5, v1

    .line 234
    move-object v0, v12

    .line 235
    move-object v1, v14

    .line 236
    .line 237
    move-wide/from16 v17, v10

    .line 238
    move-object v10, v2

    .line 239
    move v11, v3

    .line 240
    .line 241
    move-wide/from16 v2, v17

    .line 242
    :goto_3
    int-to-long v14, v4

    .line 243
    add-long/2addr v8, v14

    .line 244
    .line 245
    if-eqz v11, :cond_6

    .line 246
    .line 247
    .line 248
    :try_start_4
    invoke-interface {v0}, Lio/ktor/utils/io/g;->f()I

    .line 249
    move-result v4

    .line 250
    .line 251
    if-nez v4, :cond_6

    .line 252
    .line 253
    .line 254
    invoke-interface {v1}, Lio/ktor/utils/io/j;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 255
    goto :goto_4

    .line 256
    :catchall_1
    move-exception v0

    .line 257
    move-object v14, v1

    .line 258
    goto :goto_6

    .line 259
    .line 260
    :cond_6
    :goto_4
    move-wide/from16 v17, v8

    .line 261
    move-object v8, v5

    .line 262
    move-object v9, v10

    .line 263
    move v10, v11

    .line 264
    .line 265
    const-wide/16 v4, 0x0

    .line 266
    .line 267
    move-wide/from16 v11, v17

    .line 268
    goto :goto_1

    .line 269
    :cond_7
    move-wide v11, v8

    .line 270
    goto :goto_5

    .line 271
    :cond_8
    move-object v14, v1

    .line 272
    .line 273
    .line 274
    :goto_5
    :try_start_5
    invoke-static {v11, v12}, Lkotlin/coroutines/jvm/internal/b;->e(J)Ljava/lang/Long;

    .line 275
    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 276
    .line 277
    sget-object v1, Ls7/a;->Companion:Ls7/a$d;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1}, Ls7/a$d;->c()Lt7/g;

    .line 281
    move-result-object v1

    .line 282
    .line 283
    .line 284
    invoke-virtual {v13, v1}, Ls7/a;->A(Lt7/g;)V

    .line 285
    return-object v0

    .line 286
    .line 287
    .line 288
    :goto_6
    :try_start_6
    invoke-interface {v14, v0}, Lio/ktor/utils/io/j;->c(Ljava/lang/Throwable;)Z

    .line 289
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 290
    :catchall_2
    move-exception v0

    .line 291
    .line 292
    sget-object v1, Ls7/a;->Companion:Ls7/a$d;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v1}, Ls7/a$d;->c()Lt7/g;

    .line 296
    move-result-object v1

    .line 297
    .line 298
    .line 299
    invoke-virtual {v13, v1}, Ls7/a;->A(Lt7/g;)V

    .line 300
    throw v0
.end method
