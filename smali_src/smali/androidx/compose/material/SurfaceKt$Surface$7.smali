.class final Landroidx/compose/material/SurfaceKt$Surface$7;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SurfaceKt;->d(ZLe8/a;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Le8/p;Landroidx/compose/runtime/Composer;III)V
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
    value = "SMAP\nSurface.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Surface.kt\nandroidx/compose/material/SurfaceKt$Surface$7\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 4 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n*L\n1#1,644:1\n76#2:645\n76#2:653\n67#3,6:646\n73#3:678\n77#3:683\n75#4:652\n76#4,11:654\n89#4:682\n460#5,13:665\n473#5,3:679\n*S KotlinDebug\n*F\n+ 1 Surface.kt\nandroidx/compose/material/SurfaceKt$Surface$7\n*L\n349#1:645\n342#1:653\n342#1:646,6\n342#1:678\n342#1:683\n342#1:652\n342#1:654,11\n342#1:682\n342#1:665,13\n342#1:679,3\n*E\n"
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $$dirty1:I

.field final synthetic $absoluteElevation:F

.field final synthetic $border:Landroidx/compose/foundation/BorderStroke;

.field final synthetic $color:J

.field final synthetic $content:Le8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/p<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $elevation:F

.field final synthetic $enabled:Z

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $onClick:Le8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/a<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $selected:Z

.field final synthetic $shape:Landroidx/compose/ui/graphics/Shape;


# direct methods
.method constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JFILandroidx/compose/foundation/BorderStroke;FZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLe8/a;Le8/p;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/graphics/Shape;",
            "JFI",
            "Landroidx/compose/foundation/BorderStroke;",
            "FZ",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Z",
            "Le8/a<",
            "Lw7/l0;",
            ">;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/SurfaceKt$Surface$7;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Landroidx/compose/material/SurfaceKt$Surface$7;->$shape:Landroidx/compose/ui/graphics/Shape;

    iput-wide p3, p0, Landroidx/compose/material/SurfaceKt$Surface$7;->$color:J

    iput p5, p0, Landroidx/compose/material/SurfaceKt$Surface$7;->$absoluteElevation:F

    iput p6, p0, Landroidx/compose/material/SurfaceKt$Surface$7;->$$dirty:I

    iput-object p7, p0, Landroidx/compose/material/SurfaceKt$Surface$7;->$border:Landroidx/compose/foundation/BorderStroke;

    iput p8, p0, Landroidx/compose/material/SurfaceKt$Surface$7;->$elevation:F

    iput-boolean p9, p0, Landroidx/compose/material/SurfaceKt$Surface$7;->$selected:Z

    iput-object p10, p0, Landroidx/compose/material/SurfaceKt$Surface$7;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-boolean p11, p0, Landroidx/compose/material/SurfaceKt$Surface$7;->$enabled:Z

    iput-object p12, p0, Landroidx/compose/material/SurfaceKt$Surface$7;->$onClick:Le8/a;

    iput-object p13, p0, Landroidx/compose/material/SurfaceKt$Surface$7;->$content:Le8/p;

    iput p14, p0, Landroidx/compose/material/SurfaceKt$Surface$7;->$$dirty1:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Composer;I)V
    .locals 17
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v8, p1

    .line 5
    .line 6
    and-int/lit8 v1, p2, 0xb

    .line 7
    const/4 v2, 0x2

    .line 8
    .line 9
    if-ne v1, v2, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->b()Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->g()V

    .line 20
    .line 21
    goto/16 :goto_2

    .line 22
    .line 23
    :cond_1
    :goto_0
    iget-object v1, v0, Landroidx/compose/material/SurfaceKt$Surface$7;->$modifier:Landroidx/compose/ui/Modifier;

    .line 24
    .line 25
    .line 26
    invoke-static {v1}, Landroidx/compose/material/TouchTargetKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 27
    move-result-object v7

    .line 28
    .line 29
    iget-object v9, v0, Landroidx/compose/material/SurfaceKt$Surface$7;->$shape:Landroidx/compose/ui/graphics/Shape;

    .line 30
    .line 31
    iget-wide v1, v0, Landroidx/compose/material/SurfaceKt$Surface$7;->$color:J

    .line 32
    .line 33
    .line 34
    invoke-static {}, Landroidx/compose/material/ElevationOverlayKt;->d()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 35
    move-result-object v3

    .line 36
    .line 37
    .line 38
    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 39
    move-result-object v3

    .line 40
    .line 41
    check-cast v3, Landroidx/compose/material/ElevationOverlay;

    .line 42
    .line 43
    iget v4, v0, Landroidx/compose/material/SurfaceKt$Surface$7;->$absoluteElevation:F

    .line 44
    .line 45
    iget v5, v0, Landroidx/compose/material/SurfaceKt$Surface$7;->$$dirty:I

    .line 46
    .line 47
    shr-int/lit8 v5, v5, 0xf

    .line 48
    .line 49
    and-int/lit8 v6, v5, 0xe

    .line 50
    .line 51
    move-object/from16 v5, p1

    .line 52
    .line 53
    .line 54
    invoke-static/range {v1 .. v6}, Landroidx/compose/material/SurfaceKt;->g(JLandroidx/compose/material/ElevationOverlay;FLandroidx/compose/runtime/Composer;I)J

    .line 55
    move-result-wide v4

    .line 56
    .line 57
    iget-object v6, v0, Landroidx/compose/material/SurfaceKt$Surface$7;->$border:Landroidx/compose/foundation/BorderStroke;

    .line 58
    .line 59
    iget v1, v0, Landroidx/compose/material/SurfaceKt$Surface$7;->$elevation:F

    .line 60
    move-object v2, v7

    .line 61
    move-object v3, v9

    .line 62
    move v7, v1

    .line 63
    .line 64
    .line 65
    invoke-static/range {v2 .. v7}, Landroidx/compose/material/SurfaceKt;->f(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JLandroidx/compose/foundation/BorderStroke;F)Landroidx/compose/ui/Modifier;

    .line 66
    move-result-object v10

    .line 67
    .line 68
    iget-boolean v11, v0, Landroidx/compose/material/SurfaceKt$Surface$7;->$selected:Z

    .line 69
    .line 70
    iget-object v12, v0, Landroidx/compose/material/SurfaceKt$Surface$7;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 71
    const/4 v1, 0x0

    .line 72
    const/4 v2, 0x0

    .line 73
    .line 74
    const-wide/16 v3, 0x0

    .line 75
    const/4 v6, 0x0

    .line 76
    const/4 v7, 0x7

    .line 77
    .line 78
    move-object/from16 v5, p1

    .line 79
    .line 80
    .line 81
    invoke-static/range {v1 .. v7}, Landroidx/compose/material/ripple/RippleKt;->e(ZFJLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/Indication;

    .line 82
    move-result-object v13

    .line 83
    .line 84
    iget-boolean v14, v0, Landroidx/compose/material/SurfaceKt$Surface$7;->$enabled:Z

    .line 85
    .line 86
    sget-object v1, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/Role$Companion;->f()I

    .line 90
    move-result v1

    .line 91
    .line 92
    .line 93
    invoke-static {v1}, Landroidx/compose/ui/semantics/Role;->g(I)Landroidx/compose/ui/semantics/Role;

    .line 94
    move-result-object v15

    .line 95
    .line 96
    iget-object v1, v0, Landroidx/compose/material/SurfaceKt$Surface$7;->$onClick:Le8/a;

    .line 97
    .line 98
    move-object/from16 v16, v1

    .line 99
    .line 100
    .line 101
    invoke-static/range {v10 .. v16}, Landroidx/compose/foundation/selection/SelectableKt;->a(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Le8/a;)Landroidx/compose/ui/Modifier;

    .line 102
    move-result-object v1

    .line 103
    .line 104
    iget-object v2, v0, Landroidx/compose/material/SurfaceKt$Surface$7;->$content:Le8/p;

    .line 105
    .line 106
    iget v3, v0, Landroidx/compose/material/SurfaceKt$Surface$7;->$$dirty1:I

    .line 107
    .line 108
    .line 109
    const v4, 0x2bb5b5d7

    .line 110
    .line 111
    .line 112
    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 113
    .line 114
    sget-object v4, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4}, Landroidx/compose/ui/Alignment$Companion;->o()Landroidx/compose/ui/Alignment;

    .line 118
    move-result-object v4

    .line 119
    .line 120
    const/16 v5, 0x30

    .line 121
    const/4 v6, 0x1

    .line 122
    .line 123
    .line 124
    invoke-static {v4, v6, v8, v5}, Landroidx/compose/foundation/layout/BoxKt;->h(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 125
    move-result-object v4

    .line 126
    .line 127
    .line 128
    const v5, -0x4ee9b9da

    .line 129
    .line 130
    .line 131
    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 132
    .line 133
    .line 134
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 135
    move-result-object v5

    .line 136
    .line 137
    .line 138
    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 139
    move-result-object v5

    .line 140
    .line 141
    check-cast v5, Landroidx/compose/ui/unit/Density;

    .line 142
    .line 143
    .line 144
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 145
    move-result-object v6

    .line 146
    .line 147
    .line 148
    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 149
    move-result-object v6

    .line 150
    .line 151
    check-cast v6, Landroidx/compose/ui/unit/LayoutDirection;

    .line 152
    .line 153
    .line 154
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 155
    move-result-object v7

    .line 156
    .line 157
    .line 158
    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 159
    move-result-object v7

    .line 160
    .line 161
    check-cast v7, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 162
    .line 163
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 167
    move-result-object v10

    .line 168
    .line 169
    .line 170
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 171
    move-result-object v1

    .line 172
    .line 173
    .line 174
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 175
    move-result-object v11

    .line 176
    .line 177
    instance-of v11, v11, Landroidx/compose/runtime/Applier;

    .line 178
    .line 179
    if-nez v11, :cond_2

    .line 180
    .line 181
    .line 182
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 183
    .line 184
    .line 185
    :cond_2
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->e()V

    .line 186
    .line 187
    .line 188
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->r()Z

    .line 189
    move-result v11

    .line 190
    .line 191
    if-eqz v11, :cond_3

    .line 192
    .line 193
    .line 194
    invoke-interface {v8, v10}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 195
    goto :goto_1

    .line 196
    .line 197
    .line 198
    :cond_3
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->c()V

    .line 199
    .line 200
    .line 201
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->L()V

    .line 202
    .line 203
    .line 204
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 205
    move-result-object v10

    .line 206
    .line 207
    .line 208
    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 209
    move-result-object v11

    .line 210
    .line 211
    .line 212
    invoke-static {v10, v4, v11}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 216
    move-result-object v4

    .line 217
    .line 218
    .line 219
    invoke-static {v10, v5, v4}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 223
    move-result-object v4

    .line 224
    .line 225
    .line 226
    invoke-static {v10, v6, v4}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 230
    move-result-object v4

    .line 231
    .line 232
    .line 233
    invoke-static {v10, v7, v4}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 234
    .line 235
    .line 236
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->o()V

    .line 237
    .line 238
    .line 239
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 240
    move-result-object v4

    .line 241
    .line 242
    .line 243
    invoke-static {v4}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 244
    move-result-object v4

    .line 245
    const/4 v5, 0x0

    .line 246
    .line 247
    .line 248
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 249
    move-result-object v5

    .line 250
    .line 251
    .line 252
    invoke-interface {v1, v4, v8, v5}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    const v1, 0x7ab4aae9

    .line 256
    .line 257
    .line 258
    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 259
    .line 260
    .line 261
    const v1, -0x7f65a980

    .line 262
    .line 263
    .line 264
    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 265
    .line 266
    sget-object v1, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 267
    .line 268
    .line 269
    const v1, 0x1684b6b

    .line 270
    .line 271
    .line 272
    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 273
    .line 274
    and-int/lit8 v1, v3, 0xe

    .line 275
    .line 276
    .line 277
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 278
    move-result-object v1

    .line 279
    .line 280
    .line 281
    invoke-interface {v2, v8, v1}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 285
    .line 286
    .line 287
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 288
    .line 289
    .line 290
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 291
    .line 292
    .line 293
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->d()V

    .line 294
    .line 295
    .line 296
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 297
    .line 298
    .line 299
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 300
    :goto_2
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/SurfaceKt$Surface$7;->a(Landroidx/compose/runtime/Composer;I)V

    .line 12
    .line 13
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 14
    return-object p1
.end method
