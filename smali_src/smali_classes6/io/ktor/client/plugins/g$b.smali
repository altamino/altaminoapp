.class final Lio/ktor/client/plugins/g$b;
.super Lkotlin/coroutines/jvm/internal/l;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/g;->b(Lio/ktor/client/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/l;",
        "Le8/q<",
        "Lio/ktor/util/pipeline/e<",
        "Lio/ktor/client/statement/d;",
        "Lio/ktor/client/call/b;",
        ">;",
        "Lio/ktor/client/statement/d;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lw7/l0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultTransform.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultTransform.kt\nio/ktor/client/plugins/DefaultTransformKt$defaultTransformers$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,144:1\n1#2:145\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/f;
    c = "io.ktor.client.plugins.DefaultTransformKt$defaultTransformers$2"
    f = "DefaultTransform.kt"
    l = {
        0x44,
        0x48,
        0x48,
        0x4e,
        0x4e,
        0x52,
        0x5a,
        0x74,
        0x79
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Lio/ktor/client/plugins/g$b;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/l;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final f(Lio/ktor/util/pipeline/e;Lio/ktor/client/statement/d;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lio/ktor/util/pipeline/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/ktor/client/statement/d;
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
            "Lio/ktor/util/pipeline/e<",
            "Lio/ktor/client/statement/d;",
            "Lio/ktor/client/call/b;",
            ">;",
            "Lio/ktor/client/statement/d;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    new-instance v0, Lio/ktor/client/plugins/g$b;

    invoke-direct {v0, p3}, Lio/ktor/client/plugins/g$b;-><init>(Lkotlin/coroutines/d;)V

    iput-object p1, v0, Lio/ktor/client/plugins/g$b;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lio/ktor/client/plugins/g$b;->L$1:Ljava/lang/Object;

    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    invoke-virtual {v0, p1}, Lio/ktor/client/plugins/g$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/ktor/util/pipeline/e;

    check-cast p2, Lio/ktor/client/statement/d;

    check-cast p3, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/client/plugins/g$b;->f(Lio/ktor/util/pipeline/e;Lio/ktor/client/statement/d;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v6, p0

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->e()Ljava/lang/Object;

    .line 6
    move-result-object v7

    .line 7
    .line 8
    iget v0, v6, Lio/ktor/client/plugins/g$b;->label:I

    .line 9
    const/4 v8, 0x0

    .line 10
    const/4 v1, 0x1

    .line 11
    const/4 v9, 0x0

    .line 12
    .line 13
    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    throw v0

    .line 23
    .line 24
    :pswitch_0
    iget-object v0, v6, Lio/ktor/client/plugins/g$b;->L$1:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Lo7/a;

    .line 27
    .line 28
    iget-object v1, v6, Lio/ktor/client/plugins/g$b;->L$0:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v1, Lio/ktor/util/pipeline/e;

    .line 31
    .line 32
    .line 33
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 34
    move-object v4, v0

    .line 35
    .line 36
    move-object/from16 v0, p1

    .line 37
    .line 38
    goto/16 :goto_d

    .line 39
    .line 40
    :pswitch_1
    iget-object v0, v6, Lio/ktor/client/plugins/g$b;->L$1:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v0, Lo7/a;

    .line 43
    .line 44
    iget-object v1, v6, Lio/ktor/client/plugins/g$b;->L$0:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v1, Lio/ktor/util/pipeline/e;

    .line 47
    .line 48
    .line 49
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 50
    move-object v4, v0

    .line 51
    .line 52
    move-object/from16 v0, p1

    .line 53
    .line 54
    goto/16 :goto_b

    .line 55
    .line 56
    :pswitch_2
    iget-object v0, v6, Lio/ktor/client/plugins/g$b;->L$1:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Lo7/a;

    .line 59
    .line 60
    iget-object v1, v6, Lio/ktor/client/plugins/g$b;->L$0:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v1, Lio/ktor/util/pipeline/e;

    .line 63
    .line 64
    .line 65
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 66
    move-object v14, v0

    .line 67
    .line 68
    move-object/from16 v0, p1

    .line 69
    .line 70
    goto/16 :goto_a

    .line 71
    .line 72
    :pswitch_3
    iget-object v0, v6, Lio/ktor/client/plugins/g$b;->L$2:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v0, Lio/ktor/client/statement/c;

    .line 75
    .line 76
    iget-object v2, v6, Lio/ktor/client/plugins/g$b;->L$1:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v2, Lo7/a;

    .line 79
    .line 80
    iget-object v3, v6, Lio/ktor/client/plugins/g$b;->L$0:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v3, Lio/ktor/util/pipeline/e;

    .line 83
    .line 84
    .line 85
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 86
    move-object v14, v2

    .line 87
    move-object v15, v3

    .line 88
    move-object v2, v0

    .line 89
    .line 90
    move-object/from16 v0, p1

    .line 91
    .line 92
    goto/16 :goto_8

    .line 93
    .line 94
    :pswitch_4
    iget-object v0, v6, Lio/ktor/client/plugins/g$b;->L$1:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v0, Lo7/a;

    .line 97
    .line 98
    iget-object v1, v6, Lio/ktor/client/plugins/g$b;->L$0:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v1, Lio/ktor/util/pipeline/e;

    .line 101
    .line 102
    .line 103
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 104
    move-object v2, v0

    .line 105
    .line 106
    move-object/from16 v0, p1

    .line 107
    .line 108
    goto/16 :goto_7

    .line 109
    .line 110
    :pswitch_5
    iget-object v0, v6, Lio/ktor/client/plugins/g$b;->L$3:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v0, Lo7/a;

    .line 113
    .line 114
    iget-object v1, v6, Lio/ktor/client/plugins/g$b;->L$2:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v1, Lio/ktor/util/pipeline/e;

    .line 117
    .line 118
    iget-object v2, v6, Lio/ktor/client/plugins/g$b;->L$1:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v2, Lo7/a;

    .line 121
    .line 122
    iget-object v3, v6, Lio/ktor/client/plugins/g$b;->L$0:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast v3, Lio/ktor/util/pipeline/e;

    .line 125
    .line 126
    .line 127
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 128
    move-object v14, v0

    .line 129
    move-object v15, v3

    .line 130
    .line 131
    move-object/from16 v0, p1

    .line 132
    .line 133
    goto/16 :goto_6

    .line 134
    .line 135
    :pswitch_6
    iget-object v0, v6, Lio/ktor/client/plugins/g$b;->L$1:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v0, Lo7/a;

    .line 138
    .line 139
    iget-object v1, v6, Lio/ktor/client/plugins/g$b;->L$0:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast v1, Lio/ktor/util/pipeline/e;

    .line 142
    .line 143
    .line 144
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 145
    move-object v2, v0

    .line 146
    .line 147
    move-object/from16 v0, p1

    .line 148
    .line 149
    goto/16 :goto_3

    .line 150
    .line 151
    :pswitch_7
    iget-object v0, v6, Lio/ktor/client/plugins/g$b;->L$3:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast v0, Lo7/a;

    .line 154
    .line 155
    iget-object v1, v6, Lio/ktor/client/plugins/g$b;->L$2:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast v1, Lio/ktor/util/pipeline/e;

    .line 158
    .line 159
    iget-object v2, v6, Lio/ktor/client/plugins/g$b;->L$1:Ljava/lang/Object;

    .line 160
    .line 161
    check-cast v2, Lo7/a;

    .line 162
    .line 163
    iget-object v3, v6, Lio/ktor/client/plugins/g$b;->L$0:Ljava/lang/Object;

    .line 164
    .line 165
    check-cast v3, Lio/ktor/util/pipeline/e;

    .line 166
    .line 167
    .line 168
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 169
    move-object v14, v0

    .line 170
    move-object v15, v3

    .line 171
    .line 172
    move-object/from16 v0, p1

    .line 173
    .line 174
    goto/16 :goto_2

    .line 175
    .line 176
    :pswitch_8
    iget-object v0, v6, Lio/ktor/client/plugins/g$b;->L$1:Ljava/lang/Object;

    .line 177
    .line 178
    check-cast v0, Lo7/a;

    .line 179
    .line 180
    iget-object v1, v6, Lio/ktor/client/plugins/g$b;->L$0:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v1, Lio/ktor/util/pipeline/e;

    .line 183
    .line 184
    .line 185
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 186
    move-object v14, v0

    .line 187
    .line 188
    move-object/from16 v0, p1

    .line 189
    goto :goto_0

    .line 190
    .line 191
    .line 192
    :pswitch_9
    invoke-static/range {p1 .. p1}, Lw7/w;->b(Ljava/lang/Object;)V

    .line 193
    .line 194
    iget-object v0, v6, Lio/ktor/client/plugins/g$b;->L$0:Ljava/lang/Object;

    .line 195
    move-object v15, v0

    .line 196
    .line 197
    check-cast v15, Lio/ktor/util/pipeline/e;

    .line 198
    .line 199
    iget-object v0, v6, Lio/ktor/client/plugins/g$b;->L$1:Ljava/lang/Object;

    .line 200
    .line 201
    check-cast v0, Lio/ktor/client/statement/d;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0}, Lio/ktor/client/statement/d;->a()Lo7/a;

    .line 205
    move-result-object v14

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0}, Lio/ktor/client/statement/d;->b()Ljava/lang/Object;

    .line 209
    move-result-object v0

    .line 210
    .line 211
    instance-of v2, v0, Lio/ktor/utils/io/g;

    .line 212
    .line 213
    if-nez v2, :cond_0

    .line 214
    .line 215
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 216
    return-object v0

    .line 217
    .line 218
    .line 219
    :cond_0
    invoke-virtual {v15}, Lio/ktor/util/pipeline/e;->b()Ljava/lang/Object;

    .line 220
    move-result-object v2

    .line 221
    .line 222
    check-cast v2, Lio/ktor/client/call/b;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v2}, Lio/ktor/client/call/b;->f()Lio/ktor/client/statement/c;

    .line 226
    move-result-object v2

    .line 227
    .line 228
    .line 229
    invoke-virtual {v14}, Lo7/a;->a()Lkotlin/reflect/KClass;

    .line 230
    move-result-object v3

    .line 231
    .line 232
    const-class v4, Lw7/l0;

    .line 233
    .line 234
    .line 235
    invoke-static {v4}, Lkotlin/jvm/internal/q0;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 236
    move-result-object v4

    .line 237
    .line 238
    .line 239
    invoke-static {v3, v4}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 240
    move-result v4

    .line 241
    .line 242
    if-eqz v4, :cond_2

    .line 243
    .line 244
    check-cast v0, Lio/ktor/utils/io/g;

    .line 245
    .line 246
    .line 247
    invoke-static {v0}, Lio/ktor/utils/io/i;->a(Lio/ktor/utils/io/g;)Z

    .line 248
    .line 249
    new-instance v0, Lio/ktor/client/statement/d;

    .line 250
    .line 251
    sget-object v2, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 252
    .line 253
    .line 254
    invoke-direct {v0, v14, v2}, Lio/ktor/client/statement/d;-><init>(Lo7/a;Ljava/lang/Object;)V

    .line 255
    .line 256
    iput-object v15, v6, Lio/ktor/client/plugins/g$b;->L$0:Ljava/lang/Object;

    .line 257
    .line 258
    iput-object v14, v6, Lio/ktor/client/plugins/g$b;->L$1:Ljava/lang/Object;

    .line 259
    .line 260
    iput v1, v6, Lio/ktor/client/plugins/g$b;->label:I

    .line 261
    .line 262
    .line 263
    invoke-virtual {v15, v0, v6}, Lio/ktor/util/pipeline/e;->e(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 264
    move-result-object v0

    .line 265
    .line 266
    if-ne v0, v7, :cond_1

    .line 267
    return-object v7

    .line 268
    :cond_1
    move-object v1, v15

    .line 269
    :goto_0
    move-object v9, v0

    .line 270
    .line 271
    check-cast v9, Lio/ktor/client/statement/d;

    .line 272
    :goto_1
    move-object v15, v1

    .line 273
    .line 274
    goto/16 :goto_e

    .line 275
    .line 276
    :cond_2
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 277
    .line 278
    .line 279
    invoke-static {v4}, Lkotlin/jvm/internal/q0;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 280
    move-result-object v4

    .line 281
    .line 282
    .line 283
    invoke-static {v3, v4}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 284
    move-result v4

    .line 285
    .line 286
    if-eqz v4, :cond_5

    .line 287
    .line 288
    check-cast v0, Lio/ktor/utils/io/g;

    .line 289
    .line 290
    const-wide/16 v1, 0x0

    .line 291
    const/4 v4, 0x1

    .line 292
    const/4 v5, 0x0

    .line 293
    .line 294
    iput-object v15, v6, Lio/ktor/client/plugins/g$b;->L$0:Ljava/lang/Object;

    .line 295
    .line 296
    iput-object v14, v6, Lio/ktor/client/plugins/g$b;->L$1:Ljava/lang/Object;

    .line 297
    .line 298
    iput-object v15, v6, Lio/ktor/client/plugins/g$b;->L$2:Ljava/lang/Object;

    .line 299
    .line 300
    iput-object v14, v6, Lio/ktor/client/plugins/g$b;->L$3:Ljava/lang/Object;

    .line 301
    const/4 v3, 0x2

    .line 302
    .line 303
    iput v3, v6, Lio/ktor/client/plugins/g$b;->label:I

    .line 304
    .line 305
    move-object/from16 v3, p0

    .line 306
    .line 307
    .line 308
    invoke-static/range {v0 .. v5}, Lio/ktor/utils/io/g$b;->a(Lio/ktor/utils/io/g;JLkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;

    .line 309
    move-result-object v0

    .line 310
    .line 311
    if-ne v0, v7, :cond_3

    .line 312
    return-object v7

    .line 313
    :cond_3
    move-object v2, v14

    .line 314
    move-object v1, v15

    .line 315
    .line 316
    :goto_2
    check-cast v0, Lr7/m;

    .line 317
    const/4 v3, 0x3

    .line 318
    .line 319
    .line 320
    invoke-static {v0, v8, v8, v3, v9}, Lr7/m;->Q0(Lr7/m;IIILjava/lang/Object;)Ljava/lang/String;

    .line 321
    move-result-object v0

    .line 322
    .line 323
    .line 324
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 325
    move-result v0

    .line 326
    .line 327
    .line 328
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/b;->d(I)Ljava/lang/Integer;

    .line 329
    move-result-object v0

    .line 330
    .line 331
    new-instance v4, Lio/ktor/client/statement/d;

    .line 332
    .line 333
    .line 334
    invoke-direct {v4, v14, v0}, Lio/ktor/client/statement/d;-><init>(Lo7/a;Ljava/lang/Object;)V

    .line 335
    .line 336
    iput-object v15, v6, Lio/ktor/client/plugins/g$b;->L$0:Ljava/lang/Object;

    .line 337
    .line 338
    iput-object v2, v6, Lio/ktor/client/plugins/g$b;->L$1:Ljava/lang/Object;

    .line 339
    .line 340
    iput-object v9, v6, Lio/ktor/client/plugins/g$b;->L$2:Ljava/lang/Object;

    .line 341
    .line 342
    iput-object v9, v6, Lio/ktor/client/plugins/g$b;->L$3:Ljava/lang/Object;

    .line 343
    .line 344
    iput v3, v6, Lio/ktor/client/plugins/g$b;->label:I

    .line 345
    .line 346
    .line 347
    invoke-virtual {v1, v4, v6}, Lio/ktor/util/pipeline/e;->e(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 348
    move-result-object v0

    .line 349
    .line 350
    if-ne v0, v7, :cond_4

    .line 351
    return-object v7

    .line 352
    :cond_4
    move-object v1, v15

    .line 353
    :goto_3
    move-object v9, v0

    .line 354
    .line 355
    check-cast v9, Lio/ktor/client/statement/d;

    .line 356
    :goto_4
    move-object v15, v1

    .line 357
    move-object v14, v2

    .line 358
    .line 359
    goto/16 :goto_e

    .line 360
    .line 361
    :cond_5
    const-class v4, Lr7/j;

    .line 362
    .line 363
    .line 364
    invoke-static {v4}, Lkotlin/jvm/internal/q0;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 365
    move-result-object v4

    .line 366
    .line 367
    .line 368
    invoke-static {v3, v4}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 369
    move-result v4

    .line 370
    .line 371
    if-eqz v4, :cond_6

    .line 372
    goto :goto_5

    .line 373
    .line 374
    :cond_6
    const-class v4, Lr7/m;

    .line 375
    .line 376
    .line 377
    invoke-static {v4}, Lkotlin/jvm/internal/q0;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 378
    move-result-object v4

    .line 379
    .line 380
    .line 381
    invoke-static {v3, v4}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 382
    move-result v4

    .line 383
    .line 384
    if-eqz v4, :cond_9

    .line 385
    .line 386
    :goto_5
    check-cast v0, Lio/ktor/utils/io/g;

    .line 387
    .line 388
    const-wide/16 v1, 0x0

    .line 389
    const/4 v4, 0x1

    .line 390
    const/4 v5, 0x0

    .line 391
    .line 392
    iput-object v15, v6, Lio/ktor/client/plugins/g$b;->L$0:Ljava/lang/Object;

    .line 393
    .line 394
    iput-object v14, v6, Lio/ktor/client/plugins/g$b;->L$1:Ljava/lang/Object;

    .line 395
    .line 396
    iput-object v15, v6, Lio/ktor/client/plugins/g$b;->L$2:Ljava/lang/Object;

    .line 397
    .line 398
    iput-object v14, v6, Lio/ktor/client/plugins/g$b;->L$3:Ljava/lang/Object;

    .line 399
    const/4 v3, 0x4

    .line 400
    .line 401
    iput v3, v6, Lio/ktor/client/plugins/g$b;->label:I

    .line 402
    .line 403
    move-object/from16 v3, p0

    .line 404
    .line 405
    .line 406
    invoke-static/range {v0 .. v5}, Lio/ktor/utils/io/g$b;->a(Lio/ktor/utils/io/g;JLkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;

    .line 407
    move-result-object v0

    .line 408
    .line 409
    if-ne v0, v7, :cond_7

    .line 410
    return-object v7

    .line 411
    :cond_7
    move-object v2, v14

    .line 412
    move-object v1, v15

    .line 413
    .line 414
    :goto_6
    new-instance v3, Lio/ktor/client/statement/d;

    .line 415
    .line 416
    .line 417
    invoke-direct {v3, v14, v0}, Lio/ktor/client/statement/d;-><init>(Lo7/a;Ljava/lang/Object;)V

    .line 418
    .line 419
    iput-object v15, v6, Lio/ktor/client/plugins/g$b;->L$0:Ljava/lang/Object;

    .line 420
    .line 421
    iput-object v2, v6, Lio/ktor/client/plugins/g$b;->L$1:Ljava/lang/Object;

    .line 422
    .line 423
    iput-object v9, v6, Lio/ktor/client/plugins/g$b;->L$2:Ljava/lang/Object;

    .line 424
    .line 425
    iput-object v9, v6, Lio/ktor/client/plugins/g$b;->L$3:Ljava/lang/Object;

    .line 426
    const/4 v0, 0x5

    .line 427
    .line 428
    iput v0, v6, Lio/ktor/client/plugins/g$b;->label:I

    .line 429
    .line 430
    .line 431
    invoke-virtual {v1, v3, v6}, Lio/ktor/util/pipeline/e;->e(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 432
    move-result-object v0

    .line 433
    .line 434
    if-ne v0, v7, :cond_8

    .line 435
    return-object v7

    .line 436
    :cond_8
    move-object v1, v15

    .line 437
    :goto_7
    move-object v9, v0

    .line 438
    .line 439
    check-cast v9, Lio/ktor/client/statement/d;

    .line 440
    goto :goto_4

    .line 441
    .line 442
    :cond_9
    const-class v4, [B

    .line 443
    .line 444
    .line 445
    invoke-static {v4}, Lkotlin/jvm/internal/q0;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 446
    move-result-object v4

    .line 447
    .line 448
    .line 449
    invoke-static {v3, v4}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 450
    move-result v4

    .line 451
    .line 452
    if-eqz v4, :cond_f

    .line 453
    .line 454
    check-cast v0, Lio/ktor/utils/io/g;

    .line 455
    .line 456
    iput-object v15, v6, Lio/ktor/client/plugins/g$b;->L$0:Ljava/lang/Object;

    .line 457
    .line 458
    iput-object v14, v6, Lio/ktor/client/plugins/g$b;->L$1:Ljava/lang/Object;

    .line 459
    .line 460
    iput-object v2, v6, Lio/ktor/client/plugins/g$b;->L$2:Ljava/lang/Object;

    .line 461
    const/4 v3, 0x6

    .line 462
    .line 463
    iput v3, v6, Lio/ktor/client/plugins/g$b;->label:I

    .line 464
    .line 465
    .line 466
    invoke-static {v0, v6}, Lio/ktor/util/f;->a(Lio/ktor/utils/io/g;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 467
    move-result-object v0

    .line 468
    .line 469
    if-ne v0, v7, :cond_a

    .line 470
    return-object v7

    .line 471
    .line 472
    :cond_a
    :goto_8
    check-cast v0, [B

    .line 473
    .line 474
    .line 475
    invoke-static {v2}, Lio/ktor/http/s;->b(Lio/ktor/http/q;)Ljava/lang/Long;

    .line 476
    move-result-object v3

    .line 477
    .line 478
    sget-object v4, Lio/ktor/util/r;->INSTANCE:Lio/ktor/util/r;

    .line 479
    .line 480
    .line 481
    invoke-virtual {v4}, Lio/ktor/util/r;->a()Z

    .line 482
    move-result v4

    .line 483
    .line 484
    if-nez v4, :cond_b

    .line 485
    .line 486
    .line 487
    invoke-interface {v2}, Lio/ktor/http/q;->getHeaders()Lio/ktor/http/k;

    .line 488
    move-result-object v2

    .line 489
    .line 490
    sget-object v4, Lio/ktor/http/o;->INSTANCE:Lio/ktor/http/o;

    .line 491
    .line 492
    .line 493
    invoke-virtual {v4}, Lio/ktor/http/o;->f()Ljava/lang/String;

    .line 494
    move-result-object v4

    .line 495
    .line 496
    .line 497
    invoke-interface {v2, v4}, Lio/ktor/util/t;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 498
    move-result-object v2

    .line 499
    .line 500
    if-nez v2, :cond_b

    .line 501
    move v8, v1

    .line 502
    .line 503
    .line 504
    :cond_b
    invoke-virtual {v15}, Lio/ktor/util/pipeline/e;->b()Ljava/lang/Object;

    .line 505
    move-result-object v2

    .line 506
    .line 507
    check-cast v2, Lio/ktor/client/call/b;

    .line 508
    .line 509
    .line 510
    invoke-virtual {v2}, Lio/ktor/client/call/b;->e()Li7/c;

    .line 511
    move-result-object v2

    .line 512
    .line 513
    .line 514
    invoke-interface {v2}, Li7/c;->getMethod()Lio/ktor/http/t;

    .line 515
    move-result-object v2

    .line 516
    .line 517
    sget-object v4, Lio/ktor/http/t;->Companion:Lio/ktor/http/t$a;

    .line 518
    .line 519
    .line 520
    invoke-virtual {v4}, Lio/ktor/http/t$a;->b()Lio/ktor/http/t;

    .line 521
    move-result-object v4

    .line 522
    .line 523
    .line 524
    invoke-static {v2, v4}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 525
    move-result v2

    .line 526
    xor-int/2addr v1, v2

    .line 527
    .line 528
    if-eqz v8, :cond_d

    .line 529
    .line 530
    if-eqz v1, :cond_d

    .line 531
    .line 532
    if-eqz v3, :cond_d

    .line 533
    .line 534
    .line 535
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 536
    move-result-wide v1

    .line 537
    .line 538
    const-wide/16 v4, 0x0

    .line 539
    .line 540
    cmp-long v1, v1, v4

    .line 541
    .line 542
    if-lez v1, :cond_d

    .line 543
    array-length v1, v0

    .line 544
    .line 545
    .line 546
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 547
    move-result-wide v4

    .line 548
    long-to-int v2, v4

    .line 549
    .line 550
    if-ne v1, v2, :cond_c

    .line 551
    goto :goto_9

    .line 552
    .line 553
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 557
    .line 558
    const-string v2, "Expected "

    .line 559
    .line 560
    .line 561
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    .line 563
    .line 564
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 565
    .line 566
    const-string v2, ", actual "

    .line 567
    .line 568
    .line 569
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    array-length v0, v0

    .line 571
    .line 572
    .line 573
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 574
    .line 575
    .line 576
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 577
    move-result-object v0

    .line 578
    .line 579
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 580
    .line 581
    .line 582
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 583
    move-result-object v0

    .line 584
    .line 585
    .line 586
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 587
    throw v1

    .line 588
    .line 589
    :cond_d
    :goto_9
    new-instance v1, Lio/ktor/client/statement/d;

    .line 590
    .line 591
    .line 592
    invoke-direct {v1, v14, v0}, Lio/ktor/client/statement/d;-><init>(Lo7/a;Ljava/lang/Object;)V

    .line 593
    .line 594
    iput-object v15, v6, Lio/ktor/client/plugins/g$b;->L$0:Ljava/lang/Object;

    .line 595
    .line 596
    iput-object v14, v6, Lio/ktor/client/plugins/g$b;->L$1:Ljava/lang/Object;

    .line 597
    .line 598
    iput-object v9, v6, Lio/ktor/client/plugins/g$b;->L$2:Ljava/lang/Object;

    .line 599
    const/4 v0, 0x7

    .line 600
    .line 601
    iput v0, v6, Lio/ktor/client/plugins/g$b;->label:I

    .line 602
    .line 603
    .line 604
    invoke-virtual {v15, v1, v6}, Lio/ktor/util/pipeline/e;->e(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 605
    move-result-object v0

    .line 606
    .line 607
    if-ne v0, v7, :cond_e

    .line 608
    return-object v7

    .line 609
    :cond_e
    move-object v1, v15

    .line 610
    :goto_a
    move-object v9, v0

    .line 611
    .line 612
    check-cast v9, Lio/ktor/client/statement/d;

    .line 613
    .line 614
    goto/16 :goto_1

    .line 615
    .line 616
    :cond_f
    const-class v1, Lio/ktor/utils/io/g;

    .line 617
    .line 618
    .line 619
    invoke-static {v1}, Lkotlin/jvm/internal/q0;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 620
    move-result-object v1

    .line 621
    .line 622
    .line 623
    invoke-static {v3, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 624
    move-result v1

    .line 625
    .line 626
    if-eqz v1, :cond_11

    .line 627
    .line 628
    .line 629
    invoke-interface {v2}, Lkotlinx/coroutines/o0;->getCoroutineContext()Lkotlin/coroutines/g;

    .line 630
    move-result-object v1

    .line 631
    .line 632
    sget-object v3, Lkotlinx/coroutines/b2;->Key:Lkotlinx/coroutines/b2$b;

    .line 633
    .line 634
    .line 635
    invoke-interface {v1, v3}, Lkotlin/coroutines/g;->get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    .line 636
    move-result-object v1

    .line 637
    .line 638
    check-cast v1, Lkotlinx/coroutines/b2;

    .line 639
    .line 640
    .line 641
    invoke-static {v1}, Lkotlinx/coroutines/f2;->a(Lkotlinx/coroutines/b2;)Lkotlinx/coroutines/a0;

    .line 642
    move-result-object v1

    .line 643
    .line 644
    .line 645
    invoke-interface {v2}, Lkotlinx/coroutines/o0;->getCoroutineContext()Lkotlin/coroutines/g;

    .line 646
    move-result-object v11

    .line 647
    const/4 v12, 0x0

    .line 648
    .line 649
    new-instance v13, Lio/ktor/client/plugins/g$b$a;

    .line 650
    .line 651
    .line 652
    invoke-direct {v13, v0, v2, v9}, Lio/ktor/client/plugins/g$b$a;-><init>(Ljava/lang/Object;Lio/ktor/client/statement/c;Lkotlin/coroutines/d;)V

    .line 653
    const/4 v0, 0x2

    .line 654
    const/4 v2, 0x0

    .line 655
    move-object v10, v15

    .line 656
    move-object v4, v14

    .line 657
    move v14, v0

    .line 658
    move-object v5, v15

    .line 659
    move-object v15, v2

    .line 660
    .line 661
    .line 662
    invoke-static/range {v10 .. v15}, Lio/ktor/utils/io/q;->f(Lkotlinx/coroutines/o0;Lkotlin/coroutines/g;ZLe8/p;ILjava/lang/Object;)Lio/ktor/utils/io/v;

    .line 663
    move-result-object v0

    .line 664
    .line 665
    new-instance v2, Lio/ktor/client/plugins/g$b$b;

    .line 666
    .line 667
    .line 668
    invoke-direct {v2, v1}, Lio/ktor/client/plugins/g$b$b;-><init>(Lkotlinx/coroutines/a0;)V

    .line 669
    .line 670
    .line 671
    invoke-interface {v0, v2}, Lkotlinx/coroutines/b2;->U(Le8/l;)Lkotlinx/coroutines/g1;

    .line 672
    .line 673
    .line 674
    invoke-interface {v0}, Lio/ktor/utils/io/v;->d()Lio/ktor/utils/io/g;

    .line 675
    move-result-object v0

    .line 676
    .line 677
    new-instance v1, Lio/ktor/client/statement/d;

    .line 678
    .line 679
    .line 680
    invoke-direct {v1, v4, v0}, Lio/ktor/client/statement/d;-><init>(Lo7/a;Ljava/lang/Object;)V

    .line 681
    .line 682
    iput-object v5, v6, Lio/ktor/client/plugins/g$b;->L$0:Ljava/lang/Object;

    .line 683
    .line 684
    iput-object v4, v6, Lio/ktor/client/plugins/g$b;->L$1:Ljava/lang/Object;

    .line 685
    .line 686
    const/16 v0, 0x8

    .line 687
    .line 688
    iput v0, v6, Lio/ktor/client/plugins/g$b;->label:I

    .line 689
    .line 690
    .line 691
    invoke-virtual {v5, v1, v6}, Lio/ktor/util/pipeline/e;->e(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 692
    move-result-object v0

    .line 693
    .line 694
    if-ne v0, v7, :cond_10

    .line 695
    return-object v7

    .line 696
    :cond_10
    move-object v1, v5

    .line 697
    :goto_b
    move-object v9, v0

    .line 698
    .line 699
    check-cast v9, Lio/ktor/client/statement/d;

    .line 700
    :goto_c
    move-object v15, v1

    .line 701
    move-object v14, v4

    .line 702
    goto :goto_e

    .line 703
    :cond_11
    move-object v4, v14

    .line 704
    move-object v5, v15

    .line 705
    .line 706
    const-class v1, Lio/ktor/http/v;

    .line 707
    .line 708
    .line 709
    invoke-static {v1}, Lkotlin/jvm/internal/q0;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 710
    move-result-object v1

    .line 711
    .line 712
    .line 713
    invoke-static {v3, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 714
    move-result v1

    .line 715
    .line 716
    if-eqz v1, :cond_13

    .line 717
    .line 718
    check-cast v0, Lio/ktor/utils/io/g;

    .line 719
    .line 720
    .line 721
    invoke-static {v0}, Lio/ktor/utils/io/i;->a(Lio/ktor/utils/io/g;)Z

    .line 722
    .line 723
    new-instance v0, Lio/ktor/client/statement/d;

    .line 724
    .line 725
    .line 726
    invoke-virtual {v2}, Lio/ktor/client/statement/c;->e()Lio/ktor/http/v;

    .line 727
    move-result-object v1

    .line 728
    .line 729
    .line 730
    invoke-direct {v0, v4, v1}, Lio/ktor/client/statement/d;-><init>(Lo7/a;Ljava/lang/Object;)V

    .line 731
    .line 732
    iput-object v5, v6, Lio/ktor/client/plugins/g$b;->L$0:Ljava/lang/Object;

    .line 733
    .line 734
    iput-object v4, v6, Lio/ktor/client/plugins/g$b;->L$1:Ljava/lang/Object;

    .line 735
    .line 736
    const/16 v1, 0x9

    .line 737
    .line 738
    iput v1, v6, Lio/ktor/client/plugins/g$b;->label:I

    .line 739
    .line 740
    .line 741
    invoke-virtual {v5, v0, v6}, Lio/ktor/util/pipeline/e;->e(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    .line 742
    move-result-object v0

    .line 743
    .line 744
    if-ne v0, v7, :cond_12

    .line 745
    return-object v7

    .line 746
    :cond_12
    move-object v1, v5

    .line 747
    :goto_d
    move-object v9, v0

    .line 748
    .line 749
    check-cast v9, Lio/ktor/client/statement/d;

    .line 750
    goto :goto_c

    .line 751
    :cond_13
    move-object v14, v4

    .line 752
    move-object v15, v5

    .line 753
    .line 754
    :goto_e
    if-eqz v9, :cond_14

    .line 755
    .line 756
    .line 757
    invoke-static {}, Lio/ktor/client/plugins/g;->a()Lorg/slf4j/a;

    .line 758
    move-result-object v0

    .line 759
    .line 760
    new-instance v1, Ljava/lang/StringBuilder;

    .line 761
    .line 762
    .line 763
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 764
    .line 765
    const-string v2, "Transformed with default transformers response body for "

    .line 766
    .line 767
    .line 768
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    .line 770
    .line 771
    invoke-virtual {v15}, Lio/ktor/util/pipeline/e;->b()Ljava/lang/Object;

    .line 772
    move-result-object v2

    .line 773
    .line 774
    check-cast v2, Lio/ktor/client/call/b;

    .line 775
    .line 776
    .line 777
    invoke-virtual {v2}, Lio/ktor/client/call/b;->e()Li7/c;

    .line 778
    move-result-object v2

    .line 779
    .line 780
    .line 781
    invoke-interface {v2}, Li7/c;->getUrl()Lio/ktor/http/p0;

    .line 782
    move-result-object v2

    .line 783
    .line 784
    .line 785
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 786
    .line 787
    const-string v2, " to "

    .line 788
    .line 789
    .line 790
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    .line 792
    .line 793
    invoke-virtual {v14}, Lo7/a;->a()Lkotlin/reflect/KClass;

    .line 794
    move-result-object v2

    .line 795
    .line 796
    .line 797
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 798
    .line 799
    .line 800
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 801
    move-result-object v1

    .line 802
    .line 803
    .line 804
    invoke-interface {v0, v1}, Lorg/slf4j/a;->a(Ljava/lang/String;)V

    .line 805
    .line 806
    :cond_14
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 807
    return-object v0

    .line 808
    nop

    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
