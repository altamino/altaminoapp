.class public final Landroidx/compose/foundation/text/selection/SimpleLayoutKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSimpleLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SimpleLayout.kt\nandroidx/compose/foundation/text/selection/SimpleLayoutKt\n+ 2 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 3 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 4 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n*L\n1#1,53:1\n75#2:54\n76#2,11:56\n89#2:83\n76#3:55\n460#4,16:67\n*S KotlinDebug\n*F\n+ 1 SimpleLayout.kt\nandroidx/compose/foundation/text/selection/SimpleLayoutKt\n*L\n33#1:54\n33#1:56,11\n33#1:83\n33#1:55\n33#1:67,16\n*E\n"
.end annotation


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;Le8/p;Landroidx/compose/runtime/Composer;II)V
    .locals 9
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Le8/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Le8/p<",
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
    .line 2
    const-string v0, "content"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const v0, -0x7d7b3e30

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    and-int/lit8 v0, p4, 0x1

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    or-int/lit8 v1, p3, 0x6

    .line 19
    goto :goto_1

    .line 20
    .line 21
    :cond_0
    and-int/lit8 v1, p3, 0xe

    .line 22
    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    .line 26
    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 27
    move-result v1

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    const/4 v1, 0x4

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v1, 0x2

    .line 33
    :goto_0
    or-int/2addr v1, p3

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    move v1, p3

    .line 36
    .line 37
    :goto_1
    and-int/lit8 v2, p4, 0x2

    .line 38
    .line 39
    if-eqz v2, :cond_3

    .line 40
    .line 41
    or-int/lit8 v1, v1, 0x30

    .line 42
    goto :goto_3

    .line 43
    .line 44
    :cond_3
    and-int/lit8 v2, p3, 0x70

    .line 45
    .line 46
    if-nez v2, :cond_5

    .line 47
    .line 48
    .line 49
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 50
    move-result v2

    .line 51
    .line 52
    if-eqz v2, :cond_4

    .line 53
    .line 54
    const/16 v2, 0x20

    .line 55
    goto :goto_2

    .line 56
    .line 57
    :cond_4
    const/16 v2, 0x10

    .line 58
    :goto_2
    or-int/2addr v1, v2

    .line 59
    .line 60
    :cond_5
    :goto_3
    and-int/lit8 v2, v1, 0x5b

    .line 61
    .line 62
    const/16 v3, 0x12

    .line 63
    .line 64
    if-ne v2, v3, :cond_7

    .line 65
    .line 66
    .line 67
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->b()Z

    .line 68
    move-result v2

    .line 69
    .line 70
    if-nez v2, :cond_6

    .line 71
    goto :goto_4

    .line 72
    .line 73
    .line 74
    :cond_6
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->g()V

    .line 75
    .line 76
    goto/16 :goto_6

    .line 77
    .line 78
    :cond_7
    :goto_4
    if-eqz v0, :cond_8

    .line 79
    .line 80
    sget-object p0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 81
    .line 82
    :cond_8
    sget-object v0, Landroidx/compose/foundation/text/selection/SimpleLayoutKt$SimpleLayout$1;->INSTANCE:Landroidx/compose/foundation/text/selection/SimpleLayoutKt$SimpleLayout$1;

    .line 83
    .line 84
    shr-int/lit8 v2, v1, 0x3

    .line 85
    .line 86
    and-int/lit8 v2, v2, 0xe

    .line 87
    .line 88
    shl-int/lit8 v1, v1, 0x3

    .line 89
    .line 90
    and-int/lit8 v1, v1, 0x70

    .line 91
    or-int/2addr v1, v2

    .line 92
    .line 93
    .line 94
    const v2, -0x4ee9b9da

    .line 95
    .line 96
    .line 97
    invoke-interface {p2, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 98
    .line 99
    .line 100
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 101
    move-result-object v2

    .line 102
    .line 103
    .line 104
    invoke-interface {p2, v2}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 105
    move-result-object v2

    .line 106
    .line 107
    check-cast v2, Landroidx/compose/ui/unit/Density;

    .line 108
    .line 109
    .line 110
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 111
    move-result-object v3

    .line 112
    .line 113
    .line 114
    invoke-interface {p2, v3}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 115
    move-result-object v3

    .line 116
    .line 117
    check-cast v3, Landroidx/compose/ui/unit/LayoutDirection;

    .line 118
    .line 119
    .line 120
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 121
    move-result-object v4

    .line 122
    .line 123
    .line 124
    invoke-interface {p2, v4}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 125
    move-result-object v4

    .line 126
    .line 127
    check-cast v4, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 128
    .line 129
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 133
    move-result-object v6

    .line 134
    .line 135
    .line 136
    invoke-static {p0}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 137
    move-result-object v7

    .line 138
    .line 139
    shl-int/lit8 v1, v1, 0x9

    .line 140
    .line 141
    and-int/lit16 v1, v1, 0x1c00

    .line 142
    .line 143
    or-int/lit8 v1, v1, 0x6

    .line 144
    .line 145
    .line 146
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 147
    move-result-object v8

    .line 148
    .line 149
    instance-of v8, v8, Landroidx/compose/runtime/Applier;

    .line 150
    .line 151
    if-nez v8, :cond_9

    .line 152
    .line 153
    .line 154
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 155
    .line 156
    .line 157
    :cond_9
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->e()V

    .line 158
    .line 159
    .line 160
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->r()Z

    .line 161
    move-result v8

    .line 162
    .line 163
    if-eqz v8, :cond_a

    .line 164
    .line 165
    .line 166
    invoke-interface {p2, v6}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 167
    goto :goto_5

    .line 168
    .line 169
    .line 170
    :cond_a
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->c()V

    .line 171
    .line 172
    .line 173
    :goto_5
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->L()V

    .line 174
    .line 175
    .line 176
    invoke-static {p2}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 177
    move-result-object v6

    .line 178
    .line 179
    .line 180
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 181
    move-result-object v8

    .line 182
    .line 183
    .line 184
    invoke-static {v6, v0, v8}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 188
    move-result-object v0

    .line 189
    .line 190
    .line 191
    invoke-static {v6, v2, v0}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 195
    move-result-object v0

    .line 196
    .line 197
    .line 198
    invoke-static {v6, v3, v0}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 202
    move-result-object v0

    .line 203
    .line 204
    .line 205
    invoke-static {v6, v4, v0}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 206
    .line 207
    .line 208
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->o()V

    .line 209
    .line 210
    .line 211
    invoke-static {p2}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 212
    move-result-object v0

    .line 213
    .line 214
    .line 215
    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 216
    move-result-object v0

    .line 217
    .line 218
    shr-int/lit8 v2, v1, 0x3

    .line 219
    .line 220
    and-int/lit8 v2, v2, 0x70

    .line 221
    .line 222
    .line 223
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 224
    move-result-object v2

    .line 225
    .line 226
    .line 227
    invoke-interface {v7, v0, p2, v2}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    const v0, 0x7ab4aae9

    .line 231
    .line 232
    .line 233
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 234
    .line 235
    shr-int/lit8 v0, v1, 0x9

    .line 236
    .line 237
    and-int/lit8 v0, v0, 0xe

    .line 238
    .line 239
    .line 240
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 241
    move-result-object v0

    .line 242
    .line 243
    .line 244
    invoke-interface {p1, p2, v0}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 248
    .line 249
    .line 250
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->d()V

    .line 251
    .line 252
    .line 253
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 254
    .line 255
    .line 256
    :goto_6
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 257
    move-result-object p2

    .line 258
    .line 259
    if-nez p2, :cond_b

    .line 260
    goto :goto_7

    .line 261
    .line 262
    :cond_b
    new-instance v0, Landroidx/compose/foundation/text/selection/SimpleLayoutKt$SimpleLayout$2;

    .line 263
    .line 264
    .line 265
    invoke-direct {v0, p0, p1, p3, p4}, Landroidx/compose/foundation/text/selection/SimpleLayoutKt$SimpleLayout$2;-><init>(Landroidx/compose/ui/Modifier;Le8/p;II)V

    .line 266
    .line 267
    .line 268
    invoke-interface {p2, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 269
    :goto_7
    return-void
.end method
