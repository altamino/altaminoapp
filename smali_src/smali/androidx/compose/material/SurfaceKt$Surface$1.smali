.class final Landroidx/compose/material/SurfaceKt$Surface$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SurfaceKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLe8/p;Landroidx/compose/runtime/Composer;II)V
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
    value = "SMAP\nSurface.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Surface.kt\nandroidx/compose/material/SurfaceKt$Surface$1\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 4 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n*L\n1#1,644:1\n76#2:645\n76#2:653\n67#3,6:646\n73#3:678\n77#3:683\n75#4:652\n76#4,11:654\n89#4:682\n460#5,13:665\n473#5,3:679\n*S KotlinDebug\n*F\n+ 1 Surface.kt\nandroidx/compose/material/SurfaceKt$Surface$1\n*L\n124#1:645\n118#1:653\n118#1:646,6\n118#1:678\n118#1:683\n118#1:652\n118#1:654,11\n118#1:682\n118#1:665,13\n118#1:679,3\n*E\n"
.end annotation


# instance fields
.field final synthetic $$dirty:I

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

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $shape:Landroidx/compose/ui/graphics/Shape;


# direct methods
.method constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JFILandroidx/compose/foundation/BorderStroke;FLe8/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/graphics/Shape;",
            "JFI",
            "Landroidx/compose/foundation/BorderStroke;",
            "F",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/SurfaceKt$Surface$1;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Landroidx/compose/material/SurfaceKt$Surface$1;->$shape:Landroidx/compose/ui/graphics/Shape;

    iput-wide p3, p0, Landroidx/compose/material/SurfaceKt$Surface$1;->$color:J

    iput p5, p0, Landroidx/compose/material/SurfaceKt$Surface$1;->$absoluteElevation:F

    iput p6, p0, Landroidx/compose/material/SurfaceKt$Surface$1;->$$dirty:I

    iput-object p7, p0, Landroidx/compose/material/SurfaceKt$Surface$1;->$border:Landroidx/compose/foundation/BorderStroke;

    iput p8, p0, Landroidx/compose/material/SurfaceKt$Surface$1;->$elevation:F

    iput-object p9, p0, Landroidx/compose/material/SurfaceKt$Surface$1;->$content:Le8/p;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Composer;I)V
    .locals 10
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
    iget-object v0, p0, Landroidx/compose/material/SurfaceKt$Surface$1;->$modifier:Landroidx/compose/ui/Modifier;

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/compose/material/SurfaceKt$Surface$1;->$shape:Landroidx/compose/ui/graphics/Shape;

    .line 22
    .line 23
    iget-wide v2, p0, Landroidx/compose/material/SurfaceKt$Surface$1;->$color:J

    .line 24
    .line 25
    .line 26
    invoke-static {}, Landroidx/compose/material/ElevationOverlayKt;->d()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 27
    move-result-object p2

    .line 28
    .line 29
    .line 30
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 31
    move-result-object p2

    .line 32
    move-object v4, p2

    .line 33
    .line 34
    check-cast v4, Landroidx/compose/material/ElevationOverlay;

    .line 35
    .line 36
    iget v5, p0, Landroidx/compose/material/SurfaceKt$Surface$1;->$absoluteElevation:F

    .line 37
    .line 38
    iget p2, p0, Landroidx/compose/material/SurfaceKt$Surface$1;->$$dirty:I

    .line 39
    .line 40
    shr-int/lit8 p2, p2, 0x6

    .line 41
    .line 42
    and-int/lit8 v7, p2, 0xe

    .line 43
    move-object v6, p1

    .line 44
    .line 45
    .line 46
    invoke-static/range {v2 .. v7}, Landroidx/compose/material/SurfaceKt;->g(JLandroidx/compose/material/ElevationOverlay;FLandroidx/compose/runtime/Composer;I)J

    .line 47
    move-result-wide v2

    .line 48
    .line 49
    iget-object v4, p0, Landroidx/compose/material/SurfaceKt$Surface$1;->$border:Landroidx/compose/foundation/BorderStroke;

    .line 50
    .line 51
    iget v5, p0, Landroidx/compose/material/SurfaceKt$Surface$1;->$elevation:F

    .line 52
    .line 53
    .line 54
    invoke-static/range {v0 .. v5}, Landroidx/compose/material/SurfaceKt;->f(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JLandroidx/compose/foundation/BorderStroke;F)Landroidx/compose/ui/Modifier;

    .line 55
    move-result-object p2

    .line 56
    .line 57
    sget-object v0, Landroidx/compose/material/SurfaceKt$Surface$1$1;->INSTANCE:Landroidx/compose/material/SurfaceKt$Surface$1$1;

    .line 58
    const/4 v1, 0x0

    .line 59
    .line 60
    .line 61
    invoke-static {p2, v1, v0}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLe8/l;)Landroidx/compose/ui/Modifier;

    .line 62
    move-result-object p2

    .line 63
    .line 64
    sget-object v0, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 65
    .line 66
    new-instance v2, Landroidx/compose/material/SurfaceKt$Surface$1$2;

    .line 67
    const/4 v3, 0x0

    .line 68
    .line 69
    .line 70
    invoke-direct {v2, v3}, Landroidx/compose/material/SurfaceKt$Surface$1$2;-><init>(Lkotlin/coroutines/d;)V

    .line 71
    .line 72
    .line 73
    invoke-static {p2, v0, v2}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Le8/p;)Landroidx/compose/ui/Modifier;

    .line 74
    move-result-object p2

    .line 75
    .line 76
    iget-object v0, p0, Landroidx/compose/material/SurfaceKt$Surface$1;->$content:Le8/p;

    .line 77
    .line 78
    iget v2, p0, Landroidx/compose/material/SurfaceKt$Surface$1;->$$dirty:I

    .line 79
    .line 80
    .line 81
    const v3, 0x2bb5b5d7

    .line 82
    .line 83
    .line 84
    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 85
    .line 86
    sget-object v3, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Landroidx/compose/ui/Alignment$Companion;->o()Landroidx/compose/ui/Alignment;

    .line 90
    move-result-object v3

    .line 91
    .line 92
    const/16 v4, 0x30

    .line 93
    const/4 v5, 0x1

    .line 94
    .line 95
    .line 96
    invoke-static {v3, v5, p1, v4}, Landroidx/compose/foundation/layout/BoxKt;->h(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 97
    move-result-object v3

    .line 98
    .line 99
    .line 100
    const v4, -0x4ee9b9da

    .line 101
    .line 102
    .line 103
    invoke-interface {p1, v4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 104
    .line 105
    .line 106
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 107
    move-result-object v4

    .line 108
    .line 109
    .line 110
    invoke-interface {p1, v4}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 111
    move-result-object v4

    .line 112
    .line 113
    check-cast v4, Landroidx/compose/ui/unit/Density;

    .line 114
    .line 115
    .line 116
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 117
    move-result-object v5

    .line 118
    .line 119
    .line 120
    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 121
    move-result-object v5

    .line 122
    .line 123
    check-cast v5, Landroidx/compose/ui/unit/LayoutDirection;

    .line 124
    .line 125
    .line 126
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 127
    move-result-object v6

    .line 128
    .line 129
    .line 130
    invoke-interface {p1, v6}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 131
    move-result-object v6

    .line 132
    .line 133
    check-cast v6, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 134
    .line 135
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 139
    move-result-object v8

    .line 140
    .line 141
    .line 142
    invoke-static {p2}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 143
    move-result-object p2

    .line 144
    .line 145
    .line 146
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 147
    move-result-object v9

    .line 148
    .line 149
    instance-of v9, v9, Landroidx/compose/runtime/Applier;

    .line 150
    .line 151
    if-nez v9, :cond_2

    .line 152
    .line 153
    .line 154
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 155
    .line 156
    .line 157
    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->e()V

    .line 158
    .line 159
    .line 160
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->r()Z

    .line 161
    move-result v9

    .line 162
    .line 163
    if-eqz v9, :cond_3

    .line 164
    .line 165
    .line 166
    invoke-interface {p1, v8}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 167
    goto :goto_1

    .line 168
    .line 169
    .line 170
    :cond_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->c()V

    .line 171
    .line 172
    .line 173
    :goto_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->L()V

    .line 174
    .line 175
    .line 176
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 177
    move-result-object v8

    .line 178
    .line 179
    .line 180
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 181
    move-result-object v9

    .line 182
    .line 183
    .line 184
    invoke-static {v8, v3, v9}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 188
    move-result-object v3

    .line 189
    .line 190
    .line 191
    invoke-static {v8, v4, v3}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 195
    move-result-object v3

    .line 196
    .line 197
    .line 198
    invoke-static {v8, v5, v3}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 202
    move-result-object v3

    .line 203
    .line 204
    .line 205
    invoke-static {v8, v6, v3}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 206
    .line 207
    .line 208
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->o()V

    .line 209
    .line 210
    .line 211
    invoke-static {p1}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 212
    move-result-object v3

    .line 213
    .line 214
    .line 215
    invoke-static {v3}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 216
    move-result-object v3

    .line 217
    .line 218
    .line 219
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 220
    move-result-object v1

    .line 221
    .line 222
    .line 223
    invoke-interface {p2, v3, p1, v1}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    const p2, 0x7ab4aae9

    .line 227
    .line 228
    .line 229
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 230
    .line 231
    .line 232
    const p2, -0x7f65a980

    .line 233
    .line 234
    .line 235
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 236
    .line 237
    sget-object p2, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 238
    .line 239
    .line 240
    const p2, 0x5bc49640

    .line 241
    .line 242
    .line 243
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 244
    .line 245
    shr-int/lit8 p2, v2, 0x12

    .line 246
    .line 247
    and-int/lit8 p2, p2, 0xe

    .line 248
    .line 249
    .line 250
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 251
    move-result-object p2

    .line 252
    .line 253
    .line 254
    invoke-interface {v0, p1, p2}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 258
    .line 259
    .line 260
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 261
    .line 262
    .line 263
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 264
    .line 265
    .line 266
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->d()V

    .line 267
    .line 268
    .line 269
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 270
    .line 271
    .line 272
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 273
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/SurfaceKt$Surface$1;->a(Landroidx/compose/runtime/Composer;I)V

    .line 12
    .line 13
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 14
    return-object p1
.end method
