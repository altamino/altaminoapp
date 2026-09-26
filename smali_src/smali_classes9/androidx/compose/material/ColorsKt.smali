.class public final Landroidx/compose/material/ColorsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nColors.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Colors.kt\nandroidx/compose/material/ColorsKt\n+ 2 Color.kt\nandroidx/compose/ui/graphics/ColorKt\n+ 3 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n*L\n1#1,337:1\n666#2:338\n654#2:339\n76#3:340\n*S KotlinDebug\n*F\n+ 1 Colors.kt\nandroidx/compose/material/ColorsKt\n*L\n297#1:338\n297#1:339\n297#1:340\n*E\n"
.end annotation


# static fields
.field private static final LocalColors:Landroidx/compose/runtime/ProvidableCompositionLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Landroidx/compose/material/Colors;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/material/ColorsKt$LocalColors$1;->INSTANCE:Landroidx/compose/material/ColorsKt$LocalColors$1;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->e(Le8/a;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    sput-object v0, Landroidx/compose/material/ColorsKt;->LocalColors:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 9
    return-void
.end method

.method public static final a(Landroidx/compose/material/Colors;J)J
    .locals 2
    .param p0    # Landroidx/compose/material/Colors;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "$this$contentColorFor"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/material/Colors;->j()J

    .line 9
    move-result-wide v0

    .line 10
    .line 11
    .line 12
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/compose/material/Colors;->g()J

    .line 19
    move-result-wide p0

    .line 20
    goto :goto_0

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/material/Colors;->k()J

    .line 24
    move-result-wide v0

    .line 25
    .line 26
    .line 27
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    .line 28
    move-result v0

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/compose/material/Colors;->g()J

    .line 34
    move-result-wide p0

    .line 35
    goto :goto_0

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/material/Colors;->l()J

    .line 39
    move-result-wide v0

    .line 40
    .line 41
    .line 42
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    .line 43
    move-result v0

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroidx/compose/material/Colors;->h()J

    .line 49
    move-result-wide p0

    .line 50
    goto :goto_0

    .line 51
    .line 52
    .line 53
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/material/Colors;->m()J

    .line 54
    move-result-wide v0

    .line 55
    .line 56
    .line 57
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    .line 58
    move-result v0

    .line 59
    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Landroidx/compose/material/Colors;->h()J

    .line 64
    move-result-wide p0

    .line 65
    goto :goto_0

    .line 66
    .line 67
    .line 68
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/material/Colors;->c()J

    .line 69
    move-result-wide v0

    .line 70
    .line 71
    .line 72
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    .line 73
    move-result v0

    .line 74
    .line 75
    if-eqz v0, :cond_4

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Landroidx/compose/material/Colors;->e()J

    .line 79
    move-result-wide p0

    .line 80
    goto :goto_0

    .line 81
    .line 82
    .line 83
    :cond_4
    invoke-virtual {p0}, Landroidx/compose/material/Colors;->n()J

    .line 84
    move-result-wide v0

    .line 85
    .line 86
    .line 87
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    .line 88
    move-result v0

    .line 89
    .line 90
    if-eqz v0, :cond_5

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Landroidx/compose/material/Colors;->i()J

    .line 94
    move-result-wide p0

    .line 95
    goto :goto_0

    .line 96
    .line 97
    .line 98
    :cond_5
    invoke-virtual {p0}, Landroidx/compose/material/Colors;->d()J

    .line 99
    move-result-wide v0

    .line 100
    .line 101
    .line 102
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    .line 103
    move-result p1

    .line 104
    .line 105
    if-eqz p1, :cond_6

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Landroidx/compose/material/Colors;->f()J

    .line 109
    move-result-wide p0

    .line 110
    goto :goto_0

    .line 111
    .line 112
    :cond_6
    sget-object p0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/Color$Companion;->f()J

    .line 116
    move-result-wide p0

    .line 117
    :goto_0
    return-wide p0
.end method

.method public static final b(JLandroidx/compose/runtime/Composer;I)J
    .locals 2
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ReadOnlyComposable;
    .end annotation

    .line 1
    .line 2
    sget-object p3, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 3
    const/4 v0, 0x6

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3, p2, v0}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 7
    move-result-object p3

    .line 8
    .line 9
    .line 10
    invoke-static {p3, p0, p1}, Landroidx/compose/material/ColorsKt;->a(Landroidx/compose/material/Colors;J)J

    .line 11
    move-result-wide p0

    .line 12
    .line 13
    sget-object p3, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3}, Landroidx/compose/ui/graphics/Color$Companion;->f()J

    .line 17
    move-result-wide v0

    .line 18
    .line 19
    cmp-long p3, p0, v0

    .line 20
    .line 21
    if-eqz p3, :cond_0

    .line 22
    goto :goto_0

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-static {}, Landroidx/compose/material/ContentColorKt;->a()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 26
    move-result-object p0

    .line 27
    .line 28
    .line 29
    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 30
    move-result-object p0

    .line 31
    .line 32
    check-cast p0, Landroidx/compose/ui/graphics/Color;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/Color;->v()J

    .line 36
    move-result-wide p0

    .line 37
    :goto_0
    return-wide p0
.end method

.method public static final c(JJJJJJJJJJJJ)Landroidx/compose/material/Colors;
    .locals 28
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    move-wide/from16 v1, p0

    .line 3
    .line 4
    move-wide/from16 v3, p2

    .line 5
    .line 6
    move-wide/from16 v5, p4

    .line 7
    .line 8
    move-wide/from16 v7, p6

    .line 9
    .line 10
    move-wide/from16 v9, p8

    .line 11
    .line 12
    move-wide/from16 v11, p10

    .line 13
    .line 14
    move-wide/from16 v13, p12

    .line 15
    .line 16
    move-wide/from16 v15, p14

    .line 17
    .line 18
    move-wide/from16 v17, p16

    .line 19
    .line 20
    move-wide/from16 v19, p18

    .line 21
    .line 22
    move-wide/from16 v21, p20

    .line 23
    .line 24
    move-wide/from16 v23, p22

    .line 25
    .line 26
    new-instance v27, Landroidx/compose/material/Colors;

    .line 27
    .line 28
    move-object/from16 v0, v27

    .line 29
    .line 30
    const/16 v25, 0x0

    .line 31
    .line 32
    const/16 v26, 0x0

    .line 33
    .line 34
    .line 35
    invoke-direct/range {v0 .. v26}, Landroidx/compose/material/Colors;-><init>(JJJJJJJJJJJJZLkotlin/jvm/internal/k;)V

    .line 36
    return-object v27
.end method

.method public static synthetic d(JJJJJJJJJJJJILjava/lang/Object;)Landroidx/compose/material/Colors;
    .locals 26

    .line 1
    .line 2
    move/from16 v0, p24

    .line 3
    .line 4
    and-int/lit8 v1, v0, 0x1

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    const-wide v1, 0xffbb86fcL

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/ColorKt;->d(J)J

    .line 15
    move-result-wide v1

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    move-wide/from16 v1, p0

    .line 19
    .line 20
    :goto_0
    and-int/lit8 v3, v0, 0x2

    .line 21
    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    const-wide v3, 0xff3700b3L

    .line 28
    .line 29
    .line 30
    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/ColorKt;->d(J)J

    .line 31
    move-result-wide v3

    .line 32
    goto :goto_1

    .line 33
    .line 34
    :cond_1
    move-wide/from16 v3, p2

    .line 35
    .line 36
    :goto_1
    and-int/lit8 v5, v0, 0x4

    .line 37
    .line 38
    if-eqz v5, :cond_2

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    const-wide v5, 0xff03dac6L

    .line 44
    .line 45
    .line 46
    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/ColorKt;->d(J)J

    .line 47
    move-result-wide v5

    .line 48
    goto :goto_2

    .line 49
    .line 50
    :cond_2
    move-wide/from16 v5, p4

    .line 51
    .line 52
    :goto_2
    and-int/lit8 v7, v0, 0x8

    .line 53
    .line 54
    if-eqz v7, :cond_3

    .line 55
    move-wide v7, v5

    .line 56
    goto :goto_3

    .line 57
    .line 58
    :cond_3
    move-wide/from16 v7, p6

    .line 59
    .line 60
    :goto_3
    and-int/lit8 v9, v0, 0x10

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    const-wide v10, 0xff121212L

    .line 66
    .line 67
    if-eqz v9, :cond_4

    .line 68
    .line 69
    .line 70
    invoke-static {v10, v11}, Landroidx/compose/ui/graphics/ColorKt;->d(J)J

    .line 71
    move-result-wide v12

    .line 72
    goto :goto_4

    .line 73
    .line 74
    :cond_4
    move-wide/from16 v12, p8

    .line 75
    .line 76
    :goto_4
    and-int/lit8 v9, v0, 0x20

    .line 77
    .line 78
    if-eqz v9, :cond_5

    .line 79
    .line 80
    .line 81
    invoke-static {v10, v11}, Landroidx/compose/ui/graphics/ColorKt;->d(J)J

    .line 82
    move-result-wide v9

    .line 83
    goto :goto_5

    .line 84
    .line 85
    :cond_5
    move-wide/from16 v9, p10

    .line 86
    .line 87
    :goto_5
    and-int/lit8 v11, v0, 0x40

    .line 88
    .line 89
    if-eqz v11, :cond_6

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    const-wide v14, 0xffcf6679L

    .line 95
    .line 96
    .line 97
    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/ColorKt;->d(J)J

    .line 98
    move-result-wide v14

    .line 99
    goto :goto_6

    .line 100
    .line 101
    :cond_6
    move-wide/from16 v14, p12

    .line 102
    .line 103
    :goto_6
    and-int/lit16 v11, v0, 0x80

    .line 104
    .line 105
    if-eqz v11, :cond_7

    .line 106
    .line 107
    sget-object v11, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/Color$Companion;->a()J

    .line 111
    move-result-wide v16

    .line 112
    goto :goto_7

    .line 113
    .line 114
    :cond_7
    move-wide/from16 v16, p14

    .line 115
    .line 116
    :goto_7
    and-int/lit16 v11, v0, 0x100

    .line 117
    .line 118
    if-eqz v11, :cond_8

    .line 119
    .line 120
    sget-object v11, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/Color$Companion;->a()J

    .line 124
    move-result-wide v18

    .line 125
    goto :goto_8

    .line 126
    .line 127
    :cond_8
    move-wide/from16 v18, p16

    .line 128
    .line 129
    :goto_8
    and-int/lit16 v11, v0, 0x200

    .line 130
    .line 131
    if-eqz v11, :cond_9

    .line 132
    .line 133
    sget-object v11, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/Color$Companion;->g()J

    .line 137
    move-result-wide v20

    .line 138
    goto :goto_9

    .line 139
    .line 140
    :cond_9
    move-wide/from16 v20, p18

    .line 141
    .line 142
    :goto_9
    and-int/lit16 v11, v0, 0x400

    .line 143
    .line 144
    if-eqz v11, :cond_a

    .line 145
    .line 146
    sget-object v11, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/Color$Companion;->g()J

    .line 150
    move-result-wide v22

    .line 151
    goto :goto_a

    .line 152
    .line 153
    :cond_a
    move-wide/from16 v22, p20

    .line 154
    .line 155
    :goto_a
    and-int/lit16 v0, v0, 0x800

    .line 156
    .line 157
    if-eqz v0, :cond_b

    .line 158
    .line 159
    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->a()J

    .line 163
    move-result-wide v24

    .line 164
    goto :goto_b

    .line 165
    .line 166
    :cond_b
    move-wide/from16 v24, p22

    .line 167
    .line 168
    :goto_b
    move-wide/from16 p0, v1

    .line 169
    .line 170
    move-wide/from16 p2, v3

    .line 171
    .line 172
    move-wide/from16 p4, v5

    .line 173
    .line 174
    move-wide/from16 p6, v7

    .line 175
    .line 176
    move-wide/from16 p8, v12

    .line 177
    .line 178
    move-wide/from16 p10, v9

    .line 179
    .line 180
    move-wide/from16 p12, v14

    .line 181
    .line 182
    move-wide/from16 p14, v16

    .line 183
    .line 184
    move-wide/from16 p16, v18

    .line 185
    .line 186
    move-wide/from16 p18, v20

    .line 187
    .line 188
    move-wide/from16 p20, v22

    .line 189
    .line 190
    move-wide/from16 p22, v24

    .line 191
    .line 192
    .line 193
    invoke-static/range {p0 .. p23}, Landroidx/compose/material/ColorsKt;->c(JJJJJJJJJJJJ)Landroidx/compose/material/Colors;

    .line 194
    move-result-object v0

    .line 195
    return-object v0
.end method

.method public static final e()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Landroidx/compose/material/Colors;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/material/ColorsKt;->LocalColors:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method public static final f(Landroidx/compose/material/Colors;)J
    .locals 2
    .param p0    # Landroidx/compose/material/Colors;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/material/Colors;->o()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/compose/material/Colors;->j()J

    .line 15
    move-result-wide v0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/material/Colors;->n()J

    .line 20
    move-result-wide v0

    .line 21
    :goto_0
    return-wide v0
.end method

.method public static final g(JJJJJJJJJJJJ)Landroidx/compose/material/Colors;
    .locals 28
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    move-wide/from16 v1, p0

    .line 3
    .line 4
    move-wide/from16 v3, p2

    .line 5
    .line 6
    move-wide/from16 v5, p4

    .line 7
    .line 8
    move-wide/from16 v7, p6

    .line 9
    .line 10
    move-wide/from16 v9, p8

    .line 11
    .line 12
    move-wide/from16 v11, p10

    .line 13
    .line 14
    move-wide/from16 v13, p12

    .line 15
    .line 16
    move-wide/from16 v15, p14

    .line 17
    .line 18
    move-wide/from16 v17, p16

    .line 19
    .line 20
    move-wide/from16 v19, p18

    .line 21
    .line 22
    move-wide/from16 v21, p20

    .line 23
    .line 24
    move-wide/from16 v23, p22

    .line 25
    .line 26
    new-instance v27, Landroidx/compose/material/Colors;

    .line 27
    .line 28
    move-object/from16 v0, v27

    .line 29
    .line 30
    const/16 v25, 0x1

    .line 31
    .line 32
    const/16 v26, 0x0

    .line 33
    .line 34
    .line 35
    invoke-direct/range {v0 .. v26}, Landroidx/compose/material/Colors;-><init>(JJJJJJJJJJJJZLkotlin/jvm/internal/k;)V

    .line 36
    return-object v27
.end method

.method public static synthetic h(JJJJJJJJJJJJILjava/lang/Object;)Landroidx/compose/material/Colors;
    .locals 19

    .line 1
    .line 2
    move/from16 v0, p24

    .line 3
    .line 4
    and-int/lit8 v1, v0, 0x1

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    const-wide v1, 0xff6200eeL

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/ColorKt;->d(J)J

    .line 15
    move-result-wide v1

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    move-wide/from16 v1, p0

    .line 19
    .line 20
    :goto_0
    and-int/lit8 v3, v0, 0x2

    .line 21
    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    const-wide v3, 0xff3700b3L

    .line 28
    .line 29
    .line 30
    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/ColorKt;->d(J)J

    .line 31
    move-result-wide v3

    .line 32
    goto :goto_1

    .line 33
    .line 34
    :cond_1
    move-wide/from16 v3, p2

    .line 35
    .line 36
    :goto_1
    and-int/lit8 v5, v0, 0x4

    .line 37
    .line 38
    if-eqz v5, :cond_2

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    const-wide v5, 0xff03dac6L

    .line 44
    .line 45
    .line 46
    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/ColorKt;->d(J)J

    .line 47
    move-result-wide v5

    .line 48
    goto :goto_2

    .line 49
    .line 50
    :cond_2
    move-wide/from16 v5, p4

    .line 51
    .line 52
    :goto_2
    and-int/lit8 v7, v0, 0x8

    .line 53
    .line 54
    if-eqz v7, :cond_3

    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    const-wide v7, 0xff018786L

    .line 60
    .line 61
    .line 62
    invoke-static {v7, v8}, Landroidx/compose/ui/graphics/ColorKt;->d(J)J

    .line 63
    move-result-wide v7

    .line 64
    goto :goto_3

    .line 65
    .line 66
    :cond_3
    move-wide/from16 v7, p6

    .line 67
    .line 68
    :goto_3
    and-int/lit8 v9, v0, 0x10

    .line 69
    .line 70
    if-eqz v9, :cond_4

    .line 71
    .line 72
    sget-object v9, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v9}, Landroidx/compose/ui/graphics/Color$Companion;->g()J

    .line 76
    move-result-wide v9

    .line 77
    goto :goto_4

    .line 78
    .line 79
    :cond_4
    move-wide/from16 v9, p8

    .line 80
    .line 81
    :goto_4
    and-int/lit8 v11, v0, 0x20

    .line 82
    .line 83
    if-eqz v11, :cond_5

    .line 84
    .line 85
    sget-object v11, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/Color$Companion;->g()J

    .line 89
    move-result-wide v11

    .line 90
    goto :goto_5

    .line 91
    .line 92
    :cond_5
    move-wide/from16 v11, p10

    .line 93
    .line 94
    :goto_5
    and-int/lit8 v13, v0, 0x40

    .line 95
    .line 96
    if-eqz v13, :cond_6

    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    const-wide v13, 0xffb00020L

    .line 102
    .line 103
    .line 104
    invoke-static {v13, v14}, Landroidx/compose/ui/graphics/ColorKt;->d(J)J

    .line 105
    move-result-wide v13

    .line 106
    goto :goto_6

    .line 107
    .line 108
    :cond_6
    move-wide/from16 v13, p12

    .line 109
    .line 110
    :goto_6
    and-int/lit16 v15, v0, 0x80

    .line 111
    .line 112
    if-eqz v15, :cond_7

    .line 113
    .line 114
    sget-object v15, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/Color$Companion;->g()J

    .line 118
    move-result-wide v15

    .line 119
    goto :goto_7

    .line 120
    .line 121
    :cond_7
    move-wide/from16 v15, p14

    .line 122
    .line 123
    :goto_7
    move-wide/from16 p14, v15

    .line 124
    .line 125
    and-int/lit16 v15, v0, 0x100

    .line 126
    .line 127
    if-eqz v15, :cond_8

    .line 128
    .line 129
    sget-object v15, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/Color$Companion;->a()J

    .line 133
    move-result-wide v15

    .line 134
    goto :goto_8

    .line 135
    .line 136
    :cond_8
    move-wide/from16 v15, p16

    .line 137
    .line 138
    :goto_8
    move-wide/from16 p16, v15

    .line 139
    .line 140
    and-int/lit16 v15, v0, 0x200

    .line 141
    .line 142
    if-eqz v15, :cond_9

    .line 143
    .line 144
    sget-object v15, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/Color$Companion;->a()J

    .line 148
    move-result-wide v15

    .line 149
    goto :goto_9

    .line 150
    .line 151
    :cond_9
    move-wide/from16 v15, p18

    .line 152
    .line 153
    :goto_9
    move-wide/from16 p18, v15

    .line 154
    .line 155
    and-int/lit16 v15, v0, 0x400

    .line 156
    .line 157
    if-eqz v15, :cond_a

    .line 158
    .line 159
    sget-object v15, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/Color$Companion;->a()J

    .line 163
    move-result-wide v15

    .line 164
    goto :goto_a

    .line 165
    .line 166
    :cond_a
    move-wide/from16 v15, p20

    .line 167
    .line 168
    :goto_a
    and-int/lit16 v0, v0, 0x800

    .line 169
    .line 170
    if-eqz v0, :cond_b

    .line 171
    .line 172
    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->g()J

    .line 176
    move-result-wide v17

    .line 177
    goto :goto_b

    .line 178
    .line 179
    :cond_b
    move-wide/from16 v17, p22

    .line 180
    .line 181
    :goto_b
    move-wide/from16 p0, v1

    .line 182
    .line 183
    move-wide/from16 p2, v3

    .line 184
    .line 185
    move-wide/from16 p4, v5

    .line 186
    .line 187
    move-wide/from16 p6, v7

    .line 188
    .line 189
    move-wide/from16 p8, v9

    .line 190
    .line 191
    move-wide/from16 p10, v11

    .line 192
    .line 193
    move-wide/from16 p12, v13

    .line 194
    .line 195
    move-wide/from16 p20, v15

    .line 196
    .line 197
    move-wide/from16 p22, v17

    .line 198
    .line 199
    .line 200
    invoke-static/range {p0 .. p23}, Landroidx/compose/material/ColorsKt;->g(JJJJJJJJJJJJ)Landroidx/compose/material/Colors;

    .line 201
    move-result-object v0

    .line 202
    return-object v0
.end method

.method public static final i(Landroidx/compose/material/Colors;Landroidx/compose/material/Colors;)V
    .locals 2
    .param p0    # Landroidx/compose/material/Colors;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/material/Colors;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "other"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/compose/material/Colors;->j()J

    .line 14
    move-result-wide v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0, v1}, Landroidx/compose/material/Colors;->x(J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroidx/compose/material/Colors;->k()J

    .line 21
    move-result-wide v0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0, v1}, Landroidx/compose/material/Colors;->y(J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroidx/compose/material/Colors;->l()J

    .line 28
    move-result-wide v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0, v1}, Landroidx/compose/material/Colors;->z(J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/compose/material/Colors;->m()J

    .line 35
    move-result-wide v0

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0, v1}, Landroidx/compose/material/Colors;->A(J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroidx/compose/material/Colors;->c()J

    .line 42
    move-result-wide v0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v0, v1}, Landroidx/compose/material/Colors;->p(J)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Landroidx/compose/material/Colors;->n()J

    .line 49
    move-result-wide v0

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0, v1}, Landroidx/compose/material/Colors;->B(J)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Landroidx/compose/material/Colors;->d()J

    .line 56
    move-result-wide v0

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v0, v1}, Landroidx/compose/material/Colors;->q(J)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Landroidx/compose/material/Colors;->g()J

    .line 63
    move-result-wide v0

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v0, v1}, Landroidx/compose/material/Colors;->u(J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Landroidx/compose/material/Colors;->h()J

    .line 70
    move-result-wide v0

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v0, v1}, Landroidx/compose/material/Colors;->v(J)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Landroidx/compose/material/Colors;->e()J

    .line 77
    move-result-wide v0

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v0, v1}, Landroidx/compose/material/Colors;->s(J)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Landroidx/compose/material/Colors;->i()J

    .line 84
    move-result-wide v0

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v0, v1}, Landroidx/compose/material/Colors;->w(J)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Landroidx/compose/material/Colors;->f()J

    .line 91
    move-result-wide v0

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v0, v1}, Landroidx/compose/material/Colors;->t(J)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Landroidx/compose/material/Colors;->o()Z

    .line 98
    move-result p1

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, p1}, Landroidx/compose/material/Colors;->r(Z)V

    .line 102
    return-void
.end method
