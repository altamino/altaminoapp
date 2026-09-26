.class final Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$backLayer$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/BackdropScaffoldKt;->c(Le8/p;Le8/p;Le8/p;Landroidx/compose/ui/Modifier;Landroidx/compose/material/BackdropScaffoldState;ZFFZZJJLandroidx/compose/ui/graphics/Shape;FJJJLe8/q;Landroidx/compose/runtime/Composer;III)V
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
    value = "SMAP\nBackdropScaffold.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BackdropScaffold.kt\nandroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$backLayer$1\n+ 2 Column.kt\nandroidx/compose/foundation/layout/ColumnKt\n+ 3 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n*L\n1#1,522:1\n73#2,7:523\n80#2:556\n84#2:561\n75#3:530\n76#3,11:532\n89#3:560\n76#4:531\n460#5,13:543\n473#5,3:557\n*S KotlinDebug\n*F\n+ 1 BackdropScaffold.kt\nandroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$backLayer$1\n*L\n281#1:523,7\n281#1:556\n281#1:561\n281#1:530\n281#1:532,11\n281#1:560\n281#1:531\n281#1:543,13\n281#1:557,3\n*E\n"
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $appBar:Le8/p;
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

.field final synthetic $backLayerContent:Le8/p;
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

.field final synthetic $persistentAppBar:Z

.field final synthetic $scaffoldState:Landroidx/compose/material/BackdropScaffoldState;


# direct methods
.method constructor <init>(ZLandroidx/compose/material/BackdropScaffoldState;Le8/p;Le8/p;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/compose/material/BackdropScaffoldState;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
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
    iput-boolean p1, p0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$backLayer$1;->$persistentAppBar:Z

    iput-object p2, p0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$backLayer$1;->$scaffoldState:Landroidx/compose/material/BackdropScaffoldState;

    iput-object p3, p0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$backLayer$1;->$appBar:Le8/p;

    iput-object p4, p0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$backLayer$1;->$backLayerContent:Le8/p;

    iput p5, p0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$backLayer$1;->$$dirty:I

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
    iget-boolean p2, p0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$backLayer$1;->$persistentAppBar:Z

    .line 20
    .line 21
    if-eqz p2, :cond_4

    .line 22
    .line 23
    .line 24
    const p2, -0x3ca23cb3

    .line 25
    .line 26
    .line 27
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 28
    .line 29
    iget-object p2, p0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$backLayer$1;->$appBar:Le8/p;

    .line 30
    .line 31
    iget v0, p0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$backLayer$1;->$$dirty:I

    .line 32
    .line 33
    iget-object v1, p0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$backLayer$1;->$backLayerContent:Le8/p;

    .line 34
    .line 35
    .line 36
    const v2, -0x1cd0f17e

    .line 37
    .line 38
    .line 39
    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 40
    .line 41
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 42
    .line 43
    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Landroidx/compose/foundation/layout/Arrangement;->f()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 47
    move-result-object v3

    .line 48
    .line 49
    sget-object v4, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4}, Landroidx/compose/ui/Alignment$Companion;->k()Landroidx/compose/ui/Alignment$Horizontal;

    .line 53
    move-result-object v4

    .line 54
    const/4 v5, 0x0

    .line 55
    .line 56
    .line 57
    invoke-static {v3, v4, p1, v5}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 58
    move-result-object v3

    .line 59
    .line 60
    .line 61
    const v4, -0x4ee9b9da

    .line 62
    .line 63
    .line 64
    invoke-interface {p1, v4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 65
    .line 66
    .line 67
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 68
    move-result-object v4

    .line 69
    .line 70
    .line 71
    invoke-interface {p1, v4}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 72
    move-result-object v4

    .line 73
    .line 74
    check-cast v4, Landroidx/compose/ui/unit/Density;

    .line 75
    .line 76
    .line 77
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 78
    move-result-object v6

    .line 79
    .line 80
    .line 81
    invoke-interface {p1, v6}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 82
    move-result-object v6

    .line 83
    .line 84
    check-cast v6, Landroidx/compose/ui/unit/LayoutDirection;

    .line 85
    .line 86
    .line 87
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 88
    move-result-object v7

    .line 89
    .line 90
    .line 91
    invoke-interface {p1, v7}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 92
    move-result-object v7

    .line 93
    .line 94
    check-cast v7, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 95
    .line 96
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 100
    move-result-object v9

    .line 101
    .line 102
    .line 103
    invoke-static {v2}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 104
    move-result-object v2

    .line 105
    .line 106
    .line 107
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 108
    move-result-object v10

    .line 109
    .line 110
    instance-of v10, v10, Landroidx/compose/runtime/Applier;

    .line 111
    .line 112
    if-nez v10, :cond_2

    .line 113
    .line 114
    .line 115
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 116
    .line 117
    .line 118
    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->e()V

    .line 119
    .line 120
    .line 121
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->r()Z

    .line 122
    move-result v10

    .line 123
    .line 124
    if-eqz v10, :cond_3

    .line 125
    .line 126
    .line 127
    invoke-interface {p1, v9}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 128
    goto :goto_1

    .line 129
    .line 130
    .line 131
    :cond_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->c()V

    .line 132
    .line 133
    .line 134
    :goto_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->L()V

    .line 135
    .line 136
    .line 137
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 138
    move-result-object v9

    .line 139
    .line 140
    .line 141
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 142
    move-result-object v10

    .line 143
    .line 144
    .line 145
    invoke-static {v9, v3, v10}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 149
    move-result-object v3

    .line 150
    .line 151
    .line 152
    invoke-static {v9, v4, v3}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 156
    move-result-object v3

    .line 157
    .line 158
    .line 159
    invoke-static {v9, v6, v3}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 163
    move-result-object v3

    .line 164
    .line 165
    .line 166
    invoke-static {v9, v7, v3}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 167
    .line 168
    .line 169
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->o()V

    .line 170
    .line 171
    .line 172
    invoke-static {p1}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 173
    move-result-object v3

    .line 174
    .line 175
    .line 176
    invoke-static {v3}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 177
    move-result-object v3

    .line 178
    .line 179
    .line 180
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 181
    move-result-object v4

    .line 182
    .line 183
    .line 184
    invoke-interface {v2, v3, p1, v4}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    const v2, 0x7ab4aae9

    .line 188
    .line 189
    .line 190
    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 191
    .line 192
    .line 193
    const v2, -0x455f09d5

    .line 194
    .line 195
    .line 196
    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 197
    .line 198
    sget-object v2, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    .line 199
    .line 200
    .line 201
    const v2, -0x11f69a6

    .line 202
    .line 203
    .line 204
    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 205
    .line 206
    and-int/lit8 v2, v0, 0xe

    .line 207
    .line 208
    .line 209
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 210
    move-result-object v2

    .line 211
    .line 212
    .line 213
    invoke-interface {p2, p1, v2}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    shr-int/lit8 p2, v0, 0x3

    .line 216
    .line 217
    and-int/lit8 p2, p2, 0xe

    .line 218
    .line 219
    .line 220
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 221
    move-result-object p2

    .line 222
    .line 223
    .line 224
    invoke-interface {v1, p1, p2}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 228
    .line 229
    .line 230
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 231
    .line 232
    .line 233
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 234
    .line 235
    .line 236
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->d()V

    .line 237
    .line 238
    .line 239
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 240
    .line 241
    .line 242
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 243
    .line 244
    .line 245
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 246
    goto :goto_2

    .line 247
    .line 248
    .line 249
    :cond_4
    const p2, -0x3ca23c43

    .line 250
    .line 251
    .line 252
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 253
    .line 254
    iget-object p2, p0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$backLayer$1;->$scaffoldState:Landroidx/compose/material/BackdropScaffoldState;

    .line 255
    .line 256
    .line 257
    invoke-virtual {p2}, Landroidx/compose/material/SwipeableState;->v()Ljava/lang/Object;

    .line 258
    move-result-object p2

    .line 259
    .line 260
    check-cast p2, Landroidx/compose/material/BackdropValue;

    .line 261
    .line 262
    iget-object v0, p0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$backLayer$1;->$appBar:Le8/p;

    .line 263
    .line 264
    iget-object v1, p0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$backLayer$1;->$backLayerContent:Le8/p;

    .line 265
    .line 266
    iget v2, p0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$backLayer$1;->$$dirty:I

    .line 267
    .line 268
    shl-int/lit8 v3, v2, 0x3

    .line 269
    .line 270
    and-int/lit8 v3, v3, 0x70

    .line 271
    .line 272
    shl-int/lit8 v2, v2, 0x3

    .line 273
    .line 274
    and-int/lit16 v2, v2, 0x380

    .line 275
    or-int/2addr v2, v3

    .line 276
    .line 277
    .line 278
    invoke-static {p2, v0, v1, p1, v2}, Landroidx/compose/material/BackdropScaffoldKt;->g(Landroidx/compose/material/BackdropValue;Le8/p;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 279
    .line 280
    .line 281
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 282
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$backLayer$1;->a(Landroidx/compose/runtime/Composer;I)V

    .line 12
    .line 13
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 14
    return-object p1
.end method
