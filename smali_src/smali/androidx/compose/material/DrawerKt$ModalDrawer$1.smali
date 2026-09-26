.class final Landroidx/compose/material/DrawerKt$ModalDrawer$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/DrawerKt;->d(Le8/q;Landroidx/compose/ui/Modifier;Landroidx/compose/material/DrawerState;ZLandroidx/compose/ui/graphics/Shape;FJJJLe8/p;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/q<",
        "Landroidx/compose/foundation/layout/BoxWithConstraintsScope;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lw7/l0;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDrawer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Drawer.kt\nandroidx/compose/material/DrawerKt$ModalDrawer$1\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 4 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,690:1\n76#2:691\n76#2:699\n76#2:733\n76#2:774\n67#3,6:692\n73#3:724\n66#3,7:725\n73#3:758\n77#3:763\n77#3:786\n75#4:698\n76#4,11:700\n75#4:732\n76#4,11:734\n89#4:762\n89#4:785\n460#5,13:711\n460#5,13:745\n473#5,3:759\n67#5,3:764\n66#5:767\n36#5:775\n473#5,3:782\n1057#6,6:768\n1057#6,6:776\n*S KotlinDebug\n*F\n+ 1 Drawer.kt\nandroidx/compose/material/DrawerKt$ModalDrawer$1\n*L\n398#1:691\n399#1:699\n411#1:733\n431#1:774\n399#1:692,6\n399#1:724\n411#1:725,7\n411#1:758\n411#1:763\n399#1:786\n399#1:698\n399#1:700,11\n411#1:732\n411#1:734,11\n411#1:762\n399#1:785\n399#1:711,13\n411#1:745,13\n411#1:759,3\n424#1:764,3\n424#1:767\n440#1:775\n399#1:782,3\n424#1:768,6\n440#1:776,6\n*E\n"
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $content:Le8/p;
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

.field final synthetic $drawerBackgroundColor:J

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

.field final synthetic $drawerContentColor:J

.field final synthetic $drawerElevation:F

.field final synthetic $drawerShape:Landroidx/compose/ui/graphics/Shape;

.field final synthetic $drawerState:Landroidx/compose/material/DrawerState;

.field final synthetic $gesturesEnabled:Z

.field final synthetic $scope:Lkotlinx/coroutines/o0;

.field final synthetic $scrimColor:J


# direct methods
.method constructor <init>(Landroidx/compose/material/DrawerState;ZIJLandroidx/compose/ui/graphics/Shape;JJFLe8/p;Lkotlinx/coroutines/o0;Le8/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/DrawerState;",
            "ZIJ",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJF",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Lkotlinx/coroutines/o0;",
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
    iput-object p1, p0, Landroidx/compose/material/DrawerKt$ModalDrawer$1;->$drawerState:Landroidx/compose/material/DrawerState;

    iput-boolean p2, p0, Landroidx/compose/material/DrawerKt$ModalDrawer$1;->$gesturesEnabled:Z

    iput p3, p0, Landroidx/compose/material/DrawerKt$ModalDrawer$1;->$$dirty:I

    iput-wide p4, p0, Landroidx/compose/material/DrawerKt$ModalDrawer$1;->$scrimColor:J

    iput-object p6, p0, Landroidx/compose/material/DrawerKt$ModalDrawer$1;->$drawerShape:Landroidx/compose/ui/graphics/Shape;

    iput-wide p7, p0, Landroidx/compose/material/DrawerKt$ModalDrawer$1;->$drawerBackgroundColor:J

    iput-wide p9, p0, Landroidx/compose/material/DrawerKt$ModalDrawer$1;->$drawerContentColor:J

    iput p11, p0, Landroidx/compose/material/DrawerKt$ModalDrawer$1;->$drawerElevation:F

    iput-object p12, p0, Landroidx/compose/material/DrawerKt$ModalDrawer$1;->$content:Le8/p;

    iput-object p13, p0, Landroidx/compose/material/DrawerKt$ModalDrawer$1;->$scope:Lkotlinx/coroutines/o0;

    iput-object p14, p0, Landroidx/compose/material/DrawerKt$ModalDrawer$1;->$drawerContent:Le8/q;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/foundation/layout/BoxWithConstraintsScope;Landroidx/compose/runtime/Composer;I)V
    .locals 32
    .param p1    # Landroidx/compose/foundation/layout/BoxWithConstraintsScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
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
    move-object/from16 v1, p1

    .line 5
    .line 6
    move-object/from16 v13, p2

    .line 7
    .line 8
    const-string v2, "$this$BoxWithConstraints"

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    and-int/lit8 v2, p3, 0xe

    .line 14
    const/4 v3, 0x2

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 20
    move-result v2

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    const/4 v2, 0x4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v2, v3

    .line 26
    .line 27
    :goto_0
    or-int v2, p3, v2

    .line 28
    goto :goto_1

    .line 29
    .line 30
    :cond_1
    move/from16 v2, p3

    .line 31
    .line 32
    :goto_1
    and-int/lit8 v2, v2, 0x5b

    .line 33
    .line 34
    const/16 v4, 0x12

    .line 35
    .line 36
    if-ne v2, v4, :cond_3

    .line 37
    .line 38
    .line 39
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->b()Z

    .line 40
    move-result v2

    .line 41
    .line 42
    if-nez v2, :cond_2

    .line 43
    goto :goto_2

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->g()V

    .line 47
    .line 48
    goto/16 :goto_6

    .line 49
    .line 50
    .line 51
    :cond_3
    :goto_2
    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;->b()J

    .line 52
    move-result-wide v8

    .line 53
    .line 54
    .line 55
    invoke-static {v8, v9}, Landroidx/compose/ui/unit/Constraints;->j(J)Z

    .line 56
    move-result v1

    .line 57
    .line 58
    if-eqz v1, :cond_d

    .line 59
    .line 60
    .line 61
    invoke-static {v8, v9}, Landroidx/compose/ui/unit/Constraints;->n(J)I

    .line 62
    move-result v1

    .line 63
    int-to-float v1, v1

    .line 64
    neg-float v1, v1

    .line 65
    .line 66
    new-array v2, v3, [Lw7/u;

    .line 67
    .line 68
    .line 69
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 70
    move-result-object v3

    .line 71
    .line 72
    sget-object v4, Landroidx/compose/material/DrawerValue;->Closed:Landroidx/compose/material/DrawerValue;

    .line 73
    .line 74
    .line 75
    invoke-static {v3, v4}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 76
    move-result-object v3

    .line 77
    const/4 v10, 0x0

    .line 78
    .line 79
    aput-object v3, v2, v10

    .line 80
    const/4 v3, 0x0

    .line 81
    .line 82
    .line 83
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 84
    move-result-object v4

    .line 85
    .line 86
    sget-object v5, Landroidx/compose/material/DrawerValue;->Open:Landroidx/compose/material/DrawerValue;

    .line 87
    .line 88
    .line 89
    invoke-static {v4, v5}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 90
    move-result-object v4

    .line 91
    const/4 v11, 0x1

    .line 92
    .line 93
    aput-object v4, v2, v11

    .line 94
    .line 95
    .line 96
    invoke-static {v2}, Lkotlin/collections/p0;->l([Lw7/u;)Ljava/util/Map;

    .line 97
    move-result-object v16

    .line 98
    .line 99
    .line 100
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 101
    move-result-object v2

    .line 102
    .line 103
    .line 104
    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 105
    move-result-object v2

    .line 106
    .line 107
    sget-object v4, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    .line 108
    .line 109
    if-ne v2, v4, :cond_4

    .line 110
    .line 111
    move/from16 v19, v11

    .line 112
    goto :goto_3

    .line 113
    .line 114
    :cond_4
    move/from16 v19, v10

    .line 115
    .line 116
    :goto_3
    sget-object v12, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 117
    .line 118
    iget-object v2, v0, Landroidx/compose/material/DrawerKt$ModalDrawer$1;->$drawerState:Landroidx/compose/material/DrawerState;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2}, Landroidx/compose/material/DrawerState;->e()Landroidx/compose/material/SwipeableState;

    .line 122
    move-result-object v15

    .line 123
    .line 124
    sget-object v17, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 125
    .line 126
    .line 127
    invoke-static {}, Landroidx/compose/material/DrawerKt;->k()F

    .line 128
    move-result v23

    .line 129
    .line 130
    iget-boolean v2, v0, Landroidx/compose/material/DrawerKt$ModalDrawer$1;->$gesturesEnabled:Z

    .line 131
    .line 132
    const/16 v20, 0x0

    .line 133
    .line 134
    sget-object v21, Landroidx/compose/material/DrawerKt$ModalDrawer$1$1;->INSTANCE:Landroidx/compose/material/DrawerKt$ModalDrawer$1$1;

    .line 135
    .line 136
    const/16 v22, 0x0

    .line 137
    .line 138
    const/16 v24, 0x20

    .line 139
    .line 140
    const/16 v25, 0x0

    .line 141
    move-object v14, v12

    .line 142
    .line 143
    move/from16 v18, v2

    .line 144
    .line 145
    .line 146
    invoke-static/range {v14 .. v25}, Landroidx/compose/material/SwipeableKt;->i(Landroidx/compose/ui/Modifier;Landroidx/compose/material/SwipeableState;Ljava/util/Map;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/interaction/MutableInteractionSource;Le8/p;Landroidx/compose/material/ResistanceConfig;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 147
    move-result-object v2

    .line 148
    .line 149
    iget-object v14, v0, Landroidx/compose/material/DrawerKt$ModalDrawer$1;->$drawerState:Landroidx/compose/material/DrawerState;

    .line 150
    .line 151
    iget v15, v0, Landroidx/compose/material/DrawerKt$ModalDrawer$1;->$$dirty:I

    .line 152
    .line 153
    iget-wide v4, v0, Landroidx/compose/material/DrawerKt$ModalDrawer$1;->$scrimColor:J

    .line 154
    .line 155
    iget-object v7, v0, Landroidx/compose/material/DrawerKt$ModalDrawer$1;->$drawerShape:Landroidx/compose/ui/graphics/Shape;

    .line 156
    .line 157
    move-wide/from16 v16, v4

    .line 158
    .line 159
    iget-wide v3, v0, Landroidx/compose/material/DrawerKt$ModalDrawer$1;->$drawerBackgroundColor:J

    .line 160
    .line 161
    iget-wide v5, v0, Landroidx/compose/material/DrawerKt$ModalDrawer$1;->$drawerContentColor:J

    .line 162
    .line 163
    iget v11, v0, Landroidx/compose/material/DrawerKt$ModalDrawer$1;->$drawerElevation:F

    .line 164
    .line 165
    iget-object v10, v0, Landroidx/compose/material/DrawerKt$ModalDrawer$1;->$content:Le8/p;

    .line 166
    .line 167
    move-wide/from16 v19, v3

    .line 168
    .line 169
    iget-boolean v3, v0, Landroidx/compose/material/DrawerKt$ModalDrawer$1;->$gesturesEnabled:Z

    .line 170
    .line 171
    iget-object v4, v0, Landroidx/compose/material/DrawerKt$ModalDrawer$1;->$scope:Lkotlinx/coroutines/o0;

    .line 172
    .line 173
    move/from16 v21, v11

    .line 174
    .line 175
    iget-object v11, v0, Landroidx/compose/material/DrawerKt$ModalDrawer$1;->$drawerContent:Le8/q;

    .line 176
    .line 177
    .line 178
    const v0, 0x2bb5b5d7

    .line 179
    .line 180
    .line 181
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 182
    .line 183
    sget-object v22, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 184
    .line 185
    .line 186
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/Alignment$Companion;->o()Landroidx/compose/ui/Alignment;

    .line 187
    move-result-object v0

    .line 188
    .line 189
    move-wide/from16 v24, v5

    .line 190
    const/4 v5, 0x0

    .line 191
    .line 192
    .line 193
    invoke-static {v0, v5, v13, v5}, Landroidx/compose/foundation/layout/BoxKt;->h(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 194
    move-result-object v0

    .line 195
    .line 196
    .line 197
    const v5, -0x4ee9b9da

    .line 198
    .line 199
    .line 200
    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 201
    .line 202
    .line 203
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 204
    move-result-object v6

    .line 205
    .line 206
    .line 207
    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 208
    move-result-object v6

    .line 209
    .line 210
    check-cast v6, Landroidx/compose/ui/unit/Density;

    .line 211
    .line 212
    .line 213
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 214
    move-result-object v5

    .line 215
    .line 216
    .line 217
    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 218
    move-result-object v5

    .line 219
    .line 220
    check-cast v5, Landroidx/compose/ui/unit/LayoutDirection;

    .line 221
    .line 222
    move-object/from16 v27, v7

    .line 223
    .line 224
    .line 225
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 226
    move-result-object v7

    .line 227
    .line 228
    .line 229
    invoke-interface {v13, v7}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 230
    move-result-object v7

    .line 231
    .line 232
    check-cast v7, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 233
    .line 234
    sget-object v28, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 235
    .line 236
    move-object/from16 v29, v11

    .line 237
    .line 238
    .line 239
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 240
    move-result-object v11

    .line 241
    .line 242
    .line 243
    invoke-static {v2}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 244
    move-result-object v2

    .line 245
    .line 246
    move-wide/from16 v30, v8

    .line 247
    .line 248
    .line 249
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 250
    move-result-object v8

    .line 251
    .line 252
    instance-of v8, v8, Landroidx/compose/runtime/Applier;

    .line 253
    .line 254
    if-nez v8, :cond_5

    .line 255
    .line 256
    .line 257
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 258
    .line 259
    .line 260
    :cond_5
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->e()V

    .line 261
    .line 262
    .line 263
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->r()Z

    .line 264
    move-result v8

    .line 265
    .line 266
    if-eqz v8, :cond_6

    .line 267
    .line 268
    .line 269
    invoke-interface {v13, v11}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 270
    goto :goto_4

    .line 271
    .line 272
    .line 273
    :cond_6
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->c()V

    .line 274
    .line 275
    .line 276
    :goto_4
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->L()V

    .line 277
    .line 278
    .line 279
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 280
    move-result-object v8

    .line 281
    .line 282
    .line 283
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 284
    move-result-object v9

    .line 285
    .line 286
    .line 287
    invoke-static {v8, v0, v9}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 291
    move-result-object v0

    .line 292
    .line 293
    .line 294
    invoke-static {v8, v6, v0}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 298
    move-result-object v0

    .line 299
    .line 300
    .line 301
    invoke-static {v8, v5, v0}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 305
    move-result-object v0

    .line 306
    .line 307
    .line 308
    invoke-static {v8, v7, v0}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 309
    .line 310
    .line 311
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->o()V

    .line 312
    .line 313
    .line 314
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 315
    move-result-object v0

    .line 316
    .line 317
    .line 318
    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 319
    move-result-object v0

    .line 320
    const/4 v5, 0x0

    .line 321
    .line 322
    .line 323
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 324
    move-result-object v6

    .line 325
    .line 326
    .line 327
    invoke-interface {v2, v0, v13, v6}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    const v0, 0x7ab4aae9

    .line 331
    .line 332
    .line 333
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 334
    .line 335
    .line 336
    const v2, -0x7f65a980

    .line 337
    .line 338
    .line 339
    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 340
    .line 341
    sget-object v5, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 342
    .line 343
    .line 344
    const v5, -0x4b4a6a43

    .line 345
    .line 346
    .line 347
    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 348
    .line 349
    .line 350
    const v5, 0x2bb5b5d7

    .line 351
    .line 352
    .line 353
    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 354
    .line 355
    .line 356
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/Alignment$Companion;->o()Landroidx/compose/ui/Alignment;

    .line 357
    move-result-object v5

    .line 358
    const/4 v6, 0x0

    .line 359
    .line 360
    .line 361
    invoke-static {v5, v6, v13, v6}, Landroidx/compose/foundation/layout/BoxKt;->h(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 362
    move-result-object v5

    .line 363
    .line 364
    .line 365
    const v6, -0x4ee9b9da

    .line 366
    .line 367
    .line 368
    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 369
    .line 370
    .line 371
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 372
    move-result-object v6

    .line 373
    .line 374
    .line 375
    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 376
    move-result-object v6

    .line 377
    .line 378
    check-cast v6, Landroidx/compose/ui/unit/Density;

    .line 379
    .line 380
    .line 381
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 382
    move-result-object v7

    .line 383
    .line 384
    .line 385
    invoke-interface {v13, v7}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 386
    move-result-object v7

    .line 387
    .line 388
    check-cast v7, Landroidx/compose/ui/unit/LayoutDirection;

    .line 389
    .line 390
    .line 391
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 392
    move-result-object v8

    .line 393
    .line 394
    .line 395
    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 396
    move-result-object v8

    .line 397
    .line 398
    check-cast v8, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 399
    .line 400
    .line 401
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 402
    move-result-object v9

    .line 403
    .line 404
    .line 405
    invoke-static {v12}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 406
    move-result-object v11

    .line 407
    .line 408
    .line 409
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 410
    move-result-object v2

    .line 411
    .line 412
    instance-of v2, v2, Landroidx/compose/runtime/Applier;

    .line 413
    .line 414
    if-nez v2, :cond_7

    .line 415
    .line 416
    .line 417
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 418
    .line 419
    .line 420
    :cond_7
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->e()V

    .line 421
    .line 422
    .line 423
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->r()Z

    .line 424
    move-result v2

    .line 425
    .line 426
    if-eqz v2, :cond_8

    .line 427
    .line 428
    .line 429
    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 430
    goto :goto_5

    .line 431
    .line 432
    .line 433
    :cond_8
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->c()V

    .line 434
    .line 435
    .line 436
    :goto_5
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->L()V

    .line 437
    .line 438
    .line 439
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 440
    move-result-object v2

    .line 441
    .line 442
    .line 443
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 444
    move-result-object v9

    .line 445
    .line 446
    .line 447
    invoke-static {v2, v5, v9}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 448
    .line 449
    .line 450
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 451
    move-result-object v5

    .line 452
    .line 453
    .line 454
    invoke-static {v2, v6, v5}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 455
    .line 456
    .line 457
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 458
    move-result-object v5

    .line 459
    .line 460
    .line 461
    invoke-static {v2, v7, v5}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 462
    .line 463
    .line 464
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 465
    move-result-object v5

    .line 466
    .line 467
    .line 468
    invoke-static {v2, v8, v5}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 469
    .line 470
    .line 471
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->o()V

    .line 472
    .line 473
    .line 474
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 475
    move-result-object v2

    .line 476
    .line 477
    .line 478
    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 479
    move-result-object v2

    .line 480
    const/4 v5, 0x0

    .line 481
    .line 482
    .line 483
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 484
    move-result-object v6

    .line 485
    .line 486
    .line 487
    invoke-interface {v11, v2, v13, v6}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 491
    .line 492
    .line 493
    const v0, -0x7f65a980

    .line 494
    .line 495
    .line 496
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 497
    .line 498
    .line 499
    const v0, 0x1efd843

    .line 500
    .line 501
    .line 502
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 503
    .line 504
    shr-int/lit8 v0, v15, 0x1b

    .line 505
    .line 506
    and-int/lit8 v0, v0, 0xe

    .line 507
    .line 508
    .line 509
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 510
    move-result-object v0

    .line 511
    .line 512
    .line 513
    invoke-interface {v10, v13, v0}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 517
    .line 518
    .line 519
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 520
    .line 521
    .line 522
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 523
    .line 524
    .line 525
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->d()V

    .line 526
    .line 527
    .line 528
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 529
    .line 530
    .line 531
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v14}, Landroidx/compose/material/DrawerState;->f()Z

    .line 535
    move-result v0

    .line 536
    .line 537
    new-instance v2, Landroidx/compose/material/DrawerKt$ModalDrawer$1$2$2;

    .line 538
    .line 539
    .line 540
    invoke-direct {v2, v3, v14, v4}, Landroidx/compose/material/DrawerKt$ModalDrawer$1$2$2;-><init>(ZLandroidx/compose/material/DrawerState;Lkotlinx/coroutines/o0;)V

    .line 541
    .line 542
    .line 543
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 544
    move-result-object v3

    .line 545
    const/4 v5, 0x0

    .line 546
    .line 547
    .line 548
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 549
    move-result-object v6

    .line 550
    .line 551
    .line 552
    const v5, 0x607fb4c4

    .line 553
    .line 554
    .line 555
    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 556
    .line 557
    .line 558
    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 559
    move-result v3

    .line 560
    .line 561
    .line 562
    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 563
    move-result v5

    .line 564
    or-int/2addr v3, v5

    .line 565
    .line 566
    .line 567
    invoke-interface {v13, v14}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 568
    move-result v5

    .line 569
    or-int/2addr v3, v5

    .line 570
    .line 571
    .line 572
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 573
    move-result-object v5

    .line 574
    .line 575
    if-nez v3, :cond_9

    .line 576
    .line 577
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 578
    .line 579
    .line 580
    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 581
    move-result-object v3

    .line 582
    .line 583
    if-ne v5, v3, :cond_a

    .line 584
    .line 585
    :cond_9
    new-instance v5, Landroidx/compose/material/DrawerKt$ModalDrawer$1$2$3$1;

    .line 586
    const/4 v3, 0x0

    .line 587
    .line 588
    .line 589
    invoke-direct {v5, v1, v3, v14}, Landroidx/compose/material/DrawerKt$ModalDrawer$1$2$3$1;-><init>(FFLandroidx/compose/material/DrawerState;)V

    .line 590
    .line 591
    .line 592
    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 593
    .line 594
    .line 595
    :cond_a
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 596
    move-object v3, v5

    .line 597
    .line 598
    check-cast v3, Le8/a;

    .line 599
    .line 600
    shr-int/lit8 v1, v15, 0xf

    .line 601
    .line 602
    and-int/lit16 v7, v1, 0x1c00

    .line 603
    move v1, v0

    .line 604
    .line 605
    move-wide/from16 v8, v19

    .line 606
    move-object v0, v4

    .line 607
    .line 608
    move-wide/from16 v10, v24

    .line 609
    .line 610
    move-wide/from16 v4, v16

    .line 611
    .line 612
    move-object/from16 v6, p2

    .line 613
    .line 614
    move-object/from16 v16, v27

    .line 615
    .line 616
    .line 617
    invoke-static/range {v1 .. v7}, Landroidx/compose/material/DrawerKt;->h(ZLe8/a;Le8/a;JLandroidx/compose/runtime/Composer;I)V

    .line 618
    .line 619
    sget-object v1, Landroidx/compose/material/Strings;->Companion:Landroidx/compose/material/Strings$Companion;

    .line 620
    .line 621
    .line 622
    invoke-virtual {v1}, Landroidx/compose/material/Strings$Companion;->e()I

    .line 623
    move-result v1

    .line 624
    const/4 v2, 0x6

    .line 625
    .line 626
    .line 627
    invoke-static {v1, v13, v2}, Landroidx/compose/material/Strings_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 628
    move-result-object v1

    .line 629
    .line 630
    .line 631
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 632
    move-result-object v2

    .line 633
    .line 634
    .line 635
    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 636
    move-result-object v2

    .line 637
    .line 638
    check-cast v2, Landroidx/compose/ui/unit/Density;

    .line 639
    .line 640
    .line 641
    invoke-static/range {v30 .. v31}, Landroidx/compose/ui/unit/Constraints;->p(J)I

    .line 642
    move-result v3

    .line 643
    .line 644
    .line 645
    invoke-interface {v2, v3}, Landroidx/compose/ui/unit/Density;->j(I)F

    .line 646
    move-result v3

    .line 647
    .line 648
    .line 649
    invoke-static/range {v30 .. v31}, Landroidx/compose/ui/unit/Constraints;->o(J)I

    .line 650
    move-result v4

    .line 651
    .line 652
    .line 653
    invoke-interface {v2, v4}, Landroidx/compose/ui/unit/Density;->j(I)F

    .line 654
    move-result v4

    .line 655
    .line 656
    .line 657
    invoke-static/range {v30 .. v31}, Landroidx/compose/ui/unit/Constraints;->n(J)I

    .line 658
    move-result v5

    .line 659
    .line 660
    .line 661
    invoke-interface {v2, v5}, Landroidx/compose/ui/unit/Density;->j(I)F

    .line 662
    move-result v5

    .line 663
    .line 664
    .line 665
    invoke-static/range {v30 .. v31}, Landroidx/compose/ui/unit/Constraints;->m(J)I

    .line 666
    move-result v6

    .line 667
    .line 668
    .line 669
    invoke-interface {v2, v6}, Landroidx/compose/ui/unit/Density;->j(I)F

    .line 670
    move-result v2

    .line 671
    .line 672
    .line 673
    invoke-static {v12, v3, v4, v5, v2}, Landroidx/compose/foundation/layout/SizeKt;->B(Landroidx/compose/ui/Modifier;FFFF)Landroidx/compose/ui/Modifier;

    .line 674
    move-result-object v2

    .line 675
    .line 676
    .line 677
    const v3, 0x44faf204

    .line 678
    .line 679
    .line 680
    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 681
    .line 682
    .line 683
    invoke-interface {v13, v14}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 684
    move-result v3

    .line 685
    .line 686
    .line 687
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 688
    move-result-object v4

    .line 689
    .line 690
    if-nez v3, :cond_b

    .line 691
    .line 692
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 693
    .line 694
    .line 695
    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 696
    move-result-object v3

    .line 697
    .line 698
    if-ne v4, v3, :cond_c

    .line 699
    .line 700
    :cond_b
    new-instance v4, Landroidx/compose/material/DrawerKt$ModalDrawer$1$2$5$1;

    .line 701
    .line 702
    .line 703
    invoke-direct {v4, v14}, Landroidx/compose/material/DrawerKt$ModalDrawer$1$2$5$1;-><init>(Landroidx/compose/material/DrawerState;)V

    .line 704
    .line 705
    .line 706
    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 707
    .line 708
    .line 709
    :cond_c
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 710
    .line 711
    check-cast v4, Le8/l;

    .line 712
    .line 713
    .line 714
    invoke-static {v2, v4}, Landroidx/compose/foundation/layout/OffsetKt;->a(Landroidx/compose/ui/Modifier;Le8/l;)Landroidx/compose/ui/Modifier;

    .line 715
    move-result-object v22

    .line 716
    .line 717
    const/16 v23, 0x0

    .line 718
    .line 719
    const/16 v24, 0x0

    .line 720
    .line 721
    .line 722
    invoke-static {}, Landroidx/compose/material/DrawerKt;->l()F

    .line 723
    move-result v25

    .line 724
    .line 725
    const/16 v26, 0x0

    .line 726
    .line 727
    const/16 v27, 0xb

    .line 728
    .line 729
    const/16 v28, 0x0

    .line 730
    .line 731
    .line 732
    invoke-static/range {v22 .. v28}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 733
    move-result-object v2

    .line 734
    .line 735
    new-instance v3, Landroidx/compose/material/DrawerKt$ModalDrawer$1$2$6;

    .line 736
    .line 737
    .line 738
    invoke-direct {v3, v1, v14, v0}, Landroidx/compose/material/DrawerKt$ModalDrawer$1$2$6;-><init>(Ljava/lang/String;Landroidx/compose/material/DrawerState;Lkotlinx/coroutines/o0;)V

    .line 739
    const/4 v0, 0x0

    .line 740
    const/4 v1, 0x0

    .line 741
    const/4 v4, 0x1

    .line 742
    .line 743
    .line 744
    invoke-static {v2, v1, v3, v4, v0}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->c(Landroidx/compose/ui/Modifier;ZLe8/l;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 745
    move-result-object v1

    .line 746
    const/4 v7, 0x0

    .line 747
    .line 748
    new-instance v0, Landroidx/compose/material/DrawerKt$ModalDrawer$1$2$7;

    .line 749
    .line 750
    move-object/from16 v2, v29

    .line 751
    .line 752
    .line 753
    invoke-direct {v0, v2, v15}, Landroidx/compose/material/DrawerKt$ModalDrawer$1$2$7;-><init>(Le8/q;I)V

    .line 754
    .line 755
    .line 756
    const v2, -0x73b4e307

    .line 757
    .line 758
    .line 759
    invoke-static {v13, v2, v4, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 760
    move-result-object v0

    .line 761
    .line 762
    shr-int/lit8 v2, v15, 0x9

    .line 763
    .line 764
    and-int/lit8 v2, v2, 0x70

    .line 765
    .line 766
    const/high16 v3, 0x180000

    .line 767
    or-int/2addr v2, v3

    .line 768
    .line 769
    shr-int/lit8 v3, v15, 0xc

    .line 770
    .line 771
    and-int/lit16 v4, v3, 0x380

    .line 772
    or-int/2addr v2, v4

    .line 773
    .line 774
    and-int/lit16 v3, v3, 0x1c00

    .line 775
    or-int/2addr v2, v3

    .line 776
    .line 777
    const/high16 v3, 0x70000

    .line 778
    and-int/2addr v3, v15

    .line 779
    .line 780
    or-int v12, v2, v3

    .line 781
    .line 782
    const/16 v14, 0x10

    .line 783
    .line 784
    move-object/from16 v2, v16

    .line 785
    move-wide v3, v8

    .line 786
    move-wide v5, v10

    .line 787
    .line 788
    move/from16 v8, v21

    .line 789
    move-object v9, v0

    .line 790
    .line 791
    move-object/from16 v10, p2

    .line 792
    move v11, v12

    .line 793
    move v12, v14

    .line 794
    .line 795
    .line 796
    invoke-static/range {v1 .. v12}, Landroidx/compose/material/SurfaceKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLe8/p;Landroidx/compose/runtime/Composer;II)V

    .line 797
    .line 798
    .line 799
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 800
    .line 801
    .line 802
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 803
    .line 804
    .line 805
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 806
    .line 807
    .line 808
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->d()V

    .line 809
    .line 810
    .line 811
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 812
    .line 813
    .line 814
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 815
    :goto_6
    return-void

    .line 816
    .line 817
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 818
    .line 819
    const-string v1, "Drawer shouldn\'t have infinite width"

    .line 820
    .line 821
    .line 822
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 823
    throw v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;

    .line 3
    .line 4
    check-cast p2, Landroidx/compose/runtime/Composer;

    .line 5
    .line 6
    check-cast p3, Ljava/lang/Number;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 10
    move-result p3

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material/DrawerKt$ModalDrawer$1;->a(Landroidx/compose/foundation/layout/BoxWithConstraintsScope;Landroidx/compose/runtime/Composer;I)V

    .line 14
    .line 15
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 16
    return-object p1
.end method
