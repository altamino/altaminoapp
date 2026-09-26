.class public final Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapterKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFontListFontFamilyTypefaceAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FontListFontFamilyTypefaceAdapter.kt\nandroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapterKt\n+ 2 FontListFontFamilyTypefaceAdapter.kt\nandroidx/compose/ui/text/font/AsyncTypefaceCache\n+ 3 Synchronization.jvm.kt\nandroidx/compose/ui/text/platform/Synchronization_jvmKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,432:1\n421#2:433\n422#2,9:435\n421#2:444\n422#2,7:446\n429#2,2:454\n24#3:434\n24#3:445\n1#4:453\n*S KotlinDebug\n*F\n+ 1 FontListFontFamilyTypefaceAdapter.kt\nandroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapterKt\n*L\n188#1:433\n188#1:435,9\n204#1:444\n204#1:446,7\n204#1:454,2\n188#1:434\n204#1:445\n*E\n"
.end annotation


# direct methods
.method public static final synthetic a(Ljava/util/List;Landroidx/compose/ui/text/font/TypefaceRequest;Landroidx/compose/ui/text/font/AsyncTypefaceCache;Landroidx/compose/ui/text/font/PlatformFontLoader;Le8/l;)Lw7/u;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapterKt;->b(Ljava/util/List;Landroidx/compose/ui/text/font/TypefaceRequest;Landroidx/compose/ui/text/font/AsyncTypefaceCache;Landroidx/compose/ui/text/font/PlatformFontLoader;Le8/l;)Lw7/u;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final b(Ljava/util/List;Landroidx/compose/ui/text/font/TypefaceRequest;Landroidx/compose/ui/text/font/AsyncTypefaceCache;Landroidx/compose/ui/text/font/PlatformFontLoader;Le8/l;)Lw7/u;
    .locals 16
    .annotation runtime Landroidx/compose/ui/text/ExperimentalTextApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/text/font/Font;",
            ">;",
            "Landroidx/compose/ui/text/font/TypefaceRequest;",
            "Landroidx/compose/ui/text/font/AsyncTypefaceCache;",
            "Landroidx/compose/ui/text/font/PlatformFontLoader;",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/text/font/TypefaceRequest;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lw7/u<",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/font/Font;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    move-object/from16 v8, p3

    .line 3
    .line 4
    .line 5
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    .line 6
    move-result v9

    .line 7
    const/4 v10, 0x0

    .line 8
    const/4 v11, 0x0

    .line 9
    move-object v13, v10

    .line 10
    move v12, v11

    .line 11
    .line 12
    :goto_0
    if-ge v12, v9, :cond_e

    .line 13
    .line 14
    move-object/from16 v14, p0

    .line 15
    .line 16
    .line 17
    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    move-object v15, v0

    .line 20
    .line 21
    check-cast v15, Landroidx/compose/ui/text/font/Font;

    .line 22
    .line 23
    .line 24
    invoke-interface {v15}, Landroidx/compose/ui/text/font/Font;->a()I

    .line 25
    move-result v0

    .line 26
    .line 27
    sget-object v1, Landroidx/compose/ui/text/font/FontLoadingStrategy;->Companion:Landroidx/compose/ui/text/font/FontLoadingStrategy$Companion;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Landroidx/compose/ui/text/font/FontLoadingStrategy$Companion;->b()I

    .line 31
    move-result v2

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v2}, Landroidx/compose/ui/text/font/FontLoadingStrategy;->f(II)Z

    .line 35
    move-result v2

    .line 36
    .line 37
    if-eqz v2, :cond_3

    .line 38
    .line 39
    .line 40
    invoke-static/range {p2 .. p2}, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->a(Landroidx/compose/ui/text/font/AsyncTypefaceCache;)Landroidx/compose/ui/text/platform/SynchronizedObject;

    .line 41
    move-result-object v1

    .line 42
    monitor-enter v1

    .line 43
    .line 44
    :try_start_0
    new-instance v0, Landroidx/compose/ui/text/font/AsyncTypefaceCache$Key;

    .line 45
    .line 46
    .line 47
    invoke-interface/range {p3 .. p3}, Landroidx/compose/ui/text/font/PlatformFontLoader;->a()Ljava/lang/Object;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, v15, v2}, Landroidx/compose/ui/text/font/AsyncTypefaceCache$Key;-><init>(Landroidx/compose/ui/text/font/Font;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-static/range {p2 .. p2}, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->c(Landroidx/compose/ui/text/font/AsyncTypefaceCache;)Landroidx/compose/ui/text/caches/LruCache;

    .line 55
    move-result-object v2

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v0}, Landroidx/compose/ui/text/caches/LruCache;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    move-result-object v2

    .line 60
    .line 61
    check-cast v2, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;

    .line 62
    .line 63
    if-nez v2, :cond_0

    .line 64
    .line 65
    .line 66
    invoke-static/range {p2 .. p2}, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->b(Landroidx/compose/ui/text/font/AsyncTypefaceCache;)Landroidx/compose/ui/text/caches/SimpleArrayMap;

    .line 67
    move-result-object v2

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v0}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    move-result-object v0

    .line 72
    move-object v2, v0

    .line 73
    .line 74
    check-cast v2, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;

    .line 75
    goto :goto_1

    .line 76
    :catchall_0
    move-exception v0

    .line 77
    goto :goto_3

    .line 78
    .line 79
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;->g()Ljava/lang/Object;

    .line 83
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit v1

    .line 85
    goto :goto_2

    .line 86
    .line 87
    :cond_1
    :try_start_1
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    monitor-exit v1

    .line 89
    .line 90
    .line 91
    :try_start_2
    invoke-interface {v8, v15}, Landroidx/compose/ui/text/font/PlatformFontLoader;->c(Landroidx/compose/ui/text/font/Font;)Ljava/lang/Object;

    .line 92
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 93
    const/4 v5, 0x0

    .line 94
    .line 95
    const/16 v6, 0x8

    .line 96
    const/4 v7, 0x0

    .line 97
    .line 98
    move-object/from16 v1, p2

    .line 99
    move-object v2, v15

    .line 100
    .line 101
    move-object/from16 v3, p3

    .line 102
    move-object v4, v0

    .line 103
    .line 104
    .line 105
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->f(Landroidx/compose/ui/text/font/AsyncTypefaceCache;Landroidx/compose/ui/text/font/Font;Landroidx/compose/ui/text/font/PlatformFontLoader;Ljava/lang/Object;ZILjava/lang/Object;)V

    .line 106
    .line 107
    :goto_2
    if-eqz v0, :cond_2

    .line 108
    .line 109
    .line 110
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/font/TypefaceRequest;->e()I

    .line 111
    move-result v1

    .line 112
    .line 113
    .line 114
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/font/TypefaceRequest;->f()Landroidx/compose/ui/text/font/FontWeight;

    .line 115
    move-result-object v2

    .line 116
    .line 117
    .line 118
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/font/TypefaceRequest;->d()I

    .line 119
    move-result v3

    .line 120
    .line 121
    .line 122
    invoke-static {v1, v0, v15, v2, v3}, Landroidx/compose/ui/text/font/FontSynthesis_androidKt;->a(ILjava/lang/Object;Landroidx/compose/ui/text/font/Font;Landroidx/compose/ui/text/font/FontWeight;I)Ljava/lang/Object;

    .line 123
    move-result-object v0

    .line 124
    .line 125
    .line 126
    invoke-static {v13, v0}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 127
    move-result-object v0

    .line 128
    return-object v0

    .line 129
    .line 130
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 131
    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    const-string v2, "Unable to load font "

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    move-result-object v1

    .line 148
    .line 149
    .line 150
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 151
    throw v0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    move-object v1, v0

    .line 154
    .line 155
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 156
    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .line 162
    const-string v3, "Unable to load font "

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    move-result-object v2

    .line 173
    .line 174
    .line 175
    invoke-direct {v0, v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    throw v0

    .line 177
    :goto_3
    monitor-exit v1

    .line 178
    throw v0

    .line 179
    .line 180
    .line 181
    :cond_3
    invoke-virtual {v1}, Landroidx/compose/ui/text/font/FontLoadingStrategy$Companion;->c()I

    .line 182
    move-result v2

    .line 183
    .line 184
    .line 185
    invoke-static {v0, v2}, Landroidx/compose/ui/text/font/FontLoadingStrategy;->f(II)Z

    .line 186
    move-result v2

    .line 187
    .line 188
    if-eqz v2, :cond_8

    .line 189
    .line 190
    .line 191
    invoke-static/range {p2 .. p2}, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->a(Landroidx/compose/ui/text/font/AsyncTypefaceCache;)Landroidx/compose/ui/text/platform/SynchronizedObject;

    .line 192
    move-result-object v1

    .line 193
    monitor-enter v1

    .line 194
    .line 195
    :try_start_3
    new-instance v0, Landroidx/compose/ui/text/font/AsyncTypefaceCache$Key;

    .line 196
    .line 197
    .line 198
    invoke-interface/range {p3 .. p3}, Landroidx/compose/ui/text/font/PlatformFontLoader;->a()Ljava/lang/Object;

    .line 199
    move-result-object v2

    .line 200
    .line 201
    .line 202
    invoke-direct {v0, v15, v2}, Landroidx/compose/ui/text/font/AsyncTypefaceCache$Key;-><init>(Landroidx/compose/ui/text/font/Font;Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    invoke-static/range {p2 .. p2}, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->c(Landroidx/compose/ui/text/font/AsyncTypefaceCache;)Landroidx/compose/ui/text/caches/LruCache;

    .line 206
    move-result-object v2

    .line 207
    .line 208
    .line 209
    invoke-virtual {v2, v0}, Landroidx/compose/ui/text/caches/LruCache;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    move-result-object v2

    .line 211
    .line 212
    check-cast v2, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;

    .line 213
    .line 214
    if-nez v2, :cond_4

    .line 215
    .line 216
    .line 217
    invoke-static/range {p2 .. p2}, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->b(Landroidx/compose/ui/text/font/AsyncTypefaceCache;)Landroidx/compose/ui/text/caches/SimpleArrayMap;

    .line 218
    move-result-object v2

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2, v0}, Landroidx/compose/ui/text/caches/SimpleArrayMap;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    move-result-object v0

    .line 223
    move-object v2, v0

    .line 224
    .line 225
    check-cast v2, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;

    .line 226
    goto :goto_4

    .line 227
    :catchall_1
    move-exception v0

    .line 228
    goto :goto_7

    .line 229
    .line 230
    :cond_4
    :goto_4
    if-eqz v2, :cond_5

    .line 231
    .line 232
    .line 233
    invoke-virtual {v2}, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;->g()Ljava/lang/Object;

    .line 234
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 235
    monitor-exit v1

    .line 236
    goto :goto_6

    .line 237
    .line 238
    :cond_5
    :try_start_4
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 239
    monitor-exit v1

    .line 240
    .line 241
    :try_start_5
    sget-object v0, Lw7/v;->Companion:Lw7/v$a;

    .line 242
    .line 243
    .line 244
    invoke-interface {v8, v15}, Landroidx/compose/ui/text/font/PlatformFontLoader;->c(Landroidx/compose/ui/text/font/Font;)Ljava/lang/Object;

    .line 245
    move-result-object v0

    .line 246
    .line 247
    .line 248
    invoke-static {v0}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 250
    goto :goto_5

    .line 251
    :catchall_2
    move-exception v0

    .line 252
    .line 253
    sget-object v1, Lw7/v;->Companion:Lw7/v$a;

    .line 254
    .line 255
    .line 256
    invoke-static {v0}, Lw7/w;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 257
    move-result-object v0

    .line 258
    .line 259
    .line 260
    invoke-static {v0}, Lw7/v;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    move-result-object v0

    .line 262
    .line 263
    .line 264
    :goto_5
    invoke-static {v0}, Lw7/v;->g(Ljava/lang/Object;)Z

    .line 265
    move-result v1

    .line 266
    .line 267
    if-eqz v1, :cond_6

    .line 268
    move-object v0, v10

    .line 269
    :cond_6
    const/4 v5, 0x0

    .line 270
    .line 271
    const/16 v6, 0x8

    .line 272
    const/4 v7, 0x0

    .line 273
    .line 274
    move-object/from16 v1, p2

    .line 275
    move-object v2, v15

    .line 276
    .line 277
    move-object/from16 v3, p3

    .line 278
    move-object v4, v0

    .line 279
    .line 280
    .line 281
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->f(Landroidx/compose/ui/text/font/AsyncTypefaceCache;Landroidx/compose/ui/text/font/Font;Landroidx/compose/ui/text/font/PlatformFontLoader;Ljava/lang/Object;ZILjava/lang/Object;)V

    .line 282
    .line 283
    :goto_6
    if-eqz v0, :cond_7

    .line 284
    .line 285
    .line 286
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/font/TypefaceRequest;->e()I

    .line 287
    move-result v1

    .line 288
    .line 289
    .line 290
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/font/TypefaceRequest;->f()Landroidx/compose/ui/text/font/FontWeight;

    .line 291
    move-result-object v2

    .line 292
    .line 293
    .line 294
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/font/TypefaceRequest;->d()I

    .line 295
    move-result v3

    .line 296
    .line 297
    .line 298
    invoke-static {v1, v0, v15, v2, v3}, Landroidx/compose/ui/text/font/FontSynthesis_androidKt;->a(ILjava/lang/Object;Landroidx/compose/ui/text/font/Font;Landroidx/compose/ui/text/font/FontWeight;I)Ljava/lang/Object;

    .line 299
    move-result-object v0

    .line 300
    .line 301
    .line 302
    invoke-static {v13, v0}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 303
    move-result-object v0

    .line 304
    return-object v0

    .line 305
    .line 306
    :cond_7
    move-object/from16 v1, p2

    .line 307
    goto :goto_8

    .line 308
    :goto_7
    monitor-exit v1

    .line 309
    throw v0

    .line 310
    .line 311
    .line 312
    :cond_8
    invoke-virtual {v1}, Landroidx/compose/ui/text/font/FontLoadingStrategy$Companion;->a()I

    .line 313
    move-result v1

    .line 314
    .line 315
    .line 316
    invoke-static {v0, v1}, Landroidx/compose/ui/text/font/FontLoadingStrategy;->f(II)Z

    .line 317
    move-result v0

    .line 318
    .line 319
    if-eqz v0, :cond_d

    .line 320
    .line 321
    move-object/from16 v1, p2

    .line 322
    .line 323
    .line 324
    invoke-virtual {v1, v15, v8}, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->d(Landroidx/compose/ui/text/font/Font;Landroidx/compose/ui/text/font/PlatformFontLoader;)Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;

    .line 325
    move-result-object v0

    .line 326
    .line 327
    if-nez v0, :cond_a

    .line 328
    .line 329
    if-nez v13, :cond_9

    .line 330
    const/4 v0, 0x1

    .line 331
    .line 332
    new-array v0, v0, [Landroidx/compose/ui/text/font/Font;

    .line 333
    .line 334
    aput-object v15, v0, v11

    .line 335
    .line 336
    .line 337
    invoke-static {v0}, Lkotlin/collections/t;->s([Ljava/lang/Object;)Ljava/util/List;

    .line 338
    move-result-object v13

    .line 339
    goto :goto_8

    .line 340
    .line 341
    .line 342
    :cond_9
    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    goto :goto_8

    .line 344
    .line 345
    .line 346
    :cond_a
    invoke-virtual {v0}, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;->g()Ljava/lang/Object;

    .line 347
    move-result-object v2

    .line 348
    .line 349
    .line 350
    invoke-static {v2}, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;->e(Ljava/lang/Object;)Z

    .line 351
    move-result v2

    .line 352
    .line 353
    if-eqz v2, :cond_b

    .line 354
    goto :goto_8

    .line 355
    .line 356
    .line 357
    :cond_b
    invoke-virtual {v0}, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;->g()Ljava/lang/Object;

    .line 358
    move-result-object v2

    .line 359
    .line 360
    if-eqz v2, :cond_c

    .line 361
    .line 362
    .line 363
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/font/TypefaceRequest;->e()I

    .line 364
    move-result v1

    .line 365
    .line 366
    .line 367
    invoke-virtual {v0}, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;->g()Ljava/lang/Object;

    .line 368
    move-result-object v0

    .line 369
    .line 370
    .line 371
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/font/TypefaceRequest;->f()Landroidx/compose/ui/text/font/FontWeight;

    .line 372
    move-result-object v2

    .line 373
    .line 374
    .line 375
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/font/TypefaceRequest;->d()I

    .line 376
    move-result v3

    .line 377
    .line 378
    .line 379
    invoke-static {v1, v0, v15, v2, v3}, Landroidx/compose/ui/text/font/FontSynthesis_androidKt;->a(ILjava/lang/Object;Landroidx/compose/ui/text/font/Font;Landroidx/compose/ui/text/font/FontWeight;I)Ljava/lang/Object;

    .line 380
    move-result-object v0

    .line 381
    .line 382
    .line 383
    invoke-static {v13, v0}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 384
    move-result-object v0

    .line 385
    return-object v0

    .line 386
    .line 387
    :cond_c
    :goto_8
    add-int/lit8 v12, v12, 0x1

    .line 388
    .line 389
    goto/16 :goto_0

    .line 390
    .line 391
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 392
    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 397
    .line 398
    const-string v2, "Unknown font type "

    .line 399
    .line 400
    .line 401
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 408
    move-result-object v1

    .line 409
    .line 410
    .line 411
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 412
    throw v0

    .line 413
    .line 414
    :cond_e
    move-object/from16 v1, p1

    .line 415
    .line 416
    move-object/from16 v2, p4

    .line 417
    .line 418
    .line 419
    invoke-interface {v2, v1}, Le8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    move-result-object v0

    .line 421
    .line 422
    .line 423
    invoke-static {v13, v0}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 424
    move-result-object v0

    .line 425
    return-object v0
.end method
