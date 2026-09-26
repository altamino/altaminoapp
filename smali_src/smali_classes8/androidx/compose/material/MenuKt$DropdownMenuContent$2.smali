.class final Landroidx/compose/material/MenuKt$DropdownMenuContent$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/MenuKt;->a(Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/Modifier;Le8/q;Landroidx/compose/runtime/Composer;II)V
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
    value = "SMAP\nMenu.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Menu.kt\nandroidx/compose/material/MenuKt$DropdownMenuContent$2\n+ 2 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n+ 3 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n*L\n1#1,298:1\n74#2,6:299\n80#2:331\n84#2:336\n75#3:305\n76#3,11:307\n89#3:335\n76#4:306\n460#5,13:318\n473#5,3:332\n*S KotlinDebug\n*F\n+ 1 Menu.kt\nandroidx/compose/material/MenuKt$DropdownMenuContent$2\n*L\n125#1:299,6\n125#1:331\n125#1:336\n125#1:305\n125#1:307,11\n125#1:335\n125#1:306\n125#1:318,13\n125#1:332,3\n*E\n"
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $content:Le8/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/q<",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;


# direct methods
.method constructor <init>(Landroidx/compose/ui/Modifier;Le8/q;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Le8/q<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/MenuKt$DropdownMenuContent$2;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Landroidx/compose/material/MenuKt$DropdownMenuContent$2;->$content:Le8/q;

    iput p3, p0, Landroidx/compose/material/MenuKt$DropdownMenuContent$2;->$$dirty:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Composer;I)V
    .locals 12
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
    iget-object p2, p0, Landroidx/compose/material/MenuKt$DropdownMenuContent$2;->$modifier:Landroidx/compose/ui/Modifier;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Landroidx/compose/material/MenuKt;->i()F

    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x0

    .line 26
    const/4 v4, 0x1

    .line 27
    .line 28
    .line 29
    invoke-static {p2, v3, v1, v4, v2}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 30
    move-result-object p2

    .line 31
    .line 32
    sget-object v1, Landroidx/compose/foundation/layout/IntrinsicSize;->Max:Landroidx/compose/foundation/layout/IntrinsicSize;

    .line 33
    .line 34
    .line 35
    invoke-static {p2, v1}, Landroidx/compose/foundation/layout/IntrinsicKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/IntrinsicSize;)Landroidx/compose/ui/Modifier;

    .line 36
    move-result-object v5

    .line 37
    const/4 p2, 0x0

    .line 38
    .line 39
    .line 40
    invoke-static {p2, p1, p2, v4}, Landroidx/compose/foundation/ScrollKt;->c(ILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/ScrollState;

    .line 41
    move-result-object v6

    .line 42
    const/4 v7, 0x0

    .line 43
    const/4 v8, 0x0

    .line 44
    const/4 v9, 0x0

    .line 45
    .line 46
    const/16 v10, 0xe

    .line 47
    const/4 v11, 0x0

    .line 48
    .line 49
    .line 50
    invoke-static/range {v5 .. v11}, Landroidx/compose/foundation/ScrollKt;->f(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 51
    move-result-object p2

    .line 52
    .line 53
    iget-object v1, p0, Landroidx/compose/material/MenuKt$DropdownMenuContent$2;->$content:Le8/q;

    .line 54
    .line 55
    iget v2, p0, Landroidx/compose/material/MenuKt$DropdownMenuContent$2;->$$dirty:I

    .line 56
    .line 57
    and-int/lit16 v2, v2, 0x1c00

    .line 58
    .line 59
    .line 60
    const v3, -0x1cd0f17e

    .line 61
    .line 62
    .line 63
    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 64
    .line 65
    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Landroidx/compose/foundation/layout/Arrangement;->f()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 69
    move-result-object v3

    .line 70
    .line 71
    sget-object v4, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4}, Landroidx/compose/ui/Alignment$Companion;->k()Landroidx/compose/ui/Alignment$Horizontal;

    .line 75
    move-result-object v4

    .line 76
    .line 77
    shr-int/lit8 v5, v2, 0x3

    .line 78
    .line 79
    and-int/lit8 v6, v5, 0xe

    .line 80
    .line 81
    and-int/lit8 v5, v5, 0x70

    .line 82
    or-int/2addr v5, v6

    .line 83
    .line 84
    .line 85
    invoke-static {v3, v4, p1, v5}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 86
    move-result-object v3

    .line 87
    .line 88
    shl-int/lit8 v4, v2, 0x3

    .line 89
    .line 90
    and-int/lit8 v4, v4, 0x70

    .line 91
    .line 92
    .line 93
    const v5, -0x4ee9b9da

    .line 94
    .line 95
    .line 96
    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 97
    .line 98
    .line 99
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 100
    move-result-object v5

    .line 101
    .line 102
    .line 103
    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 104
    move-result-object v5

    .line 105
    .line 106
    check-cast v5, Landroidx/compose/ui/unit/Density;

    .line 107
    .line 108
    .line 109
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 110
    move-result-object v6

    .line 111
    .line 112
    .line 113
    invoke-interface {p1, v6}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 114
    move-result-object v6

    .line 115
    .line 116
    check-cast v6, Landroidx/compose/ui/unit/LayoutDirection;

    .line 117
    .line 118
    .line 119
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 120
    move-result-object v7

    .line 121
    .line 122
    .line 123
    invoke-interface {p1, v7}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 124
    move-result-object v7

    .line 125
    .line 126
    check-cast v7, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 127
    .line 128
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 132
    move-result-object v9

    .line 133
    .line 134
    .line 135
    invoke-static {p2}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 136
    move-result-object p2

    .line 137
    .line 138
    shl-int/lit8 v4, v4, 0x9

    .line 139
    .line 140
    and-int/lit16 v4, v4, 0x1c00

    .line 141
    .line 142
    or-int/lit8 v4, v4, 0x6

    .line 143
    .line 144
    .line 145
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 146
    move-result-object v10

    .line 147
    .line 148
    instance-of v10, v10, Landroidx/compose/runtime/Applier;

    .line 149
    .line 150
    if-nez v10, :cond_2

    .line 151
    .line 152
    .line 153
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 154
    .line 155
    .line 156
    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->e()V

    .line 157
    .line 158
    .line 159
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->r()Z

    .line 160
    move-result v10

    .line 161
    .line 162
    if-eqz v10, :cond_3

    .line 163
    .line 164
    .line 165
    invoke-interface {p1, v9}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 166
    goto :goto_1

    .line 167
    .line 168
    .line 169
    :cond_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->c()V

    .line 170
    .line 171
    .line 172
    :goto_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->L()V

    .line 173
    .line 174
    .line 175
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 176
    move-result-object v9

    .line 177
    .line 178
    .line 179
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 180
    move-result-object v10

    .line 181
    .line 182
    .line 183
    invoke-static {v9, v3, v10}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 187
    move-result-object v3

    .line 188
    .line 189
    .line 190
    invoke-static {v9, v5, v3}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 194
    move-result-object v3

    .line 195
    .line 196
    .line 197
    invoke-static {v9, v6, v3}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 201
    move-result-object v3

    .line 202
    .line 203
    .line 204
    invoke-static {v9, v7, v3}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 205
    .line 206
    .line 207
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->o()V

    .line 208
    .line 209
    .line 210
    invoke-static {p1}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 211
    move-result-object v3

    .line 212
    .line 213
    .line 214
    invoke-static {v3}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 215
    move-result-object v3

    .line 216
    .line 217
    shr-int/lit8 v5, v4, 0x3

    .line 218
    .line 219
    and-int/lit8 v5, v5, 0x70

    .line 220
    .line 221
    .line 222
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 223
    move-result-object v5

    .line 224
    .line 225
    .line 226
    invoke-interface {p2, v3, p1, v5}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    const p2, 0x7ab4aae9

    .line 230
    .line 231
    .line 232
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 233
    .line 234
    shr-int/lit8 p2, v4, 0x9

    .line 235
    .line 236
    .line 237
    const v3, -0x455f09d5

    .line 238
    .line 239
    .line 240
    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 241
    .line 242
    and-int/lit8 p2, p2, 0xa

    .line 243
    .line 244
    if-ne p2, v0, :cond_5

    .line 245
    .line 246
    .line 247
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->b()Z

    .line 248
    move-result p2

    .line 249
    .line 250
    if-nez p2, :cond_4

    .line 251
    goto :goto_2

    .line 252
    .line 253
    .line 254
    :cond_4
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->g()V

    .line 255
    goto :goto_3

    .line 256
    .line 257
    :cond_5
    :goto_2
    sget-object p2, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    .line 258
    .line 259
    shr-int/lit8 v0, v2, 0x6

    .line 260
    .line 261
    and-int/lit8 v0, v0, 0x70

    .line 262
    .line 263
    or-int/lit8 v0, v0, 0x6

    .line 264
    .line 265
    .line 266
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 267
    move-result-object v0

    .line 268
    .line 269
    .line 270
    invoke-interface {v1, p2, p1, v0}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    :goto_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 274
    .line 275
    .line 276
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 277
    .line 278
    .line 279
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->d()V

    .line 280
    .line 281
    .line 282
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 283
    .line 284
    .line 285
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 286
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/MenuKt$DropdownMenuContent$2;->a(Landroidx/compose/runtime/Composer;I)V

    .line 12
    .line 13
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 14
    return-object p1
.end method
