.class final Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1;->a(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/r<",
        "Landroidx/compose/ui/unit/Constraints;",
        "Ljava/lang/Float;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lw7/l0;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBackdropScaffold.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BackdropScaffold.kt\nandroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 5 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 6 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 7 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n*L\n1#1,522:1\n36#2:523\n460#2,13:549\n473#2,3:563\n1057#3,6:524\n155#4:530\n68#5,5:531\n73#5:562\n77#5:567\n75#6:536\n76#6,11:538\n89#6:566\n76#7:537\n*S KotlinDebug\n*F\n+ 1 BackdropScaffold.kt\nandroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1\n*L\n345#1:523\n367#1:549,13\n367#1:563,3\n345#1:524,6\n372#1:530\n367#1:531,5\n367#1:562\n367#1:567\n367#1:536\n367#1:538,11\n367#1:566\n367#1:537\n*E\n"
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $$dirty1:I

.field final synthetic $frontLayerBackgroundColor:J

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

.field final synthetic $frontLayerContentColor:J

.field final synthetic $frontLayerElevation:F

.field final synthetic $frontLayerScrimColor:J

.field final synthetic $frontLayerShape:Landroidx/compose/ui/graphics/Shape;

.field final synthetic $gesturesEnabled:Z

.field final synthetic $headerHeight:F

.field final synthetic $headerHeightPx:F

.field final synthetic $peekHeight:F

.field final synthetic $peekHeightPx:F

.field final synthetic $scaffoldState:Landroidx/compose/material/BackdropScaffoldState;

.field final synthetic $scope:Lkotlinx/coroutines/o0;

.field final synthetic $snackbarHost:Le8/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/q<",
            "Landroidx/compose/material/SnackbarHostState;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $stickyFrontLayer:Z


# direct methods
.method constructor <init>(FZZLandroidx/compose/material/BackdropScaffoldState;FILandroidx/compose/ui/graphics/Shape;JJFIFLkotlinx/coroutines/o0;FLe8/p;JLe8/q;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FZZ",
            "Landroidx/compose/material/BackdropScaffoldState;",
            "FI",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJFIF",
            "Lkotlinx/coroutines/o0;",
            "F",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;J",
            "Le8/q<",
            "-",
            "Landroidx/compose/material/SnackbarHostState;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    move v1, p1

    iput v1, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$headerHeightPx:F

    move v1, p2

    iput-boolean v1, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$stickyFrontLayer:Z

    move v1, p3

    iput-boolean v1, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$gesturesEnabled:Z

    move-object v1, p4

    iput-object v1, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$scaffoldState:Landroidx/compose/material/BackdropScaffoldState;

    move v1, p5

    iput v1, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$peekHeightPx:F

    move v1, p6

    iput v1, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$$dirty:I

    move-object v1, p7

    iput-object v1, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$frontLayerShape:Landroidx/compose/ui/graphics/Shape;

    move-wide v1, p8

    iput-wide v1, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$frontLayerBackgroundColor:J

    move-wide v1, p10

    iput-wide v1, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$frontLayerContentColor:J

    move v1, p12

    iput v1, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$frontLayerElevation:F

    move/from16 v1, p13

    iput v1, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$$dirty1:I

    move/from16 v1, p14

    iput v1, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$headerHeight:F

    move-object/from16 v1, p15

    iput-object v1, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$scope:Lkotlinx/coroutines/o0;

    move/from16 v1, p16

    iput v1, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$peekHeight:F

    move-object/from16 v1, p17

    iput-object v1, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$frontLayerContent:Le8/p;

    move-wide/from16 v1, p18

    iput-wide v1, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$frontLayerScrimColor:J

    move-object/from16 v1, p20

    iput-object v1, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$snackbarHost:Le8/q;

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(JFLandroidx/compose/runtime/Composer;I)V
    .locals 31
    .param p4    # Landroidx/compose/runtime/Composer;
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
    move/from16 v1, p3

    .line 5
    .line 6
    move-object/from16 v13, p4

    .line 7
    .line 8
    and-int/lit8 v2, p5, 0xe

    .line 9
    const/4 v3, 0x2

    .line 10
    .line 11
    move-wide/from16 v4, p1

    .line 12
    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-interface {v13, v4, v5}, Landroidx/compose/runtime/Composer;->q(J)Z

    .line 17
    move-result v2

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    const/4 v2, 0x4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v2, v3

    .line 23
    .line 24
    :goto_0
    or-int v2, p5, v2

    .line 25
    goto :goto_1

    .line 26
    .line 27
    :cond_1
    move/from16 v2, p5

    .line 28
    .line 29
    :goto_1
    and-int/lit8 v6, p5, 0x70

    .line 30
    .line 31
    if-nez v6, :cond_3

    .line 32
    .line 33
    .line 34
    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->n(F)Z

    .line 35
    move-result v6

    .line 36
    .line 37
    if-eqz v6, :cond_2

    .line 38
    .line 39
    const/16 v6, 0x20

    .line 40
    goto :goto_2

    .line 41
    .line 42
    :cond_2
    const/16 v6, 0x10

    .line 43
    :goto_2
    or-int/2addr v2, v6

    .line 44
    .line 45
    :cond_3
    and-int/lit16 v2, v2, 0x2db

    .line 46
    .line 47
    const/16 v6, 0x92

    .line 48
    .line 49
    if-ne v2, v6, :cond_5

    .line 50
    .line 51
    .line 52
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->b()Z

    .line 53
    move-result v2

    .line 54
    .line 55
    if-nez v2, :cond_4

    .line 56
    goto :goto_3

    .line 57
    .line 58
    .line 59
    :cond_4
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->g()V

    .line 60
    .line 61
    goto/16 :goto_8

    .line 62
    .line 63
    .line 64
    :cond_5
    :goto_3
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/unit/Constraints;->m(J)I

    .line 65
    move-result v2

    .line 66
    int-to-float v14, v2

    .line 67
    .line 68
    iget v2, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$headerHeightPx:F

    .line 69
    .line 70
    sub-float v2, v14, v2

    .line 71
    .line 72
    iget-boolean v4, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$stickyFrontLayer:Z

    .line 73
    .line 74
    if-eqz v4, :cond_6

    .line 75
    .line 76
    .line 77
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    .line 78
    move-result v2

    .line 79
    :cond_6
    move v15, v2

    .line 80
    .line 81
    iget-boolean v1, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$gesturesEnabled:Z

    .line 82
    const/4 v2, 0x0

    .line 83
    .line 84
    if-eqz v1, :cond_7

    .line 85
    .line 86
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 87
    .line 88
    iget-object v4, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$scaffoldState:Landroidx/compose/material/BackdropScaffoldState;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4}, Landroidx/compose/material/BackdropScaffoldState;->K()Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    .line 92
    move-result-object v4

    .line 93
    .line 94
    .line 95
    invoke-static {v1, v4, v2, v3, v2}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 96
    move-result-object v1

    .line 97
    goto :goto_4

    .line 98
    .line 99
    :cond_7
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 100
    .line 101
    :goto_4
    sget-object v12, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v12, v1}, Landroidx/compose/ui/Modifier$Companion;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 105
    move-result-object v16

    .line 106
    .line 107
    iget-object v1, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$scaffoldState:Landroidx/compose/material/BackdropScaffoldState;

    .line 108
    .line 109
    new-array v3, v3, [Lw7/u;

    .line 110
    .line 111
    iget v4, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$peekHeightPx:F

    .line 112
    .line 113
    .line 114
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 115
    move-result-object v4

    .line 116
    .line 117
    sget-object v5, Landroidx/compose/material/BackdropValue;->Concealed:Landroidx/compose/material/BackdropValue;

    .line 118
    .line 119
    .line 120
    invoke-static {v4, v5}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 121
    move-result-object v4

    .line 122
    const/4 v11, 0x0

    .line 123
    .line 124
    aput-object v4, v3, v11

    .line 125
    .line 126
    .line 127
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 128
    move-result-object v4

    .line 129
    .line 130
    sget-object v5, Landroidx/compose/material/BackdropValue;->Revealed:Landroidx/compose/material/BackdropValue;

    .line 131
    .line 132
    .line 133
    invoke-static {v4, v5}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 134
    move-result-object v4

    .line 135
    const/4 v5, 0x1

    .line 136
    .line 137
    aput-object v4, v3, v5

    .line 138
    .line 139
    .line 140
    invoke-static {v3}, Lkotlin/collections/p0;->l([Lw7/u;)Ljava/util/Map;

    .line 141
    move-result-object v18

    .line 142
    .line 143
    sget-object v19, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 144
    .line 145
    iget-boolean v3, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$gesturesEnabled:Z

    .line 146
    .line 147
    const/16 v21, 0x0

    .line 148
    .line 149
    const/16 v22, 0x0

    .line 150
    .line 151
    const/16 v23, 0x0

    .line 152
    .line 153
    const/16 v24, 0x0

    .line 154
    .line 155
    const/16 v25, 0x0

    .line 156
    .line 157
    const/16 v26, 0x1f0

    .line 158
    .line 159
    const/16 v27, 0x0

    .line 160
    .line 161
    move-object/from16 v17, v1

    .line 162
    .line 163
    move/from16 v20, v3

    .line 164
    .line 165
    .line 166
    invoke-static/range {v16 .. v27}, Landroidx/compose/material/SwipeableKt;->i(Landroidx/compose/ui/Modifier;Landroidx/compose/material/SwipeableState;Ljava/util/Map;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/interaction/MutableInteractionSource;Le8/p;Landroidx/compose/material/ResistanceConfig;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 167
    move-result-object v1

    .line 168
    .line 169
    new-instance v3, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1$swipeable$1;

    .line 170
    .line 171
    iget-object v4, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$scaffoldState:Landroidx/compose/material/BackdropScaffoldState;

    .line 172
    .line 173
    iget-object v6, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$scope:Lkotlinx/coroutines/o0;

    .line 174
    .line 175
    .line 176
    invoke-direct {v3, v4, v6}, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1$swipeable$1;-><init>(Landroidx/compose/material/BackdropScaffoldState;Lkotlinx/coroutines/o0;)V

    .line 177
    .line 178
    .line 179
    invoke-static {v1, v11, v3, v5, v2}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->c(Landroidx/compose/ui/Modifier;ZLe8/l;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 180
    move-result-object v1

    .line 181
    .line 182
    iget-object v2, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$scaffoldState:Landroidx/compose/material/BackdropScaffoldState;

    .line 183
    .line 184
    .line 185
    const v3, 0x44faf204

    .line 186
    .line 187
    .line 188
    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 189
    .line 190
    .line 191
    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 192
    move-result v3

    .line 193
    .line 194
    .line 195
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 196
    move-result-object v4

    .line 197
    .line 198
    if-nez v3, :cond_8

    .line 199
    .line 200
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 204
    move-result-object v3

    .line 205
    .line 206
    if-ne v4, v3, :cond_9

    .line 207
    .line 208
    :cond_8
    new-instance v4, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1$1$1;

    .line 209
    .line 210
    .line 211
    invoke-direct {v4, v2}, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1$1$1;-><init>(Landroidx/compose/material/BackdropScaffoldState;)V

    .line 212
    .line 213
    .line 214
    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    :cond_9
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 218
    .line 219
    check-cast v4, Le8/l;

    .line 220
    .line 221
    .line 222
    invoke-static {v12, v4}, Landroidx/compose/foundation/layout/OffsetKt;->a(Landroidx/compose/ui/Modifier;Le8/l;)Landroidx/compose/ui/Modifier;

    .line 223
    move-result-object v2

    .line 224
    .line 225
    .line 226
    invoke-interface {v2, v1}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 227
    move-result-object v1

    .line 228
    .line 229
    iget-object v2, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$frontLayerShape:Landroidx/compose/ui/graphics/Shape;

    .line 230
    .line 231
    iget-wide v3, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$frontLayerBackgroundColor:J

    .line 232
    .line 233
    iget-wide v6, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$frontLayerContentColor:J

    .line 234
    .line 235
    iget v9, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$frontLayerElevation:F

    .line 236
    .line 237
    new-instance v10, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1$2;

    .line 238
    .line 239
    iget v11, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$peekHeight:F

    .line 240
    .line 241
    iget-object v8, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$frontLayerContent:Le8/p;

    .line 242
    .line 243
    iget v5, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$$dirty:I

    .line 244
    .line 245
    move/from16 v26, v14

    .line 246
    .line 247
    move/from16 p5, v15

    .line 248
    .line 249
    iget-wide v14, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$frontLayerScrimColor:J

    .line 250
    .line 251
    move-object/from16 v27, v12

    .line 252
    .line 253
    iget-object v12, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$scaffoldState:Landroidx/compose/material/BackdropScaffoldState;

    .line 254
    .line 255
    move/from16 v28, v9

    .line 256
    .line 257
    iget v9, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$$dirty1:I

    .line 258
    .line 259
    move-wide/from16 v29, v6

    .line 260
    .line 261
    iget-boolean v6, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$gesturesEnabled:Z

    .line 262
    .line 263
    iget-object v7, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$scope:Lkotlinx/coroutines/o0;

    .line 264
    .line 265
    move-object/from16 v16, v10

    .line 266
    .line 267
    move/from16 v17, v11

    .line 268
    .line 269
    move-object/from16 v18, v8

    .line 270
    .line 271
    move/from16 v19, v5

    .line 272
    .line 273
    move-wide/from16 v20, v14

    .line 274
    .line 275
    move-object/from16 v22, v12

    .line 276
    .line 277
    move/from16 v23, v9

    .line 278
    .line 279
    move/from16 v24, v6

    .line 280
    .line 281
    move-object/from16 v25, v7

    .line 282
    .line 283
    .line 284
    invoke-direct/range {v16 .. v25}, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1$2;-><init>(FLe8/p;IJLandroidx/compose/material/BackdropScaffoldState;IZLkotlinx/coroutines/o0;)V

    .line 285
    .line 286
    .line 287
    const v5, -0x3f7f2e2f

    .line 288
    const/4 v6, 0x1

    .line 289
    .line 290
    .line 291
    invoke-static {v13, v5, v6, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 292
    move-result-object v9

    .line 293
    .line 294
    iget v5, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$$dirty1:I

    .line 295
    .line 296
    shr-int/lit8 v6, v5, 0x3

    .line 297
    .line 298
    and-int/lit8 v6, v6, 0x70

    .line 299
    .line 300
    const/high16 v7, 0x180000

    .line 301
    or-int/2addr v6, v7

    .line 302
    .line 303
    shr-int/lit8 v7, v5, 0x6

    .line 304
    .line 305
    and-int/lit16 v7, v7, 0x380

    .line 306
    or-int/2addr v6, v7

    .line 307
    .line 308
    shr-int/lit8 v7, v5, 0x6

    .line 309
    .line 310
    and-int/lit16 v7, v7, 0x1c00

    .line 311
    or-int/2addr v6, v7

    .line 312
    .line 313
    const/high16 v7, 0x70000

    .line 314
    const/4 v14, 0x6

    .line 315
    shl-int/2addr v5, v14

    .line 316
    and-int/2addr v5, v7

    .line 317
    .line 318
    or-int v11, v6, v5

    .line 319
    .line 320
    const/16 v12, 0x10

    .line 321
    .line 322
    move-wide/from16 v5, v29

    .line 323
    const/4 v7, 0x0

    .line 324
    .line 325
    move/from16 v8, v28

    .line 326
    .line 327
    move-object/from16 v10, p4

    .line 328
    const/4 v15, 0x0

    .line 329
    .line 330
    move-object/from16 v16, v27

    .line 331
    .line 332
    .line 333
    invoke-static/range {v1 .. v12}, Landroidx/compose/material/SurfaceKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLe8/p;Landroidx/compose/runtime/Composer;II)V

    .line 334
    const/4 v5, 0x0

    .line 335
    const/4 v6, 0x0

    .line 336
    const/4 v7, 0x0

    .line 337
    .line 338
    iget-object v1, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$scaffoldState:Landroidx/compose/material/BackdropScaffoldState;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v1}, Landroidx/compose/material/BackdropScaffoldState;->N()Z

    .line 342
    move-result v1

    .line 343
    .line 344
    if-eqz v1, :cond_a

    .line 345
    .line 346
    iget v1, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$headerHeightPx:F

    .line 347
    .line 348
    sub-float v1, v26, v1

    .line 349
    .line 350
    cmpg-float v1, p5, v1

    .line 351
    .line 352
    if-nez v1, :cond_a

    .line 353
    .line 354
    iget v1, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$headerHeight:F

    .line 355
    :goto_5
    move v8, v1

    .line 356
    goto :goto_6

    .line 357
    :cond_a
    int-to-float v1, v15

    .line 358
    .line 359
    .line 360
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->f(F)F

    .line 361
    move-result v1

    .line 362
    goto :goto_5

    .line 363
    :goto_6
    const/4 v9, 0x7

    .line 364
    const/4 v10, 0x0

    .line 365
    .line 366
    move-object/from16 v4, v16

    .line 367
    .line 368
    .line 369
    invoke-static/range {v4 .. v10}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 370
    move-result-object v1

    .line 371
    .line 372
    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->b()Landroidx/compose/ui/Alignment;

    .line 376
    move-result-object v2

    .line 377
    .line 378
    iget-object v3, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$snackbarHost:Le8/q;

    .line 379
    .line 380
    iget-object v4, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$scaffoldState:Landroidx/compose/material/BackdropScaffoldState;

    .line 381
    .line 382
    iget v5, v0, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->$$dirty1:I

    .line 383
    .line 384
    .line 385
    const v6, 0x2bb5b5d7

    .line 386
    .line 387
    .line 388
    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 389
    .line 390
    .line 391
    invoke-static {v2, v15, v13, v14}, Landroidx/compose/foundation/layout/BoxKt;->h(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 392
    move-result-object v2

    .line 393
    .line 394
    .line 395
    const v6, -0x4ee9b9da

    .line 396
    .line 397
    .line 398
    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 399
    .line 400
    .line 401
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 402
    move-result-object v6

    .line 403
    .line 404
    .line 405
    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 406
    move-result-object v6

    .line 407
    .line 408
    check-cast v6, Landroidx/compose/ui/unit/Density;

    .line 409
    .line 410
    .line 411
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 412
    move-result-object v7

    .line 413
    .line 414
    .line 415
    invoke-interface {v13, v7}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 416
    move-result-object v7

    .line 417
    .line 418
    check-cast v7, Landroidx/compose/ui/unit/LayoutDirection;

    .line 419
    .line 420
    .line 421
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 422
    move-result-object v8

    .line 423
    .line 424
    .line 425
    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 426
    move-result-object v8

    .line 427
    .line 428
    check-cast v8, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 429
    .line 430
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 434
    move-result-object v10

    .line 435
    .line 436
    .line 437
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 438
    move-result-object v1

    .line 439
    .line 440
    .line 441
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 442
    move-result-object v11

    .line 443
    .line 444
    instance-of v11, v11, Landroidx/compose/runtime/Applier;

    .line 445
    .line 446
    if-nez v11, :cond_b

    .line 447
    .line 448
    .line 449
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 450
    .line 451
    .line 452
    :cond_b
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->e()V

    .line 453
    .line 454
    .line 455
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->r()Z

    .line 456
    move-result v11

    .line 457
    .line 458
    if-eqz v11, :cond_c

    .line 459
    .line 460
    .line 461
    invoke-interface {v13, v10}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 462
    goto :goto_7

    .line 463
    .line 464
    .line 465
    :cond_c
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->c()V

    .line 466
    .line 467
    .line 468
    :goto_7
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->L()V

    .line 469
    .line 470
    .line 471
    invoke-static/range {p4 .. p4}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 472
    move-result-object v10

    .line 473
    .line 474
    .line 475
    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 476
    move-result-object v11

    .line 477
    .line 478
    .line 479
    invoke-static {v10, v2, v11}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 483
    move-result-object v2

    .line 484
    .line 485
    .line 486
    invoke-static {v10, v6, v2}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 490
    move-result-object v2

    .line 491
    .line 492
    .line 493
    invoke-static {v10, v7, v2}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v9}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 497
    move-result-object v2

    .line 498
    .line 499
    .line 500
    invoke-static {v10, v8, v2}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 501
    .line 502
    .line 503
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->o()V

    .line 504
    .line 505
    .line 506
    invoke-static/range {p4 .. p4}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 507
    move-result-object v2

    .line 508
    .line 509
    .line 510
    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 511
    move-result-object v2

    .line 512
    .line 513
    .line 514
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 515
    move-result-object v6

    .line 516
    .line 517
    .line 518
    invoke-interface {v1, v2, v13, v6}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    .line 520
    .line 521
    const v1, 0x7ab4aae9

    .line 522
    .line 523
    .line 524
    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 525
    .line 526
    .line 527
    const v1, -0x7f65a980

    .line 528
    .line 529
    .line 530
    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 531
    .line 532
    sget-object v1, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 533
    .line 534
    .line 535
    const v1, 0x6c3c879b

    .line 536
    .line 537
    .line 538
    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 539
    .line 540
    .line 541
    invoke-virtual {v4}, Landroidx/compose/material/BackdropScaffoldState;->L()Landroidx/compose/material/SnackbarHostState;

    .line 542
    move-result-object v1

    .line 543
    .line 544
    shr-int/lit8 v2, v5, 0x12

    .line 545
    .line 546
    and-int/lit8 v2, v2, 0x70

    .line 547
    .line 548
    .line 549
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 550
    move-result-object v2

    .line 551
    .line 552
    .line 553
    invoke-interface {v3, v1, v13, v2}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    .line 555
    .line 556
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 557
    .line 558
    .line 559
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 560
    .line 561
    .line 562
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 563
    .line 564
    .line 565
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->d()V

    .line 566
    .line 567
    .line 568
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 569
    .line 570
    .line 571
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->Q()V

    .line 572
    :goto_8
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/unit/Constraints;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/compose/ui/unit/Constraints;->t()J

    .line 6
    move-result-wide v1

    .line 7
    .line 8
    check-cast p2, Ljava/lang/Number;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    .line 12
    move-result v3

    .line 13
    move-object v4, p3

    .line 14
    .line 15
    check-cast v4, Landroidx/compose/runtime/Composer;

    .line 16
    .line 17
    check-cast p4, Ljava/lang/Number;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    .line 21
    move-result v5

    .line 22
    move-object v0, p0

    .line 23
    .line 24
    .line 25
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/material/BackdropScaffoldKt$BackdropScaffold$1$1;->a(JFLandroidx/compose/runtime/Composer;I)V

    .line 26
    .line 27
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 28
    return-object p1
.end method
