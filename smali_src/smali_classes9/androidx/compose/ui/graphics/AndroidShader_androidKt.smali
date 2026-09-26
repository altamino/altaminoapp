.class public final Landroidx/compose/ui/graphics/AndroidShader_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidShader.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidShader.android.kt\nandroidx/compose/ui/graphics/AndroidShader_androidKt\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,205:1\n49#2,6:206\n*S KotlinDebug\n*F\n+ 1 AndroidShader.android.kt\nandroidx/compose/ui/graphics/AndroidShader_androidKt\n*L\n141#1:206,6\n*E\n"
.end annotation


# direct methods
.method public static final a(JJLjava/util/List;Ljava/util/List;I)Landroid/graphics/Shader;
    .locals 11
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;I)",
            "Landroid/graphics/Shader;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object v0, p4

    .line 2
    .line 3
    const-string v1, "colors"

    .line 4
    .line 5
    .line 6
    invoke-static {p4, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/graphics/AndroidShader_androidKt;->g(Ljava/util/List;Ljava/util/List;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p4}, Landroidx/compose/ui/graphics/AndroidShader_androidKt;->d(Ljava/util/List;)I

    .line 13
    move-result v1

    .line 14
    .line 15
    new-instance v10, Landroid/graphics/LinearGradient;

    .line 16
    .line 17
    .line 18
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 19
    move-result v3

    .line 20
    .line 21
    .line 22
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 23
    move-result v4

    .line 24
    .line 25
    .line 26
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 27
    move-result v5

    .line 28
    .line 29
    .line 30
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 31
    move-result v6

    .line 32
    .line 33
    .line 34
    invoke-static {p4, v1}, Landroidx/compose/ui/graphics/AndroidShader_androidKt;->e(Ljava/util/List;I)[I

    .line 35
    move-result-object v7

    .line 36
    .line 37
    move-object/from16 v2, p5

    .line 38
    .line 39
    .line 40
    invoke-static {v2, p4, v1}, Landroidx/compose/ui/graphics/AndroidShader_androidKt;->f(Ljava/util/List;Ljava/util/List;I)[F

    .line 41
    move-result-object v8

    .line 42
    .line 43
    .line 44
    invoke-static/range {p6 .. p6}, Landroidx/compose/ui/graphics/AndroidTileMode_androidKt;->a(I)Landroid/graphics/Shader$TileMode;

    .line 45
    move-result-object v9

    .line 46
    move-object v2, v10

    .line 47
    .line 48
    .line 49
    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 50
    return-object v10
.end method

.method public static final b(JFLjava/util/List;Ljava/util/List;I)Landroid/graphics/Shader;
    .locals 9
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JF",
            "Ljava/util/List<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;I)",
            "Landroid/graphics/Shader;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "colors"

    .line 3
    .line 4
    .line 5
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p3, p4}, Landroidx/compose/ui/graphics/AndroidShader_androidKt;->g(Ljava/util/List;Ljava/util/List;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p3}, Landroidx/compose/ui/graphics/AndroidShader_androidKt;->d(Ljava/util/List;)I

    .line 12
    move-result v0

    .line 13
    .line 14
    new-instance v8, Landroid/graphics/RadialGradient;

    .line 15
    .line 16
    .line 17
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 18
    move-result v2

    .line 19
    .line 20
    .line 21
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 22
    move-result v3

    .line 23
    .line 24
    .line 25
    invoke-static {p3, v0}, Landroidx/compose/ui/graphics/AndroidShader_androidKt;->e(Ljava/util/List;I)[I

    .line 26
    move-result-object v5

    .line 27
    .line 28
    .line 29
    invoke-static {p4, p3, v0}, Landroidx/compose/ui/graphics/AndroidShader_androidKt;->f(Ljava/util/List;Ljava/util/List;I)[F

    .line 30
    move-result-object v6

    .line 31
    .line 32
    .line 33
    invoke-static {p5}, Landroidx/compose/ui/graphics/AndroidTileMode_androidKt;->a(I)Landroid/graphics/Shader$TileMode;

    .line 34
    move-result-object v7

    .line 35
    move-object v1, v8

    .line 36
    move v4, p2

    .line 37
    .line 38
    .line 39
    invoke-direct/range {v1 .. v7}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 40
    return-object v8
.end method

.method public static final c(JLjava/util/List;Ljava/util/List;)Landroid/graphics/Shader;
    .locals 3
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)",
            "Landroid/graphics/Shader;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "colors"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p2, p3}, Landroidx/compose/ui/graphics/AndroidShader_androidKt;->g(Ljava/util/List;Ljava/util/List;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p2}, Landroidx/compose/ui/graphics/AndroidShader_androidKt;->d(Ljava/util/List;)I

    .line 12
    move-result v0

    .line 13
    .line 14
    new-instance v1, Landroid/graphics/SweepGradient;

    .line 15
    .line 16
    .line 17
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 18
    move-result v2

    .line 19
    .line 20
    .line 21
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 22
    move-result p0

    .line 23
    .line 24
    .line 25
    invoke-static {p2, v0}, Landroidx/compose/ui/graphics/AndroidShader_androidKt;->e(Ljava/util/List;I)[I

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-static {p3, p2, v0}, Landroidx/compose/ui/graphics/AndroidShader_androidKt;->f(Ljava/util/List;Ljava/util/List;I)[F

    .line 30
    move-result-object p2

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v2, p0, p1, p2}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 34
    return-object v1
.end method

.method public static final d(Ljava/util/List;)I
    .locals 5
    .param p0    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;)I"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "colors"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v1, 0x1a

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    if-lt v0, v1, :cond_0

    .line 13
    return v2

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {p0}, Lkotlin/collections/t;->o(Ljava/util/List;)I

    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x1

    .line 19
    .line 20
    :goto_0
    if-ge v1, v0, :cond_2

    .line 21
    .line 22
    .line 23
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v3

    .line 25
    .line 26
    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/Color;->v()J

    .line 30
    move-result-wide v3

    .line 31
    .line 32
    .line 33
    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/Color;->o(J)F

    .line 34
    move-result v3

    .line 35
    const/4 v4, 0x0

    .line 36
    .line 37
    cmpg-float v3, v3, v4

    .line 38
    .line 39
    if-nez v3, :cond_1

    .line 40
    .line 41
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    return v2
.end method

.method public static final e(Ljava/util/List;I)[I
    .locals 14
    .param p0    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;I)[I"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "colors"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v1, 0x1a

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    if-lt v0, v1, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 16
    move-result p1

    .line 17
    .line 18
    new-array v0, p1, [I

    .line 19
    .line 20
    :goto_0
    if-ge v2, p1, :cond_0

    .line 21
    .line 22
    .line 23
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    check-cast v1, Landroidx/compose/ui/graphics/Color;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color;->v()J

    .line 30
    move-result-wide v3

    .line 31
    .line 32
    .line 33
    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/ColorKt;->l(J)I

    .line 34
    move-result v1

    .line 35
    .line 36
    aput v1, v0, v2

    .line 37
    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    return-object v0

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 44
    move-result v0

    .line 45
    add-int/2addr v0, p1

    .line 46
    .line 47
    new-array p1, v0, [I

    .line 48
    .line 49
    .line 50
    invoke-static {p0}, Lkotlin/collections/t;->o(Ljava/util/List;)I

    .line 51
    move-result v0

    .line 52
    .line 53
    .line 54
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 55
    move-result v1

    .line 56
    move v3, v2

    .line 57
    .line 58
    :goto_1
    if-ge v2, v1, :cond_5

    .line 59
    .line 60
    .line 61
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    move-result-object v4

    .line 63
    .line 64
    check-cast v4, Landroidx/compose/ui/graphics/Color;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color;->v()J

    .line 68
    move-result-wide v4

    .line 69
    .line 70
    .line 71
    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/Color;->o(J)F

    .line 72
    move-result v6

    .line 73
    const/4 v7, 0x0

    .line 74
    .line 75
    cmpg-float v6, v6, v7

    .line 76
    .line 77
    if-nez v6, :cond_4

    .line 78
    .line 79
    if-nez v2, :cond_2

    .line 80
    .line 81
    add-int/lit8 v4, v3, 0x1

    .line 82
    const/4 v5, 0x1

    .line 83
    .line 84
    .line 85
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 86
    move-result-object v5

    .line 87
    .line 88
    check-cast v5, Landroidx/compose/ui/graphics/Color;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Color;->v()J

    .line 92
    move-result-wide v6

    .line 93
    const/4 v8, 0x0

    .line 94
    const/4 v9, 0x0

    .line 95
    const/4 v10, 0x0

    .line 96
    const/4 v11, 0x0

    .line 97
    .line 98
    const/16 v12, 0xe

    .line 99
    const/4 v13, 0x0

    .line 100
    .line 101
    .line 102
    invoke-static/range {v6 .. v13}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    .line 103
    move-result-wide v5

    .line 104
    .line 105
    .line 106
    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/ColorKt;->l(J)I

    .line 107
    move-result v5

    .line 108
    .line 109
    aput v5, p1, v3

    .line 110
    :goto_2
    move v3, v4

    .line 111
    goto :goto_3

    .line 112
    .line 113
    :cond_2
    if-ne v2, v0, :cond_3

    .line 114
    .line 115
    add-int/lit8 v4, v3, 0x1

    .line 116
    .line 117
    add-int/lit8 v5, v2, -0x1

    .line 118
    .line 119
    .line 120
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 121
    move-result-object v5

    .line 122
    .line 123
    check-cast v5, Landroidx/compose/ui/graphics/Color;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Color;->v()J

    .line 127
    move-result-wide v6

    .line 128
    const/4 v8, 0x0

    .line 129
    const/4 v9, 0x0

    .line 130
    const/4 v10, 0x0

    .line 131
    const/4 v11, 0x0

    .line 132
    .line 133
    const/16 v12, 0xe

    .line 134
    const/4 v13, 0x0

    .line 135
    .line 136
    .line 137
    invoke-static/range {v6 .. v13}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    .line 138
    move-result-wide v5

    .line 139
    .line 140
    .line 141
    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/ColorKt;->l(J)I

    .line 142
    move-result v5

    .line 143
    .line 144
    aput v5, p1, v3

    .line 145
    goto :goto_2

    .line 146
    .line 147
    :cond_3
    add-int/lit8 v4, v2, -0x1

    .line 148
    .line 149
    .line 150
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 151
    move-result-object v4

    .line 152
    .line 153
    check-cast v4, Landroidx/compose/ui/graphics/Color;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color;->v()J

    .line 157
    move-result-wide v5

    .line 158
    .line 159
    add-int/lit8 v4, v3, 0x1

    .line 160
    const/4 v7, 0x0

    .line 161
    const/4 v8, 0x0

    .line 162
    const/4 v9, 0x0

    .line 163
    const/4 v10, 0x0

    .line 164
    .line 165
    const/16 v11, 0xe

    .line 166
    const/4 v12, 0x0

    .line 167
    .line 168
    .line 169
    invoke-static/range {v5 .. v12}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    .line 170
    move-result-wide v5

    .line 171
    .line 172
    .line 173
    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/ColorKt;->l(J)I

    .line 174
    move-result v5

    .line 175
    .line 176
    aput v5, p1, v3

    .line 177
    .line 178
    add-int/lit8 v5, v2, 0x1

    .line 179
    .line 180
    .line 181
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 182
    move-result-object v5

    .line 183
    .line 184
    check-cast v5, Landroidx/compose/ui/graphics/Color;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Color;->v()J

    .line 188
    move-result-wide v6

    .line 189
    .line 190
    add-int/lit8 v3, v3, 0x2

    .line 191
    const/4 v11, 0x0

    .line 192
    .line 193
    const/16 v12, 0xe

    .line 194
    const/4 v13, 0x0

    .line 195
    .line 196
    .line 197
    invoke-static/range {v6 .. v13}, Landroidx/compose/ui/graphics/Color;->l(JFFFFILjava/lang/Object;)J

    .line 198
    move-result-wide v5

    .line 199
    .line 200
    .line 201
    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/ColorKt;->l(J)I

    .line 202
    move-result v5

    .line 203
    .line 204
    aput v5, p1, v4

    .line 205
    goto :goto_3

    .line 206
    .line 207
    :cond_4
    add-int/lit8 v6, v3, 0x1

    .line 208
    .line 209
    .line 210
    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/ColorKt;->l(J)I

    .line 211
    move-result v4

    .line 212
    .line 213
    aput v4, p1, v3

    .line 214
    move v3, v6

    .line 215
    .line 216
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 217
    .line 218
    goto/16 :goto_1

    .line 219
    :cond_5
    return-object p1
.end method

.method public static final f(Ljava/util/List;Ljava/util/List;I)[F
    .locals 8
    .param p0    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;I)[F"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-string v0, "colors"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    if-nez p2, :cond_1

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    check-cast p0, Ljava/util/Collection;

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Lkotlin/collections/t;->R0(Ljava/util/Collection;)[F

    .line 15
    move-result-object p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return-object p0

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 22
    move-result v0

    .line 23
    add-int/2addr v0, p2

    .line 24
    .line 25
    new-array p2, v0, [F

    .line 26
    const/4 v0, 0x0

    .line 27
    const/4 v1, 0x0

    .line 28
    .line 29
    if-eqz p0, :cond_2

    .line 30
    .line 31
    .line 32
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    move-result-object v2

    .line 34
    .line 35
    check-cast v2, Ljava/lang/Number;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 39
    move-result v2

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    move v2, v0

    .line 42
    .line 43
    :goto_1
    aput v2, p2, v1

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Lkotlin/collections/t;->o(Ljava/util/List;)I

    .line 47
    move-result v1

    .line 48
    const/4 v2, 0x1

    .line 49
    move v3, v2

    .line 50
    .line 51
    :goto_2
    if-ge v2, v1, :cond_5

    .line 52
    .line 53
    .line 54
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 55
    move-result-object v4

    .line 56
    .line 57
    check-cast v4, Landroidx/compose/ui/graphics/Color;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color;->v()J

    .line 61
    move-result-wide v4

    .line 62
    .line 63
    if-eqz p0, :cond_3

    .line 64
    .line 65
    .line 66
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    move-result-object v6

    .line 68
    .line 69
    check-cast v6, Ljava/lang/Number;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    .line 73
    move-result v6

    .line 74
    goto :goto_3

    .line 75
    :cond_3
    int-to-float v6, v2

    .line 76
    .line 77
    .line 78
    invoke-static {p1}, Lkotlin/collections/t;->o(Ljava/util/List;)I

    .line 79
    move-result v7

    .line 80
    int-to-float v7, v7

    .line 81
    div-float/2addr v6, v7

    .line 82
    .line 83
    :goto_3
    add-int/lit8 v7, v3, 0x1

    .line 84
    .line 85
    aput v6, p2, v3

    .line 86
    .line 87
    .line 88
    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/Color;->o(J)F

    .line 89
    move-result v4

    .line 90
    .line 91
    cmpg-float v4, v4, v0

    .line 92
    .line 93
    if-nez v4, :cond_4

    .line 94
    .line 95
    add-int/lit8 v3, v3, 0x2

    .line 96
    .line 97
    aput v6, p2, v7

    .line 98
    goto :goto_4

    .line 99
    :cond_4
    move v3, v7

    .line 100
    .line 101
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 102
    goto :goto_2

    .line 103
    .line 104
    :cond_5
    if-eqz p0, :cond_6

    .line 105
    .line 106
    .line 107
    invoke-static {p1}, Lkotlin/collections/t;->o(Ljava/util/List;)I

    .line 108
    move-result p1

    .line 109
    .line 110
    .line 111
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 112
    move-result-object p0

    .line 113
    .line 114
    check-cast p0, Ljava/lang/Number;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 118
    move-result p0

    .line 119
    goto :goto_5

    .line 120
    .line 121
    :cond_6
    const/high16 p0, 0x3f800000    # 1.0f

    .line 122
    .line 123
    :goto_5
    aput p0, p2, v3

    .line 124
    return-object p2
.end method

.method private static final g(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p1, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 6
    move-result p0

    .line 7
    const/4 p1, 0x2

    .line 8
    .line 9
    if-lt p0, p1, :cond_0

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string p1, "colors must have length of at least 2 if colorStops is omitted."

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 18
    throw p0

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 22
    move-result p0

    .line 23
    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 26
    move-result p1

    .line 27
    .line 28
    if-ne p0, p1, :cond_2

    .line 29
    :goto_0
    return-void

    .line 30
    .line 31
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    const-string p1, "colors and colorStops arguments must have equal length."

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    throw p0
.end method
