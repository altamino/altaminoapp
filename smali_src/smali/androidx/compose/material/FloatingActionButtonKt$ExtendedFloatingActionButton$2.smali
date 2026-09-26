.class final Landroidx/compose/material/FloatingActionButtonKt$ExtendedFloatingActionButton$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/FloatingActionButtonKt;->a(Le8/p;Le8/a;Landroidx/compose/ui/Modifier;Le8/p;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material/FloatingActionButtonElevation;Landroidx/compose/runtime/Composer;II)V
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
    value = "SMAP\nFloatingActionButton.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FloatingActionButton.kt\nandroidx/compose/material/FloatingActionButtonKt$ExtendedFloatingActionButton$2\n+ 2 Row.kt\nandroidx/compose/foundation/layout/RowKt\n+ 3 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n*L\n1#1,333:1\n75#2,6:334\n81#2:366\n85#2:371\n75#3:340\n76#3,11:342\n89#3:370\n76#4:341\n460#5,13:353\n473#5,3:367\n*S KotlinDebug\n*F\n+ 1 FloatingActionButton.kt\nandroidx/compose/material/FloatingActionButtonKt$ExtendedFloatingActionButton$2\n*L\n168#1:334,6\n168#1:366\n168#1:371\n168#1:340\n168#1:342,11\n168#1:370\n168#1:341\n168#1:353,13\n168#1:367,3\n*E\n"
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $icon:Le8/p;
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

.field final synthetic $text:Le8/p;
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


# direct methods
.method constructor <init>(Le8/p;ILe8/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;I",
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
    iput-object p1, p0, Landroidx/compose/material/FloatingActionButtonKt$ExtendedFloatingActionButton$2;->$icon:Le8/p;

    iput p2, p0, Landroidx/compose/material/FloatingActionButtonKt$ExtendedFloatingActionButton$2;->$$dirty:I

    iput-object p3, p0, Landroidx/compose/material/FloatingActionButtonKt$ExtendedFloatingActionButton$2;->$text:Le8/p;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Composer;I)V
    .locals 11
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
    goto/16 :goto_4

    .line 18
    .line 19
    :cond_1
    :goto_0
    iget-object p2, p0, Landroidx/compose/material/FloatingActionButtonKt$ExtendedFloatingActionButton$2;->$icon:Le8/p;

    .line 20
    .line 21
    if-nez p2, :cond_2

    .line 22
    .line 23
    .line 24
    invoke-static {}, Landroidx/compose/material/FloatingActionButtonKt;->d()F

    .line 25
    move-result p2

    .line 26
    :goto_1
    move v1, p2

    .line 27
    goto :goto_2

    .line 28
    .line 29
    .line 30
    :cond_2
    invoke-static {}, Landroidx/compose/material/FloatingActionButtonKt;->c()F

    .line 31
    move-result p2

    .line 32
    goto :goto_1

    .line 33
    .line 34
    :goto_2
    sget-object p2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 35
    const/4 v2, 0x0

    .line 36
    .line 37
    .line 38
    invoke-static {}, Landroidx/compose/material/FloatingActionButtonKt;->d()F

    .line 39
    move-result v3

    .line 40
    const/4 v4, 0x0

    .line 41
    .line 42
    const/16 v5, 0xa

    .line 43
    const/4 v6, 0x0

    .line 44
    move-object v0, p2

    .line 45
    .line 46
    .line 47
    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->i()Landroidx/compose/ui/Alignment$Vertical;

    .line 54
    move-result-object v1

    .line 55
    .line 56
    iget-object v2, p0, Landroidx/compose/material/FloatingActionButtonKt$ExtendedFloatingActionButton$2;->$icon:Le8/p;

    .line 57
    .line 58
    iget v3, p0, Landroidx/compose/material/FloatingActionButtonKt$ExtendedFloatingActionButton$2;->$$dirty:I

    .line 59
    .line 60
    iget-object v4, p0, Landroidx/compose/material/FloatingActionButtonKt$ExtendedFloatingActionButton$2;->$text:Le8/p;

    .line 61
    .line 62
    .line 63
    const v5, 0x2952b718

    .line 64
    .line 65
    .line 66
    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 67
    .line 68
    sget-object v5, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5}, Landroidx/compose/foundation/layout/Arrangement;->e()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 72
    move-result-object v5

    .line 73
    .line 74
    const/16 v6, 0x30

    .line 75
    .line 76
    .line 77
    invoke-static {v5, v1, p1, v6}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 78
    move-result-object v1

    .line 79
    .line 80
    .line 81
    const v5, -0x4ee9b9da

    .line 82
    .line 83
    .line 84
    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 85
    .line 86
    .line 87
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 88
    move-result-object v5

    .line 89
    .line 90
    .line 91
    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 92
    move-result-object v5

    .line 93
    .line 94
    check-cast v5, Landroidx/compose/ui/unit/Density;

    .line 95
    .line 96
    .line 97
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 98
    move-result-object v6

    .line 99
    .line 100
    .line 101
    invoke-interface {p1, v6}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 102
    move-result-object v6

    .line 103
    .line 104
    check-cast v6, Landroidx/compose/ui/unit/LayoutDirection;

    .line 105
    .line 106
    .line 107
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 108
    move-result-object v7

    .line 109
    .line 110
    .line 111
    invoke-interface {p1, v7}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 112
    move-result-object v7

    .line 113
    .line 114
    check-cast v7, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 115
    .line 116
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 120
    move-result-object v9

    .line 121
    .line 122
    .line 123
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 124
    move-result-object v0

    .line 125
    .line 126
    .line 127
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 128
    move-result-object v10

    .line 129
    .line 130
    instance-of v10, v10, Landroidx/compose/runtime/Applier;

    .line 131
    .line 132
    if-nez v10, :cond_3

    .line 133
    .line 134
    .line 135
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 136
    .line 137
    .line 138
    :cond_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->e()V

    .line 139
    .line 140
    .line 141
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->r()Z

    .line 142
    move-result v10

    .line 143
    .line 144
    if-eqz v10, :cond_4

    .line 145
    .line 146
    .line 147
    invoke-interface {p1, v9}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 148
    goto :goto_3

    .line 149
    .line 150
    .line 151
    :cond_4
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->c()V

    .line 152
    .line 153
    .line 154
    :goto_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->L()V

    .line 155
    .line 156
    .line 157
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 158
    move-result-object v9

    .line 159
    .line 160
    .line 161
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 162
    move-result-object v10

    .line 163
    .line 164
    .line 165
    invoke-static {v9, v1, v10}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 169
    move-result-object v1

    .line 170
    .line 171
    .line 172
    invoke-static {v9, v5, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 176
    move-result-object v1

    .line 177
    .line 178
    .line 179
    invoke-static {v9, v6, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 183
    move-result-object v1

    .line 184
    .line 185
    .line 186
    invoke-static {v9, v7, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 187
    .line 188
    .line 189
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->o()V

    .line 190
    .line 191
    .line 192
    invoke-static {p1}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 193
    move-result-object v1

    .line 194
    .line 195
    .line 196
    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 197
    move-result-object v1

    .line 198
    const/4 v5, 0x0

    .line 199
    .line 200
    .line 201
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    move-result-object v5

    .line 203
    .line 204
    .line 205
    invoke-interface {v0, v1, p1, v5}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    const v0, 0x7ab4aae9

    .line 209
    .line 210
    .line 211
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 212
    .line 213
    .line 214
    const v0, -0x286e2e7f

    .line 215
    .line 216
    .line 217
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 218
    .line 219
    sget-object v0, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    .line 220
    .line 221
    .line 222
    const v0, -0x172384a9

    .line 223
    .line 224
    .line 225
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 226
    .line 227
    .line 228
    const v0, -0x558bc6d2

    .line 229
    .line 230
    .line 231
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 232
    .line 233
    if-eqz v2, :cond_5

    .line 234
    .line 235
    shr-int/lit8 v0, v3, 0x9

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
    invoke-interface {v2, p1, v0}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    invoke-static {}, Landroidx/compose/material/FloatingActionButtonKt;->c()F

    .line 248
    move-result v0

    .line 249
    .line 250
    .line 251
    invoke-static {p2, v0}, Landroidx/compose/foundation/layout/SizeKt;->D(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 252
    move-result-object p2

    .line 253
    const/4 v0, 0x6

    .line 254
    .line 255
    .line 256
    invoke-static {p2, p1, v0}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 257
    .line 258
    .line 259
    :cond_5
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 260
    .line 261
    and-int/lit8 p2, v3, 0xe

    .line 262
    .line 263
    .line 264
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 265
    move-result-object p2

    .line 266
    .line 267
    .line 268
    invoke-interface {v4, p1, p2}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 272
    .line 273
    .line 274
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 275
    .line 276
    .line 277
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 278
    .line 279
    .line 280
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->d()V

    .line 281
    .line 282
    .line 283
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 284
    .line 285
    .line 286
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 287
    :goto_4
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/FloatingActionButtonKt$ExtendedFloatingActionButton$2;->a(Landroidx/compose/runtime/Composer;I)V

    .line 12
    .line 13
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 14
    return-object p1
.end method
