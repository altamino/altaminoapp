.class final Landroidx/compose/material/BottomNavigationKt$BottomNavigation$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/BottomNavigationKt;->a(Landroidx/compose/ui/Modifier;JJFLe8/q;Landroidx/compose/runtime/Composer;II)V
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
    value = "SMAP\nBottomNavigation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BottomNavigation.kt\nandroidx/compose/material/BottomNavigationKt$BottomNavigation$1\n+ 2 Row.kt\nandroidx/compose/foundation/layout/RowKt\n+ 3 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n*L\n1#1,400:1\n76#2,5:401\n81#2:432\n85#2:437\n75#3:406\n76#3,11:408\n89#3:436\n76#4:407\n460#5,13:419\n473#5,3:433\n*S KotlinDebug\n*F\n+ 1 BottomNavigation.kt\nandroidx/compose/material/BottomNavigationKt$BottomNavigation$1\n*L\n103#1:401,5\n103#1:432\n103#1:437\n103#1:406\n103#1:408,11\n103#1:436\n103#1:407\n103#1:419,13\n103#1:433,3\n*E\n"
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
    iput-object p1, p0, Landroidx/compose/material/BottomNavigationKt$BottomNavigation$1;->$content:Le8/q;

    iput p2, p0, Landroidx/compose/material/BottomNavigationKt$BottomNavigation$1;->$$dirty:I

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
    .line 29
    invoke-static {}, Landroidx/compose/material/BottomNavigationKt;->i()F

    .line 30
    move-result v1

    .line 31
    .line 32
    .line 33
    invoke-static {p2, v1}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 34
    move-result-object p2

    .line 35
    .line 36
    .line 37
    invoke-static {p2}, Landroidx/compose/foundation/selection/SelectableGroupKt;->a(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 38
    move-result-object p2

    .line 39
    .line 40
    sget-object v1, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Landroidx/compose/foundation/layout/Arrangement;->d()Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    .line 44
    move-result-object v1

    .line 45
    .line 46
    iget-object v2, p0, Landroidx/compose/material/BottomNavigationKt$BottomNavigation$1;->$content:Le8/q;

    .line 47
    .line 48
    iget v3, p0, Landroidx/compose/material/BottomNavigationKt$BottomNavigation$1;->$$dirty:I

    .line 49
    .line 50
    shr-int/lit8 v3, v3, 0x3

    .line 51
    .line 52
    and-int/lit16 v3, v3, 0x1c00

    .line 53
    .line 54
    or-int/lit8 v3, v3, 0x30

    .line 55
    .line 56
    .line 57
    const v4, 0x2952b718

    .line 58
    .line 59
    .line 60
    invoke-interface {p1, v4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 61
    .line 62
    sget-object v4, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4}, Landroidx/compose/ui/Alignment$Companion;->l()Landroidx/compose/ui/Alignment$Vertical;

    .line 66
    move-result-object v4

    .line 67
    .line 68
    shr-int/lit8 v5, v3, 0x3

    .line 69
    .line 70
    and-int/lit8 v6, v5, 0xe

    .line 71
    .line 72
    and-int/lit8 v5, v5, 0x70

    .line 73
    or-int/2addr v5, v6

    .line 74
    .line 75
    .line 76
    invoke-static {v1, v4, p1, v5}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 77
    move-result-object v1

    .line 78
    .line 79
    shl-int/lit8 v4, v3, 0x3

    .line 80
    .line 81
    and-int/lit8 v4, v4, 0x70

    .line 82
    .line 83
    .line 84
    const v5, -0x4ee9b9da

    .line 85
    .line 86
    .line 87
    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 88
    .line 89
    .line 90
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 91
    move-result-object v5

    .line 92
    .line 93
    .line 94
    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 95
    move-result-object v5

    .line 96
    .line 97
    check-cast v5, Landroidx/compose/ui/unit/Density;

    .line 98
    .line 99
    .line 100
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 101
    move-result-object v6

    .line 102
    .line 103
    .line 104
    invoke-interface {p1, v6}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 105
    move-result-object v6

    .line 106
    .line 107
    check-cast v6, Landroidx/compose/ui/unit/LayoutDirection;

    .line 108
    .line 109
    .line 110
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 111
    move-result-object v7

    .line 112
    .line 113
    .line 114
    invoke-interface {p1, v7}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 115
    move-result-object v7

    .line 116
    .line 117
    check-cast v7, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 118
    .line 119
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 123
    move-result-object v9

    .line 124
    .line 125
    .line 126
    invoke-static {p2}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 127
    move-result-object p2

    .line 128
    .line 129
    shl-int/lit8 v4, v4, 0x9

    .line 130
    .line 131
    and-int/lit16 v4, v4, 0x1c00

    .line 132
    .line 133
    or-int/lit8 v4, v4, 0x6

    .line 134
    .line 135
    .line 136
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 137
    move-result-object v10

    .line 138
    .line 139
    instance-of v10, v10, Landroidx/compose/runtime/Applier;

    .line 140
    .line 141
    if-nez v10, :cond_2

    .line 142
    .line 143
    .line 144
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 145
    .line 146
    .line 147
    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->e()V

    .line 148
    .line 149
    .line 150
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->r()Z

    .line 151
    move-result v10

    .line 152
    .line 153
    if-eqz v10, :cond_3

    .line 154
    .line 155
    .line 156
    invoke-interface {p1, v9}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 157
    goto :goto_1

    .line 158
    .line 159
    .line 160
    :cond_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->c()V

    .line 161
    .line 162
    .line 163
    :goto_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->L()V

    .line 164
    .line 165
    .line 166
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 167
    move-result-object v9

    .line 168
    .line 169
    .line 170
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 171
    move-result-object v10

    .line 172
    .line 173
    .line 174
    invoke-static {v9, v1, v10}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 178
    move-result-object v1

    .line 179
    .line 180
    .line 181
    invoke-static {v9, v5, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 185
    move-result-object v1

    .line 186
    .line 187
    .line 188
    invoke-static {v9, v6, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 192
    move-result-object v1

    .line 193
    .line 194
    .line 195
    invoke-static {v9, v7, v1}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 196
    .line 197
    .line 198
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->o()V

    .line 199
    .line 200
    .line 201
    invoke-static {p1}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 202
    move-result-object v1

    .line 203
    .line 204
    .line 205
    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 206
    move-result-object v1

    .line 207
    .line 208
    shr-int/lit8 v5, v4, 0x3

    .line 209
    .line 210
    and-int/lit8 v5, v5, 0x70

    .line 211
    .line 212
    .line 213
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 214
    move-result-object v5

    .line 215
    .line 216
    .line 217
    invoke-interface {p2, v1, p1, v5}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    const p2, 0x7ab4aae9

    .line 221
    .line 222
    .line 223
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 224
    .line 225
    shr-int/lit8 p2, v4, 0x9

    .line 226
    .line 227
    .line 228
    const v1, -0x286e2e7f

    .line 229
    .line 230
    .line 231
    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 232
    .line 233
    and-int/lit8 p2, p2, 0xa

    .line 234
    .line 235
    if-ne p2, v0, :cond_5

    .line 236
    .line 237
    .line 238
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->b()Z

    .line 239
    move-result p2

    .line 240
    .line 241
    if-nez p2, :cond_4

    .line 242
    goto :goto_2

    .line 243
    .line 244
    .line 245
    :cond_4
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->g()V

    .line 246
    goto :goto_3

    .line 247
    .line 248
    :cond_5
    :goto_2
    sget-object p2, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    .line 249
    .line 250
    shr-int/lit8 v0, v3, 0x6

    .line 251
    .line 252
    and-int/lit8 v0, v0, 0x70

    .line 253
    .line 254
    or-int/lit8 v0, v0, 0x6

    .line 255
    .line 256
    .line 257
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 258
    move-result-object v0

    .line 259
    .line 260
    .line 261
    invoke-interface {v2, p2, p1, v0}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    :goto_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 265
    .line 266
    .line 267
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 268
    .line 269
    .line 270
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->d()V

    .line 271
    .line 272
    .line 273
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 274
    .line 275
    .line 276
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 277
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/BottomNavigationKt$BottomNavigation$1;->a(Landroidx/compose/runtime/Composer;I)V

    .line 12
    .line 13
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 14
    return-object p1
.end method
