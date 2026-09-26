.class final Landroidx/compose/material/AppBarKt$AppBar$1$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/AppBarKt$AppBar$1;->a(Landroidx/compose/runtime/Composer;I)V
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
    value = "SMAP\nAppBar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppBar.kt\nandroidx/compose/material/AppBarKt$AppBar$1$1\n+ 2 Row.kt\nandroidx/compose/foundation/layout/RowKt\n+ 3 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n*L\n1#1,547:1\n79#2,2:548\n81#2:576\n85#2:581\n75#3:550\n76#3,11:552\n89#3:580\n76#4:551\n460#5,13:563\n473#5,3:577\n*S KotlinDebug\n*F\n+ 1 AppBar.kt\nandroidx/compose/material/AppBarKt$AppBar$1$1\n*L\n522#1:548,2\n522#1:576\n522#1:581\n522#1:550\n522#1:552,11\n522#1:580\n522#1:551\n522#1:563,13\n522#1:577,3\n*E\n"
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $content:Le8/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/q<",
            "Landroidx/compose/foundation/layout/RowScope;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $contentPadding:Landroidx/compose/foundation/layout/PaddingValues;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/layout/PaddingValues;Le8/q;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Le8/q<",
            "-",
            "Landroidx/compose/foundation/layout/RowScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/AppBarKt$AppBar$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    iput-object p2, p0, Landroidx/compose/material/AppBarKt$AppBar$1$1;->$content:Le8/q;

    iput p3, p0, Landroidx/compose/material/AppBarKt$AppBar$1$1;->$$dirty:I

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
    sget-object p2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 20
    const/4 v1, 0x1

    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    .line 24
    .line 25
    invoke-static {p2, v3, v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->n(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 26
    move-result-object p2

    .line 27
    .line 28
    iget-object v1, p0, Landroidx/compose/material/AppBarKt$AppBar$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 29
    .line 30
    .line 31
    invoke-static {p2, v1}, Landroidx/compose/foundation/layout/PaddingKt;->h(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 32
    move-result-object p2

    .line 33
    .line 34
    .line 35
    invoke-static {}, Landroidx/compose/material/AppBarKt;->f()F

    .line 36
    move-result v1

    .line 37
    .line 38
    .line 39
    invoke-static {p2, v1}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 40
    move-result-object p2

    .line 41
    .line 42
    sget-object v1, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Landroidx/compose/foundation/layout/Arrangement;->e()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->i()Landroidx/compose/ui/Alignment$Vertical;

    .line 52
    move-result-object v2

    .line 53
    .line 54
    iget-object v3, p0, Landroidx/compose/material/AppBarKt$AppBar$1$1;->$content:Le8/q;

    .line 55
    .line 56
    iget v4, p0, Landroidx/compose/material/AppBarKt$AppBar$1$1;->$$dirty:I

    .line 57
    .line 58
    shr-int/lit8 v4, v4, 0x9

    .line 59
    .line 60
    and-int/lit16 v4, v4, 0x1c00

    .line 61
    .line 62
    or-int/lit16 v4, v4, 0x1b0

    .line 63
    .line 64
    .line 65
    const v5, 0x2952b718

    .line 66
    .line 67
    .line 68
    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 69
    .line 70
    shr-int/lit8 v5, v4, 0x3

    .line 71
    .line 72
    and-int/lit8 v6, v5, 0xe

    .line 73
    .line 74
    and-int/lit8 v5, v5, 0x70

    .line 75
    or-int/2addr v5, v6

    .line 76
    .line 77
    .line 78
    invoke-static {v1, v2, p1, v5}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 79
    move-result-object v1

    .line 80
    .line 81
    shl-int/lit8 v2, v4, 0x3

    .line 82
    .line 83
    and-int/lit8 v2, v2, 0x70

    .line 84
    .line 85
    .line 86
    const v5, -0x4ee9b9da

    .line 87
    .line 88
    .line 89
    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 90
    .line 91
    .line 92
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 93
    move-result-object v5

    .line 94
    .line 95
    .line 96
    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 97
    move-result-object v5

    .line 98
    .line 99
    check-cast v5, Landroidx/compose/ui/unit/Density;

    .line 100
    .line 101
    .line 102
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 103
    move-result-object v6

    .line 104
    .line 105
    .line 106
    invoke-interface {p1, v6}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 107
    move-result-object v6

    .line 108
    .line 109
    check-cast v6, Landroidx/compose/ui/unit/LayoutDirection;

    .line 110
    .line 111
    .line 112
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 113
    move-result-object v7

    .line 114
    .line 115
    .line 116
    invoke-interface {p1, v7}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 117
    move-result-object v7

    .line 118
    .line 119
    check-cast v7, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 120
    .line 121
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 125
    move-result-object v9

    .line 126
    .line 127
    .line 128
    invoke-static {p2}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 129
    move-result-object p2

    .line 130
    .line 131
    shl-int/lit8 v2, v2, 0x9

    .line 132
    .line 133
    and-int/lit16 v2, v2, 0x1c00

    .line 134
    .line 135
    or-int/lit8 v2, v2, 0x6

    .line 136
    .line 137
    .line 138
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 139
    move-result-object v10

    .line 140
    .line 141
    instance-of v10, v10, Landroidx/compose/runtime/Applier;

    .line 142
    .line 143
    if-nez v10, :cond_2

    .line 144
    .line 145
    .line 146
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 147
    .line 148
    .line 149
    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->e()V

    .line 150
    .line 151
    .line 152
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->r()Z

    .line 153
    move-result v10

    .line 154
    .line 155
    if-eqz v10, :cond_3

    .line 156
    .line 157
    .line 158
    invoke-interface {p1, v9}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 159
    goto :goto_1

    .line 160
    .line 161
    .line 162
    :cond_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->c()V

    .line 163
    .line 164
    .line 165
    :goto_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->L()V

    .line 166
    .line 167
    .line 168
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 169
    move-result-object v9

    .line 170
    .line 171
    .line 172
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 173
    move-result-object v10

    .line 174
    .line 175
    .line 176
    invoke-static {v9, v1, v10}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 180
    move-result-object v1

    .line 181
    .line 182
    .line 183
    invoke-static {v9, v5, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 187
    move-result-object v1

    .line 188
    .line 189
    .line 190
    invoke-static {v9, v6, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 194
    move-result-object v1

    .line 195
    .line 196
    .line 197
    invoke-static {v9, v7, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 198
    .line 199
    .line 200
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->o()V

    .line 201
    .line 202
    .line 203
    invoke-static {p1}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 204
    move-result-object v1

    .line 205
    .line 206
    .line 207
    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 208
    move-result-object v1

    .line 209
    .line 210
    shr-int/lit8 v5, v2, 0x3

    .line 211
    .line 212
    and-int/lit8 v5, v5, 0x70

    .line 213
    .line 214
    .line 215
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 216
    move-result-object v5

    .line 217
    .line 218
    .line 219
    invoke-interface {p2, v1, p1, v5}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    const p2, 0x7ab4aae9

    .line 223
    .line 224
    .line 225
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 226
    .line 227
    shr-int/lit8 p2, v2, 0x9

    .line 228
    .line 229
    .line 230
    const v1, -0x286e2e7f

    .line 231
    .line 232
    .line 233
    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 234
    .line 235
    and-int/lit8 p2, p2, 0xa

    .line 236
    .line 237
    if-ne p2, v0, :cond_5

    .line 238
    .line 239
    .line 240
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->b()Z

    .line 241
    move-result p2

    .line 242
    .line 243
    if-nez p2, :cond_4

    .line 244
    goto :goto_2

    .line 245
    .line 246
    .line 247
    :cond_4
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->g()V

    .line 248
    goto :goto_3

    .line 249
    .line 250
    :cond_5
    :goto_2
    sget-object p2, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    .line 251
    .line 252
    shr-int/lit8 v0, v4, 0x6

    .line 253
    .line 254
    and-int/lit8 v0, v0, 0x70

    .line 255
    .line 256
    or-int/lit8 v0, v0, 0x6

    .line 257
    .line 258
    .line 259
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 260
    move-result-object v0

    .line 261
    .line 262
    .line 263
    invoke-interface {v3, p2, p1, v0}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    :goto_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 267
    .line 268
    .line 269
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 270
    .line 271
    .line 272
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->d()V

    .line 273
    .line 274
    .line 275
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 276
    .line 277
    .line 278
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 279
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/AppBarKt$AppBar$1$1;->a(Landroidx/compose/runtime/Composer;I)V

    .line 12
    .line 13
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 14
    return-object p1
.end method
