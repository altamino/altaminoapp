.class final Landroidx/compose/animation/CrossfadeKt$Crossfade$4$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/CrossfadeKt;->a(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Le8/l;Le8/q;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/p<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lw7/l0;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCrossfade.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Crossfade.kt\nandroidx/compose/animation/CrossfadeKt$Crossfade$4$1\n+ 2 Transition.kt\nandroidx/compose/animation/core/TransitionKt\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 6 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 7 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 8 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,129:1\n931#2,4:130\n852#2,5:134\n36#3:139\n418#3,13:163\n431#3,3:177\n1057#4,6:140\n67#5,6:146\n73#5:176\n77#5:181\n72#6:152\n73#6,9:154\n84#6:180\n76#7:153\n76#8:182\n*S KotlinDebug\n*F\n+ 1 Crossfade.kt\nandroidx/compose/animation/CrossfadeKt$Crossfade$4$1\n*L\n111#1:130,4\n111#1:134,5\n114#1:139\n114#1:163,13\n114#1:177,3\n114#1:140,6\n114#1:146,6\n114#1:176\n114#1:181\n114#1:152\n114#1:154,9\n114#1:180\n114#1:153\n111#1:182\n*E\n"
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $content:Le8/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/q<",
            "TT;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $stateForContent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic $this_Crossfade:Landroidx/compose/animation/core/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Transition<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/animation/core/Transition;ILandroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/Object;Le8/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Transition<",
            "TT;>;I",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Ljava/lang/Float;",
            ">;TT;",
            "Le8/q<",
            "-TT;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$4$1;->$this_Crossfade:Landroidx/compose/animation/core/Transition;

    iput p2, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$4$1;->$$dirty:I

    iput-object p3, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$4$1;->$animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    iput-object p4, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$4$1;->$stateForContent:Ljava/lang/Object;

    iput-object p5, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$4$1;->$content:Le8/q;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method

.method public static final synthetic a(Landroidx/compose/runtime/State;)F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/animation/CrossfadeKt$Crossfade$4$1;->c(Landroidx/compose/runtime/State;)F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final c(Landroidx/compose/runtime/State;)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    check-cast p0, Ljava/lang/Number;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 10
    move-result p0

    .line 11
    return p0
.end method


# virtual methods
.method public final b(Landroidx/compose/runtime/Composer;I)V
    .locals 11
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .line 1
    .line 2
    and-int/lit8 p2, p2, 0xb

    .line 3
    const/4 v0, 0x2

    .line 4
    .line 5
    if-ne p2, v0, :cond_1

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->b()Z

    .line 9
    move-result p2

    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    goto :goto_0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->g()V

    .line 16
    .line 17
    goto/16 :goto_3

    .line 18
    .line 19
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$4$1;->$this_Crossfade:Landroidx/compose/animation/core/Transition;

    .line 20
    .line 21
    new-instance p2, Landroidx/compose/animation/CrossfadeKt$Crossfade$4$1$alpha$2;

    .line 22
    .line 23
    iget-object v1, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$4$1;->$animationSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 24
    .line 25
    .line 26
    invoke-direct {p2, v1}, Landroidx/compose/animation/CrossfadeKt$Crossfade$4$1$alpha$2;-><init>(Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    .line 27
    .line 28
    iget-object v1, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$4$1;->$stateForContent:Ljava/lang/Object;

    .line 29
    .line 30
    iget v2, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$4$1;->$$dirty:I

    .line 31
    .line 32
    and-int/lit8 v3, v2, 0xe

    .line 33
    .line 34
    .line 35
    const v4, -0x4fcbfb15

    .line 36
    .line 37
    .line 38
    invoke-interface {p1, v4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 39
    .line 40
    const-string v5, "FloatAnimation"

    .line 41
    .line 42
    sget-object v4, Lkotlin/jvm/internal/m;->INSTANCE:Lkotlin/jvm/internal/m;

    .line 43
    .line 44
    .line 45
    invoke-static {v4}, Landroidx/compose/animation/core/VectorConvertersKt;->i(Lkotlin/jvm/internal/m;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 46
    move-result-object v4

    .line 47
    .line 48
    and-int/lit8 v2, v2, 0xe

    .line 49
    .line 50
    shl-int/lit8 v3, v3, 0x3

    .line 51
    .line 52
    and-int/lit16 v6, v3, 0x380

    .line 53
    or-int/2addr v2, v6

    .line 54
    .line 55
    and-int/lit16 v6, v3, 0x1c00

    .line 56
    or-int/2addr v2, v6

    .line 57
    .line 58
    .line 59
    const v6, 0xe000

    .line 60
    and-int/2addr v3, v6

    .line 61
    or-int/2addr v2, v3

    .line 62
    .line 63
    .line 64
    const v3, -0x880d1ef

    .line 65
    .line 66
    .line 67
    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition;->g()Ljava/lang/Object;

    .line 71
    move-result-object v3

    .line 72
    .line 73
    .line 74
    const v7, -0x1a25b2ec

    .line 75
    .line 76
    .line 77
    invoke-interface {p1, v7}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 78
    .line 79
    .line 80
    invoke-static {v3, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    move-result v3

    .line 82
    const/4 v8, 0x0

    .line 83
    .line 84
    const/high16 v9, 0x3f800000    # 1.0f

    .line 85
    .line 86
    if-eqz v3, :cond_2

    .line 87
    move v3, v9

    .line 88
    goto :goto_1

    .line 89
    :cond_2
    move v3, v8

    .line 90
    .line 91
    .line 92
    :goto_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 93
    .line 94
    .line 95
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 96
    move-result-object v3

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition;->m()Ljava/lang/Object;

    .line 100
    move-result-object v10

    .line 101
    .line 102
    .line 103
    invoke-interface {p1, v7}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 104
    .line 105
    .line 106
    invoke-static {v10, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 107
    move-result v1

    .line 108
    .line 109
    if-eqz v1, :cond_3

    .line 110
    move v8, v9

    .line 111
    .line 112
    .line 113
    :cond_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 114
    .line 115
    .line 116
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 117
    move-result-object v7

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition;->k()Landroidx/compose/animation/core/Transition$Segment;

    .line 121
    move-result-object v1

    .line 122
    .line 123
    shr-int/lit8 v8, v2, 0x3

    .line 124
    .line 125
    and-int/lit8 v8, v8, 0x70

    .line 126
    .line 127
    .line 128
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    move-result-object v8

    .line 130
    .line 131
    .line 132
    invoke-interface {p2, v1, p1, v8}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    move-result-object p2

    .line 134
    .line 135
    check-cast p2, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 136
    .line 137
    and-int/lit8 v1, v2, 0xe

    .line 138
    .line 139
    shl-int/lit8 v8, v2, 0x9

    .line 140
    and-int/2addr v6, v8

    .line 141
    or-int/2addr v1, v6

    .line 142
    .line 143
    shl-int/lit8 v2, v2, 0x6

    .line 144
    .line 145
    const/high16 v6, 0x70000

    .line 146
    and-int/2addr v2, v6

    .line 147
    .line 148
    or-int v8, v1, v2

    .line 149
    move-object v1, v3

    .line 150
    move-object v2, v7

    .line 151
    move-object v3, p2

    .line 152
    move-object v6, p1

    .line 153
    move v7, v8

    .line 154
    .line 155
    .line 156
    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/core/TransitionKt;->c(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 157
    move-result-object p2

    .line 158
    .line 159
    .line 160
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 161
    .line 162
    .line 163
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 164
    .line 165
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 166
    .line 167
    .line 168
    const v1, 0x44faf204

    .line 169
    .line 170
    .line 171
    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 172
    .line 173
    .line 174
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 175
    move-result v1

    .line 176
    .line 177
    .line 178
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 179
    move-result-object v2

    .line 180
    .line 181
    if-nez v1, :cond_4

    .line 182
    .line 183
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 187
    move-result-object v1

    .line 188
    .line 189
    if-ne v2, v1, :cond_5

    .line 190
    .line 191
    :cond_4
    new-instance v2, Landroidx/compose/animation/CrossfadeKt$Crossfade$4$1$1$1;

    .line 192
    .line 193
    .line 194
    invoke-direct {v2, p2}, Landroidx/compose/animation/CrossfadeKt$Crossfade$4$1$1$1;-><init>(Landroidx/compose/runtime/State;)V

    .line 195
    .line 196
    .line 197
    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    :cond_5
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 201
    .line 202
    check-cast v2, Le8/l;

    .line 203
    .line 204
    .line 205
    invoke-static {v0, v2}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->a(Landroidx/compose/ui/Modifier;Le8/l;)Landroidx/compose/ui/Modifier;

    .line 206
    move-result-object p2

    .line 207
    .line 208
    iget-object v0, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$4$1;->$content:Le8/q;

    .line 209
    .line 210
    iget-object v1, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$4$1;->$stateForContent:Ljava/lang/Object;

    .line 211
    .line 212
    iget v2, p0, Landroidx/compose/animation/CrossfadeKt$Crossfade$4$1;->$$dirty:I

    .line 213
    .line 214
    .line 215
    const v3, -0x76a43a57

    .line 216
    .line 217
    .line 218
    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 219
    .line 220
    sget-object v3, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v3}, Landroidx/compose/ui/Alignment$Companion;->o()Landroidx/compose/ui/Alignment;

    .line 224
    move-result-object v3

    .line 225
    const/4 v4, 0x0

    .line 226
    .line 227
    .line 228
    invoke-static {v3, v4, p1, v4}, Landroidx/compose/foundation/layout/BoxKt;->h(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 229
    move-result-object v3

    .line 230
    .line 231
    .line 232
    const v5, 0x520574f7

    .line 233
    .line 234
    .line 235
    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 236
    .line 237
    .line 238
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 239
    move-result-object v5

    .line 240
    .line 241
    .line 242
    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 243
    move-result-object v5

    .line 244
    .line 245
    check-cast v5, Landroidx/compose/ui/unit/Density;

    .line 246
    .line 247
    .line 248
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 249
    move-result-object v6

    .line 250
    .line 251
    .line 252
    invoke-interface {p1, v6}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 253
    move-result-object v6

    .line 254
    .line 255
    check-cast v6, Landroidx/compose/ui/unit/LayoutDirection;

    .line 256
    .line 257
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 261
    move-result-object v8

    .line 262
    .line 263
    .line 264
    invoke-static {p2}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 265
    move-result-object p2

    .line 266
    .line 267
    .line 268
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 269
    move-result-object v9

    .line 270
    .line 271
    instance-of v9, v9, Landroidx/compose/runtime/Applier;

    .line 272
    .line 273
    if-nez v9, :cond_6

    .line 274
    .line 275
    .line 276
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 277
    .line 278
    .line 279
    :cond_6
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->e()V

    .line 280
    .line 281
    .line 282
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->r()Z

    .line 283
    move-result v9

    .line 284
    .line 285
    if-eqz v9, :cond_7

    .line 286
    .line 287
    .line 288
    invoke-interface {p1, v8}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 289
    goto :goto_2

    .line 290
    .line 291
    .line 292
    :cond_7
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->c()V

    .line 293
    .line 294
    .line 295
    :goto_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->L()V

    .line 296
    .line 297
    .line 298
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 299
    move-result-object v8

    .line 300
    .line 301
    .line 302
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 303
    move-result-object v9

    .line 304
    .line 305
    .line 306
    invoke-static {v8, v3, v9}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 310
    move-result-object v3

    .line 311
    .line 312
    .line 313
    invoke-static {v8, v5, v3}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 317
    move-result-object v3

    .line 318
    .line 319
    .line 320
    invoke-static {v8, v6, v3}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 321
    .line 322
    .line 323
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->o()V

    .line 324
    .line 325
    .line 326
    invoke-static {p1}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 327
    move-result-object v3

    .line 328
    .line 329
    .line 330
    invoke-static {v3}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 331
    move-result-object v3

    .line 332
    .line 333
    .line 334
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 335
    move-result-object v4

    .line 336
    .line 337
    .line 338
    invoke-interface {p2, v3, p1, v4}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    const p2, 0x7ab4aae9

    .line 342
    .line 343
    .line 344
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 345
    .line 346
    .line 347
    const p2, -0x4ab8dd79

    .line 348
    .line 349
    .line 350
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 351
    .line 352
    sget-object p2, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 353
    .line 354
    .line 355
    const p2, -0xd465f6e

    .line 356
    .line 357
    .line 358
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 359
    .line 360
    shr-int/lit8 p2, v2, 0x9

    .line 361
    .line 362
    and-int/lit8 p2, p2, 0x70

    .line 363
    .line 364
    .line 365
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 366
    move-result-object p2

    .line 367
    .line 368
    .line 369
    invoke-interface {v0, v1, p1, p2}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 373
    .line 374
    .line 375
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 376
    .line 377
    .line 378
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 379
    .line 380
    .line 381
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->d()V

    .line 382
    .line 383
    .line 384
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 385
    .line 386
    .line 387
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 388
    :goto_3
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Number;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 8
    move-result p2

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Landroidx/compose/animation/CrossfadeKt$Crossfade$4$1;->b(Landroidx/compose/runtime/Composer;I)V

    .line 12
    .line 13
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 14
    return-object p1
.end method
