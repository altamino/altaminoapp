.class final Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->a(JFLandroidx/compose/runtime/Composer;I)V
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
    value = "SMAP\nBackdropScaffold.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BackdropScaffold.kt\nandroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1$2\n+ 2 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 3 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n*L\n1#1,522:1\n67#2,6:523\n73#2:555\n77#2:560\n75#3:529\n76#3,11:531\n89#3:559\n76#4:530\n460#5,13:542\n473#5,3:556\n*S KotlinDebug\n*F\n+ 1 BackdropScaffold.kt\nandroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1$2\n*L\n352#1:523,6\n352#1:555\n352#1:560\n352#1:529\n352#1:531,11\n352#1:559\n352#1:530\n352#1:542,13\n352#1:556,3\n*E\n"
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $$dirty1:I

.field final synthetic $frontLayerContent:Le8/p;
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

.field final synthetic $frontLayerScrimColor:J

.field final synthetic $gesturesEnabled:Z

.field final synthetic $peekHeight:F

.field final synthetic $scaffoldState:Landroidx/compose/material/BackdropScaffoldState;

.field final synthetic $scope:Lkotlinx/coroutines/o0;


# direct methods
.method constructor <init>(FLe8/p;IJLandroidx/compose/material/BackdropScaffoldState;IZLkotlinx/coroutines/o0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;IJ",
            "Landroidx/compose/material/BackdropScaffoldState;",
            "IZ",
            "Lkotlinx/coroutines/o0;",
            ")V"
        }
    .end annotation

    .line 1
    iput p1, p0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1$2;->$peekHeight:F

    iput-object p2, p0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1$2;->$frontLayerContent:Le8/p;

    iput p3, p0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1$2;->$$dirty:I

    iput-wide p4, p0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1$2;->$frontLayerScrimColor:J

    iput-object p6, p0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1$2;->$scaffoldState:Landroidx/compose/material/BackdropScaffoldState;

    iput p7, p0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1$2;->$$dirty1:I

    iput-boolean p8, p0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1$2;->$gesturesEnabled:Z

    iput-object p9, p0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1$2;->$scope:Lkotlinx/coroutines/o0;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Composer;I)V
    .locals 17
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
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v7, p1

    .line 5
    .line 6
    and-int/lit8 v1, p2, 0xb

    .line 7
    const/4 v2, 0x2

    .line 8
    .line 9
    if-ne v1, v2, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->b()Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->g()V

    .line 20
    .line 21
    goto/16 :goto_3

    .line 22
    .line 23
    :cond_1
    :goto_0
    sget-object v8, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 24
    const/4 v9, 0x0

    .line 25
    const/4 v10, 0x0

    .line 26
    const/4 v11, 0x0

    .line 27
    .line 28
    iget v12, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1$2;->$peekHeight:F

    .line 29
    const/4 v13, 0x7

    .line 30
    const/4 v14, 0x0

    .line 31
    .line 32
    .line 33
    invoke-static/range {v8 .. v14}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 34
    move-result-object v1

    .line 35
    .line 36
    iget-object v2, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1$2;->$frontLayerContent:Le8/p;

    .line 37
    .line 38
    iget v3, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1$2;->$$dirty:I

    .line 39
    .line 40
    iget-wide v4, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1$2;->$frontLayerScrimColor:J

    .line 41
    .line 42
    iget-object v6, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1$2;->$scaffoldState:Landroidx/compose/material/BackdropScaffoldState;

    .line 43
    .line 44
    iget v8, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1$2;->$$dirty1:I

    .line 45
    .line 46
    iget-boolean v9, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1$2;->$gesturesEnabled:Z

    .line 47
    .line 48
    iget-object v10, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1$2;->$scope:Lkotlinx/coroutines/o0;

    .line 49
    .line 50
    .line 51
    const v11, 0x2bb5b5d7

    .line 52
    .line 53
    .line 54
    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 55
    .line 56
    sget-object v11, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v11}, Landroidx/compose/ui/Alignment$Companion;->o()Landroidx/compose/ui/Alignment;

    .line 60
    move-result-object v11

    .line 61
    const/4 v12, 0x0

    .line 62
    .line 63
    .line 64
    invoke-static {v11, v12, v7, v12}, Landroidx/compose/foundation/layout/BoxKt;->h(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 65
    move-result-object v11

    .line 66
    .line 67
    .line 68
    const v13, -0x4ee9b9da

    .line 69
    .line 70
    .line 71
    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 72
    .line 73
    .line 74
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 75
    move-result-object v13

    .line 76
    .line 77
    .line 78
    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 79
    move-result-object v13

    .line 80
    .line 81
    check-cast v13, Landroidx/compose/ui/unit/Density;

    .line 82
    .line 83
    .line 84
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 85
    move-result-object v14

    .line 86
    .line 87
    .line 88
    invoke-interface {v7, v14}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 89
    move-result-object v14

    .line 90
    .line 91
    check-cast v14, Landroidx/compose/ui/unit/LayoutDirection;

    .line 92
    .line 93
    .line 94
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 95
    move-result-object v15

    .line 96
    .line 97
    .line 98
    invoke-interface {v7, v15}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 99
    move-result-object v15

    .line 100
    .line 101
    check-cast v15, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 102
    .line 103
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 104
    .line 105
    .line 106
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 107
    move-result-object v12

    .line 108
    .line 109
    .line 110
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 111
    move-result-object v1

    .line 112
    .line 113
    .line 114
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 115
    move-result-object v0

    .line 116
    .line 117
    instance-of v0, v0, Landroidx/compose/runtime/Applier;

    .line 118
    .line 119
    if-nez v0, :cond_2

    .line 120
    .line 121
    .line 122
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 123
    .line 124
    .line 125
    :cond_2
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->e()V

    .line 126
    .line 127
    .line 128
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->r()Z

    .line 129
    move-result v0

    .line 130
    .line 131
    if-eqz v0, :cond_3

    .line 132
    .line 133
    .line 134
    invoke-interface {v7, v12}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 135
    goto :goto_1

    .line 136
    .line 137
    .line 138
    :cond_3
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->c()V

    .line 139
    .line 140
    .line 141
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->L()V

    .line 142
    .line 143
    .line 144
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 145
    move-result-object v0

    .line 146
    .line 147
    .line 148
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 149
    move-result-object v12

    .line 150
    .line 151
    .line 152
    invoke-static {v0, v11, v12}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 156
    move-result-object v11

    .line 157
    .line 158
    .line 159
    invoke-static {v0, v13, v11}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 163
    move-result-object v11

    .line 164
    .line 165
    .line 166
    invoke-static {v0, v14, v11}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 170
    move-result-object v11

    .line 171
    .line 172
    .line 173
    invoke-static {v0, v15, v11}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 174
    .line 175
    .line 176
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->o()V

    .line 177
    .line 178
    .line 179
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 180
    move-result-object v0

    .line 181
    .line 182
    .line 183
    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 184
    move-result-object v0

    .line 185
    const/4 v11, 0x0

    .line 186
    .line 187
    .line 188
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 189
    move-result-object v12

    .line 190
    .line 191
    .line 192
    invoke-interface {v1, v0, v7, v12}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    const v0, 0x7ab4aae9

    .line 196
    .line 197
    .line 198
    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 199
    .line 200
    .line 201
    const v0, -0x7f65a980

    .line 202
    .line 203
    .line 204
    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 205
    .line 206
    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 207
    .line 208
    .line 209
    const v0, -0x70a66b75

    .line 210
    .line 211
    .line 212
    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 213
    .line 214
    shr-int/lit8 v0, v3, 0x6

    .line 215
    .line 216
    and-int/lit8 v0, v0, 0xe

    .line 217
    .line 218
    .line 219
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 220
    move-result-object v0

    .line 221
    .line 222
    .line 223
    invoke-interface {v2, v7, v0}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    new-instance v3, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1$2$1$1;

    .line 226
    .line 227
    .line 228
    invoke-direct {v3, v9, v6, v10}, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1$2$1$1;-><init>(ZLandroidx/compose/material/BackdropScaffoldState;Lkotlinx/coroutines/o0;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v6}, Landroidx/compose/material/SwipeableState;->v()Ljava/lang/Object;

    .line 232
    move-result-object v0

    .line 233
    .line 234
    sget-object v1, Landroidx/compose/material/BackdropValue;->Revealed:Landroidx/compose/material/BackdropValue;

    .line 235
    .line 236
    if-ne v0, v1, :cond_4

    .line 237
    const/4 v0, 0x1

    .line 238
    goto :goto_2

    .line 239
    :cond_4
    move v0, v11

    .line 240
    .line 241
    :goto_2
    shr-int/lit8 v1, v8, 0x12

    .line 242
    .line 243
    and-int/lit8 v6, v1, 0xe

    .line 244
    move-wide v1, v4

    .line 245
    move v4, v0

    .line 246
    .line 247
    move-object/from16 v5, p1

    .line 248
    .line 249
    .line 250
    invoke-static/range {v1 .. v6}, Landroidx/compose/material/BackdropScaffoldKt;->i(JLe8/a;ZLandroidx/compose/runtime/Composer;I)V

    .line 251
    .line 252
    .line 253
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 254
    .line 255
    .line 256
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 257
    .line 258
    .line 259
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 260
    .line 261
    .line 262
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->d()V

    .line 263
    .line 264
    .line 265
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 266
    .line 267
    .line 268
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 269
    :goto_3
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1$2;->a(Landroidx/compose/runtime/Composer;I)V

    .line 12
    .line 13
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 14
    return-object p1
.end method
