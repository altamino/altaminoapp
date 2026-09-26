.class final Landroidx/compose/material/NavigationRailKt$NavigationRail$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/NavigationRailKt;->a(Landroidx/compose/ui/Modifier;JJFLe8/q;Le8/q;Landroidx/compose/runtime/Composer;II)V
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
    value = "SMAP\nNavigationRail.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavigationRail.kt\nandroidx/compose/material/NavigationRailKt$NavigationRail$1\n+ 2 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n+ 3 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n*L\n1#1,405:1\n74#2,6:406\n80#2:438\n84#2:443\n75#3:412\n76#3,11:414\n89#3:442\n76#4:413\n460#5,13:425\n473#5,3:439\n*S KotlinDebug\n*F\n+ 1 NavigationRail.kt\nandroidx/compose/material/NavigationRailKt$NavigationRail$1\n*L\n107#1:406,6\n107#1:438\n107#1:443\n107#1:412\n107#1:414,11\n107#1:442\n107#1:413\n107#1:425,13\n107#1:439,3\n*E\n"
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

.field final synthetic $header:Le8/q;
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


# direct methods
.method constructor <init>(Le8/q;ILe8/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/q<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;I",
            "Le8/q<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/NavigationRailKt$NavigationRail$1;->$header:Le8/q;

    iput p2, p0, Landroidx/compose/material/NavigationRailKt$NavigationRail$1;->$$dirty:I

    iput-object p3, p0, Landroidx/compose/material/NavigationRailKt$NavigationRail$1;->$content:Le8/q;

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
    goto/16 :goto_2

    .line 18
    .line 19
    :cond_1
    :goto_0
    sget-object p2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 20
    const/4 v0, 0x0

    .line 21
    const/4 v1, 0x1

    .line 22
    const/4 v2, 0x0

    .line 23
    .line 24
    .line 25
    invoke-static {p2, v0, v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->j(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    .line 29
    invoke-static {}, Landroidx/compose/material/NavigationRailKt;->j()F

    .line 30
    move-result v4

    .line 31
    .line 32
    .line 33
    invoke-static {v3, v0, v4, v1, v2}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 34
    move-result-object v0

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Landroidx/compose/foundation/selection/SelectableGroupKt;->a(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->g()Landroidx/compose/ui/Alignment$Horizontal;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    iget-object v2, p0, Landroidx/compose/material/NavigationRailKt$NavigationRail$1;->$header:Le8/q;

    .line 47
    .line 48
    iget v3, p0, Landroidx/compose/material/NavigationRailKt$NavigationRail$1;->$$dirty:I

    .line 49
    .line 50
    iget-object v4, p0, Landroidx/compose/material/NavigationRailKt$NavigationRail$1;->$content:Le8/q;

    .line 51
    .line 52
    .line 53
    const v5, -0x1cd0f17e

    .line 54
    .line 55
    .line 56
    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 57
    .line 58
    sget-object v5, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5}, Landroidx/compose/foundation/layout/Arrangement;->f()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 62
    move-result-object v5

    .line 63
    .line 64
    const/16 v6, 0x30

    .line 65
    .line 66
    .line 67
    invoke-static {v5, v1, p1, v6}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    .line 71
    const v5, -0x4ee9b9da

    .line 72
    .line 73
    .line 74
    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 75
    .line 76
    .line 77
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 78
    move-result-object v5

    .line 79
    .line 80
    .line 81
    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 82
    move-result-object v5

    .line 83
    .line 84
    check-cast v5, Landroidx/compose/ui/unit/Density;

    .line 85
    .line 86
    .line 87
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 88
    move-result-object v6

    .line 89
    .line 90
    .line 91
    invoke-interface {p1, v6}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 92
    move-result-object v6

    .line 93
    .line 94
    check-cast v6, Landroidx/compose/ui/unit/LayoutDirection;

    .line 95
    .line 96
    .line 97
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 98
    move-result-object v7

    .line 99
    .line 100
    .line 101
    invoke-interface {p1, v7}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 102
    move-result-object v7

    .line 103
    .line 104
    check-cast v7, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 105
    .line 106
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 110
    move-result-object v9

    .line 111
    .line 112
    .line 113
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 114
    move-result-object v0

    .line 115
    .line 116
    .line 117
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 118
    move-result-object v10

    .line 119
    .line 120
    instance-of v10, v10, Landroidx/compose/runtime/Applier;

    .line 121
    .line 122
    if-nez v10, :cond_2

    .line 123
    .line 124
    .line 125
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 126
    .line 127
    .line 128
    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->e()V

    .line 129
    .line 130
    .line 131
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->r()Z

    .line 132
    move-result v10

    .line 133
    .line 134
    if-eqz v10, :cond_3

    .line 135
    .line 136
    .line 137
    invoke-interface {p1, v9}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 138
    goto :goto_1

    .line 139
    .line 140
    .line 141
    :cond_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->c()V

    .line 142
    .line 143
    .line 144
    :goto_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->L()V

    .line 145
    .line 146
    .line 147
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 148
    move-result-object v9

    .line 149
    .line 150
    .line 151
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 152
    move-result-object v10

    .line 153
    .line 154
    .line 155
    invoke-static {v9, v1, v10}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 159
    move-result-object v1

    .line 160
    .line 161
    .line 162
    invoke-static {v9, v5, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 166
    move-result-object v1

    .line 167
    .line 168
    .line 169
    invoke-static {v9, v6, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 173
    move-result-object v1

    .line 174
    .line 175
    .line 176
    invoke-static {v9, v7, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 177
    .line 178
    .line 179
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->o()V

    .line 180
    .line 181
    .line 182
    invoke-static {p1}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 183
    move-result-object v1

    .line 184
    .line 185
    .line 186
    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 187
    move-result-object v1

    .line 188
    const/4 v5, 0x0

    .line 189
    .line 190
    .line 191
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    move-result-object v5

    .line 193
    .line 194
    .line 195
    invoke-interface {v0, v1, p1, v5}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    const v0, 0x7ab4aae9

    .line 199
    .line 200
    .line 201
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 202
    .line 203
    .line 204
    const v0, -0x455f09d5

    .line 205
    .line 206
    .line 207
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 208
    .line 209
    sget-object v0, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    .line 210
    .line 211
    .line 212
    const v1, -0x1da245c3

    .line 213
    .line 214
    .line 215
    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 216
    .line 217
    .line 218
    const v1, 0x3e7d686

    .line 219
    .line 220
    .line 221
    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 222
    const/4 v1, 0x6

    .line 223
    .line 224
    if-eqz v2, :cond_4

    .line 225
    .line 226
    shr-int/lit8 v5, v3, 0x9

    .line 227
    .line 228
    and-int/lit8 v5, v5, 0x70

    .line 229
    or-int/2addr v5, v1

    .line 230
    .line 231
    .line 232
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 233
    move-result-object v5

    .line 234
    .line 235
    .line 236
    invoke-interface {v2, v0, p1, v5}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    invoke-static {}, Landroidx/compose/material/NavigationRailKt;->i()F

    .line 240
    move-result v2

    .line 241
    .line 242
    .line 243
    invoke-static {p2, v2}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 244
    move-result-object p2

    .line 245
    .line 246
    .line 247
    invoke-static {p2, p1, v1}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 248
    .line 249
    .line 250
    :cond_4
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 251
    .line 252
    shr-int/lit8 p2, v3, 0xc

    .line 253
    .line 254
    and-int/lit8 p2, p2, 0x70

    .line 255
    or-int/2addr p2, v1

    .line 256
    .line 257
    .line 258
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 259
    move-result-object p2

    .line 260
    .line 261
    .line 262
    invoke-interface {v4, v0, p1, p2}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/NavigationRailKt$NavigationRail$1;->a(Landroidx/compose/runtime/Composer;I)V

    .line 12
    .line 13
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 14
    return-object p1
.end method
