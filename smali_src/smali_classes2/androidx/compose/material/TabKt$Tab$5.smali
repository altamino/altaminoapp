.class final Landroidx/compose/material/TabKt$Tab$5;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/TabKt;->c(ZLe8/a;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;JJLe8/q;Landroidx/compose/runtime/Composer;II)V
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
    value = "SMAP\nTab.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Tab.kt\nandroidx/compose/material/TabKt$Tab$5\n+ 2 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n+ 3 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n*L\n1#1,434:1\n78#2,2:435\n80#2:463\n84#2:468\n75#3:437\n76#3,11:439\n89#3:467\n76#4:438\n460#5,13:450\n473#5,3:464\n*S KotlinDebug\n*F\n+ 1 Tab.kt\nandroidx/compose/material/TabKt$Tab$5\n*L\n239#1:435,2\n239#1:463\n239#1:468\n239#1:437\n239#1:439,11\n239#1:467\n239#1:438\n239#1:450,13\n239#1:464,3\n*E\n"
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

.field final synthetic $ripple:Landroidx/compose/foundation/Indication;

.field final synthetic $selected:Z


# direct methods
.method constructor <init>(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLe8/a;Le8/q;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/foundation/Indication;",
            "Z",
            "Le8/a<",
            "Lw7/l0;",
            ">;",
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
    iput-object p1, p0, Landroidx/compose/material/TabKt$Tab$5;->$modifier:Landroidx/compose/ui/Modifier;

    iput-boolean p2, p0, Landroidx/compose/material/TabKt$Tab$5;->$selected:Z

    iput-object p3, p0, Landroidx/compose/material/TabKt$Tab$5;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p4, p0, Landroidx/compose/material/TabKt$Tab$5;->$ripple:Landroidx/compose/foundation/Indication;

    iput-boolean p5, p0, Landroidx/compose/material/TabKt$Tab$5;->$enabled:Z

    iput-object p6, p0, Landroidx/compose/material/TabKt$Tab$5;->$onClick:Le8/a;

    iput-object p7, p0, Landroidx/compose/material/TabKt$Tab$5;->$content:Le8/q;

    iput p8, p0, Landroidx/compose/material/TabKt$Tab$5;->$$dirty:I

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
    sget-object p2, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Landroidx/compose/ui/semantics/Role$Companion;->f()I

    .line 23
    move-result p2

    .line 24
    .line 25
    iget-object v1, p0, Landroidx/compose/material/TabKt$Tab$5;->$modifier:Landroidx/compose/ui/Modifier;

    .line 26
    .line 27
    iget-boolean v2, p0, Landroidx/compose/material/TabKt$Tab$5;->$selected:Z

    .line 28
    .line 29
    iget-object v3, p0, Landroidx/compose/material/TabKt$Tab$5;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 30
    .line 31
    iget-object v4, p0, Landroidx/compose/material/TabKt$Tab$5;->$ripple:Landroidx/compose/foundation/Indication;

    .line 32
    .line 33
    iget-boolean v5, p0, Landroidx/compose/material/TabKt$Tab$5;->$enabled:Z

    .line 34
    .line 35
    .line 36
    invoke-static {p2}, Landroidx/compose/ui/semantics/Role;->g(I)Landroidx/compose/ui/semantics/Role;

    .line 37
    move-result-object v6

    .line 38
    .line 39
    iget-object v7, p0, Landroidx/compose/material/TabKt$Tab$5;->$onClick:Le8/a;

    .line 40
    .line 41
    .line 42
    invoke-static/range {v1 .. v7}, Landroidx/compose/foundation/selection/SelectableKt;->a(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Le8/a;)Landroidx/compose/ui/Modifier;

    .line 43
    move-result-object p2

    .line 44
    const/4 v1, 0x1

    .line 45
    const/4 v2, 0x0

    .line 46
    const/4 v3, 0x0

    .line 47
    .line 48
    .line 49
    invoke-static {p2, v3, v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->n(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 50
    move-result-object p2

    .line 51
    .line 52
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->g()Landroidx/compose/ui/Alignment$Horizontal;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    sget-object v2, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Landroidx/compose/foundation/layout/Arrangement;->b()Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    .line 62
    move-result-object v2

    .line 63
    .line 64
    iget-object v3, p0, Landroidx/compose/material/TabKt$Tab$5;->$content:Le8/q;

    .line 65
    .line 66
    iget v4, p0, Landroidx/compose/material/TabKt$Tab$5;->$$dirty:I

    .line 67
    .line 68
    shr-int/lit8 v4, v4, 0xc

    .line 69
    .line 70
    and-int/lit16 v4, v4, 0x1c00

    .line 71
    .line 72
    or-int/lit16 v4, v4, 0x1b0

    .line 73
    .line 74
    .line 75
    const v5, -0x1cd0f17e

    .line 76
    .line 77
    .line 78
    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 79
    .line 80
    shr-int/lit8 v5, v4, 0x3

    .line 81
    .line 82
    and-int/lit8 v6, v5, 0xe

    .line 83
    .line 84
    and-int/lit8 v5, v5, 0x70

    .line 85
    or-int/2addr v5, v6

    .line 86
    .line 87
    .line 88
    invoke-static {v2, v1, p1, v5}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 89
    move-result-object v1

    .line 90
    .line 91
    shl-int/lit8 v2, v4, 0x3

    .line 92
    .line 93
    and-int/lit8 v2, v2, 0x70

    .line 94
    .line 95
    .line 96
    const v5, -0x4ee9b9da

    .line 97
    .line 98
    .line 99
    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 100
    .line 101
    .line 102
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 103
    move-result-object v5

    .line 104
    .line 105
    .line 106
    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 107
    move-result-object v5

    .line 108
    .line 109
    check-cast v5, Landroidx/compose/ui/unit/Density;

    .line 110
    .line 111
    .line 112
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 113
    move-result-object v6

    .line 114
    .line 115
    .line 116
    invoke-interface {p1, v6}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 117
    move-result-object v6

    .line 118
    .line 119
    check-cast v6, Landroidx/compose/ui/unit/LayoutDirection;

    .line 120
    .line 121
    .line 122
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 123
    move-result-object v7

    .line 124
    .line 125
    .line 126
    invoke-interface {p1, v7}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 127
    move-result-object v7

    .line 128
    .line 129
    check-cast v7, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 130
    .line 131
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 135
    move-result-object v9

    .line 136
    .line 137
    .line 138
    invoke-static {p2}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 139
    move-result-object p2

    .line 140
    .line 141
    shl-int/lit8 v2, v2, 0x9

    .line 142
    .line 143
    and-int/lit16 v2, v2, 0x1c00

    .line 144
    .line 145
    or-int/lit8 v2, v2, 0x6

    .line 146
    .line 147
    .line 148
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 149
    move-result-object v10

    .line 150
    .line 151
    instance-of v10, v10, Landroidx/compose/runtime/Applier;

    .line 152
    .line 153
    if-nez v10, :cond_2

    .line 154
    .line 155
    .line 156
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 157
    .line 158
    .line 159
    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->e()V

    .line 160
    .line 161
    .line 162
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->r()Z

    .line 163
    move-result v10

    .line 164
    .line 165
    if-eqz v10, :cond_3

    .line 166
    .line 167
    .line 168
    invoke-interface {p1, v9}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 169
    goto :goto_1

    .line 170
    .line 171
    .line 172
    :cond_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->c()V

    .line 173
    .line 174
    .line 175
    :goto_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->L()V

    .line 176
    .line 177
    .line 178
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 179
    move-result-object v9

    .line 180
    .line 181
    .line 182
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 183
    move-result-object v10

    .line 184
    .line 185
    .line 186
    invoke-static {v9, v1, v10}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 190
    move-result-object v1

    .line 191
    .line 192
    .line 193
    invoke-static {v9, v5, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 197
    move-result-object v1

    .line 198
    .line 199
    .line 200
    invoke-static {v9, v6, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 204
    move-result-object v1

    .line 205
    .line 206
    .line 207
    invoke-static {v9, v7, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 208
    .line 209
    .line 210
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->o()V

    .line 211
    .line 212
    .line 213
    invoke-static {p1}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 214
    move-result-object v1

    .line 215
    .line 216
    .line 217
    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 218
    move-result-object v1

    .line 219
    .line 220
    shr-int/lit8 v5, v2, 0x3

    .line 221
    .line 222
    and-int/lit8 v5, v5, 0x70

    .line 223
    .line 224
    .line 225
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 226
    move-result-object v5

    .line 227
    .line 228
    .line 229
    invoke-interface {p2, v1, p1, v5}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    const p2, 0x7ab4aae9

    .line 233
    .line 234
    .line 235
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 236
    .line 237
    shr-int/lit8 p2, v2, 0x9

    .line 238
    .line 239
    .line 240
    const v1, -0x455f09d5

    .line 241
    .line 242
    .line 243
    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 244
    .line 245
    and-int/lit8 p2, p2, 0xa

    .line 246
    .line 247
    if-ne p2, v0, :cond_5

    .line 248
    .line 249
    .line 250
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->b()Z

    .line 251
    move-result p2

    .line 252
    .line 253
    if-nez p2, :cond_4

    .line 254
    goto :goto_2

    .line 255
    .line 256
    .line 257
    :cond_4
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->g()V

    .line 258
    goto :goto_3

    .line 259
    .line 260
    :cond_5
    :goto_2
    sget-object p2, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    .line 261
    .line 262
    shr-int/lit8 v0, v4, 0x6

    .line 263
    .line 264
    and-int/lit8 v0, v0, 0x70

    .line 265
    .line 266
    or-int/lit8 v0, v0, 0x6

    .line 267
    .line 268
    .line 269
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 270
    move-result-object v0

    .line 271
    .line 272
    .line 273
    invoke-interface {v3, p2, p1, v0}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    :goto_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 277
    .line 278
    .line 279
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 280
    .line 281
    .line 282
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->d()V

    .line 283
    .line 284
    .line 285
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 286
    .line 287
    .line 288
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 289
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/TabKt$Tab$5;->a(Landroidx/compose/runtime/Composer;I)V

    .line 12
    .line 13
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 14
    return-object p1
.end method
