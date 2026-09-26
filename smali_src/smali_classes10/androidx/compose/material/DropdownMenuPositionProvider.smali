.class public final Landroidx/compose/material/DropdownMenuPositionProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/window/PopupPositionProvider;


# annotations
.annotation build Landroidx/compose/runtime/Immutable;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMenu.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Menu.kt\nandroidx/compose/material/DropdownMenuPositionProvider\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,298:1\n1#2:299\n178#3,2:300\n178#3,2:302\n*S KotlinDebug\n*F\n+ 1 Menu.kt\nandroidx/compose/material/DropdownMenuPositionProvider\n*L\n277#1:300,2\n286#1:302,2\n*E\n"
.end annotation


# instance fields
.field private final contentOffset:J

.field private final density:Landroidx/compose/ui/unit/Density;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final onPositionCalculated:Le8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/p<",
            "Landroidx/compose/ui/unit/IntRect;",
            "Landroidx/compose/ui/unit/IntRect;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(JLandroidx/compose/ui/unit/Density;Le8/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroidx/compose/ui/unit/Density;",
            "Le8/p<",
            "-",
            "Landroidx/compose/ui/unit/IntRect;",
            "-",
            "Landroidx/compose/ui/unit/IntRect;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/compose/material/DropdownMenuPositionProvider;->contentOffset:J

    iput-object p3, p0, Landroidx/compose/material/DropdownMenuPositionProvider;->density:Landroidx/compose/ui/unit/Density;

    iput-object p4, p0, Landroidx/compose/material/DropdownMenuPositionProvider;->onPositionCalculated:Le8/p;

    return-void
.end method

.method public synthetic constructor <init>(JLandroidx/compose/ui/unit/Density;Le8/p;ILkotlin/jvm/internal/k;)V
    .locals 6

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    sget-object p4, Landroidx/compose/material/DropdownMenuPositionProvider$1;->INSTANCE:Landroidx/compose/material/DropdownMenuPositionProvider$1;

    :cond_0
    move-object v4, p4

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    .line 3
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material/DropdownMenuPositionProvider;-><init>(JLandroidx/compose/ui/unit/Density;Le8/p;Lkotlin/jvm/internal/k;)V

    return-void
.end method

.method public synthetic constructor <init>(JLandroidx/compose/ui/unit/Density;Le8/p;Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/material/DropdownMenuPositionProvider;-><init>(JLandroidx/compose/ui/unit/Density;Le8/p;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/compose/ui/unit/IntRect;JLandroidx/compose/ui/unit/LayoutDirection;J)J
    .locals 14
    .param p1    # Landroidx/compose/ui/unit/IntRect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/unit/LayoutDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    .line 4
    move-object/from16 v2, p4

    .line 5
    .line 6
    const-string v3, "anchorBounds"

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    const-string v3, "layoutDirection"

    .line 12
    .line 13
    .line 14
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    iget-object v3, v0, Landroidx/compose/material/DropdownMenuPositionProvider;->density:Landroidx/compose/ui/unit/Density;

    .line 17
    .line 18
    .line 19
    invoke-static {}, Landroidx/compose/material/MenuKt;->j()F

    .line 20
    move-result v4

    .line 21
    .line 22
    .line 23
    invoke-interface {v3, v4}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 24
    move-result v3

    .line 25
    .line 26
    iget-object v4, v0, Landroidx/compose/material/DropdownMenuPositionProvider;->density:Landroidx/compose/ui/unit/Density;

    .line 27
    .line 28
    iget-wide v5, v0, Landroidx/compose/material/DropdownMenuPositionProvider;->contentOffset:J

    .line 29
    .line 30
    .line 31
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/DpOffset;->g(J)F

    .line 32
    move-result v5

    .line 33
    .line 34
    .line 35
    invoke-interface {v4, v5}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 36
    move-result v4

    .line 37
    .line 38
    iget-object v5, v0, Landroidx/compose/material/DropdownMenuPositionProvider;->density:Landroidx/compose/ui/unit/Density;

    .line 39
    .line 40
    iget-wide v6, v0, Landroidx/compose/material/DropdownMenuPositionProvider;->contentOffset:J

    .line 41
    .line 42
    .line 43
    invoke-static {v6, v7}, Landroidx/compose/ui/unit/DpOffset;->h(J)F

    .line 44
    move-result v6

    .line 45
    .line 46
    .line 47
    invoke-interface {v5, v6}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 48
    move-result v5

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->c()I

    .line 52
    move-result v6

    .line 53
    add-int/2addr v6, v4

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->d()I

    .line 57
    move-result v7

    .line 58
    sub-int/2addr v7, v4

    .line 59
    .line 60
    .line 61
    invoke-static/range {p5 .. p6}, Landroidx/compose/ui/unit/IntSize;->g(J)I

    .line 62
    move-result v4

    .line 63
    sub-int/2addr v7, v4

    .line 64
    .line 65
    .line 66
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/IntSize;->g(J)I

    .line 67
    move-result v4

    .line 68
    .line 69
    .line 70
    invoke-static/range {p5 .. p6}, Landroidx/compose/ui/unit/IntSize;->g(J)I

    .line 71
    move-result v8

    .line 72
    sub-int/2addr v4, v8

    .line 73
    .line 74
    sget-object v8, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 75
    const/4 v9, 0x1

    .line 76
    const/4 v10, 0x3

    .line 77
    const/4 v11, 0x2

    .line 78
    const/4 v12, 0x0

    .line 79
    .line 80
    if-ne v2, v8, :cond_1

    .line 81
    .line 82
    new-array v2, v10, [Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    move-result-object v6

    .line 87
    .line 88
    aput-object v6, v2, v12

    .line 89
    .line 90
    .line 91
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    move-result-object v6

    .line 93
    .line 94
    aput-object v6, v2, v9

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->c()I

    .line 98
    move-result v6

    .line 99
    .line 100
    if-ltz v6, :cond_0

    .line 101
    goto :goto_0

    .line 102
    :cond_0
    move v4, v12

    .line 103
    .line 104
    .line 105
    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    move-result-object v4

    .line 107
    .line 108
    aput-object v4, v2, v11

    .line 109
    .line 110
    .line 111
    invoke-static {v2}, Lkotlin/sequences/j;->g([Ljava/lang/Object;)Lkotlin/sequences/g;

    .line 112
    move-result-object v2

    .line 113
    goto :goto_1

    .line 114
    .line 115
    :cond_1
    new-array v2, v10, [Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    move-result-object v8

    .line 120
    .line 121
    aput-object v8, v2, v12

    .line 122
    .line 123
    .line 124
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    move-result-object v6

    .line 126
    .line 127
    aput-object v6, v2, v9

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->d()I

    .line 131
    move-result v6

    .line 132
    .line 133
    .line 134
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/IntSize;->g(J)I

    .line 135
    move-result v8

    .line 136
    .line 137
    if-gt v6, v8, :cond_2

    .line 138
    move v4, v12

    .line 139
    .line 140
    .line 141
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    move-result-object v4

    .line 143
    .line 144
    aput-object v4, v2, v11

    .line 145
    .line 146
    .line 147
    invoke-static {v2}, Lkotlin/sequences/j;->g([Ljava/lang/Object;)Lkotlin/sequences/g;

    .line 148
    move-result-object v2

    .line 149
    .line 150
    .line 151
    :goto_1
    invoke-interface {v2}, Lkotlin/sequences/g;->iterator()Ljava/util/Iterator;

    .line 152
    move-result-object v2

    .line 153
    .line 154
    .line 155
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 156
    move-result v4

    .line 157
    const/4 v6, 0x0

    .line 158
    .line 159
    if-eqz v4, :cond_4

    .line 160
    .line 161
    .line 162
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 163
    move-result-object v4

    .line 164
    move-object v8, v4

    .line 165
    .line 166
    check-cast v8, Ljava/lang/Number;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    .line 170
    move-result v8

    .line 171
    .line 172
    if-ltz v8, :cond_3

    .line 173
    .line 174
    .line 175
    invoke-static/range {p5 .. p6}, Landroidx/compose/ui/unit/IntSize;->g(J)I

    .line 176
    move-result v13

    .line 177
    add-int/2addr v8, v13

    .line 178
    .line 179
    .line 180
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/IntSize;->g(J)I

    .line 181
    move-result v13

    .line 182
    .line 183
    if-gt v8, v13, :cond_3

    .line 184
    goto :goto_2

    .line 185
    :cond_4
    move-object v4, v6

    .line 186
    .line 187
    :goto_2
    check-cast v4, Ljava/lang/Integer;

    .line 188
    .line 189
    if-eqz v4, :cond_5

    .line 190
    .line 191
    .line 192
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 193
    move-result v7

    .line 194
    .line 195
    .line 196
    :cond_5
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->a()I

    .line 197
    move-result v2

    .line 198
    add-int/2addr v2, v5

    .line 199
    .line 200
    .line 201
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 202
    move-result v2

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->e()I

    .line 206
    move-result v4

    .line 207
    sub-int/2addr v4, v5

    .line 208
    .line 209
    .line 210
    invoke-static/range {p5 .. p6}, Landroidx/compose/ui/unit/IntSize;->f(J)I

    .line 211
    move-result v5

    .line 212
    sub-int/2addr v4, v5

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->e()I

    .line 216
    move-result v5

    .line 217
    .line 218
    .line 219
    invoke-static/range {p5 .. p6}, Landroidx/compose/ui/unit/IntSize;->f(J)I

    .line 220
    move-result v8

    .line 221
    div-int/2addr v8, v11

    .line 222
    sub-int/2addr v5, v8

    .line 223
    .line 224
    .line 225
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/IntSize;->f(J)I

    .line 226
    move-result v8

    .line 227
    .line 228
    .line 229
    invoke-static/range {p5 .. p6}, Landroidx/compose/ui/unit/IntSize;->f(J)I

    .line 230
    move-result v13

    .line 231
    sub-int/2addr v8, v13

    .line 232
    sub-int/2addr v8, v3

    .line 233
    const/4 v13, 0x4

    .line 234
    .line 235
    new-array v13, v13, [Ljava/lang/Integer;

    .line 236
    .line 237
    .line 238
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 239
    move-result-object v2

    .line 240
    .line 241
    aput-object v2, v13, v12

    .line 242
    .line 243
    .line 244
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 245
    move-result-object v2

    .line 246
    .line 247
    aput-object v2, v13, v9

    .line 248
    .line 249
    .line 250
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 251
    move-result-object v2

    .line 252
    .line 253
    aput-object v2, v13, v11

    .line 254
    .line 255
    .line 256
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 257
    move-result-object v2

    .line 258
    .line 259
    aput-object v2, v13, v10

    .line 260
    .line 261
    .line 262
    invoke-static {v13}, Lkotlin/sequences/j;->g([Ljava/lang/Object;)Lkotlin/sequences/g;

    .line 263
    move-result-object v2

    .line 264
    .line 265
    .line 266
    invoke-interface {v2}, Lkotlin/sequences/g;->iterator()Ljava/util/Iterator;

    .line 267
    move-result-object v2

    .line 268
    .line 269
    .line 270
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 271
    move-result v5

    .line 272
    .line 273
    if-eqz v5, :cond_7

    .line 274
    .line 275
    .line 276
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 277
    move-result-object v5

    .line 278
    move-object v8, v5

    .line 279
    .line 280
    check-cast v8, Ljava/lang/Number;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    .line 284
    move-result v8

    .line 285
    .line 286
    if-lt v8, v3, :cond_6

    .line 287
    .line 288
    .line 289
    invoke-static/range {p5 .. p6}, Landroidx/compose/ui/unit/IntSize;->f(J)I

    .line 290
    move-result v9

    .line 291
    add-int/2addr v8, v9

    .line 292
    .line 293
    .line 294
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/IntSize;->f(J)I

    .line 295
    move-result v9

    .line 296
    sub-int/2addr v9, v3

    .line 297
    .line 298
    if-gt v8, v9, :cond_6

    .line 299
    move-object v6, v5

    .line 300
    .line 301
    :cond_7
    check-cast v6, Ljava/lang/Integer;

    .line 302
    .line 303
    if-eqz v6, :cond_8

    .line 304
    .line 305
    .line 306
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 307
    move-result v4

    .line 308
    .line 309
    :cond_8
    iget-object v2, v0, Landroidx/compose/material/DropdownMenuPositionProvider;->onPositionCalculated:Le8/p;

    .line 310
    .line 311
    new-instance v3, Landroidx/compose/ui/unit/IntRect;

    .line 312
    .line 313
    .line 314
    invoke-static/range {p5 .. p6}, Landroidx/compose/ui/unit/IntSize;->g(J)I

    .line 315
    move-result v5

    .line 316
    add-int/2addr v5, v7

    .line 317
    .line 318
    .line 319
    invoke-static/range {p5 .. p6}, Landroidx/compose/ui/unit/IntSize;->f(J)I

    .line 320
    move-result v6

    .line 321
    add-int/2addr v6, v4

    .line 322
    .line 323
    .line 324
    invoke-direct {v3, v7, v4, v5, v6}, Landroidx/compose/ui/unit/IntRect;-><init>(IIII)V

    .line 325
    .line 326
    .line 327
    invoke-interface {v2, p1, v3}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    invoke-static {v7, v4}, Landroidx/compose/ui/unit/IntOffsetKt;->a(II)J

    .line 331
    move-result-wide v1

    .line 332
    return-wide v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/material/DropdownMenuPositionProvider;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/material/DropdownMenuPositionProvider;

    iget-wide v3, p0, Landroidx/compose/material/DropdownMenuPositionProvider;->contentOffset:J

    iget-wide v5, p1, Landroidx/compose/material/DropdownMenuPositionProvider;->contentOffset:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/unit/DpOffset;->f(JJ)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/compose/material/DropdownMenuPositionProvider;->density:Landroidx/compose/ui/unit/Density;

    iget-object v3, p1, Landroidx/compose/material/DropdownMenuPositionProvider;->density:Landroidx/compose/ui/unit/Density;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/compose/material/DropdownMenuPositionProvider;->onPositionCalculated:Le8/p;

    iget-object p1, p1, Landroidx/compose/material/DropdownMenuPositionProvider;->onPositionCalculated:Le8/p;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material/DropdownMenuPositionProvider;->contentOffset:J

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/DpOffset;->i(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/material/DropdownMenuPositionProvider;->density:Landroidx/compose/ui/unit/Density;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/material/DropdownMenuPositionProvider;->onPositionCalculated:Le8/p;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DropdownMenuPositionProvider(contentOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/compose/material/DropdownMenuPositionProvider;->contentOffset:J

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/DpOffset;->j(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", density="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/material/DropdownMenuPositionProvider;->density:Landroidx/compose/ui/unit/Density;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", onPositionCalculated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/material/DropdownMenuPositionProvider;->onPositionCalculated:Le8/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
