.class final Landroidx/compose/material/DrawerKt$BottomDrawer$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/DrawerKt;->a(Le8/q;Landroidx/compose/ui/Modifier;Landroidx/compose/material/BottomDrawerState;ZLandroidx/compose/ui/graphics/Shape;FJJJLe8/p;Landroidx/compose/runtime/Composer;II)V
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
    value = "SMAP\nDrawer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Drawer.kt\nandroidx/compose/material/DrawerKt$BottomDrawer$1\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 6 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 7 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,690:1\n36#2:691\n460#2,13:718\n36#2:732\n36#2:739\n473#2,3:746\n1057#3,6:692\n1057#3,6:733\n1057#3,6:740\n76#4:698\n76#4:706\n67#5,6:699\n73#5:731\n77#5:750\n75#6:705\n76#6,11:707\n89#6:749\n76#7:751\n102#7,2:752\n*S KotlinDebug\n*F\n+ 1 Drawer.kt\nandroidx/compose/material/DrawerKt$BottomDrawer$1\n*L\n513#1:691\n554#1:718,13\n570#1:732\n571#1:739\n554#1:746,3\n513#1:692,6\n570#1:733,6\n571#1:740,6\n532#1:698\n554#1:706\n554#1:699,6\n554#1:731\n554#1:750\n554#1:705\n554#1:707,11\n554#1:749\n513#1:751\n513#1:752,2\n*E\n"
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

.field final synthetic $drawerState:Landroidx/compose/material/BottomDrawerState;

.field final synthetic $gesturesEnabled:Z

.field final synthetic $scope:Lkotlinx/coroutines/o0;

.field final synthetic $scrimColor:J


# direct methods
.method constructor <init>(ZLandroidx/compose/material/BottomDrawerState;Le8/p;IJLandroidx/compose/ui/graphics/Shape;JJFLkotlinx/coroutines/o0;Le8/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/compose/material/BottomDrawerState;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;IJ",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJF",
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
    iput-boolean p1, p0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$gesturesEnabled:Z

    iput-object p2, p0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$drawerState:Landroidx/compose/material/BottomDrawerState;

    iput-object p3, p0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$content:Le8/p;

    iput p4, p0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$$dirty:I

    iput-wide p5, p0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$scrimColor:J

    iput-object p7, p0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$drawerShape:Landroidx/compose/ui/graphics/Shape;

    iput-wide p8, p0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$drawerBackgroundColor:J

    iput-wide p10, p0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$drawerContentColor:J

    iput p12, p0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$drawerElevation:F

    iput-object p13, p0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$scope:Lkotlinx/coroutines/o0;

    iput-object p14, p0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$drawerContent:Le8/q;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method

.method public static final synthetic a(Landroidx/compose/runtime/MutableState;F)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->d(Landroidx/compose/runtime/MutableState;F)V

    .line 4
    return-void
.end method

.method private static final c(Landroidx/compose/runtime/MutableState;)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    check-cast p0, Ljava/lang/Number;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static final d(Landroidx/compose/runtime/MutableState;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;F)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 8
    return-void
.end method


# virtual methods
.method public final b(Landroidx/compose/foundation/layout/BoxWithConstraintsScope;Landroidx/compose/runtime/Composer;I)V
    .locals 27
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
    goto/16 :goto_a

    .line 49
    .line 50
    .line 51
    :cond_3
    :goto_2
    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;->b()J

    .line 52
    move-result-wide v4

    .line 53
    .line 54
    .line 55
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/Constraints;->m(J)I

    .line 56
    move-result v2

    .line 57
    int-to-float v2, v2

    .line 58
    .line 59
    .line 60
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 61
    move-result-object v4

    .line 62
    .line 63
    .line 64
    const v7, 0x44faf204

    .line 65
    .line 66
    .line 67
    invoke-interface {v13, v7}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 68
    .line 69
    .line 70
    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 71
    move-result v4

    .line 72
    .line 73
    .line 74
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 75
    move-result-object v5

    .line 76
    const/4 v8, 0x0

    .line 77
    .line 78
    if-nez v4, :cond_4

    .line 79
    .line 80
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 84
    move-result-object v4

    .line 85
    .line 86
    if-ne v5, v4, :cond_5

    .line 87
    .line 88
    .line 89
    :cond_4
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 90
    move-result-object v4

    .line 91
    .line 92
    .line 93
    invoke-static {v4, v8, v3, v8}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 94
    move-result-object v5

    .line 95
    .line 96
    .line 97
    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    :cond_5
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 101
    move-object v9, v5

    .line 102
    .line 103
    check-cast v9, Landroidx/compose/runtime/MutableState;

    .line 104
    .line 105
    .line 106
    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;->b()J

    .line 107
    move-result-wide v4

    .line 108
    .line 109
    .line 110
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/Constraints;->n(J)I

    .line 111
    move-result v4

    .line 112
    .line 113
    .line 114
    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;->b()J

    .line 115
    move-result-wide v5

    .line 116
    .line 117
    .line 118
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/Constraints;->m(J)I

    .line 119
    move-result v5

    .line 120
    const/4 v10, 0x1

    .line 121
    const/4 v11, 0x0

    .line 122
    .line 123
    if-le v4, v5, :cond_6

    .line 124
    move v4, v10

    .line 125
    goto :goto_3

    .line 126
    :cond_6
    move v4, v11

    .line 127
    .line 128
    :goto_3
    const/high16 v5, 0x3f000000    # 0.5f

    .line 129
    mul-float/2addr v5, v2

    .line 130
    .line 131
    .line 132
    invoke-static {v9}, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->c(Landroidx/compose/runtime/MutableState;)F

    .line 133
    move-result v6

    .line 134
    .line 135
    sub-float v6, v2, v6

    .line 136
    const/4 v12, 0x0

    .line 137
    .line 138
    .line 139
    invoke-static {v12, v6}, Ljava/lang/Math;->max(FF)F

    .line 140
    move-result v6

    .line 141
    .line 142
    .line 143
    invoke-static {v9}, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->c(Landroidx/compose/runtime/MutableState;)F

    .line 144
    move-result v12

    .line 145
    .line 146
    cmpg-float v12, v12, v5

    .line 147
    .line 148
    if-ltz v12, :cond_8

    .line 149
    .line 150
    if-eqz v4, :cond_7

    .line 151
    goto :goto_5

    .line 152
    :cond_7
    const/4 v4, 0x3

    .line 153
    .line 154
    new-array v4, v4, [Lw7/u;

    .line 155
    .line 156
    .line 157
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 158
    move-result-object v2

    .line 159
    .line 160
    sget-object v12, Landroidx/compose/material/BottomDrawerValue;->Closed:Landroidx/compose/material/BottomDrawerValue;

    .line 161
    .line 162
    .line 163
    invoke-static {v2, v12}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 164
    move-result-object v2

    .line 165
    .line 166
    aput-object v2, v4, v11

    .line 167
    .line 168
    .line 169
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 170
    move-result-object v2

    .line 171
    .line 172
    sget-object v5, Landroidx/compose/material/BottomDrawerValue;->Open:Landroidx/compose/material/BottomDrawerValue;

    .line 173
    .line 174
    .line 175
    invoke-static {v2, v5}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 176
    move-result-object v2

    .line 177
    .line 178
    aput-object v2, v4, v10

    .line 179
    .line 180
    .line 181
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 182
    move-result-object v2

    .line 183
    .line 184
    sget-object v5, Landroidx/compose/material/BottomDrawerValue;->Expanded:Landroidx/compose/material/BottomDrawerValue;

    .line 185
    .line 186
    .line 187
    invoke-static {v2, v5}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 188
    move-result-object v2

    .line 189
    .line 190
    aput-object v2, v4, v3

    .line 191
    .line 192
    .line 193
    invoke-static {v4}, Lkotlin/collections/p0;->l([Lw7/u;)Ljava/util/Map;

    .line 194
    move-result-object v2

    .line 195
    .line 196
    :goto_4
    move-object/from16 v16, v2

    .line 197
    goto :goto_6

    .line 198
    .line 199
    :cond_8
    :goto_5
    new-array v4, v3, [Lw7/u;

    .line 200
    .line 201
    .line 202
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 203
    move-result-object v2

    .line 204
    .line 205
    sget-object v5, Landroidx/compose/material/BottomDrawerValue;->Closed:Landroidx/compose/material/BottomDrawerValue;

    .line 206
    .line 207
    .line 208
    invoke-static {v2, v5}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 209
    move-result-object v2

    .line 210
    .line 211
    aput-object v2, v4, v11

    .line 212
    .line 213
    .line 214
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 215
    move-result-object v2

    .line 216
    .line 217
    sget-object v5, Landroidx/compose/material/BottomDrawerValue;->Expanded:Landroidx/compose/material/BottomDrawerValue;

    .line 218
    .line 219
    .line 220
    invoke-static {v2, v5}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 221
    move-result-object v2

    .line 222
    .line 223
    aput-object v2, v4, v10

    .line 224
    .line 225
    .line 226
    invoke-static {v4}, Lkotlin/collections/p0;->l([Lw7/u;)Ljava/util/Map;

    .line 227
    move-result-object v2

    .line 228
    goto :goto_4

    .line 229
    .line 230
    .line 231
    :goto_6
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 232
    move-result-object v2

    .line 233
    .line 234
    .line 235
    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 236
    move-result-object v2

    .line 237
    .line 238
    check-cast v2, Landroidx/compose/ui/unit/Density;

    .line 239
    .line 240
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 241
    .line 242
    const/16 v18, 0x0

    .line 243
    .line 244
    const/16 v19, 0x0

    .line 245
    .line 246
    .line 247
    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;->b()J

    .line 248
    move-result-wide v5

    .line 249
    .line 250
    .line 251
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/Constraints;->n(J)I

    .line 252
    move-result v5

    .line 253
    .line 254
    .line 255
    invoke-interface {v2, v5}, Landroidx/compose/ui/unit/Density;->j(I)F

    .line 256
    move-result v20

    .line 257
    .line 258
    .line 259
    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;->b()J

    .line 260
    move-result-wide v5

    .line 261
    .line 262
    .line 263
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/Constraints;->m(J)I

    .line 264
    move-result v1

    .line 265
    .line 266
    .line 267
    invoke-interface {v2, v1}, Landroidx/compose/ui/unit/Density;->j(I)F

    .line 268
    move-result v21

    .line 269
    .line 270
    const/16 v22, 0x3

    .line 271
    .line 272
    const/16 v23, 0x0

    .line 273
    .line 274
    move-object/from16 v17, v4

    .line 275
    .line 276
    .line 277
    invoke-static/range {v17 .. v23}, Landroidx/compose/foundation/layout/SizeKt;->C(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 278
    move-result-object v12

    .line 279
    .line 280
    iget-boolean v1, v0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$gesturesEnabled:Z

    .line 281
    .line 282
    if-eqz v1, :cond_9

    .line 283
    .line 284
    iget-object v1, v0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$drawerState:Landroidx/compose/material/BottomDrawerState;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v1}, Landroidx/compose/material/BottomDrawerState;->K()Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    .line 288
    move-result-object v1

    .line 289
    .line 290
    .line 291
    invoke-static {v4, v1, v8, v3, v8}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 292
    move-result-object v1

    .line 293
    goto :goto_7

    .line 294
    :cond_9
    move-object v1, v4

    .line 295
    .line 296
    .line 297
    :goto_7
    invoke-virtual {v4, v1}, Landroidx/compose/ui/Modifier$Companion;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 298
    move-result-object v14

    .line 299
    .line 300
    iget-object v15, v0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$drawerState:Landroidx/compose/material/BottomDrawerState;

    .line 301
    .line 302
    sget-object v17, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 303
    .line 304
    iget-boolean v1, v0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$gesturesEnabled:Z

    .line 305
    .line 306
    const/16 v19, 0x0

    .line 307
    .line 308
    const/16 v20, 0x0

    .line 309
    .line 310
    const/16 v21, 0x0

    .line 311
    .line 312
    const/16 v22, 0x0

    .line 313
    .line 314
    const/16 v23, 0x0

    .line 315
    .line 316
    const/16 v24, 0x170

    .line 317
    .line 318
    const/16 v25, 0x0

    .line 319
    .line 320
    move/from16 v18, v1

    .line 321
    .line 322
    .line 323
    invoke-static/range {v14 .. v25}, Landroidx/compose/material/SwipeableKt;->i(Landroidx/compose/ui/Modifier;Landroidx/compose/material/SwipeableState;Ljava/util/Map;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/interaction/MutableInteractionSource;Le8/p;Landroidx/compose/material/ResistanceConfig;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 324
    move-result-object v1

    .line 325
    .line 326
    iget-object v2, v0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$content:Le8/p;

    .line 327
    .line 328
    iget v14, v0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$$dirty:I

    .line 329
    .line 330
    iget-wide v3, v0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$scrimColor:J

    .line 331
    .line 332
    iget-object v15, v0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$drawerState:Landroidx/compose/material/BottomDrawerState;

    .line 333
    .line 334
    iget-object v6, v0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$drawerShape:Landroidx/compose/ui/graphics/Shape;

    .line 335
    .line 336
    move-object/from16 v16, v9

    .line 337
    .line 338
    iget-wide v8, v0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$drawerBackgroundColor:J

    .line 339
    .line 340
    move-wide/from16 v18, v8

    .line 341
    .line 342
    iget-wide v7, v0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$drawerContentColor:J

    .line 343
    .line 344
    iget v9, v0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$drawerElevation:F

    .line 345
    .line 346
    iget-boolean v5, v0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$gesturesEnabled:Z

    .line 347
    .line 348
    iget-object v10, v0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$scope:Lkotlinx/coroutines/o0;

    .line 349
    .line 350
    iget-object v11, v0, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->$drawerContent:Le8/q;

    .line 351
    .line 352
    .line 353
    const v0, 0x2bb5b5d7

    .line 354
    .line 355
    .line 356
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 357
    .line 358
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->o()Landroidx/compose/ui/Alignment;

    .line 362
    move-result-object v0

    .line 363
    .line 364
    move-object/from16 v22, v6

    .line 365
    const/4 v6, 0x0

    .line 366
    .line 367
    .line 368
    invoke-static {v0, v6, v13, v6}, Landroidx/compose/foundation/layout/BoxKt;->h(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 369
    move-result-object v0

    .line 370
    .line 371
    .line 372
    const v6, -0x4ee9b9da

    .line 373
    .line 374
    .line 375
    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 376
    .line 377
    .line 378
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 379
    move-result-object v6

    .line 380
    .line 381
    .line 382
    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 383
    move-result-object v6

    .line 384
    .line 385
    check-cast v6, Landroidx/compose/ui/unit/Density;

    .line 386
    .line 387
    move/from16 v23, v9

    .line 388
    .line 389
    .line 390
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 391
    move-result-object v9

    .line 392
    .line 393
    .line 394
    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 395
    move-result-object v9

    .line 396
    .line 397
    check-cast v9, Landroidx/compose/ui/unit/LayoutDirection;

    .line 398
    .line 399
    move-wide/from16 v24, v7

    .line 400
    .line 401
    .line 402
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 403
    move-result-object v7

    .line 404
    .line 405
    .line 406
    invoke-interface {v13, v7}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 407
    move-result-object v7

    .line 408
    .line 409
    check-cast v7, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 410
    .line 411
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 412
    .line 413
    move-object/from16 p1, v11

    .line 414
    .line 415
    .line 416
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 417
    move-result-object v11

    .line 418
    .line 419
    .line 420
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 421
    move-result-object v1

    .line 422
    .line 423
    move-object/from16 v26, v12

    .line 424
    .line 425
    .line 426
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 427
    move-result-object v12

    .line 428
    .line 429
    instance-of v12, v12, Landroidx/compose/runtime/Applier;

    .line 430
    .line 431
    if-nez v12, :cond_a

    .line 432
    .line 433
    .line 434
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 435
    .line 436
    .line 437
    :cond_a
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->e()V

    .line 438
    .line 439
    .line 440
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->r()Z

    .line 441
    move-result v12

    .line 442
    .line 443
    if-eqz v12, :cond_b

    .line 444
    .line 445
    .line 446
    invoke-interface {v13, v11}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 447
    goto :goto_8

    .line 448
    .line 449
    .line 450
    :cond_b
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->c()V

    .line 451
    .line 452
    .line 453
    :goto_8
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->L()V

    .line 454
    .line 455
    .line 456
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 457
    move-result-object v11

    .line 458
    .line 459
    .line 460
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 461
    move-result-object v12

    .line 462
    .line 463
    .line 464
    invoke-static {v11, v0, v12}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 468
    move-result-object v0

    .line 469
    .line 470
    .line 471
    invoke-static {v11, v6, v0}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 475
    move-result-object v0

    .line 476
    .line 477
    .line 478
    invoke-static {v11, v9, v0}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 479
    .line 480
    .line 481
    invoke-virtual {v8}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 482
    move-result-object v0

    .line 483
    .line 484
    .line 485
    invoke-static {v11, v7, v0}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 486
    .line 487
    .line 488
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->o()V

    .line 489
    .line 490
    .line 491
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 492
    move-result-object v0

    .line 493
    .line 494
    .line 495
    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 496
    move-result-object v0

    .line 497
    const/4 v6, 0x0

    .line 498
    .line 499
    .line 500
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 501
    move-result-object v7

    .line 502
    .line 503
    .line 504
    invoke-interface {v1, v0, v13, v7}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    const v0, 0x7ab4aae9

    .line 508
    .line 509
    .line 510
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 511
    .line 512
    .line 513
    const v0, -0x7f65a980

    .line 514
    .line 515
    .line 516
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 517
    .line 518
    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 519
    .line 520
    .line 521
    const v0, -0x62f26656

    .line 522
    .line 523
    .line 524
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 525
    .line 526
    shr-int/lit8 v0, v14, 0x1b

    .line 527
    .line 528
    and-int/lit8 v0, v0, 0xe

    .line 529
    .line 530
    .line 531
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 532
    move-result-object v0

    .line 533
    .line 534
    .line 535
    invoke-interface {v2, v13, v0}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    .line 537
    new-instance v0, Landroidx/compose/material/DrawerKt$BottomDrawer$1$1$1;

    .line 538
    .line 539
    .line 540
    invoke-direct {v0, v5, v15, v10}, Landroidx/compose/material/DrawerKt$BottomDrawer$1$1$1;-><init>(ZLandroidx/compose/material/BottomDrawerState;Lkotlinx/coroutines/o0;)V

    .line 541
    .line 542
    .line 543
    invoke-virtual {v15}, Landroidx/compose/material/SwipeableState;->v()Ljava/lang/Object;

    .line 544
    move-result-object v1

    .line 545
    .line 546
    sget-object v2, Landroidx/compose/material/BottomDrawerValue;->Closed:Landroidx/compose/material/BottomDrawerValue;

    .line 547
    .line 548
    if-eq v1, v2, :cond_c

    .line 549
    const/4 v5, 0x1

    .line 550
    goto :goto_9

    .line 551
    :cond_c
    const/4 v5, 0x0

    .line 552
    .line 553
    :goto_9
    shr-int/lit8 v1, v14, 0x18

    .line 554
    .line 555
    and-int/lit8 v6, v1, 0xe

    .line 556
    move-wide v1, v3

    .line 557
    move-object v3, v0

    .line 558
    move v4, v5

    .line 559
    .line 560
    move-object/from16 v5, p2

    .line 561
    .line 562
    move-object/from16 v0, v22

    .line 563
    .line 564
    .line 565
    invoke-static/range {v1 .. v6}, Landroidx/compose/material/DrawerKt;->f(JLe8/a;ZLandroidx/compose/runtime/Composer;I)V

    .line 566
    .line 567
    sget-object v1, Landroidx/compose/material/Strings;->Companion:Landroidx/compose/material/Strings$Companion;

    .line 568
    .line 569
    .line 570
    invoke-virtual {v1}, Landroidx/compose/material/Strings$Companion;->e()I

    .line 571
    move-result v1

    .line 572
    const/4 v2, 0x6

    .line 573
    .line 574
    .line 575
    invoke-static {v1, v13, v2}, Landroidx/compose/material/Strings_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 576
    move-result-object v1

    .line 577
    .line 578
    .line 579
    const v2, 0x44faf204

    .line 580
    .line 581
    .line 582
    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 583
    .line 584
    .line 585
    invoke-interface {v13, v15}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 586
    move-result v2

    .line 587
    .line 588
    .line 589
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 590
    move-result-object v3

    .line 591
    .line 592
    if-nez v2, :cond_d

    .line 593
    .line 594
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 595
    .line 596
    .line 597
    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 598
    move-result-object v2

    .line 599
    .line 600
    if-ne v3, v2, :cond_e

    .line 601
    .line 602
    :cond_d
    new-instance v3, Landroidx/compose/material/DrawerKt$BottomDrawer$1$1$2$1;

    .line 603
    .line 604
    .line 605
    invoke-direct {v3, v15}, Landroidx/compose/material/DrawerKt$BottomDrawer$1$1$2$1;-><init>(Landroidx/compose/material/BottomDrawerState;)V

    .line 606
    .line 607
    .line 608
    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 609
    .line 610
    .line 611
    :cond_e
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 612
    .line 613
    check-cast v3, Le8/l;

    .line 614
    .line 615
    move-object/from16 v2, v26

    .line 616
    .line 617
    .line 618
    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/OffsetKt;->a(Landroidx/compose/ui/Modifier;Le8/l;)Landroidx/compose/ui/Modifier;

    .line 619
    move-result-object v2

    .line 620
    .line 621
    .line 622
    const v3, 0x44faf204

    .line 623
    .line 624
    .line 625
    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 626
    .line 627
    move-object/from16 v5, v16

    .line 628
    .line 629
    .line 630
    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 631
    move-result v3

    .line 632
    .line 633
    .line 634
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 635
    move-result-object v4

    .line 636
    .line 637
    if-nez v3, :cond_f

    .line 638
    .line 639
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 640
    .line 641
    .line 642
    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 643
    move-result-object v3

    .line 644
    .line 645
    if-ne v4, v3, :cond_10

    .line 646
    .line 647
    :cond_f
    new-instance v4, Landroidx/compose/material/DrawerKt$BottomDrawer$1$1$3$1;

    .line 648
    .line 649
    .line 650
    invoke-direct {v4, v5}, Landroidx/compose/material/DrawerKt$BottomDrawer$1$1$3$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 651
    .line 652
    .line 653
    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 654
    .line 655
    .line 656
    :cond_10
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 657
    .line 658
    check-cast v4, Le8/l;

    .line 659
    .line 660
    .line 661
    invoke-static {v2, v4}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->a(Landroidx/compose/ui/Modifier;Le8/l;)Landroidx/compose/ui/Modifier;

    .line 662
    move-result-object v2

    .line 663
    .line 664
    new-instance v3, Landroidx/compose/material/DrawerKt$BottomDrawer$1$1$4;

    .line 665
    .line 666
    .line 667
    invoke-direct {v3, v1, v15, v10}, Landroidx/compose/material/DrawerKt$BottomDrawer$1$1$4;-><init>(Ljava/lang/String;Landroidx/compose/material/BottomDrawerState;Lkotlinx/coroutines/o0;)V

    .line 668
    const/4 v1, 0x0

    .line 669
    const/4 v4, 0x1

    .line 670
    const/4 v5, 0x0

    .line 671
    .line 672
    .line 673
    invoke-static {v2, v5, v3, v4, v1}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->c(Landroidx/compose/ui/Modifier;ZLe8/l;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 674
    move-result-object v1

    .line 675
    const/4 v7, 0x0

    .line 676
    .line 677
    new-instance v2, Landroidx/compose/material/DrawerKt$BottomDrawer$1$1$5;

    .line 678
    .line 679
    move-object/from16 v3, p1

    .line 680
    .line 681
    .line 682
    invoke-direct {v2, v3, v14}, Landroidx/compose/material/DrawerKt$BottomDrawer$1$1$5;-><init>(Le8/q;I)V

    .line 683
    .line 684
    .line 685
    const v3, 0x1b48b6ee

    .line 686
    .line 687
    .line 688
    invoke-static {v13, v3, v4, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 689
    move-result-object v9

    .line 690
    .line 691
    shr-int/lit8 v2, v14, 0x9

    .line 692
    .line 693
    and-int/lit8 v2, v2, 0x70

    .line 694
    .line 695
    const/high16 v3, 0x180000

    .line 696
    or-int/2addr v2, v3

    .line 697
    .line 698
    shr-int/lit8 v3, v14, 0xc

    .line 699
    .line 700
    and-int/lit16 v4, v3, 0x380

    .line 701
    or-int/2addr v2, v4

    .line 702
    .line 703
    and-int/lit16 v3, v3, 0x1c00

    .line 704
    or-int/2addr v2, v3

    .line 705
    .line 706
    const/high16 v3, 0x70000

    .line 707
    and-int/2addr v3, v14

    .line 708
    .line 709
    or-int v11, v2, v3

    .line 710
    .line 711
    const/16 v12, 0x10

    .line 712
    move-object v2, v0

    .line 713
    .line 714
    move-wide/from16 v3, v18

    .line 715
    .line 716
    move-wide/from16 v5, v24

    .line 717
    .line 718
    move/from16 v8, v23

    .line 719
    .line 720
    move-object/from16 v10, p2

    .line 721
    .line 722
    .line 723
    invoke-static/range {v1 .. v12}, Landroidx/compose/material/SurfaceKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLe8/p;Landroidx/compose/runtime/Composer;II)V

    .line 724
    .line 725
    .line 726
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 727
    .line 728
    .line 729
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 730
    .line 731
    .line 732
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 733
    .line 734
    .line 735
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->d()V

    .line 736
    .line 737
    .line 738
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 739
    .line 740
    .line 741
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 742
    :goto_a
    return-void
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
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material/DrawerKt$BottomDrawer$1;->b(Landroidx/compose/foundation/layout/BoxWithConstraintsScope;Landroidx/compose/runtime/Composer;I)V

    .line 14
    .line 15
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 16
    return-object p1
.end method
