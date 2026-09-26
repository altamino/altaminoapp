.class final Landroidx/compose/foundation/layout/AspectRatioModifier;
.super Landroidx/compose/ui/platform/InspectorValueInfo;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/LayoutModifier;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAspectRatio.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AspectRatio.kt\nandroidx/compose/foundation/layout/AspectRatioModifier\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,218:1\n1#2:219\n*E\n"
.end annotation


# instance fields
.field private final aspectRatio:F

.field private final matchHeightConstraintsFirst:Z


# direct methods
.method public constructor <init>(FZLe8/l;)V
    .locals 1
    .param p3    # Le8/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FZ",
            "Le8/l<",
            "-",
            "Landroidx/compose/ui/platform/InspectorInfo;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "inspectorInfo"

    .line 3
    .line 4
    .line 5
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p3}, Landroidx/compose/ui/platform/InspectorValueInfo;-><init>(Le8/l;)V

    .line 9
    .line 10
    iput p1, p0, Landroidx/compose/foundation/layout/AspectRatioModifier;->aspectRatio:F

    .line 11
    .line 12
    iput-boolean p2, p0, Landroidx/compose/foundation/layout/AspectRatioModifier;->matchHeightConstraintsFirst:Z

    .line 13
    const/4 p2, 0x0

    .line 14
    .line 15
    cmpl-float p2, p1, p2

    .line 16
    .line 17
    if-lez p2, :cond_0

    .line 18
    return-void

    .line 19
    .line 20
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    const-string p3, "aspectRatio "

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string p1, " must be > 0"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    .line 48
    .line 49
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 50
    throw p2
.end method

.method private final a(J)J
    .locals 11

    .line 1
    .line 2
    iget-boolean v0, p0, Landroidx/compose/foundation/layout/AspectRatioModifier;->matchHeightConstraintsFirst:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_7

    .line 6
    const/4 v5, 0x0

    .line 7
    const/4 v6, 0x1

    .line 8
    const/4 v7, 0x0

    .line 9
    move-object v2, p0

    .line 10
    move-wide v3, p1

    .line 11
    .line 12
    .line 13
    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/layout/AspectRatioModifier;->f(Landroidx/compose/foundation/layout/AspectRatioModifier;JZILjava/lang/Object;)J

    .line 14
    move-result-wide v2

    .line 15
    .line 16
    sget-object v0, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize$Companion;->a()J

    .line 20
    move-result-wide v4

    .line 21
    .line 22
    .line 23
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/unit/IntSize;->e(JJ)Z

    .line 24
    move-result v4

    .line 25
    .line 26
    if-nez v4, :cond_0

    .line 27
    return-wide v2

    .line 28
    :cond_0
    const/4 v8, 0x0

    .line 29
    const/4 v9, 0x1

    .line 30
    const/4 v10, 0x0

    .line 31
    move-object v5, p0

    .line 32
    move-wide v6, p1

    .line 33
    .line 34
    .line 35
    invoke-static/range {v5 .. v10}, Landroidx/compose/foundation/layout/AspectRatioModifier;->c(Landroidx/compose/foundation/layout/AspectRatioModifier;JZILjava/lang/Object;)J

    .line 36
    move-result-wide v2

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize$Companion;->a()J

    .line 40
    move-result-wide v4

    .line 41
    .line 42
    .line 43
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/unit/IntSize;->e(JJ)Z

    .line 44
    move-result v4

    .line 45
    .line 46
    if-nez v4, :cond_1

    .line 47
    return-wide v2

    .line 48
    :cond_1
    const/4 v8, 0x0

    .line 49
    const/4 v9, 0x1

    .line 50
    const/4 v10, 0x0

    .line 51
    move-object v5, p0

    .line 52
    move-wide v6, p1

    .line 53
    .line 54
    .line 55
    invoke-static/range {v5 .. v10}, Landroidx/compose/foundation/layout/AspectRatioModifier;->j(Landroidx/compose/foundation/layout/AspectRatioModifier;JZILjava/lang/Object;)J

    .line 56
    move-result-wide v2

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize$Companion;->a()J

    .line 60
    move-result-wide v4

    .line 61
    .line 62
    .line 63
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/unit/IntSize;->e(JJ)Z

    .line 64
    move-result v4

    .line 65
    .line 66
    if-nez v4, :cond_2

    .line 67
    return-wide v2

    .line 68
    :cond_2
    const/4 v8, 0x0

    .line 69
    const/4 v9, 0x1

    .line 70
    const/4 v10, 0x0

    .line 71
    move-object v5, p0

    .line 72
    move-wide v6, p1

    .line 73
    .line 74
    .line 75
    invoke-static/range {v5 .. v10}, Landroidx/compose/foundation/layout/AspectRatioModifier;->h(Landroidx/compose/foundation/layout/AspectRatioModifier;JZILjava/lang/Object;)J

    .line 76
    move-result-wide v2

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize$Companion;->a()J

    .line 80
    move-result-wide v4

    .line 81
    .line 82
    .line 83
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/unit/IntSize;->e(JJ)Z

    .line 84
    move-result v4

    .line 85
    .line 86
    if-nez v4, :cond_3

    .line 87
    return-wide v2

    .line 88
    .line 89
    .line 90
    :cond_3
    invoke-direct {p0, p1, p2, v1}, Landroidx/compose/foundation/layout/AspectRatioModifier;->d(JZ)J

    .line 91
    move-result-wide v2

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize$Companion;->a()J

    .line 95
    move-result-wide v4

    .line 96
    .line 97
    .line 98
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/unit/IntSize;->e(JJ)Z

    .line 99
    move-result v4

    .line 100
    .line 101
    if-nez v4, :cond_4

    .line 102
    return-wide v2

    .line 103
    .line 104
    .line 105
    :cond_4
    invoke-direct {p0, p1, p2, v1}, Landroidx/compose/foundation/layout/AspectRatioModifier;->b(JZ)J

    .line 106
    move-result-wide v2

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize$Companion;->a()J

    .line 110
    move-result-wide v4

    .line 111
    .line 112
    .line 113
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/unit/IntSize;->e(JJ)Z

    .line 114
    move-result v4

    .line 115
    .line 116
    if-nez v4, :cond_5

    .line 117
    return-wide v2

    .line 118
    .line 119
    .line 120
    :cond_5
    invoke-direct {p0, p1, p2, v1}, Landroidx/compose/foundation/layout/AspectRatioModifier;->i(JZ)J

    .line 121
    move-result-wide v2

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize$Companion;->a()J

    .line 125
    move-result-wide v4

    .line 126
    .line 127
    .line 128
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/unit/IntSize;->e(JJ)Z

    .line 129
    move-result v4

    .line 130
    .line 131
    if-nez v4, :cond_6

    .line 132
    return-wide v2

    .line 133
    .line 134
    .line 135
    :cond_6
    invoke-direct {p0, p1, p2, v1}, Landroidx/compose/foundation/layout/AspectRatioModifier;->g(JZ)J

    .line 136
    move-result-wide p1

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize$Companion;->a()J

    .line 140
    move-result-wide v0

    .line 141
    .line 142
    .line 143
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/unit/IntSize;->e(JJ)Z

    .line 144
    move-result v0

    .line 145
    .line 146
    if-nez v0, :cond_f

    .line 147
    return-wide p1

    .line 148
    :cond_7
    const/4 v5, 0x0

    .line 149
    const/4 v6, 0x1

    .line 150
    const/4 v7, 0x0

    .line 151
    move-object v2, p0

    .line 152
    move-wide v3, p1

    .line 153
    .line 154
    .line 155
    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/layout/AspectRatioModifier;->c(Landroidx/compose/foundation/layout/AspectRatioModifier;JZILjava/lang/Object;)J

    .line 156
    move-result-wide v2

    .line 157
    .line 158
    sget-object v0, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize$Companion;->a()J

    .line 162
    move-result-wide v4

    .line 163
    .line 164
    .line 165
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/unit/IntSize;->e(JJ)Z

    .line 166
    move-result v4

    .line 167
    .line 168
    if-nez v4, :cond_8

    .line 169
    return-wide v2

    .line 170
    :cond_8
    const/4 v8, 0x0

    .line 171
    const/4 v9, 0x1

    .line 172
    const/4 v10, 0x0

    .line 173
    move-object v5, p0

    .line 174
    move-wide v6, p1

    .line 175
    .line 176
    .line 177
    invoke-static/range {v5 .. v10}, Landroidx/compose/foundation/layout/AspectRatioModifier;->f(Landroidx/compose/foundation/layout/AspectRatioModifier;JZILjava/lang/Object;)J

    .line 178
    move-result-wide v2

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize$Companion;->a()J

    .line 182
    move-result-wide v4

    .line 183
    .line 184
    .line 185
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/unit/IntSize;->e(JJ)Z

    .line 186
    move-result v4

    .line 187
    .line 188
    if-nez v4, :cond_9

    .line 189
    return-wide v2

    .line 190
    :cond_9
    const/4 v8, 0x0

    .line 191
    const/4 v9, 0x1

    .line 192
    const/4 v10, 0x0

    .line 193
    move-object v5, p0

    .line 194
    move-wide v6, p1

    .line 195
    .line 196
    .line 197
    invoke-static/range {v5 .. v10}, Landroidx/compose/foundation/layout/AspectRatioModifier;->h(Landroidx/compose/foundation/layout/AspectRatioModifier;JZILjava/lang/Object;)J

    .line 198
    move-result-wide v2

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize$Companion;->a()J

    .line 202
    move-result-wide v4

    .line 203
    .line 204
    .line 205
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/unit/IntSize;->e(JJ)Z

    .line 206
    move-result v4

    .line 207
    .line 208
    if-nez v4, :cond_a

    .line 209
    return-wide v2

    .line 210
    :cond_a
    const/4 v8, 0x0

    .line 211
    const/4 v9, 0x1

    .line 212
    const/4 v10, 0x0

    .line 213
    move-object v5, p0

    .line 214
    move-wide v6, p1

    .line 215
    .line 216
    .line 217
    invoke-static/range {v5 .. v10}, Landroidx/compose/foundation/layout/AspectRatioModifier;->j(Landroidx/compose/foundation/layout/AspectRatioModifier;JZILjava/lang/Object;)J

    .line 218
    move-result-wide v2

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize$Companion;->a()J

    .line 222
    move-result-wide v4

    .line 223
    .line 224
    .line 225
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/unit/IntSize;->e(JJ)Z

    .line 226
    move-result v4

    .line 227
    .line 228
    if-nez v4, :cond_b

    .line 229
    return-wide v2

    .line 230
    .line 231
    .line 232
    :cond_b
    invoke-direct {p0, p1, p2, v1}, Landroidx/compose/foundation/layout/AspectRatioModifier;->b(JZ)J

    .line 233
    move-result-wide v2

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize$Companion;->a()J

    .line 237
    move-result-wide v4

    .line 238
    .line 239
    .line 240
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/unit/IntSize;->e(JJ)Z

    .line 241
    move-result v4

    .line 242
    .line 243
    if-nez v4, :cond_c

    .line 244
    return-wide v2

    .line 245
    .line 246
    .line 247
    :cond_c
    invoke-direct {p0, p1, p2, v1}, Landroidx/compose/foundation/layout/AspectRatioModifier;->d(JZ)J

    .line 248
    move-result-wide v2

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize$Companion;->a()J

    .line 252
    move-result-wide v4

    .line 253
    .line 254
    .line 255
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/unit/IntSize;->e(JJ)Z

    .line 256
    move-result v4

    .line 257
    .line 258
    if-nez v4, :cond_d

    .line 259
    return-wide v2

    .line 260
    .line 261
    .line 262
    :cond_d
    invoke-direct {p0, p1, p2, v1}, Landroidx/compose/foundation/layout/AspectRatioModifier;->g(JZ)J

    .line 263
    move-result-wide v2

    .line 264
    .line 265
    .line 266
    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize$Companion;->a()J

    .line 267
    move-result-wide v4

    .line 268
    .line 269
    .line 270
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/unit/IntSize;->e(JJ)Z

    .line 271
    move-result v4

    .line 272
    .line 273
    if-nez v4, :cond_e

    .line 274
    return-wide v2

    .line 275
    .line 276
    .line 277
    :cond_e
    invoke-direct {p0, p1, p2, v1}, Landroidx/compose/foundation/layout/AspectRatioModifier;->i(JZ)J

    .line 278
    move-result-wide p1

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize$Companion;->a()J

    .line 282
    move-result-wide v0

    .line 283
    .line 284
    .line 285
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/unit/IntSize;->e(JJ)Z

    .line 286
    move-result v0

    .line 287
    .line 288
    if-nez v0, :cond_f

    .line 289
    return-wide p1

    .line 290
    .line 291
    :cond_f
    sget-object p1, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    .line 292
    .line 293
    .line 294
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntSize$Companion;->a()J

    .line 295
    move-result-wide p1

    .line 296
    return-wide p1
.end method

.method private final b(JZ)J
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->m(J)I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7fffffff

    .line 8
    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    int-to-float v1, v0

    .line 11
    .line 12
    iget v2, p0, Landroidx/compose/foundation/layout/AspectRatioModifier;->aspectRatio:F

    .line 13
    mul-float/2addr v1, v2

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Lg8/a;->c(F)I

    .line 17
    move-result v1

    .line 18
    .line 19
    if-lez v1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v0}, Landroidx/compose/ui/unit/IntSizeKt;->a(II)J

    .line 23
    move-result-wide v0

    .line 24
    .line 25
    if-eqz p3, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->h(JJ)Z

    .line 29
    move-result p1

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    :cond_0
    return-wide v0

    .line 33
    .line 34
    :cond_1
    sget-object p1, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntSize$Companion;->a()J

    .line 38
    move-result-wide p1

    .line 39
    return-wide p1
.end method

.method static synthetic c(Landroidx/compose/foundation/layout/AspectRatioModifier;JZILjava/lang/Object;)J
    .locals 0

    .line 1
    const/4 p5, 0x1

    .line 2
    and-int/2addr p4, p5

    .line 3
    .line 4
    if-eqz p4, :cond_0

    .line 5
    move p3, p5

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/layout/AspectRatioModifier;->b(JZ)J

    .line 9
    move-result-wide p0

    .line 10
    return-wide p0
.end method

.method private final d(JZ)J
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->n(J)I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    const v1, 0x7fffffff

    .line 8
    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    int-to-float v1, v0

    .line 11
    .line 12
    iget v2, p0, Landroidx/compose/foundation/layout/AspectRatioModifier;->aspectRatio:F

    .line 13
    div-float/2addr v1, v2

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Lg8/a;->c(F)I

    .line 17
    move-result v1

    .line 18
    .line 19
    if-lez v1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSizeKt;->a(II)J

    .line 23
    move-result-wide v0

    .line 24
    .line 25
    if-eqz p3, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->h(JJ)Z

    .line 29
    move-result p1

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    :cond_0
    return-wide v0

    .line 33
    .line 34
    :cond_1
    sget-object p1, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntSize$Companion;->a()J

    .line 38
    move-result-wide p1

    .line 39
    return-wide p1
.end method

.method static synthetic f(Landroidx/compose/foundation/layout/AspectRatioModifier;JZILjava/lang/Object;)J
    .locals 0

    .line 1
    const/4 p5, 0x1

    .line 2
    and-int/2addr p4, p5

    .line 3
    .line 4
    if-eqz p4, :cond_0

    .line 5
    move p3, p5

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/layout/AspectRatioModifier;->d(JZ)J

    .line 9
    move-result-wide p0

    .line 10
    return-wide p0
.end method

.method private final g(JZ)J
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->o(J)I

    .line 4
    move-result v0

    .line 5
    int-to-float v1, v0

    .line 6
    .line 7
    iget v2, p0, Landroidx/compose/foundation/layout/AspectRatioModifier;->aspectRatio:F

    .line 8
    mul-float/2addr v1, v2

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Lg8/a;->c(F)I

    .line 12
    move-result v1

    .line 13
    .line 14
    if-lez v1, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v0}, Landroidx/compose/ui/unit/IntSizeKt;->a(II)J

    .line 18
    move-result-wide v0

    .line 19
    .line 20
    if-eqz p3, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->h(JJ)Z

    .line 24
    move-result p1

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    :cond_0
    return-wide v0

    .line 28
    .line 29
    :cond_1
    sget-object p1, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntSize$Companion;->a()J

    .line 33
    move-result-wide p1

    .line 34
    return-wide p1
.end method

.method static synthetic h(Landroidx/compose/foundation/layout/AspectRatioModifier;JZILjava/lang/Object;)J
    .locals 0

    .line 1
    const/4 p5, 0x1

    .line 2
    and-int/2addr p4, p5

    .line 3
    .line 4
    if-eqz p4, :cond_0

    .line 5
    move p3, p5

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/layout/AspectRatioModifier;->g(JZ)J

    .line 9
    move-result-wide p0

    .line 10
    return-wide p0
.end method

.method private final i(JZ)J
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->p(J)I

    .line 4
    move-result v0

    .line 5
    int-to-float v1, v0

    .line 6
    .line 7
    iget v2, p0, Landroidx/compose/foundation/layout/AspectRatioModifier;->aspectRatio:F

    .line 8
    div-float/2addr v1, v2

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Lg8/a;->c(F)I

    .line 12
    move-result v1

    .line 13
    .line 14
    if-lez v1, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSizeKt;->a(II)J

    .line 18
    move-result-wide v0

    .line 19
    .line 20
    if-eqz p3, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->h(JJ)Z

    .line 24
    move-result p1

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    :cond_0
    return-wide v0

    .line 28
    .line 29
    :cond_1
    sget-object p1, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntSize$Companion;->a()J

    .line 33
    move-result-wide p1

    .line 34
    return-wide p1
.end method

.method static synthetic j(Landroidx/compose/foundation/layout/AspectRatioModifier;JZILjava/lang/Object;)J
    .locals 0

    .line 1
    const/4 p5, 0x1

    .line 2
    and-int/2addr p4, p5

    .line 3
    .line 4
    if-eqz p4, :cond_0

    .line 5
    move p3, p5

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/layout/AspectRatioModifier;->i(JZ)J

    .line 9
    move-result-wide p0

    .line 10
    return-wide p0
.end method


# virtual methods
.method public synthetic B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/a;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    return-object p1
.end method

.method public K(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 1
    .param p1    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/layout/IntrinsicMeasurable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p1, "measurable"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const p1, 0x7fffffff

    .line 14
    .line 15
    if-eq p3, p1, :cond_0

    .line 16
    int-to-float p1, p3

    .line 17
    .line 18
    iget p2, p0, Landroidx/compose/foundation/layout/AspectRatioModifier;->aspectRatio:F

    .line 19
    mul-float/2addr p1, p2

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lg8/a;->c(F)I

    .line 23
    move-result p1

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->Y(I)I

    .line 28
    move-result p1

    .line 29
    :goto_0
    return p1
.end method

.method public N0(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 7
    .param p1    # Landroidx/compose/ui/layout/MeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/layout/Measurable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "$this$measure"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "measurable"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p3, p4}, Landroidx/compose/foundation/layout/AspectRatioModifier;->a(J)J

    .line 14
    move-result-wide v0

    .line 15
    .line 16
    sget-object v2, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Landroidx/compose/ui/unit/IntSize$Companion;->a()J

    .line 20
    move-result-wide v2

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/IntSize;->e(JJ)Z

    .line 24
    move-result v2

    .line 25
    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    sget-object p3, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->g(J)I

    .line 32
    move-result p4

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->f(J)I

    .line 36
    move-result v0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p3, p4, v0}, Landroidx/compose/ui/unit/Constraints$Companion;->c(II)J

    .line 40
    move-result-wide p3

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 44
    move-result-object p2

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 48
    move-result v1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 52
    move-result v2

    .line 53
    const/4 v3, 0x0

    .line 54
    .line 55
    new-instance v4, Landroidx/compose/foundation/layout/AspectRatioModifier$measure$1;

    .line 56
    .line 57
    .line 58
    invoke-direct {v4, p2}, Landroidx/compose/foundation/layout/AspectRatioModifier$measure$1;-><init>(Landroidx/compose/ui/layout/Placeable;)V

    .line 59
    const/4 v5, 0x4

    .line 60
    const/4 v6, 0x0

    .line 61
    move-object v0, p1

    .line 62
    .line 63
    .line 64
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope$-CC;->b(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Le8/l;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 65
    move-result-object p1

    .line 66
    return-object p1
.end method

.method public S(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 1
    .param p1    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/layout/IntrinsicMeasurable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p1, "measurable"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const p1, 0x7fffffff

    .line 14
    .line 15
    if-eq p3, p1, :cond_0

    .line 16
    int-to-float p1, p3

    .line 17
    .line 18
    iget p2, p0, Landroidx/compose/foundation/layout/AspectRatioModifier;->aspectRatio:F

    .line 19
    mul-float/2addr p1, p2

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lg8/a;->c(F)I

    .line 23
    move-result p1

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->a0(I)I

    .line 28
    move-result p1

    .line 29
    :goto_0
    return p1
.end method

.method public synthetic V(Ljava/lang/Object;Le8/p;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/b;->c(Landroidx/compose/ui/Modifier$Element;Ljava/lang/Object;Le8/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a0(Ljava/lang/Object;Le8/p;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/b;->b(Landroidx/compose/ui/Modifier$Element;Ljava/lang/Object;Le8/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c0(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 1
    .param p1    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/layout/IntrinsicMeasurable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p1, "measurable"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const p1, 0x7fffffff

    .line 14
    .line 15
    if-eq p3, p1, :cond_0

    .line 16
    int-to-float p1, p3

    .line 17
    .line 18
    iget p2, p0, Landroidx/compose/foundation/layout/AspectRatioModifier;->aspectRatio:F

    .line 19
    div-float/2addr p1, p2

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lg8/a;->c(F)I

    .line 23
    move-result p1

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->M(I)I

    .line 28
    move-result p1

    .line 29
    :goto_0
    return p1
.end method

.method public synthetic d0(Le8/l;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/b;->a(Landroidx/compose/ui/Modifier$Element;Le8/l;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/layout/AspectRatioModifier;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    move-object v1, p1

    .line 10
    .line 11
    check-cast v1, Landroidx/compose/foundation/layout/AspectRatioModifier;

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    const/4 v1, 0x0

    .line 14
    :goto_0
    const/4 v2, 0x0

    .line 15
    .line 16
    if-nez v1, :cond_2

    .line 17
    return v2

    .line 18
    .line 19
    :cond_2
    iget v3, p0, Landroidx/compose/foundation/layout/AspectRatioModifier;->aspectRatio:F

    .line 20
    .line 21
    iget v1, v1, Landroidx/compose/foundation/layout/AspectRatioModifier;->aspectRatio:F

    .line 22
    .line 23
    cmpg-float v1, v3, v1

    .line 24
    .line 25
    if-nez v1, :cond_3

    .line 26
    .line 27
    iget-boolean v1, p0, Landroidx/compose/foundation/layout/AspectRatioModifier;->matchHeightConstraintsFirst:Z

    .line 28
    .line 29
    check-cast p1, Landroidx/compose/foundation/layout/AspectRatioModifier;

    .line 30
    .line 31
    iget-boolean p1, p1, Landroidx/compose/foundation/layout/AspectRatioModifier;->matchHeightConstraintsFirst:Z

    .line 32
    .line 33
    if-ne v1, p1, :cond_3

    .line 34
    goto :goto_1

    .line 35
    :cond_3
    move v0, v2

    .line 36
    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Landroidx/compose/foundation/layout/AspectRatioModifier;->aspectRatio:F

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 6
    move-result v0

    .line 7
    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget-boolean v1, p0, Landroidx/compose/foundation/layout/AspectRatioModifier;->matchHeightConstraintsFirst:Z

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Landroidx/compose/foundation/c;->a(Z)I

    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    return v0
.end method

.method public s0(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 1
    .param p1    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/layout/IntrinsicMeasurable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p1, "measurable"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const p1, 0x7fffffff

    .line 14
    .line 15
    if-eq p3, p1, :cond_0

    .line 16
    int-to-float p1, p3

    .line 17
    .line 18
    iget p2, p0, Landroidx/compose/foundation/layout/AspectRatioModifier;->aspectRatio:F

    .line 19
    div-float/2addr p1, p2

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lg8/a;->c(F)I

    .line 23
    move-result p1

    .line 24
    goto :goto_0

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->V(I)I

    .line 28
    move-result p1

    .line 29
    :goto_0
    return p1
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
    const-string v1, "AspectRatioModifier(aspectRatio="

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget v1, p0, Landroidx/compose/foundation/layout/AspectRatioModifier;->aspectRatio:F

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const/16 v1, 0x29

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method
