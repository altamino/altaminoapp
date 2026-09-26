.class final Lio/ktor/client/plugins/u$g;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/u;->l(Lio/ktor/client/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Le8/q<",
        "Lio/ktor/client/plugins/e0;",
        "Li7/d;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lio/ktor/client/call/b;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "io.ktor.client.plugins.HttpRequestRetry$intercept$1"
    f = "HttpRequestRetry.kt"
    l = {
        0x12a,
        0x13a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $client:Lio/ktor/client/a;

.field I$0:I

.field I$1:I

.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lio/ktor/client/plugins/u;


# direct methods
.method constructor <init>(Lio/ktor/client/plugins/u;Lio/ktor/client/a;Lkotlin/coroutines/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/plugins/u;",
            "Lio/ktor/client/a;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lio/ktor/client/plugins/u$g;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/client/plugins/u$g;->this$0:Lio/ktor/client/plugins/u;

    iput-object p2, p0, Lio/ktor/client/plugins/u$g;->$client:Lio/ktor/client/a;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final f(Lio/ktor/client/plugins/e0;Li7/d;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lio/ktor/client/plugins/e0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Li7/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/plugins/e0;",
            "Li7/d;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lio/ktor/client/call/b;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    new-instance v0, Lio/ktor/client/plugins/u$g;

    iget-object v1, p0, Lio/ktor/client/plugins/u$g;->this$0:Lio/ktor/client/plugins/u;

    iget-object v2, p0, Lio/ktor/client/plugins/u$g;->$client:Lio/ktor/client/a;

    invoke-direct {v0, v1, v2, p3}, Lio/ktor/client/plugins/u$g;-><init>(Lio/ktor/client/plugins/u;Lio/ktor/client/a;Lkotlin/coroutines/d;)V

    iput-object p1, v0, Lio/ktor/client/plugins/u$g;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lio/ktor/client/plugins/u$g;->L$1:Ljava/lang/Object;

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {v0, p1}, Lio/ktor/client/plugins/u$g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/ktor/client/plugins/e0;

    check-cast p2, Li7/d;

    check-cast p3, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/client/plugins/u$g;->f(Lio/ktor/client/plugins/e0;Li7/d;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 6
    move-result-object v2

    .line 7
    .line 8
    iget v0, v1, Lio/ktor/client/plugins/u$g;->label:I

    .line 9
    const/4 v3, 0x2

    .line 10
    const/4 v5, 0x1

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    if-eq v0, v5, :cond_1

    .line 15
    .line 16
    if-ne v0, v3, :cond_0

    .line 17
    .line 18
    iget v0, v1, Lio/ktor/client/plugins/u$g;->I$1:I

    .line 19
    .line 20
    iget v6, v1, Lio/ktor/client/plugins/u$g;->I$0:I

    .line 21
    .line 22
    iget-object v7, v1, Lio/ktor/client/plugins/u$g;->L$6:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v7, Lio/ktor/client/plugins/u$e;

    .line 25
    .line 26
    iget-object v8, v1, Lio/ktor/client/plugins/u$g;->L$5:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v8, Le8/p;

    .line 29
    .line 30
    iget-object v9, v1, Lio/ktor/client/plugins/u$g;->L$4:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v9, Le8/p;

    .line 33
    .line 34
    iget-object v10, v1, Lio/ktor/client/plugins/u$g;->L$3:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v10, Le8/q;

    .line 37
    .line 38
    iget-object v11, v1, Lio/ktor/client/plugins/u$g;->L$2:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v11, Le8/q;

    .line 41
    .line 42
    iget-object v12, v1, Lio/ktor/client/plugins/u$g;->L$1:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v12, Li7/d;

    .line 45
    .line 46
    iget-object v13, v1, Lio/ktor/client/plugins/u$g;->L$0:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v13, Lio/ktor/client/plugins/e0;

    .line 49
    .line 50
    .line 51
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 52
    move v5, v3

    .line 53
    move-object v14, v13

    .line 54
    move-object v13, v12

    .line 55
    move-object v12, v11

    .line 56
    move-object v11, v10

    .line 57
    move-object v10, v9

    .line 58
    move-object v9, v8

    .line 59
    move-object v8, v1

    .line 60
    .line 61
    move/from16 v19, v6

    .line 62
    move v6, v0

    .line 63
    move-object v0, v7

    .line 64
    .line 65
    move/from16 v7, v19

    .line 66
    .line 67
    goto/16 :goto_8

    .line 68
    .line 69
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 70
    .line 71
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 72
    .line 73
    .line 74
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 75
    throw v0

    .line 76
    .line 77
    :cond_1
    iget v6, v1, Lio/ktor/client/plugins/u$g;->I$1:I

    .line 78
    .line 79
    iget v7, v1, Lio/ktor/client/plugins/u$g;->I$0:I

    .line 80
    .line 81
    iget-object v0, v1, Lio/ktor/client/plugins/u$g;->L$6:Ljava/lang/Object;

    .line 82
    move-object v8, v0

    .line 83
    .line 84
    check-cast v8, Li7/d;

    .line 85
    .line 86
    iget-object v0, v1, Lio/ktor/client/plugins/u$g;->L$5:Ljava/lang/Object;

    .line 87
    move-object v9, v0

    .line 88
    .line 89
    check-cast v9, Le8/p;

    .line 90
    .line 91
    iget-object v0, v1, Lio/ktor/client/plugins/u$g;->L$4:Ljava/lang/Object;

    .line 92
    move-object v10, v0

    .line 93
    .line 94
    check-cast v10, Le8/p;

    .line 95
    .line 96
    iget-object v0, v1, Lio/ktor/client/plugins/u$g;->L$3:Ljava/lang/Object;

    .line 97
    move-object v11, v0

    .line 98
    .line 99
    check-cast v11, Le8/q;

    .line 100
    .line 101
    iget-object v0, v1, Lio/ktor/client/plugins/u$g;->L$2:Ljava/lang/Object;

    .line 102
    move-object v12, v0

    .line 103
    .line 104
    check-cast v12, Le8/q;

    .line 105
    .line 106
    iget-object v0, v1, Lio/ktor/client/plugins/u$g;->L$1:Ljava/lang/Object;

    .line 107
    move-object v13, v0

    .line 108
    .line 109
    check-cast v13, Li7/d;

    .line 110
    .line 111
    iget-object v0, v1, Lio/ktor/client/plugins/u$g;->L$0:Ljava/lang/Object;

    .line 112
    move-object v14, v0

    .line 113
    .line 114
    check-cast v14, Lio/ktor/client/plugins/e0;

    .line 115
    .line 116
    .line 117
    :try_start_0
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    .line 119
    move-object/from16 v0, p1

    .line 120
    move v3, v5

    .line 121
    move-object v15, v8

    .line 122
    move-object v8, v1

    .line 123
    .line 124
    goto/16 :goto_4

    .line 125
    :catchall_0
    move-exception v0

    .line 126
    move v3, v5

    .line 127
    move-object v15, v8

    .line 128
    .line 129
    move-object/from16 v16, v12

    .line 130
    .line 131
    move-object/from16 v17, v13

    .line 132
    .line 133
    move-object/from16 v18, v14

    .line 134
    move-object v8, v0

    .line 135
    move v0, v6

    .line 136
    move-object v12, v9

    .line 137
    move-object v13, v10

    .line 138
    move-object v14, v11

    .line 139
    move-object v11, v1

    .line 140
    move v10, v7

    .line 141
    .line 142
    goto/16 :goto_6

    .line 143
    .line 144
    .line 145
    :cond_2
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 146
    .line 147
    iget-object v0, v1, Lio/ktor/client/plugins/u$g;->L$0:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast v0, Lio/ktor/client/plugins/e0;

    .line 150
    .line 151
    iget-object v6, v1, Lio/ktor/client/plugins/u$g;->L$1:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast v6, Li7/d;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v6}, Li7/d;->b()Lio/ktor/util/b;

    .line 157
    move-result-object v7

    .line 158
    .line 159
    .line 160
    invoke-static {}, Lio/ktor/client/plugins/v;->f()Lio/ktor/util/a;

    .line 161
    move-result-object v8

    .line 162
    .line 163
    .line 164
    invoke-interface {v7, v8}, Lio/ktor/util/b;->e(Lio/ktor/util/a;)Ljava/lang/Object;

    .line 165
    move-result-object v7

    .line 166
    .line 167
    check-cast v7, Le8/q;

    .line 168
    .line 169
    if-nez v7, :cond_3

    .line 170
    .line 171
    iget-object v7, v1, Lio/ktor/client/plugins/u$g;->this$0:Lio/ktor/client/plugins/u;

    .line 172
    .line 173
    .line 174
    invoke-static {v7}, Lio/ktor/client/plugins/u;->g(Lio/ktor/client/plugins/u;)Le8/q;

    .line 175
    move-result-object v7

    .line 176
    .line 177
    .line 178
    :cond_3
    invoke-virtual {v6}, Li7/d;->b()Lio/ktor/util/b;

    .line 179
    move-result-object v8

    .line 180
    .line 181
    .line 182
    invoke-static {}, Lio/ktor/client/plugins/v;->e()Lio/ktor/util/a;

    .line 183
    move-result-object v9

    .line 184
    .line 185
    .line 186
    invoke-interface {v8, v9}, Lio/ktor/util/b;->e(Lio/ktor/util/a;)Ljava/lang/Object;

    .line 187
    move-result-object v8

    .line 188
    .line 189
    check-cast v8, Le8/q;

    .line 190
    .line 191
    if-nez v8, :cond_4

    .line 192
    .line 193
    iget-object v8, v1, Lio/ktor/client/plugins/u$g;->this$0:Lio/ktor/client/plugins/u;

    .line 194
    .line 195
    .line 196
    invoke-static {v8}, Lio/ktor/client/plugins/u;->h(Lio/ktor/client/plugins/u;)Le8/q;

    .line 197
    move-result-object v8

    .line 198
    .line 199
    .line 200
    :cond_4
    invoke-virtual {v6}, Li7/d;->b()Lio/ktor/util/b;

    .line 201
    move-result-object v9

    .line 202
    .line 203
    .line 204
    invoke-static {}, Lio/ktor/client/plugins/v;->b()Lio/ktor/util/a;

    .line 205
    move-result-object v10

    .line 206
    .line 207
    .line 208
    invoke-interface {v9, v10}, Lio/ktor/util/b;->e(Lio/ktor/util/a;)Ljava/lang/Object;

    .line 209
    move-result-object v9

    .line 210
    .line 211
    check-cast v9, Ljava/lang/Integer;

    .line 212
    .line 213
    if-eqz v9, :cond_5

    .line 214
    .line 215
    .line 216
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 217
    move-result v9

    .line 218
    goto :goto_0

    .line 219
    .line 220
    :cond_5
    iget-object v9, v1, Lio/ktor/client/plugins/u$g;->this$0:Lio/ktor/client/plugins/u;

    .line 221
    .line 222
    .line 223
    invoke-static {v9}, Lio/ktor/client/plugins/u;->e(Lio/ktor/client/plugins/u;)I

    .line 224
    move-result v9

    .line 225
    .line 226
    .line 227
    :goto_0
    invoke-virtual {v6}, Li7/d;->b()Lio/ktor/util/b;

    .line 228
    move-result-object v10

    .line 229
    .line 230
    .line 231
    invoke-static {}, Lio/ktor/client/plugins/v;->d()Lio/ktor/util/a;

    .line 232
    move-result-object v11

    .line 233
    .line 234
    .line 235
    invoke-interface {v10, v11}, Lio/ktor/util/b;->e(Lio/ktor/util/a;)Ljava/lang/Object;

    .line 236
    move-result-object v10

    .line 237
    .line 238
    check-cast v10, Le8/p;

    .line 239
    .line 240
    if-nez v10, :cond_6

    .line 241
    .line 242
    iget-object v10, v1, Lio/ktor/client/plugins/u$g;->this$0:Lio/ktor/client/plugins/u;

    .line 243
    .line 244
    .line 245
    invoke-static {v10}, Lio/ktor/client/plugins/u;->b(Lio/ktor/client/plugins/u;)Le8/p;

    .line 246
    move-result-object v10

    .line 247
    .line 248
    .line 249
    :cond_6
    invoke-virtual {v6}, Li7/d;->b()Lio/ktor/util/b;

    .line 250
    move-result-object v11

    .line 251
    .line 252
    .line 253
    invoke-static {}, Lio/ktor/client/plugins/v;->c()Lio/ktor/util/a;

    .line 254
    move-result-object v12

    .line 255
    .line 256
    .line 257
    invoke-interface {v11, v12}, Lio/ktor/util/b;->e(Lio/ktor/util/a;)Ljava/lang/Object;

    .line 258
    move-result-object v11

    .line 259
    .line 260
    check-cast v11, Le8/p;

    .line 261
    .line 262
    if-nez v11, :cond_7

    .line 263
    .line 264
    iget-object v11, v1, Lio/ktor/client/plugins/u$g;->this$0:Lio/ktor/client/plugins/u;

    .line 265
    .line 266
    .line 267
    invoke-static {v11}, Lio/ktor/client/plugins/u;->f(Lio/ktor/client/plugins/u;)Le8/p;

    .line 268
    move-result-object v11

    .line 269
    :cond_7
    const/4 v12, 0x0

    .line 270
    move-object v14, v0

    .line 271
    move-object v13, v6

    .line 272
    move v6, v9

    .line 273
    move-object v9, v11

    .line 274
    const/4 v0, 0x0

    .line 275
    move-object v11, v8

    .line 276
    move-object v8, v1

    .line 277
    .line 278
    move/from16 v19, v12

    .line 279
    move-object v12, v7

    .line 280
    .line 281
    move/from16 v7, v19

    .line 282
    .line 283
    :goto_1
    iget-object v15, v8, Lio/ktor/client/plugins/u$g;->this$0:Lio/ktor/client/plugins/u;

    .line 284
    .line 285
    .line 286
    invoke-static {v15, v13}, Lio/ktor/client/plugins/u;->i(Lio/ktor/client/plugins/u;Li7/d;)Li7/d;

    .line 287
    move-result-object v15

    .line 288
    .line 289
    if-eqz v0, :cond_8

    .line 290
    .line 291
    :try_start_1
    new-instance v3, Lio/ktor/client/plugins/u$c;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0}, Lio/ktor/client/plugins/u$e;->c()Lio/ktor/client/statement/c;

    .line 295
    move-result-object v4

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0}, Lio/ktor/client/plugins/u$e;->a()Ljava/lang/Throwable;

    .line 299
    move-result-object v5

    .line 300
    .line 301
    .line 302
    invoke-virtual {v0}, Lio/ktor/client/plugins/u$e;->d()I

    .line 303
    move-result v0

    .line 304
    .line 305
    .line 306
    invoke-direct {v3, v13, v4, v5, v0}, Lio/ktor/client/plugins/u$c;-><init>(Li7/d;Lio/ktor/client/statement/c;Ljava/lang/Throwable;I)V

    .line 307
    .line 308
    .line 309
    invoke-interface {v9, v3, v15}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 310
    goto :goto_3

    .line 311
    :catchall_1
    move-exception v0

    .line 312
    .line 313
    move-object/from16 v16, v12

    .line 314
    .line 315
    move-object/from16 v17, v13

    .line 316
    .line 317
    move-object/from16 v18, v14

    .line 318
    const/4 v3, 0x1

    .line 319
    :goto_2
    move-object v12, v9

    .line 320
    move-object v13, v10

    .line 321
    move-object v14, v11

    .line 322
    move v10, v7

    .line 323
    move-object v11, v8

    .line 324
    move-object v8, v0

    .line 325
    move v0, v6

    .line 326
    goto :goto_6

    .line 327
    .line 328
    :cond_8
    :goto_3
    :try_start_2
    iput-object v14, v8, Lio/ktor/client/plugins/u$g;->L$0:Ljava/lang/Object;

    .line 329
    .line 330
    iput-object v13, v8, Lio/ktor/client/plugins/u$g;->L$1:Ljava/lang/Object;

    .line 331
    .line 332
    iput-object v12, v8, Lio/ktor/client/plugins/u$g;->L$2:Ljava/lang/Object;

    .line 333
    .line 334
    iput-object v11, v8, Lio/ktor/client/plugins/u$g;->L$3:Ljava/lang/Object;

    .line 335
    .line 336
    iput-object v10, v8, Lio/ktor/client/plugins/u$g;->L$4:Ljava/lang/Object;

    .line 337
    .line 338
    iput-object v9, v8, Lio/ktor/client/plugins/u$g;->L$5:Ljava/lang/Object;

    .line 339
    .line 340
    iput-object v15, v8, Lio/ktor/client/plugins/u$g;->L$6:Ljava/lang/Object;

    .line 341
    .line 342
    iput v7, v8, Lio/ktor/client/plugins/u$g;->I$0:I

    .line 343
    .line 344
    iput v6, v8, Lio/ktor/client/plugins/u$g;->I$1:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 345
    const/4 v3, 0x1

    .line 346
    .line 347
    :try_start_3
    iput v3, v8, Lio/ktor/client/plugins/u$g;->label:I

    .line 348
    .line 349
    .line 350
    invoke-interface {v14, v15, v8}, Lio/ktor/client/plugins/e0;->a(Li7/d;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 351
    move-result-object v0

    .line 352
    .line 353
    if-ne v0, v2, :cond_9

    .line 354
    return-object v2

    .line 355
    .line 356
    :cond_9
    :goto_4
    check-cast v0, Lio/ktor/client/call/b;

    .line 357
    .line 358
    iget-object v4, v8, Lio/ktor/client/plugins/u$g;->this$0:Lio/ktor/client/plugins/u;

    .line 359
    .line 360
    .line 361
    invoke-static {v4, v7, v6, v12, v0}, Lio/ktor/client/plugins/u;->j(Lio/ktor/client/plugins/u;IILe8/q;Lio/ktor/client/call/b;)Z

    .line 362
    move-result v4

    .line 363
    .line 364
    if-nez v4, :cond_a

    .line 365
    return-object v0

    .line 366
    .line 367
    :cond_a
    new-instance v4, Lio/ktor/client/plugins/u$e;

    .line 368
    .line 369
    add-int/lit8 v7, v7, 0x1

    .line 370
    .line 371
    .line 372
    invoke-virtual {v0}, Lio/ktor/client/call/b;->f()Lio/ktor/client/statement/c;

    .line 373
    move-result-object v0

    .line 374
    const/4 v5, 0x0

    .line 375
    .line 376
    .line 377
    invoke-direct {v4, v15, v7, v0, v5}, Lio/ktor/client/plugins/u$e;-><init>(Li7/d;ILio/ktor/client/statement/c;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 378
    move v0, v6

    .line 379
    move v6, v7

    .line 380
    const/4 v5, 0x0

    .line 381
    move-object v7, v4

    .line 382
    .line 383
    move-object/from16 v19, v14

    .line 384
    move-object v14, v11

    .line 385
    move-object v11, v12

    .line 386
    move-object v12, v13

    .line 387
    .line 388
    move-object/from16 v13, v19

    .line 389
    goto :goto_7

    .line 390
    :catchall_2
    move-exception v0

    .line 391
    .line 392
    :goto_5
    move-object/from16 v16, v12

    .line 393
    .line 394
    move-object/from16 v17, v13

    .line 395
    .line 396
    move-object/from16 v18, v14

    .line 397
    goto :goto_2

    .line 398
    :catchall_3
    move-exception v0

    .line 399
    const/4 v3, 0x1

    .line 400
    goto :goto_5

    .line 401
    .line 402
    :goto_6
    iget-object v4, v11, Lio/ktor/client/plugins/u$g;->this$0:Lio/ktor/client/plugins/u;

    .line 403
    move v5, v10

    .line 404
    move v6, v0

    .line 405
    move-object v7, v14

    .line 406
    .line 407
    move-object/from16 p1, v8

    .line 408
    move-object v8, v15

    .line 409
    .line 410
    move-object/from16 v9, p1

    .line 411
    .line 412
    .line 413
    invoke-static/range {v4 .. v9}, Lio/ktor/client/plugins/u;->k(Lio/ktor/client/plugins/u;IILe8/q;Li7/d;Ljava/lang/Throwable;)Z

    .line 414
    move-result v4

    .line 415
    .line 416
    if-eqz v4, :cond_c

    .line 417
    .line 418
    new-instance v4, Lio/ktor/client/plugins/u$e;

    .line 419
    .line 420
    add-int/lit8 v10, v10, 0x1

    .line 421
    .line 422
    move-object/from16 v6, p1

    .line 423
    const/4 v5, 0x0

    .line 424
    .line 425
    .line 426
    invoke-direct {v4, v15, v10, v5, v6}, Lio/ktor/client/plugins/u$e;-><init>(Li7/d;ILio/ktor/client/statement/c;Ljava/lang/Throwable;)V

    .line 427
    move-object v7, v4

    .line 428
    move v6, v10

    .line 429
    move-object v8, v11

    .line 430
    move-object v9, v12

    .line 431
    move-object v10, v13

    .line 432
    .line 433
    move-object/from16 v11, v16

    .line 434
    .line 435
    move-object/from16 v12, v17

    .line 436
    .line 437
    move-object/from16 v13, v18

    .line 438
    .line 439
    :goto_7
    iget-object v4, v8, Lio/ktor/client/plugins/u$g;->$client:Lio/ktor/client/a;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v4}, Lio/ktor/client/a;->l()Lj7/b;

    .line 443
    move-result-object v4

    .line 444
    .line 445
    sget-object v15, Lio/ktor/client/plugins/u;->Plugin:Lio/ktor/client/plugins/u$d;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v15}, Lio/ktor/client/plugins/u$d;->c()Lj7/a;

    .line 449
    move-result-object v15

    .line 450
    .line 451
    .line 452
    invoke-virtual {v4, v15, v7}, Lj7/b;->a(Lj7/a;Ljava/lang/Object;)V

    .line 453
    .line 454
    new-instance v4, Lio/ktor/client/plugins/u$b;

    .line 455
    .line 456
    .line 457
    invoke-virtual {v7}, Lio/ktor/client/plugins/u$e;->b()Li7/d;

    .line 458
    move-result-object v15

    .line 459
    .line 460
    .line 461
    invoke-virtual {v7}, Lio/ktor/client/plugins/u$e;->c()Lio/ktor/client/statement/c;

    .line 462
    move-result-object v3

    .line 463
    .line 464
    .line 465
    invoke-virtual {v7}, Lio/ktor/client/plugins/u$e;->a()Ljava/lang/Throwable;

    .line 466
    move-result-object v5

    .line 467
    .line 468
    .line 469
    invoke-direct {v4, v15, v3, v5}, Lio/ktor/client/plugins/u$b;-><init>(Li7/d;Lio/ktor/client/statement/c;Ljava/lang/Throwable;)V

    .line 470
    .line 471
    iget-object v3, v8, Lio/ktor/client/plugins/u$g;->this$0:Lio/ktor/client/plugins/u;

    .line 472
    .line 473
    .line 474
    invoke-static {v3}, Lio/ktor/client/plugins/u;->a(Lio/ktor/client/plugins/u;)Le8/p;

    .line 475
    move-result-object v3

    .line 476
    .line 477
    .line 478
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/b;->d(I)Ljava/lang/Integer;

    .line 479
    move-result-object v5

    .line 480
    .line 481
    .line 482
    invoke-interface {v10, v4, v5}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    move-result-object v4

    .line 484
    .line 485
    iput-object v13, v8, Lio/ktor/client/plugins/u$g;->L$0:Ljava/lang/Object;

    .line 486
    .line 487
    iput-object v12, v8, Lio/ktor/client/plugins/u$g;->L$1:Ljava/lang/Object;

    .line 488
    .line 489
    iput-object v11, v8, Lio/ktor/client/plugins/u$g;->L$2:Ljava/lang/Object;

    .line 490
    .line 491
    iput-object v14, v8, Lio/ktor/client/plugins/u$g;->L$3:Ljava/lang/Object;

    .line 492
    .line 493
    iput-object v10, v8, Lio/ktor/client/plugins/u$g;->L$4:Ljava/lang/Object;

    .line 494
    .line 495
    iput-object v9, v8, Lio/ktor/client/plugins/u$g;->L$5:Ljava/lang/Object;

    .line 496
    .line 497
    iput-object v7, v8, Lio/ktor/client/plugins/u$g;->L$6:Ljava/lang/Object;

    .line 498
    .line 499
    iput v6, v8, Lio/ktor/client/plugins/u$g;->I$0:I

    .line 500
    .line 501
    iput v0, v8, Lio/ktor/client/plugins/u$g;->I$1:I

    .line 502
    const/4 v5, 0x2

    .line 503
    .line 504
    iput v5, v8, Lio/ktor/client/plugins/u$g;->label:I

    .line 505
    .line 506
    .line 507
    invoke-interface {v3, v4, v8}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    move-result-object v3

    .line 509
    .line 510
    if-ne v3, v2, :cond_b

    .line 511
    return-object v2

    .line 512
    .line 513
    :cond_b
    move/from16 v19, v6

    .line 514
    move v6, v0

    .line 515
    move-object v0, v7

    .line 516
    .line 517
    move/from16 v7, v19

    .line 518
    .line 519
    move-object/from16 v20, v12

    .line 520
    move-object v12, v11

    .line 521
    move-object v11, v14

    .line 522
    move-object v14, v13

    .line 523
    .line 524
    move-object/from16 v13, v20

    .line 525
    .line 526
    .line 527
    :goto_8
    invoke-static {}, Lio/ktor/client/plugins/v;->a()Lorg/slf4j/a;

    .line 528
    move-result-object v3

    .line 529
    .line 530
    new-instance v4, Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 534
    .line 535
    const-string v15, "Retrying request "

    .line 536
    .line 537
    .line 538
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    invoke-virtual {v13}, Li7/d;->h()Lio/ktor/http/f0;

    .line 542
    move-result-object v15

    .line 543
    .line 544
    .line 545
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 546
    .line 547
    const-string v15, " attempt: "

    .line 548
    .line 549
    .line 550
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 557
    move-result-object v4

    .line 558
    .line 559
    .line 560
    invoke-interface {v3, v4}, Lorg/slf4j/a;->a(Ljava/lang/String;)V

    .line 561
    move v3, v5

    .line 562
    const/4 v5, 0x1

    .line 563
    .line 564
    goto/16 :goto_1

    .line 565
    .line 566
    :cond_c
    move-object/from16 v6, p1

    .line 567
    throw v6
.end method
