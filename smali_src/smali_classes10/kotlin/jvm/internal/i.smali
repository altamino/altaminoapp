.class public final Lkotlin/jvm/internal/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/KClass;
.implements Lkotlin/jvm/internal/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/jvm/internal/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/reflect/KClass<",
        "Ljava/lang/Object;",
        ">;",
        "Lkotlin/jvm/internal/h;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nClassReference.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClassReference.kt\nkotlin/jvm/internal/ClassReference\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,205:1\n1559#2:206\n1590#2,4:207\n1253#2,4:211\n1238#2,4:217\n453#3:215\n403#3:216\n*S KotlinDebug\n*F\n+ 1 ClassReference.kt\nkotlin/jvm/internal/ClassReference\n*L\n107#1:206\n107#1:207,4\n155#1:211,4\n163#1:217,4\n163#1:215\n163#1:216\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lkotlin/jvm/internal/i$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final FUNCTION_CLASSES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lw7/g<",
            "*>;>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final classFqNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final primitiveFqNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final primitiveWrapperFqNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final simpleNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final jClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    .line 2
    new-instance v0, Lkotlin/jvm/internal/i$a;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lkotlin/jvm/internal/i$a;-><init>(Lkotlin/jvm/internal/k;)V

    .line 7
    .line 8
    sput-object v0, Lkotlin/jvm/internal/i;->Companion:Lkotlin/jvm/internal/i$a;

    .line 9
    .line 10
    const/16 v0, 0x17

    .line 11
    .line 12
    new-array v0, v0, [Ljava/lang/Class;

    .line 13
    .line 14
    const-class v2, Le8/a;

    .line 15
    const/4 v3, 0x0

    .line 16
    .line 17
    aput-object v2, v0, v3

    .line 18
    const/4 v2, 0x1

    .line 19
    .line 20
    const-class v4, Le8/l;

    .line 21
    .line 22
    aput-object v4, v0, v2

    .line 23
    .line 24
    const-class v2, Le8/p;

    .line 25
    const/4 v4, 0x2

    .line 26
    .line 27
    aput-object v2, v0, v4

    .line 28
    const/4 v2, 0x3

    .line 29
    .line 30
    const-class v5, Le8/q;

    .line 31
    .line 32
    aput-object v5, v0, v2

    .line 33
    const/4 v2, 0x4

    .line 34
    .line 35
    const-class v5, Le8/r;

    .line 36
    .line 37
    aput-object v5, v0, v2

    .line 38
    const/4 v2, 0x5

    .line 39
    .line 40
    const-class v5, Le8/s;

    .line 41
    .line 42
    aput-object v5, v0, v2

    .line 43
    const/4 v2, 0x6

    .line 44
    .line 45
    const-class v5, Le8/t;

    .line 46
    .line 47
    aput-object v5, v0, v2

    .line 48
    const/4 v2, 0x7

    .line 49
    .line 50
    const-class v5, Le8/u;

    .line 51
    .line 52
    aput-object v5, v0, v2

    .line 53
    .line 54
    const/16 v2, 0x8

    .line 55
    .line 56
    const-class v5, Le8/v;

    .line 57
    .line 58
    aput-object v5, v0, v2

    .line 59
    .line 60
    const/16 v2, 0x9

    .line 61
    .line 62
    const-class v5, Le8/w;

    .line 63
    .line 64
    aput-object v5, v0, v2

    .line 65
    .line 66
    const-class v2, Le8/b;

    .line 67
    .line 68
    const/16 v5, 0xa

    .line 69
    .line 70
    aput-object v2, v0, v5

    .line 71
    .line 72
    const/16 v2, 0xb

    .line 73
    .line 74
    const-class v6, Le8/c;

    .line 75
    .line 76
    aput-object v6, v0, v2

    .line 77
    .line 78
    const/16 v2, 0xc

    .line 79
    .line 80
    const-class v6, Le8/d;

    .line 81
    .line 82
    aput-object v6, v0, v2

    .line 83
    .line 84
    const/16 v2, 0xd

    .line 85
    .line 86
    const-class v6, Le8/e;

    .line 87
    .line 88
    aput-object v6, v0, v2

    .line 89
    .line 90
    const/16 v2, 0xe

    .line 91
    .line 92
    const-class v6, Le8/f;

    .line 93
    .line 94
    aput-object v6, v0, v2

    .line 95
    .line 96
    const/16 v2, 0xf

    .line 97
    .line 98
    const-class v6, Le8/g;

    .line 99
    .line 100
    aput-object v6, v0, v2

    .line 101
    .line 102
    const/16 v2, 0x10

    .line 103
    .line 104
    const-class v6, Le8/h;

    .line 105
    .line 106
    aput-object v6, v0, v2

    .line 107
    .line 108
    const/16 v2, 0x11

    .line 109
    .line 110
    const-class v6, Le8/i;

    .line 111
    .line 112
    aput-object v6, v0, v2

    .line 113
    .line 114
    const/16 v2, 0x12

    .line 115
    .line 116
    const-class v6, Le8/j;

    .line 117
    .line 118
    aput-object v6, v0, v2

    .line 119
    .line 120
    const/16 v2, 0x13

    .line 121
    .line 122
    const-class v6, Le8/k;

    .line 123
    .line 124
    aput-object v6, v0, v2

    .line 125
    .line 126
    const/16 v2, 0x14

    .line 127
    .line 128
    const-class v6, Le8/m;

    .line 129
    .line 130
    aput-object v6, v0, v2

    .line 131
    .line 132
    const/16 v2, 0x15

    .line 133
    .line 134
    const-class v6, Le8/n;

    .line 135
    .line 136
    aput-object v6, v0, v2

    .line 137
    .line 138
    const/16 v2, 0x16

    .line 139
    .line 140
    const-class v6, Le8/o;

    .line 141
    .line 142
    aput-object v6, v0, v2

    .line 143
    .line 144
    .line 145
    invoke-static {v0}, Lkotlin/collections/t;->p([Ljava/lang/Object;)Ljava/util/List;

    .line 146
    move-result-object v0

    .line 147
    .line 148
    check-cast v0, Ljava/lang/Iterable;

    .line 149
    .line 150
    new-instance v2, Ljava/util/ArrayList;

    .line 151
    .line 152
    .line 153
    invoke-static {v0, v5}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    .line 154
    move-result v5

    .line 155
    .line 156
    .line 157
    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 158
    .line 159
    .line 160
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 161
    move-result-object v0

    .line 162
    .line 163
    .line 164
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 165
    move-result v5

    .line 166
    .line 167
    if-eqz v5, :cond_1

    .line 168
    .line 169
    .line 170
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 171
    move-result-object v5

    .line 172
    .line 173
    add-int/lit8 v6, v3, 0x1

    .line 174
    .line 175
    if-gez v3, :cond_0

    .line 176
    .line 177
    .line 178
    invoke-static {}, Lkotlin/collections/t;->w()V

    .line 179
    .line 180
    :cond_0
    check-cast v5, Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 184
    move-result-object v3

    .line 185
    .line 186
    .line 187
    invoke-static {v5, v3}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 188
    move-result-object v3

    .line 189
    .line 190
    .line 191
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 192
    move v3, v6

    .line 193
    goto :goto_0

    .line 194
    .line 195
    .line 196
    :cond_1
    invoke-static {v2}, Lkotlin/collections/p0;->u(Ljava/lang/Iterable;)Ljava/util/Map;

    .line 197
    move-result-object v0

    .line 198
    .line 199
    sput-object v0, Lkotlin/jvm/internal/i;->FUNCTION_CLASSES:Ljava/util/Map;

    .line 200
    .line 201
    new-instance v0, Ljava/util/HashMap;

    .line 202
    .line 203
    .line 204
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 205
    .line 206
    const-string v2, "boolean"

    .line 207
    .line 208
    const-string v3, "kotlin.Boolean"

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    const-string v2, "char"

    .line 214
    .line 215
    const-string v5, "kotlin.Char"

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    const-string v2, "byte"

    .line 221
    .line 222
    const-string v6, "kotlin.Byte"

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    const-string v2, "short"

    .line 228
    .line 229
    const-string v7, "kotlin.Short"

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    const-string v2, "int"

    .line 235
    .line 236
    const-string v8, "kotlin.Int"

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    const-string v2, "float"

    .line 242
    .line 243
    const-string v9, "kotlin.Float"

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .line 248
    const-string v2, "long"

    .line 249
    .line 250
    const-string v10, "kotlin.Long"

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    const-string v2, "double"

    .line 256
    .line 257
    const-string v11, "kotlin.Double"

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    sput-object v0, Lkotlin/jvm/internal/i;->primitiveFqNames:Ljava/util/HashMap;

    .line 263
    .line 264
    new-instance v2, Ljava/util/HashMap;

    .line 265
    .line 266
    .line 267
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 268
    .line 269
    const-string v12, "java.lang.Boolean"

    .line 270
    .line 271
    .line 272
    invoke-virtual {v2, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    .line 274
    const-string v3, "java.lang.Character"

    .line 275
    .line 276
    .line 277
    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .line 279
    const-string v3, "java.lang.Byte"

    .line 280
    .line 281
    .line 282
    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    .line 284
    const-string v3, "java.lang.Short"

    .line 285
    .line 286
    .line 287
    invoke-virtual {v2, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    .line 289
    const-string v3, "java.lang.Integer"

    .line 290
    .line 291
    .line 292
    invoke-virtual {v2, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    .line 294
    const-string v3, "java.lang.Float"

    .line 295
    .line 296
    .line 297
    invoke-virtual {v2, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    .line 299
    const-string v3, "java.lang.Long"

    .line 300
    .line 301
    .line 302
    invoke-virtual {v2, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    .line 304
    const-string v3, "java.lang.Double"

    .line 305
    .line 306
    .line 307
    invoke-virtual {v2, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .line 309
    sput-object v2, Lkotlin/jvm/internal/i;->primitiveWrapperFqNames:Ljava/util/HashMap;

    .line 310
    .line 311
    new-instance v3, Ljava/util/HashMap;

    .line 312
    .line 313
    .line 314
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 315
    .line 316
    const-string v5, "java.lang.Object"

    .line 317
    .line 318
    const-string v6, "kotlin.Any"

    .line 319
    .line 320
    .line 321
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    .line 323
    const-string v5, "java.lang.String"

    .line 324
    .line 325
    const-string v6, "kotlin.String"

    .line 326
    .line 327
    .line 328
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    .line 330
    const-string v5, "java.lang.CharSequence"

    .line 331
    .line 332
    const-string v6, "kotlin.CharSequence"

    .line 333
    .line 334
    .line 335
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    .line 337
    const-string v5, "java.lang.Throwable"

    .line 338
    .line 339
    const-string v6, "kotlin.Throwable"

    .line 340
    .line 341
    .line 342
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    .line 344
    const-string v5, "java.lang.Cloneable"

    .line 345
    .line 346
    const-string v6, "kotlin.Cloneable"

    .line 347
    .line 348
    .line 349
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    .line 351
    const-string v5, "java.lang.Number"

    .line 352
    .line 353
    const-string v6, "kotlin.Number"

    .line 354
    .line 355
    .line 356
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    .line 358
    const-string v5, "java.lang.Comparable"

    .line 359
    .line 360
    const-string v6, "kotlin.Comparable"

    .line 361
    .line 362
    .line 363
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    .line 365
    const-string v5, "java.lang.Enum"

    .line 366
    .line 367
    const-string v6, "kotlin.Enum"

    .line 368
    .line 369
    .line 370
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    .line 372
    const-string v5, "java.lang.annotation.Annotation"

    .line 373
    .line 374
    const-string v6, "kotlin.Annotation"

    .line 375
    .line 376
    .line 377
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    .line 379
    const-string v5, "java.lang.Iterable"

    .line 380
    .line 381
    const-string v6, "kotlin.collections.Iterable"

    .line 382
    .line 383
    .line 384
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    .line 386
    const-string v5, "java.util.Iterator"

    .line 387
    .line 388
    const-string v6, "kotlin.collections.Iterator"

    .line 389
    .line 390
    .line 391
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    .line 393
    const-string v5, "java.util.Collection"

    .line 394
    .line 395
    const-string v6, "kotlin.collections.Collection"

    .line 396
    .line 397
    .line 398
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    .line 400
    const-string v5, "java.util.List"

    .line 401
    .line 402
    const-string v6, "kotlin.collections.List"

    .line 403
    .line 404
    .line 405
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    .line 407
    const-string v5, "java.util.Set"

    .line 408
    .line 409
    const-string v6, "kotlin.collections.Set"

    .line 410
    .line 411
    .line 412
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    .line 414
    const-string v5, "java.util.ListIterator"

    .line 415
    .line 416
    const-string v6, "kotlin.collections.ListIterator"

    .line 417
    .line 418
    .line 419
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    .line 421
    const-string v5, "java.util.Map"

    .line 422
    .line 423
    const-string v6, "kotlin.collections.Map"

    .line 424
    .line 425
    .line 426
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    .line 428
    const-string v5, "java.util.Map$Entry"

    .line 429
    .line 430
    const-string v6, "kotlin.collections.Map.Entry"

    .line 431
    .line 432
    .line 433
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    .line 435
    const-string v5, "kotlin.jvm.internal.StringCompanionObject"

    .line 436
    .line 437
    const-string v6, "kotlin.String.Companion"

    .line 438
    .line 439
    .line 440
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    .line 442
    const-string v5, "kotlin.jvm.internal.EnumCompanionObject"

    .line 443
    .line 444
    const-string v6, "kotlin.Enum.Companion"

    .line 445
    .line 446
    .line 447
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 457
    move-result-object v0

    .line 458
    .line 459
    const-string v2, "<get-values>(...)"

    .line 460
    .line 461
    .line 462
    invoke-static {v0, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 463
    .line 464
    check-cast v0, Ljava/lang/Iterable;

    .line 465
    .line 466
    .line 467
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 468
    move-result-object v0

    .line 469
    .line 470
    .line 471
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 472
    move-result v2

    .line 473
    .line 474
    const/16 v5, 0x2e

    .line 475
    .line 476
    if-eqz v2, :cond_2

    .line 477
    .line 478
    .line 479
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 480
    move-result-object v2

    .line 481
    .line 482
    check-cast v2, Ljava/lang/String;

    .line 483
    .line 484
    new-instance v6, Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 488
    .line 489
    const-string v7, "kotlin.jvm.internal."

    .line 490
    .line 491
    .line 492
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    invoke-static {v2}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 496
    .line 497
    .line 498
    invoke-static {v2, v5, v1, v4, v1}, Lkotlin/text/k;->Q0(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 499
    move-result-object v5

    .line 500
    .line 501
    .line 502
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    const-string v5, "CompanionObject"

    .line 505
    .line 506
    .line 507
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 511
    move-result-object v5

    .line 512
    .line 513
    new-instance v6, Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    const-string v2, ".Companion"

    .line 522
    .line 523
    .line 524
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 528
    move-result-object v2

    .line 529
    .line 530
    .line 531
    invoke-static {v5, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 532
    move-result-object v2

    .line 533
    .line 534
    .line 535
    invoke-virtual {v2}, Lw7/u;->c()Ljava/lang/Object;

    .line 536
    move-result-object v5

    .line 537
    .line 538
    .line 539
    invoke-virtual {v2}, Lw7/u;->d()Ljava/lang/Object;

    .line 540
    move-result-object v2

    .line 541
    .line 542
    .line 543
    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    goto :goto_1

    .line 545
    .line 546
    :cond_2
    sget-object v0, Lkotlin/jvm/internal/i;->FUNCTION_CLASSES:Ljava/util/Map;

    .line 547
    .line 548
    .line 549
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 550
    move-result-object v0

    .line 551
    .line 552
    .line 553
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 554
    move-result-object v0

    .line 555
    .line 556
    .line 557
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 558
    move-result v2

    .line 559
    .line 560
    if-eqz v2, :cond_3

    .line 561
    .line 562
    .line 563
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 564
    move-result-object v2

    .line 565
    .line 566
    check-cast v2, Ljava/util/Map$Entry;

    .line 567
    .line 568
    .line 569
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 570
    move-result-object v6

    .line 571
    .line 572
    check-cast v6, Ljava/lang/Class;

    .line 573
    .line 574
    .line 575
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 576
    move-result-object v2

    .line 577
    .line 578
    check-cast v2, Ljava/lang/Number;

    .line 579
    .line 580
    .line 581
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 582
    move-result v2

    .line 583
    .line 584
    .line 585
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 586
    move-result-object v6

    .line 587
    .line 588
    new-instance v7, Ljava/lang/StringBuilder;

    .line 589
    .line 590
    .line 591
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 592
    .line 593
    const-string v8, "kotlin.Function"

    .line 594
    .line 595
    .line 596
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    .line 598
    .line 599
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 600
    .line 601
    .line 602
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 603
    move-result-object v2

    .line 604
    .line 605
    .line 606
    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    goto :goto_2

    .line 608
    .line 609
    :cond_3
    sput-object v3, Lkotlin/jvm/internal/i;->classFqNames:Ljava/util/HashMap;

    .line 610
    .line 611
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 612
    .line 613
    .line 614
    invoke-interface {v3}, Ljava/util/Map;->size()I

    .line 615
    move-result v2

    .line 616
    .line 617
    .line 618
    invoke-static {v2}, Lkotlin/collections/p0;->e(I)I

    .line 619
    move-result v2

    .line 620
    .line 621
    .line 622
    invoke-direct {v0, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 623
    .line 624
    .line 625
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 626
    move-result-object v2

    .line 627
    .line 628
    .line 629
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 630
    move-result-object v2

    .line 631
    .line 632
    .line 633
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 634
    move-result v3

    .line 635
    .line 636
    if-eqz v3, :cond_4

    .line 637
    .line 638
    .line 639
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 640
    move-result-object v3

    .line 641
    .line 642
    check-cast v3, Ljava/util/Map$Entry;

    .line 643
    .line 644
    .line 645
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 646
    move-result-object v6

    .line 647
    .line 648
    .line 649
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 650
    move-result-object v3

    .line 651
    .line 652
    check-cast v3, Ljava/lang/String;

    .line 653
    .line 654
    .line 655
    invoke-static {v3, v5, v1, v4, v1}, Lkotlin/text/k;->Q0(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 656
    move-result-object v3

    .line 657
    .line 658
    .line 659
    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    goto :goto_3

    .line 661
    .line 662
    :cond_4
    sput-object v0, Lkotlin/jvm/internal/i;->simpleNames:Ljava/util/Map;

    .line 663
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "jClass"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lkotlin/jvm/internal/i;->jClass:Ljava/lang/Class;

    .line 11
    return-void
.end method

.method public static final synthetic c()Ljava/util/HashMap;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/jvm/internal/i;->classFqNames:Ljava/util/HashMap;

    return-object v0
.end method

.method public static final synthetic d()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/jvm/internal/i;->FUNCTION_CLASSES:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic e()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/jvm/internal/i;->simpleNames:Ljava/util/Map;

    return-object v0
.end method

.method private final f()Ljava/lang/Void;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ld8/b;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ld8/b;-><init>()V

    .line 6
    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/jvm/internal/i;->jClass:Ljava/lang/Class;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    instance-of v0, p1, Lkotlin/jvm/internal/i;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Ld8/a;->b(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    check-cast p1, Lkotlin/reflect/KClass;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Ld8/a;->b(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-static {v0, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result p1

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    const/4 p1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    return p1
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lkotlin/jvm/internal/i;->f()Ljava/lang/Void;

    .line 4
    .line 5
    new-instance v0, Lw7/i;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 9
    throw v0
.end method

.method public getConstructors()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/KFunction<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lkotlin/jvm/internal/i;->f()Ljava/lang/Void;

    .line 4
    .line 5
    new-instance v0, Lw7/i;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 9
    throw v0
.end method

.method public getMembers()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/KCallable<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lkotlin/jvm/internal/i;->f()Ljava/lang/Void;

    .line 4
    .line 5
    new-instance v0, Lw7/i;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 9
    throw v0
.end method

.method public getNestedClasses()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/KClass<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lkotlin/jvm/internal/i;->f()Ljava/lang/Void;

    .line 4
    .line 5
    new-instance v0, Lw7/i;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 9
    throw v0
.end method

.method public getObjectInstance()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lkotlin/jvm/internal/i;->f()Ljava/lang/Void;

    .line 4
    .line 5
    new-instance v0, Lw7/i;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 9
    throw v0
.end method

.method public getQualifiedName()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lkotlin/jvm/internal/i;->Companion:Lkotlin/jvm/internal/i$a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lkotlin/jvm/internal/i;->a()Ljava/lang/Class;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/i$a;->a(Ljava/lang/Class;)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getSealedSubclasses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/KClass<",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lkotlin/jvm/internal/i;->f()Ljava/lang/Void;

    .line 4
    .line 5
    new-instance v0, Lw7/i;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 9
    throw v0
.end method

.method public getSimpleName()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lkotlin/jvm/internal/i;->Companion:Lkotlin/jvm/internal/i$a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lkotlin/jvm/internal/i;->a()Ljava/lang/Class;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/i$a;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getSupertypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/KType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lkotlin/jvm/internal/i;->f()Ljava/lang/Void;

    .line 4
    .line 5
    new-instance v0, Lw7/i;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 9
    throw v0
.end method

.method public getTypeParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/KTypeParameter;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lkotlin/jvm/internal/i;->f()Ljava/lang/Void;

    .line 4
    .line 5
    new-instance v0, Lw7/i;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 9
    throw v0
.end method

.method public getVisibility()Lkotlin/reflect/KVisibility;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lkotlin/jvm/internal/i;->f()Ljava/lang/Void;

    .line 4
    .line 5
    new-instance v0, Lw7/i;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 9
    throw v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Ld8/a;->b(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public isAbstract()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lkotlin/jvm/internal/i;->f()Ljava/lang/Void;

    .line 4
    .line 5
    new-instance v0, Lw7/i;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 9
    throw v0
.end method

.method public isCompanion()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lkotlin/jvm/internal/i;->f()Ljava/lang/Void;

    .line 4
    .line 5
    new-instance v0, Lw7/i;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 9
    throw v0
.end method

.method public isData()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lkotlin/jvm/internal/i;->f()Ljava/lang/Void;

    .line 4
    .line 5
    new-instance v0, Lw7/i;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 9
    throw v0
.end method

.method public isFinal()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lkotlin/jvm/internal/i;->f()Ljava/lang/Void;

    .line 4
    .line 5
    new-instance v0, Lw7/i;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 9
    throw v0
.end method

.method public isFun()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lkotlin/jvm/internal/i;->f()Ljava/lang/Void;

    .line 4
    .line 5
    new-instance v0, Lw7/i;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 9
    throw v0
.end method

.method public isInner()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lkotlin/jvm/internal/i;->f()Ljava/lang/Void;

    .line 4
    .line 5
    new-instance v0, Lw7/i;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 9
    throw v0
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    sget-object v0, Lkotlin/jvm/internal/i;->Companion:Lkotlin/jvm/internal/i$a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lkotlin/jvm/internal/i;->a()Ljava/lang/Class;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1, v1}, Lkotlin/jvm/internal/i$a;->c(Ljava/lang/Object;Ljava/lang/Class;)Z

    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lkotlin/jvm/internal/i;->f()Ljava/lang/Void;

    .line 4
    .line 5
    new-instance v0, Lw7/i;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 9
    throw v0
.end method

.method public isSealed()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lkotlin/jvm/internal/i;->f()Ljava/lang/Void;

    .line 4
    .line 5
    new-instance v0, Lw7/i;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 9
    throw v0
.end method

.method public isValue()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lkotlin/jvm/internal/i;->f()Ljava/lang/Void;

    .line 4
    .line 5
    new-instance v0, Lw7/i;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lw7/i;-><init>()V

    .line 9
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lkotlin/jvm/internal/i;->a()Ljava/lang/Class;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v1, " (Kotlin reflection is not available)"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method
