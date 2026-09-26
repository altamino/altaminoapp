.class final Landroidx/compose/material/SurfaceKt$Surface$13;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SurfaceKt;->a(Le8/a;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Le8/p;Landroidx/compose/runtime/Composer;III)V
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
    value = "SMAP\nSurface.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Surface.kt\nandroidx/compose/material/SurfaceKt$Surface$13\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 4 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n*L\n1#1,644:1\n76#2:645\n76#2:653\n67#3,6:646\n73#3:678\n77#3:683\n75#4:652\n76#4,11:654\n89#4:682\n460#5,13:665\n473#5,3:679\n*S KotlinDebug\n*F\n+ 1 Surface.kt\nandroidx/compose/material/SurfaceKt$Surface$13\n*L\n599#1:645\n592#1:653\n592#1:646,6\n592#1:678\n592#1:683\n592#1:652\n592#1:654,11\n592#1:682\n592#1:665,13\n592#1:679,3\n*E\n"
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

.field final synthetic $indication:Landroidx/compose/foundation/Indication;

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

.field final synthetic $onClickLabel:Ljava/lang/String;

.field final synthetic $role:Landroidx/compose/ui/semantics/Role;

.field final synthetic $shape:Landroidx/compose/ui/graphics/Shape;


# direct methods
.method constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JFILandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Le8/a;Le8/p;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/graphics/Shape;",
            "JFI",
            "Landroidx/compose/foundation/BorderStroke;",
            "F",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/foundation/Indication;",
            "Z",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/semantics/Role;",
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
    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Landroidx/compose/material/SurfaceKt$Surface$13;->$modifier:Landroidx/compose/ui/Modifier;

    move-object v1, p2

    iput-object v1, v0, Landroidx/compose/material/SurfaceKt$Surface$13;->$shape:Landroidx/compose/ui/graphics/Shape;

    move-wide v1, p3

    iput-wide v1, v0, Landroidx/compose/material/SurfaceKt$Surface$13;->$color:J

    move v1, p5

    iput v1, v0, Landroidx/compose/material/SurfaceKt$Surface$13;->$absoluteElevation:F

    move v1, p6

    iput v1, v0, Landroidx/compose/material/SurfaceKt$Surface$13;->$$dirty:I

    move-object v1, p7

    iput-object v1, v0, Landroidx/compose/material/SurfaceKt$Surface$13;->$border:Landroidx/compose/foundation/BorderStroke;

    move v1, p8

    iput v1, v0, Landroidx/compose/material/SurfaceKt$Surface$13;->$elevation:F

    move-object v1, p9

    iput-object v1, v0, Landroidx/compose/material/SurfaceKt$Surface$13;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object v1, p10

    iput-object v1, v0, Landroidx/compose/material/SurfaceKt$Surface$13;->$indication:Landroidx/compose/foundation/Indication;

    move v1, p11

    iput-boolean v1, v0, Landroidx/compose/material/SurfaceKt$Surface$13;->$enabled:Z

    move-object v1, p12

    iput-object v1, v0, Landroidx/compose/material/SurfaceKt$Surface$13;->$onClickLabel:Ljava/lang/String;

    move-object/from16 v1, p13

    iput-object v1, v0, Landroidx/compose/material/SurfaceKt$Surface$13;->$role:Landroidx/compose/ui/semantics/Role;

    move-object/from16 v1, p14

    iput-object v1, v0, Landroidx/compose/material/SurfaceKt$Surface$13;->$onClick:Le8/a;

    move-object/from16 v1, p15

    iput-object v1, v0, Landroidx/compose/material/SurfaceKt$Surface$13;->$content:Le8/p;

    move/from16 v1, p16

    iput v1, v0, Landroidx/compose/material/SurfaceKt$Surface$13;->$$dirty1:I

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Composer;I)V
    .locals 9
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
    goto/16 :goto_2

    .line 18
    .line 19
    :cond_1
    :goto_0
    iget-object p2, p0, Landroidx/compose/material/SurfaceKt$Surface$13;->$modifier:Landroidx/compose/ui/Modifier;

    .line 20
    .line 21
    .line 22
    invoke-static {p2}, Landroidx/compose/material/TouchTargetKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    iget-object v1, p0, Landroidx/compose/material/SurfaceKt$Surface$13;->$shape:Landroidx/compose/ui/graphics/Shape;

    .line 26
    .line 27
    iget-wide v2, p0, Landroidx/compose/material/SurfaceKt$Surface$13;->$color:J

    .line 28
    .line 29
    .line 30
    invoke-static {}, Landroidx/compose/material/ElevationOverlayKt;->d()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 31
    move-result-object p2

    .line 32
    .line 33
    .line 34
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 35
    move-result-object p2

    .line 36
    move-object v4, p2

    .line 37
    .line 38
    check-cast v4, Landroidx/compose/material/ElevationOverlay;

    .line 39
    .line 40
    iget v5, p0, Landroidx/compose/material/SurfaceKt$Surface$13;->$absoluteElevation:F

    .line 41
    .line 42
    iget p2, p0, Landroidx/compose/material/SurfaceKt$Surface$13;->$$dirty:I

    .line 43
    .line 44
    shr-int/lit8 p2, p2, 0x9

    .line 45
    .line 46
    and-int/lit8 v7, p2, 0xe

    .line 47
    move-object v6, p1

    .line 48
    .line 49
    .line 50
    invoke-static/range {v2 .. v7}, Landroidx/compose/material/SurfaceKt;->g(JLandroidx/compose/material/ElevationOverlay;FLandroidx/compose/runtime/Composer;I)J

    .line 51
    move-result-wide v2

    .line 52
    .line 53
    iget-object v4, p0, Landroidx/compose/material/SurfaceKt$Surface$13;->$border:Landroidx/compose/foundation/BorderStroke;

    .line 54
    .line 55
    iget v5, p0, Landroidx/compose/material/SurfaceKt$Surface$13;->$elevation:F

    .line 56
    .line 57
    .line 58
    invoke-static/range {v0 .. v5}, Landroidx/compose/material/SurfaceKt;->f(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JLandroidx/compose/foundation/BorderStroke;F)Landroidx/compose/ui/Modifier;

    .line 59
    move-result-object p2

    .line 60
    .line 61
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 62
    .line 63
    iget-object v1, p0, Landroidx/compose/material/SurfaceKt$Surface$13;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 64
    .line 65
    iget-object v2, p0, Landroidx/compose/material/SurfaceKt$Surface$13;->$indication:Landroidx/compose/foundation/Indication;

    .line 66
    .line 67
    iget-boolean v3, p0, Landroidx/compose/material/SurfaceKt$Surface$13;->$enabled:Z

    .line 68
    .line 69
    iget-object v4, p0, Landroidx/compose/material/SurfaceKt$Surface$13;->$onClickLabel:Ljava/lang/String;

    .line 70
    .line 71
    iget-object v5, p0, Landroidx/compose/material/SurfaceKt$Surface$13;->$role:Landroidx/compose/ui/semantics/Role;

    .line 72
    .line 73
    iget-object v6, p0, Landroidx/compose/material/SurfaceKt$Surface$13;->$onClick:Le8/a;

    .line 74
    .line 75
    .line 76
    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/ClickableKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Le8/a;)Landroidx/compose/ui/Modifier;

    .line 77
    move-result-object v0

    .line 78
    .line 79
    .line 80
    invoke-interface {p2, v0}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 81
    move-result-object p2

    .line 82
    .line 83
    iget-object v0, p0, Landroidx/compose/material/SurfaceKt$Surface$13;->$content:Le8/p;

    .line 84
    .line 85
    iget v1, p0, Landroidx/compose/material/SurfaceKt$Surface$13;->$$dirty1:I

    .line 86
    .line 87
    .line 88
    const v2, 0x2bb5b5d7

    .line 89
    .line 90
    .line 91
    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 92
    .line 93
    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->o()Landroidx/compose/ui/Alignment;

    .line 97
    move-result-object v2

    .line 98
    .line 99
    const/16 v3, 0x30

    .line 100
    const/4 v4, 0x1

    .line 101
    .line 102
    .line 103
    invoke-static {v2, v4, p1, v3}, Landroidx/compose/foundation/layout/BoxKt;->h(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 104
    move-result-object v2

    .line 105
    .line 106
    .line 107
    const v3, -0x4ee9b9da

    .line 108
    .line 109
    .line 110
    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 111
    .line 112
    .line 113
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 114
    move-result-object v3

    .line 115
    .line 116
    .line 117
    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 118
    move-result-object v3

    .line 119
    .line 120
    check-cast v3, Landroidx/compose/ui/unit/Density;

    .line 121
    .line 122
    .line 123
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 124
    move-result-object v4

    .line 125
    .line 126
    .line 127
    invoke-interface {p1, v4}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 128
    move-result-object v4

    .line 129
    .line 130
    check-cast v4, Landroidx/compose/ui/unit/LayoutDirection;

    .line 131
    .line 132
    .line 133
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 134
    move-result-object v5

    .line 135
    .line 136
    .line 137
    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 138
    move-result-object v5

    .line 139
    .line 140
    check-cast v5, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 141
    .line 142
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 146
    move-result-object v7

    .line 147
    .line 148
    .line 149
    invoke-static {p2}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 150
    move-result-object p2

    .line 151
    .line 152
    .line 153
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 154
    move-result-object v8

    .line 155
    .line 156
    instance-of v8, v8, Landroidx/compose/runtime/Applier;

    .line 157
    .line 158
    if-nez v8, :cond_2

    .line 159
    .line 160
    .line 161
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 162
    .line 163
    .line 164
    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->e()V

    .line 165
    .line 166
    .line 167
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->r()Z

    .line 168
    move-result v8

    .line 169
    .line 170
    if-eqz v8, :cond_3

    .line 171
    .line 172
    .line 173
    invoke-interface {p1, v7}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 174
    goto :goto_1

    .line 175
    .line 176
    .line 177
    :cond_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->c()V

    .line 178
    .line 179
    .line 180
    :goto_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->L()V

    .line 181
    .line 182
    .line 183
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 184
    move-result-object v7

    .line 185
    .line 186
    .line 187
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 188
    move-result-object v8

    .line 189
    .line 190
    .line 191
    invoke-static {v7, v2, v8}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 195
    move-result-object v2

    .line 196
    .line 197
    .line 198
    invoke-static {v7, v3, v2}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 202
    move-result-object v2

    .line 203
    .line 204
    .line 205
    invoke-static {v7, v4, v2}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 209
    move-result-object v2

    .line 210
    .line 211
    .line 212
    invoke-static {v7, v5, v2}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 213
    .line 214
    .line 215
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->o()V

    .line 216
    .line 217
    .line 218
    invoke-static {p1}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 219
    move-result-object v2

    .line 220
    .line 221
    .line 222
    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 223
    move-result-object v2

    .line 224
    const/4 v3, 0x0

    .line 225
    .line 226
    .line 227
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 228
    move-result-object v3

    .line 229
    .line 230
    .line 231
    invoke-interface {p2, v2, p1, v3}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    const p2, 0x7ab4aae9

    .line 235
    .line 236
    .line 237
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 238
    .line 239
    .line 240
    const p2, -0x7f65a980

    .line 241
    .line 242
    .line 243
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 244
    .line 245
    sget-object p2, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 246
    .line 247
    .line 248
    const p2, -0x4d87694a

    .line 249
    .line 250
    .line 251
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 252
    .line 253
    shr-int/lit8 p2, v1, 0x6

    .line 254
    .line 255
    and-int/lit8 p2, p2, 0xe

    .line 256
    .line 257
    .line 258
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 259
    move-result-object p2

    .line 260
    .line 261
    .line 262
    invoke-interface {v0, p1, p2}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 266
    .line 267
    .line 268
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 269
    .line 270
    .line 271
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 272
    .line 273
    .line 274
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->d()V

    .line 275
    .line 276
    .line 277
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 278
    .line 279
    .line 280
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 281
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/SurfaceKt$Surface$13;->a(Landroidx/compose/runtime/Composer;I)V

    .line 12
    .line 13
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 14
    return-object p1
.end method
