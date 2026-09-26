.class final Landroidx/compose/material/AppBarKt$TopAppBar$1$3;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/AppBarKt$TopAppBar$1;->a(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/runtime/Composer;I)V
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
    value = "SMAP\nAppBar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppBar.kt\nandroidx/compose/material/AppBarKt$TopAppBar$1$3\n+ 2 Row.kt\nandroidx/compose/foundation/layout/RowKt\n+ 3 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n*L\n1#1,547:1\n79#2,2:548\n81#2:576\n85#2:581\n75#3:550\n76#3,11:552\n89#3:580\n76#4:551\n460#5,13:563\n473#5,3:577\n*S KotlinDebug\n*F\n+ 1 AppBar.kt\nandroidx/compose/material/AppBarKt$TopAppBar$1$3\n*L\n118#1:548,2\n118#1:576\n118#1:581\n118#1:550\n118#1:552,11\n118#1:580\n118#1:551\n118#1:563,13\n118#1:577,3\n*E\n"
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $actions:Le8/q;
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


# direct methods
.method constructor <init>(Le8/q;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    iput-object p1, p0, Landroidx/compose/material/AppBarKt$TopAppBar$1$3;->$actions:Le8/q;

    iput p2, p0, Landroidx/compose/material/AppBarKt$TopAppBar$1$3;->$$dirty:I

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
    invoke-static {p2, v3, v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->j(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 26
    move-result-object p2

    .line 27
    .line 28
    sget-object v1, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Landroidx/compose/foundation/layout/Arrangement;->c()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 32
    move-result-object v1

    .line 33
    .line 34
    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->i()Landroidx/compose/ui/Alignment$Vertical;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    iget-object v3, p0, Landroidx/compose/material/AppBarKt$TopAppBar$1$3;->$actions:Le8/q;

    .line 41
    .line 42
    iget v4, p0, Landroidx/compose/material/AppBarKt$TopAppBar$1$3;->$$dirty:I

    .line 43
    .line 44
    and-int/lit16 v4, v4, 0x1c00

    .line 45
    .line 46
    or-int/lit16 v4, v4, 0x1b6

    .line 47
    .line 48
    .line 49
    const v5, 0x2952b718

    .line 50
    .line 51
    .line 52
    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 53
    .line 54
    shr-int/lit8 v5, v4, 0x3

    .line 55
    .line 56
    and-int/lit8 v6, v5, 0xe

    .line 57
    .line 58
    and-int/lit8 v5, v5, 0x70

    .line 59
    or-int/2addr v5, v6

    .line 60
    .line 61
    .line 62
    invoke-static {v1, v2, p1, v5}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 63
    move-result-object v1

    .line 64
    .line 65
    shl-int/lit8 v2, v4, 0x3

    .line 66
    .line 67
    and-int/lit8 v2, v2, 0x70

    .line 68
    .line 69
    .line 70
    const v5, -0x4ee9b9da

    .line 71
    .line 72
    .line 73
    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 74
    .line 75
    .line 76
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 77
    move-result-object v5

    .line 78
    .line 79
    .line 80
    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 81
    move-result-object v5

    .line 82
    .line 83
    check-cast v5, Landroidx/compose/ui/unit/Density;

    .line 84
    .line 85
    .line 86
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 87
    move-result-object v6

    .line 88
    .line 89
    .line 90
    invoke-interface {p1, v6}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 91
    move-result-object v6

    .line 92
    .line 93
    check-cast v6, Landroidx/compose/ui/unit/LayoutDirection;

    .line 94
    .line 95
    .line 96
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 97
    move-result-object v7

    .line 98
    .line 99
    .line 100
    invoke-interface {p1, v7}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 101
    move-result-object v7

    .line 102
    .line 103
    check-cast v7, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 104
    .line 105
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 109
    move-result-object v9

    .line 110
    .line 111
    .line 112
    invoke-static {p2}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 113
    move-result-object p2

    .line 114
    .line 115
    shl-int/lit8 v2, v2, 0x9

    .line 116
    .line 117
    and-int/lit16 v2, v2, 0x1c00

    .line 118
    .line 119
    or-int/lit8 v2, v2, 0x6

    .line 120
    .line 121
    .line 122
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 123
    move-result-object v10

    .line 124
    .line 125
    instance-of v10, v10, Landroidx/compose/runtime/Applier;

    .line 126
    .line 127
    if-nez v10, :cond_2

    .line 128
    .line 129
    .line 130
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 131
    .line 132
    .line 133
    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->e()V

    .line 134
    .line 135
    .line 136
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->r()Z

    .line 137
    move-result v10

    .line 138
    .line 139
    if-eqz v10, :cond_3

    .line 140
    .line 141
    .line 142
    invoke-interface {p1, v9}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 143
    goto :goto_1

    .line 144
    .line 145
    .line 146
    :cond_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->c()V

    .line 147
    .line 148
    .line 149
    :goto_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->L()V

    .line 150
    .line 151
    .line 152
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 153
    move-result-object v9

    .line 154
    .line 155
    .line 156
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 157
    move-result-object v10

    .line 158
    .line 159
    .line 160
    invoke-static {v9, v1, v10}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 164
    move-result-object v1

    .line 165
    .line 166
    .line 167
    invoke-static {v9, v5, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 171
    move-result-object v1

    .line 172
    .line 173
    .line 174
    invoke-static {v9, v6, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 178
    move-result-object v1

    .line 179
    .line 180
    .line 181
    invoke-static {v9, v7, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 182
    .line 183
    .line 184
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->o()V

    .line 185
    .line 186
    .line 187
    invoke-static {p1}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 188
    move-result-object v1

    .line 189
    .line 190
    .line 191
    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 192
    move-result-object v1

    .line 193
    .line 194
    shr-int/lit8 v5, v2, 0x3

    .line 195
    .line 196
    and-int/lit8 v5, v5, 0x70

    .line 197
    .line 198
    .line 199
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 200
    move-result-object v5

    .line 201
    .line 202
    .line 203
    invoke-interface {p2, v1, p1, v5}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    const p2, 0x7ab4aae9

    .line 207
    .line 208
    .line 209
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 210
    .line 211
    shr-int/lit8 p2, v2, 0x9

    .line 212
    .line 213
    .line 214
    const v1, -0x286e2e7f

    .line 215
    .line 216
    .line 217
    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 218
    .line 219
    and-int/lit8 p2, p2, 0xa

    .line 220
    .line 221
    if-ne p2, v0, :cond_5

    .line 222
    .line 223
    .line 224
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->b()Z

    .line 225
    move-result p2

    .line 226
    .line 227
    if-nez p2, :cond_4

    .line 228
    goto :goto_2

    .line 229
    .line 230
    .line 231
    :cond_4
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->g()V

    .line 232
    goto :goto_3

    .line 233
    .line 234
    :cond_5
    :goto_2
    sget-object p2, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    .line 235
    .line 236
    shr-int/lit8 v0, v4, 0x6

    .line 237
    .line 238
    and-int/lit8 v0, v0, 0x70

    .line 239
    .line 240
    or-int/lit8 v0, v0, 0x6

    .line 241
    .line 242
    .line 243
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 244
    move-result-object v0

    .line 245
    .line 246
    .line 247
    invoke-interface {v3, p2, p1, v0}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    :goto_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 251
    .line 252
    .line 253
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 254
    .line 255
    .line 256
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->d()V

    .line 257
    .line 258
    .line 259
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 260
    .line 261
    .line 262
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 263
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/AppBarKt$TopAppBar$1$3;->a(Landroidx/compose/runtime/Composer;I)V

    .line 12
    .line 13
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 14
    return-object p1
.end method
