.class public final Landroidx/compose/foundation/layout/BoxWithConstraintsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBoxWithConstraints.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BoxWithConstraints.kt\nandroidx/compose/foundation/layout/BoxWithConstraintsKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,124:1\n50#2:125\n49#2:126\n1057#3,6:127\n*S KotlinDebug\n*F\n+ 1 BoxWithConstraints.kt\nandroidx/compose/foundation/layout/BoxWithConstraintsKt\n*L\n67#1:125\n67#1:126\n67#1:127,6\n*E\n"
.end annotation


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZLe8/q;Landroidx/compose/runtime/Composer;II)V
    .locals 12
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Alignment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/ui/UiComposable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/Alignment;",
            "Z",
            "Le8/q<",
            "-",
            "Landroidx/compose/foundation/layout/BoxWithConstraintsScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    move-object v4, p3

    .line 2
    .line 3
    move/from16 v5, p5

    .line 4
    .line 5
    const-string v0, "content"

    .line 6
    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const v0, 0x6a3450fd

    .line 12
    .line 13
    move-object/from16 v1, p4

    .line 14
    .line 15
    .line 16
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    and-int/lit8 v1, p6, 0x1

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    or-int/lit8 v2, v5, 0x6

    .line 24
    move v3, v2

    .line 25
    move-object v2, p0

    .line 26
    goto :goto_1

    .line 27
    .line 28
    :cond_0
    and-int/lit8 v2, v5, 0xe

    .line 29
    .line 30
    if-nez v2, :cond_2

    .line 31
    move-object v2, p0

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, p0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 35
    move-result v3

    .line 36
    .line 37
    if-eqz v3, :cond_1

    .line 38
    const/4 v3, 0x4

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v3, 0x2

    .line 41
    :goto_0
    or-int/2addr v3, v5

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move-object v2, p0

    .line 44
    move v3, v5

    .line 45
    .line 46
    :goto_1
    and-int/lit8 v6, p6, 0x2

    .line 47
    .line 48
    if-eqz v6, :cond_4

    .line 49
    .line 50
    or-int/lit8 v3, v3, 0x30

    .line 51
    :cond_3
    move-object v7, p1

    .line 52
    goto :goto_3

    .line 53
    .line 54
    :cond_4
    and-int/lit8 v7, v5, 0x70

    .line 55
    .line 56
    if-nez v7, :cond_3

    .line 57
    move-object v7, p1

    .line 58
    .line 59
    .line 60
    invoke-interface {v0, p1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 61
    move-result v8

    .line 62
    .line 63
    if-eqz v8, :cond_5

    .line 64
    .line 65
    const/16 v8, 0x20

    .line 66
    goto :goto_2

    .line 67
    .line 68
    :cond_5
    const/16 v8, 0x10

    .line 69
    :goto_2
    or-int/2addr v3, v8

    .line 70
    .line 71
    :goto_3
    and-int/lit8 v8, p6, 0x4

    .line 72
    .line 73
    if-eqz v8, :cond_7

    .line 74
    .line 75
    or-int/lit16 v3, v3, 0x180

    .line 76
    :cond_6
    move v9, p2

    .line 77
    goto :goto_5

    .line 78
    .line 79
    :cond_7
    and-int/lit16 v9, v5, 0x380

    .line 80
    .line 81
    if-nez v9, :cond_6

    .line 82
    move v9, p2

    .line 83
    .line 84
    .line 85
    invoke-interface {v0, p2}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 86
    move-result v10

    .line 87
    .line 88
    if-eqz v10, :cond_8

    .line 89
    .line 90
    const/16 v10, 0x100

    .line 91
    goto :goto_4

    .line 92
    .line 93
    :cond_8
    const/16 v10, 0x80

    .line 94
    :goto_4
    or-int/2addr v3, v10

    .line 95
    .line 96
    :goto_5
    and-int/lit8 v10, p6, 0x8

    .line 97
    .line 98
    if-eqz v10, :cond_9

    .line 99
    .line 100
    or-int/lit16 v3, v3, 0xc00

    .line 101
    goto :goto_7

    .line 102
    .line 103
    :cond_9
    and-int/lit16 v10, v5, 0x1c00

    .line 104
    .line 105
    if-nez v10, :cond_b

    .line 106
    .line 107
    .line 108
    invoke-interface {v0, p3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 109
    move-result v10

    .line 110
    .line 111
    if-eqz v10, :cond_a

    .line 112
    .line 113
    const/16 v10, 0x800

    .line 114
    goto :goto_6

    .line 115
    .line 116
    :cond_a
    const/16 v10, 0x400

    .line 117
    :goto_6
    or-int/2addr v3, v10

    .line 118
    .line 119
    :cond_b
    :goto_7
    and-int/lit16 v10, v3, 0x16db

    .line 120
    .line 121
    const/16 v11, 0x492

    .line 122
    .line 123
    if-ne v10, v11, :cond_d

    .line 124
    .line 125
    .line 126
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->b()Z

    .line 127
    move-result v10

    .line 128
    .line 129
    if-nez v10, :cond_c

    .line 130
    goto :goto_9

    .line 131
    .line 132
    .line 133
    :cond_c
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->g()V

    .line 134
    move-object v1, v2

    .line 135
    move-object v2, v7

    .line 136
    :goto_8
    move v3, v9

    .line 137
    goto :goto_c

    .line 138
    .line 139
    :cond_d
    :goto_9
    if-eqz v1, :cond_e

    .line 140
    .line 141
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 142
    goto :goto_a

    .line 143
    :cond_e
    move-object v1, v2

    .line 144
    .line 145
    :goto_a
    if-eqz v6, :cond_f

    .line 146
    .line 147
    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->o()Landroidx/compose/ui/Alignment;

    .line 151
    move-result-object v2

    .line 152
    goto :goto_b

    .line 153
    :cond_f
    move-object v2, v7

    .line 154
    :goto_b
    const/4 v6, 0x0

    .line 155
    .line 156
    if-eqz v8, :cond_10

    .line 157
    move v9, v6

    .line 158
    .line 159
    :cond_10
    shr-int/lit8 v7, v3, 0x3

    .line 160
    .line 161
    and-int/lit8 v8, v7, 0xe

    .line 162
    .line 163
    and-int/lit8 v7, v7, 0x70

    .line 164
    or-int/2addr v7, v8

    .line 165
    .line 166
    .line 167
    invoke-static {v2, v9, v0, v7}, Landroidx/compose/foundation/layout/BoxKt;->h(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 168
    move-result-object v7

    .line 169
    .line 170
    .line 171
    const v8, 0x1e7b2b64

    .line 172
    .line 173
    .line 174
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 175
    .line 176
    .line 177
    invoke-interface {v0, p3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 178
    move-result v8

    .line 179
    .line 180
    .line 181
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 182
    move-result v10

    .line 183
    or-int/2addr v8, v10

    .line 184
    .line 185
    .line 186
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 187
    move-result-object v10

    .line 188
    .line 189
    if-nez v8, :cond_11

    .line 190
    .line 191
    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 195
    move-result-object v8

    .line 196
    .line 197
    if-ne v10, v8, :cond_12

    .line 198
    .line 199
    :cond_11
    new-instance v10, Landroidx/compose/foundation/layout/BoxWithConstraintsKt$BoxWithConstraints$1$1;

    .line 200
    .line 201
    .line 202
    invoke-direct {v10, v7, p3, v3}, Landroidx/compose/foundation/layout/BoxWithConstraintsKt$BoxWithConstraints$1$1;-><init>(Landroidx/compose/ui/layout/MeasurePolicy;Le8/q;I)V

    .line 203
    .line 204
    .line 205
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    :cond_12
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->Q()V

    .line 209
    .line 210
    check-cast v10, Le8/p;

    .line 211
    .line 212
    and-int/lit8 v3, v3, 0xe

    .line 213
    .line 214
    .line 215
    invoke-static {v1, v10, v0, v3, v6}, Landroidx/compose/ui/layout/SubcomposeLayoutKt;->a(Landroidx/compose/ui/Modifier;Le8/p;Landroidx/compose/runtime/Composer;II)V

    .line 216
    goto :goto_8

    .line 217
    .line 218
    .line 219
    :goto_c
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 220
    move-result-object v7

    .line 221
    .line 222
    if-nez v7, :cond_13

    .line 223
    goto :goto_d

    .line 224
    .line 225
    :cond_13
    new-instance v8, Landroidx/compose/foundation/layout/BoxWithConstraintsKt$BoxWithConstraints$2;

    .line 226
    move-object v0, v8

    .line 227
    move-object v4, p3

    .line 228
    .line 229
    move/from16 v5, p5

    .line 230
    .line 231
    move/from16 v6, p6

    .line 232
    .line 233
    .line 234
    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/layout/BoxWithConstraintsKt$BoxWithConstraints$2;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZLe8/q;II)V

    .line 235
    .line 236
    .line 237
    invoke-interface {v7, v8}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 238
    :goto_d
    return-void
.end method
