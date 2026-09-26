.class final Landroidx/compose/material/DrawerKt$ModalDrawer$1$2$7;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/DrawerKt$ModalDrawer$1;->a(Landroidx/compose/foundation/layout/BoxWithConstraintsScope;Landroidx/compose/runtime/Composer;I)V
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
    value = "SMAP\nDrawer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Drawer.kt\nandroidx/compose/material/DrawerKt$ModalDrawer$1$2$7\n+ 2 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n+ 3 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n*L\n1#1,690:1\n74#2,6:691\n80#2:723\n84#2:728\n75#3:697\n76#3,11:699\n89#3:727\n76#4:698\n460#5,13:710\n473#5,3:724\n*S KotlinDebug\n*F\n+ 1 Drawer.kt\nandroidx/compose/material/DrawerKt$ModalDrawer$1$2$7\n*L\n460#1:691,6\n460#1:723\n460#1:728\n460#1:697\n460#1:699,11\n460#1:727\n460#1:698\n460#1:710,13\n460#1:724,3\n*E\n"
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $drawerContent:Le8/q;
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
.method constructor <init>(Le8/q;I)V
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
            ">;I)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/DrawerKt$ModalDrawer$1$2$7;->$drawerContent:Le8/q;

    iput p2, p0, Landroidx/compose/material/DrawerKt$ModalDrawer$1$2$7;->$$dirty:I

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
    invoke-static {p2, v3, v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->l(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 26
    move-result-object p2

    .line 27
    .line 28
    iget-object v1, p0, Landroidx/compose/material/DrawerKt$ModalDrawer$1$2$7;->$drawerContent:Le8/q;

    .line 29
    .line 30
    iget v2, p0, Landroidx/compose/material/DrawerKt$ModalDrawer$1$2$7;->$$dirty:I

    .line 31
    .line 32
    shl-int/lit8 v2, v2, 0x9

    .line 33
    .line 34
    and-int/lit16 v2, v2, 0x1c00

    .line 35
    .line 36
    or-int/lit8 v2, v2, 0x6

    .line 37
    .line 38
    .line 39
    const v3, -0x1cd0f17e

    .line 40
    .line 41
    .line 42
    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 43
    .line 44
    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Landroidx/compose/foundation/layout/Arrangement;->f()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 48
    move-result-object v3

    .line 49
    .line 50
    sget-object v4, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4}, Landroidx/compose/ui/Alignment$Companion;->k()Landroidx/compose/ui/Alignment$Horizontal;

    .line 54
    move-result-object v4

    .line 55
    .line 56
    shr-int/lit8 v5, v2, 0x3

    .line 57
    .line 58
    and-int/lit8 v6, v5, 0xe

    .line 59
    .line 60
    and-int/lit8 v5, v5, 0x70

    .line 61
    or-int/2addr v5, v6

    .line 62
    .line 63
    .line 64
    invoke-static {v3, v4, p1, v5}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 65
    move-result-object v3

    .line 66
    .line 67
    shl-int/lit8 v4, v2, 0x3

    .line 68
    .line 69
    and-int/lit8 v4, v4, 0x70

    .line 70
    .line 71
    .line 72
    const v5, -0x4ee9b9da

    .line 73
    .line 74
    .line 75
    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 76
    .line 77
    .line 78
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 79
    move-result-object v5

    .line 80
    .line 81
    .line 82
    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 83
    move-result-object v5

    .line 84
    .line 85
    check-cast v5, Landroidx/compose/ui/unit/Density;

    .line 86
    .line 87
    .line 88
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 89
    move-result-object v6

    .line 90
    .line 91
    .line 92
    invoke-interface {p1, v6}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 93
    move-result-object v6

    .line 94
    .line 95
    check-cast v6, Landroidx/compose/ui/unit/LayoutDirection;

    .line 96
    .line 97
    .line 98
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 99
    move-result-object v7

    .line 100
    .line 101
    .line 102
    invoke-interface {p1, v7}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 103
    move-result-object v7

    .line 104
    .line 105
    check-cast v7, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 106
    .line 107
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 111
    move-result-object v9

    .line 112
    .line 113
    .line 114
    invoke-static {p2}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 115
    move-result-object p2

    .line 116
    .line 117
    shl-int/lit8 v4, v4, 0x9

    .line 118
    .line 119
    and-int/lit16 v4, v4, 0x1c00

    .line 120
    .line 121
    or-int/lit8 v4, v4, 0x6

    .line 122
    .line 123
    .line 124
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 125
    move-result-object v10

    .line 126
    .line 127
    instance-of v10, v10, Landroidx/compose/runtime/Applier;

    .line 128
    .line 129
    if-nez v10, :cond_2

    .line 130
    .line 131
    .line 132
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 133
    .line 134
    .line 135
    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->e()V

    .line 136
    .line 137
    .line 138
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->r()Z

    .line 139
    move-result v10

    .line 140
    .line 141
    if-eqz v10, :cond_3

    .line 142
    .line 143
    .line 144
    invoke-interface {p1, v9}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 145
    goto :goto_1

    .line 146
    .line 147
    .line 148
    :cond_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->c()V

    .line 149
    .line 150
    .line 151
    :goto_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->L()V

    .line 152
    .line 153
    .line 154
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 155
    move-result-object v9

    .line 156
    .line 157
    .line 158
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 159
    move-result-object v10

    .line 160
    .line 161
    .line 162
    invoke-static {v9, v3, v10}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 166
    move-result-object v3

    .line 167
    .line 168
    .line 169
    invoke-static {v9, v5, v3}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 173
    move-result-object v3

    .line 174
    .line 175
    .line 176
    invoke-static {v9, v6, v3}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 180
    move-result-object v3

    .line 181
    .line 182
    .line 183
    invoke-static {v9, v7, v3}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 184
    .line 185
    .line 186
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->o()V

    .line 187
    .line 188
    .line 189
    invoke-static {p1}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 190
    move-result-object v3

    .line 191
    .line 192
    .line 193
    invoke-static {v3}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 194
    move-result-object v3

    .line 195
    .line 196
    shr-int/lit8 v5, v4, 0x3

    .line 197
    .line 198
    and-int/lit8 v5, v5, 0x70

    .line 199
    .line 200
    .line 201
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    move-result-object v5

    .line 203
    .line 204
    .line 205
    invoke-interface {p2, v3, p1, v5}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    const p2, 0x7ab4aae9

    .line 209
    .line 210
    .line 211
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 212
    .line 213
    shr-int/lit8 p2, v4, 0x9

    .line 214
    .line 215
    .line 216
    const v3, -0x455f09d5

    .line 217
    .line 218
    .line 219
    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 220
    .line 221
    and-int/lit8 p2, p2, 0xa

    .line 222
    .line 223
    if-ne p2, v0, :cond_5

    .line 224
    .line 225
    .line 226
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->b()Z

    .line 227
    move-result p2

    .line 228
    .line 229
    if-nez p2, :cond_4

    .line 230
    goto :goto_2

    .line 231
    .line 232
    .line 233
    :cond_4
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->g()V

    .line 234
    goto :goto_3

    .line 235
    .line 236
    :cond_5
    :goto_2
    sget-object p2, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    .line 237
    .line 238
    shr-int/lit8 v0, v2, 0x6

    .line 239
    .line 240
    and-int/lit8 v0, v0, 0x70

    .line 241
    .line 242
    or-int/lit8 v0, v0, 0x6

    .line 243
    .line 244
    .line 245
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 246
    move-result-object v0

    .line 247
    .line 248
    .line 249
    invoke-interface {v1, p2, p1, v0}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    :goto_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 253
    .line 254
    .line 255
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 256
    .line 257
    .line 258
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->d()V

    .line 259
    .line 260
    .line 261
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 262
    .line 263
    .line 264
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 265
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/DrawerKt$ModalDrawer$1$2$7;->a(Landroidx/compose/runtime/Composer;I)V

    .line 12
    .line 13
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 14
    return-object p1
.end method
