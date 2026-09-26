.class final Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SwipeToDismissKt;->a(Landroidx/compose/material/DismissState;Landroidx/compose/ui/Modifier;Ljava/util/Set;Le8/l;Le8/q;Le8/q;Landroidx/compose/runtime/Composer;II)V
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
    value = "SMAP\nSwipeToDismiss.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SwipeToDismiss.kt\nandroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$2\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 6 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 7 Row.kt\nandroidx/compose/foundation/layout/RowKt\n*L\n1#1,239:1\n76#2:240\n76#2:255\n76#2:288\n76#2:333\n36#3:241\n460#3,13:267\n460#3,13:300\n473#3,3:314\n36#3:319\n460#3,13:345\n473#3,3:359\n473#3,3:364\n1057#4,6:242\n1057#4,6:320\n67#5,6:248\n73#5:280\n77#5:368\n75#6:254\n76#6,11:256\n75#6:287\n76#6,11:289\n89#6:317\n75#6:332\n76#6,11:334\n89#6:362\n89#6:367\n75#7,6:281\n81#7:313\n85#7:318\n75#7,6:326\n81#7:358\n85#7:363\n*S KotlinDebug\n*F\n+ 1 SwipeToDismiss.kt\nandroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$2\n*L\n181#1:240\n194#1:255\n209#1:288\n213#1:333\n187#1:241\n194#1:267,13\n209#1:300,13\n209#1:314,3\n215#1:319\n213#1:345,13\n213#1:359,3\n194#1:364,3\n187#1:242,6\n215#1:320,6\n194#1:248,6\n194#1:280\n194#1:368\n194#1:254\n194#1:256,11\n209#1:287\n209#1:289,11\n209#1:317\n213#1:332\n213#1:334,11\n213#1:362\n194#1:367\n209#1:281,6\n209#1:313\n209#1:318\n213#1:326,6\n213#1:358\n213#1:363\n*E\n"
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $background:Le8/q;
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

.field final synthetic $directions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/compose/material/DismissDirection;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $dismissContent:Le8/q;
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

.field final synthetic $dismissThresholds:Le8/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/l<",
            "Landroidx/compose/material/DismissDirection;",
            "Landroidx/compose/material/ThresholdConfig;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $state:Landroidx/compose/material/DismissState;


# direct methods
.method constructor <init>(Ljava/util/Set;Le8/l;ILandroidx/compose/material/DismissState;Le8/q;Le8/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Landroidx/compose/material/DismissDirection;",
            ">;",
            "Le8/l<",
            "-",
            "Landroidx/compose/material/DismissDirection;",
            "+",
            "Landroidx/compose/material/ThresholdConfig;",
            ">;I",
            "Landroidx/compose/material/DismissState;",
            "Le8/q<",
            "-",
            "Landroidx/compose/foundation/layout/RowScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Le8/q<",
            "-",
            "Landroidx/compose/foundation/layout/RowScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$2;->$directions:Ljava/util/Set;

    iput-object p2, p0, Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$2;->$dismissThresholds:Le8/l;

    iput p3, p0, Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$2;->$$dirty:I

    iput-object p4, p0, Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$2;->$state:Landroidx/compose/material/DismissState;

    iput-object p5, p0, Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$2;->$background:Le8/q;

    iput-object p6, p0, Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$2;->$dismissContent:Le8/q;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/foundation/layout/BoxWithConstraintsScope;Landroidx/compose/runtime/Composer;I)V
    .locals 21
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
    move-object/from16 v2, p2

    .line 7
    .line 8
    const-string v3, "$this$BoxWithConstraints"

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    and-int/lit8 v3, p3, 0xe

    .line 14
    .line 15
    if-nez v3, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 19
    move-result v3

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    const/4 v3, 0x4

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v3, 0x2

    .line 25
    .line 26
    :goto_0
    or-int v3, p3, v3

    .line 27
    goto :goto_1

    .line 28
    .line 29
    :cond_1
    move/from16 v3, p3

    .line 30
    .line 31
    :goto_1
    and-int/lit8 v3, v3, 0x5b

    .line 32
    .line 33
    const/16 v5, 0x12

    .line 34
    .line 35
    if-ne v3, v5, :cond_3

    .line 36
    .line 37
    .line 38
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->b()Z

    .line 39
    move-result v3

    .line 40
    .line 41
    if-nez v3, :cond_2

    .line 42
    goto :goto_2

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->g()V

    .line 46
    .line 47
    goto/16 :goto_d

    .line 48
    .line 49
    .line 50
    :cond_3
    :goto_2
    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;->b()J

    .line 51
    move-result-wide v5

    .line 52
    .line 53
    .line 54
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/Constraints;->n(J)I

    .line 55
    move-result v1

    .line 56
    int-to-float v1, v1

    .line 57
    .line 58
    .line 59
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 60
    move-result-object v3

    .line 61
    .line 62
    .line 63
    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 64
    move-result-object v3

    .line 65
    .line 66
    sget-object v5, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    .line 67
    const/4 v6, 0x1

    .line 68
    const/4 v7, 0x0

    .line 69
    .line 70
    if-ne v3, v5, :cond_4

    .line 71
    move v13, v6

    .line 72
    goto :goto_3

    .line 73
    :cond_4
    move v13, v7

    .line 74
    .line 75
    :goto_3
    new-array v3, v6, [Lw7/u;

    .line 76
    const/4 v5, 0x0

    .line 77
    .line 78
    .line 79
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 80
    move-result-object v5

    .line 81
    .line 82
    sget-object v8, Landroidx/compose/material/DismissValue;->Default:Landroidx/compose/material/DismissValue;

    .line 83
    .line 84
    .line 85
    invoke-static {v5, v8}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 86
    move-result-object v5

    .line 87
    .line 88
    aput-object v5, v3, v7

    .line 89
    .line 90
    .line 91
    invoke-static {v3}, Lkotlin/collections/p0;->n([Lw7/u;)Ljava/util/Map;

    .line 92
    move-result-object v10

    .line 93
    .line 94
    iget-object v3, v0, Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$2;->$directions:Ljava/util/Set;

    .line 95
    .line 96
    sget-object v5, Landroidx/compose/material/DismissDirection;->StartToEnd:Landroidx/compose/material/DismissDirection;

    .line 97
    .line 98
    .line 99
    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 100
    move-result v3

    .line 101
    .line 102
    if-eqz v3, :cond_5

    .line 103
    .line 104
    .line 105
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 106
    move-result-object v3

    .line 107
    .line 108
    sget-object v9, Landroidx/compose/material/DismissValue;->DismissedToEnd:Landroidx/compose/material/DismissValue;

    .line 109
    .line 110
    .line 111
    invoke-static {v3, v9}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 112
    move-result-object v3

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3}, Lw7/u;->c()Ljava/lang/Object;

    .line 116
    move-result-object v9

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3}, Lw7/u;->d()Ljava/lang/Object;

    .line 120
    move-result-object v3

    .line 121
    .line 122
    .line 123
    invoke-interface {v10, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    :cond_5
    iget-object v3, v0, Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$2;->$directions:Ljava/util/Set;

    .line 126
    .line 127
    sget-object v9, Landroidx/compose/material/DismissDirection;->EndToStart:Landroidx/compose/material/DismissDirection;

    .line 128
    .line 129
    .line 130
    invoke-interface {v3, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 131
    move-result v3

    .line 132
    .line 133
    if-eqz v3, :cond_6

    .line 134
    neg-float v3, v1

    .line 135
    .line 136
    .line 137
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 138
    move-result-object v3

    .line 139
    .line 140
    sget-object v11, Landroidx/compose/material/DismissValue;->DismissedToStart:Landroidx/compose/material/DismissValue;

    .line 141
    .line 142
    .line 143
    invoke-static {v3, v11}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 144
    move-result-object v3

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3}, Lw7/u;->c()Ljava/lang/Object;

    .line 148
    move-result-object v11

    .line 149
    .line 150
    .line 151
    invoke-virtual {v3}, Lw7/u;->d()Ljava/lang/Object;

    .line 152
    move-result-object v3

    .line 153
    .line 154
    .line 155
    invoke-interface {v10, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    :cond_6
    iget-object v3, v0, Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$2;->$dismissThresholds:Le8/l;

    .line 158
    .line 159
    .line 160
    const v15, 0x44faf204

    .line 161
    .line 162
    .line 163
    invoke-interface {v2, v15}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 164
    .line 165
    .line 166
    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 167
    move-result v11

    .line 168
    .line 169
    .line 170
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 171
    move-result-object v12

    .line 172
    .line 173
    if-nez v11, :cond_7

    .line 174
    .line 175
    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 179
    move-result-object v11

    .line 180
    .line 181
    if-ne v12, v11, :cond_8

    .line 182
    .line 183
    :cond_7
    new-instance v12, Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$2$thresholds$1$1;

    .line 184
    .line 185
    .line 186
    invoke-direct {v12, v3}, Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$2$thresholds$1$1;-><init>(Le8/l;)V

    .line 187
    .line 188
    .line 189
    invoke-interface {v2, v12}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    :cond_8
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 193
    move-object v3, v12

    .line 194
    .line 195
    check-cast v3, Le8/p;

    .line 196
    .line 197
    iget-object v11, v0, Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$2;->$directions:Ljava/util/Set;

    .line 198
    .line 199
    .line 200
    invoke-interface {v11, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 201
    move-result v9

    .line 202
    .line 203
    const/high16 v11, 0x41a00000    # 20.0f

    .line 204
    .line 205
    const/high16 v12, 0x41200000    # 10.0f

    .line 206
    .line 207
    if-eqz v9, :cond_9

    .line 208
    move v9, v12

    .line 209
    goto :goto_4

    .line 210
    :cond_9
    move v9, v11

    .line 211
    .line 212
    :goto_4
    iget-object v14, v0, Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$2;->$directions:Ljava/util/Set;

    .line 213
    .line 214
    .line 215
    invoke-interface {v14, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 216
    move-result v5

    .line 217
    .line 218
    if-eqz v5, :cond_a

    .line 219
    move v11, v12

    .line 220
    .line 221
    :cond_a
    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 222
    .line 223
    sget-object v12, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 224
    .line 225
    iget-object v14, v0, Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$2;->$state:Landroidx/compose/material/DismissState;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v14}, Landroidx/compose/material/SwipeableState;->p()Ljava/lang/Object;

    .line 229
    move-result-object v14

    .line 230
    .line 231
    if-ne v14, v8, :cond_b

    .line 232
    goto :goto_5

    .line 233
    :cond_b
    move v6, v7

    .line 234
    .line 235
    :goto_5
    new-instance v14, Landroidx/compose/material/ResistanceConfig;

    .line 236
    .line 237
    .line 238
    invoke-direct {v14, v1, v9, v11}, Landroidx/compose/material/ResistanceConfig;-><init>(FFF)V

    .line 239
    .line 240
    iget-object v9, v0, Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$2;->$state:Landroidx/compose/material/DismissState;

    .line 241
    const/4 v1, 0x0

    .line 242
    .line 243
    const/16 v17, 0x0

    .line 244
    .line 245
    const/16 v18, 0x120

    .line 246
    .line 247
    const/16 v19, 0x0

    .line 248
    move-object v8, v5

    .line 249
    move-object v11, v12

    .line 250
    move v12, v6

    .line 251
    move-object v6, v14

    .line 252
    move-object v14, v1

    .line 253
    move v1, v15

    .line 254
    move-object v15, v3

    .line 255
    .line 256
    move-object/from16 v16, v6

    .line 257
    .line 258
    .line 259
    invoke-static/range {v8 .. v19}, Landroidx/compose/material/SwipeableKt;->i(Landroidx/compose/ui/Modifier;Landroidx/compose/material/SwipeableState;Ljava/util/Map;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/interaction/MutableInteractionSource;Le8/p;Landroidx/compose/material/ResistanceConfig;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 260
    move-result-object v3

    .line 261
    .line 262
    iget-object v6, v0, Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$2;->$background:Le8/q;

    .line 263
    .line 264
    iget v8, v0, Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$2;->$$dirty:I

    .line 265
    .line 266
    iget-object v9, v0, Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$2;->$state:Landroidx/compose/material/DismissState;

    .line 267
    .line 268
    iget-object v10, v0, Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$2;->$dismissContent:Le8/q;

    .line 269
    .line 270
    .line 271
    const v11, 0x2bb5b5d7

    .line 272
    .line 273
    .line 274
    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 275
    .line 276
    sget-object v11, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v11}, Landroidx/compose/ui/Alignment$Companion;->o()Landroidx/compose/ui/Alignment;

    .line 280
    move-result-object v12

    .line 281
    .line 282
    .line 283
    invoke-static {v12, v7, v2, v7}, Landroidx/compose/foundation/layout/BoxKt;->h(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 284
    move-result-object v12

    .line 285
    .line 286
    .line 287
    const v13, -0x4ee9b9da

    .line 288
    .line 289
    .line 290
    invoke-interface {v2, v13}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 291
    .line 292
    .line 293
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 294
    move-result-object v14

    .line 295
    .line 296
    .line 297
    invoke-interface {v2, v14}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 298
    move-result-object v14

    .line 299
    .line 300
    check-cast v14, Landroidx/compose/ui/unit/Density;

    .line 301
    .line 302
    .line 303
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 304
    move-result-object v15

    .line 305
    .line 306
    .line 307
    invoke-interface {v2, v15}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 308
    move-result-object v15

    .line 309
    .line 310
    check-cast v15, Landroidx/compose/ui/unit/LayoutDirection;

    .line 311
    .line 312
    .line 313
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 314
    move-result-object v1

    .line 315
    .line 316
    .line 317
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 318
    move-result-object v1

    .line 319
    .line 320
    check-cast v1, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 321
    .line 322
    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 323
    .line 324
    .line 325
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 326
    move-result-object v4

    .line 327
    .line 328
    .line 329
    invoke-static {v3}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 330
    move-result-object v3

    .line 331
    .line 332
    .line 333
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 334
    move-result-object v13

    .line 335
    .line 336
    instance-of v13, v13, Landroidx/compose/runtime/Applier;

    .line 337
    .line 338
    if-nez v13, :cond_c

    .line 339
    .line 340
    .line 341
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 342
    .line 343
    .line 344
    :cond_c
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->e()V

    .line 345
    .line 346
    .line 347
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->r()Z

    .line 348
    move-result v13

    .line 349
    .line 350
    if-eqz v13, :cond_d

    .line 351
    .line 352
    .line 353
    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 354
    goto :goto_6

    .line 355
    .line 356
    .line 357
    :cond_d
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->c()V

    .line 358
    .line 359
    .line 360
    :goto_6
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->L()V

    .line 361
    .line 362
    .line 363
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 364
    move-result-object v4

    .line 365
    .line 366
    .line 367
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 368
    move-result-object v13

    .line 369
    .line 370
    .line 371
    invoke-static {v4, v12, v13}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 372
    .line 373
    .line 374
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 375
    move-result-object v12

    .line 376
    .line 377
    .line 378
    invoke-static {v4, v14, v12}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 382
    move-result-object v12

    .line 383
    .line 384
    .line 385
    invoke-static {v4, v15, v12}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 389
    move-result-object v12

    .line 390
    .line 391
    .line 392
    invoke-static {v4, v1, v12}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 393
    .line 394
    .line 395
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->o()V

    .line 396
    .line 397
    .line 398
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 399
    move-result-object v1

    .line 400
    .line 401
    .line 402
    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 403
    move-result-object v1

    .line 404
    .line 405
    .line 406
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 407
    move-result-object v4

    .line 408
    .line 409
    .line 410
    invoke-interface {v3, v1, v2, v4}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    const v1, 0x7ab4aae9

    .line 414
    .line 415
    .line 416
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 417
    .line 418
    .line 419
    const v3, -0x7f65a980

    .line 420
    .line 421
    .line 422
    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 423
    .line 424
    sget-object v3, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 425
    .line 426
    .line 427
    const v4, 0x3a859a93

    .line 428
    .line 429
    .line 430
    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 431
    .line 432
    .line 433
    invoke-interface {v3, v5}, Landroidx/compose/foundation/layout/BoxScope;->c(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 434
    move-result-object v3

    .line 435
    .line 436
    shr-int/lit8 v4, v8, 0x3

    .line 437
    .line 438
    and-int/lit16 v4, v4, 0x1c00

    .line 439
    .line 440
    .line 441
    const v7, 0x2952b718

    .line 442
    .line 443
    .line 444
    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 445
    .line 446
    sget-object v12, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v12}, Landroidx/compose/foundation/layout/Arrangement;->e()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 450
    move-result-object v13

    .line 451
    .line 452
    .line 453
    invoke-virtual {v11}, Landroidx/compose/ui/Alignment$Companion;->l()Landroidx/compose/ui/Alignment$Vertical;

    .line 454
    move-result-object v14

    .line 455
    .line 456
    shr-int/lit8 v15, v4, 0x3

    .line 457
    .line 458
    and-int/lit8 v19, v15, 0xe

    .line 459
    .line 460
    and-int/lit8 v15, v15, 0x70

    .line 461
    .line 462
    or-int v15, v19, v15

    .line 463
    .line 464
    .line 465
    invoke-static {v13, v14, v2, v15}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 466
    move-result-object v13

    .line 467
    .line 468
    shl-int/lit8 v14, v4, 0x3

    .line 469
    .line 470
    and-int/lit8 v14, v14, 0x70

    .line 471
    .line 472
    .line 473
    const v15, -0x4ee9b9da

    .line 474
    .line 475
    .line 476
    invoke-interface {v2, v15}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 477
    .line 478
    .line 479
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 480
    move-result-object v15

    .line 481
    .line 482
    .line 483
    invoke-interface {v2, v15}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 484
    move-result-object v15

    .line 485
    .line 486
    check-cast v15, Landroidx/compose/ui/unit/Density;

    .line 487
    .line 488
    .line 489
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 490
    move-result-object v7

    .line 491
    .line 492
    .line 493
    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 494
    move-result-object v7

    .line 495
    .line 496
    check-cast v7, Landroidx/compose/ui/unit/LayoutDirection;

    .line 497
    .line 498
    .line 499
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 500
    move-result-object v1

    .line 501
    .line 502
    .line 503
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 504
    move-result-object v1

    .line 505
    .line 506
    check-cast v1, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 507
    .line 508
    .line 509
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 510
    move-result-object v0

    .line 511
    .line 512
    .line 513
    invoke-static {v3}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 514
    move-result-object v3

    .line 515
    .line 516
    shl-int/lit8 v14, v14, 0x9

    .line 517
    .line 518
    and-int/lit16 v14, v14, 0x1c00

    .line 519
    .line 520
    or-int/lit8 v14, v14, 0x6

    .line 521
    .line 522
    move-object/from16 v20, v10

    .line 523
    .line 524
    .line 525
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 526
    move-result-object v10

    .line 527
    .line 528
    instance-of v10, v10, Landroidx/compose/runtime/Applier;

    .line 529
    .line 530
    if-nez v10, :cond_e

    .line 531
    .line 532
    .line 533
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 534
    .line 535
    .line 536
    :cond_e
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->e()V

    .line 537
    .line 538
    .line 539
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->r()Z

    .line 540
    move-result v10

    .line 541
    .line 542
    if-eqz v10, :cond_f

    .line 543
    .line 544
    .line 545
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 546
    goto :goto_7

    .line 547
    .line 548
    .line 549
    :cond_f
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->c()V

    .line 550
    .line 551
    .line 552
    :goto_7
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->L()V

    .line 553
    .line 554
    .line 555
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 556
    move-result-object v0

    .line 557
    .line 558
    .line 559
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 560
    move-result-object v10

    .line 561
    .line 562
    .line 563
    invoke-static {v0, v13, v10}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 564
    .line 565
    .line 566
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 567
    move-result-object v10

    .line 568
    .line 569
    .line 570
    invoke-static {v0, v15, v10}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 571
    .line 572
    .line 573
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 574
    move-result-object v10

    .line 575
    .line 576
    .line 577
    invoke-static {v0, v7, v10}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 578
    .line 579
    .line 580
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 581
    move-result-object v7

    .line 582
    .line 583
    .line 584
    invoke-static {v0, v1, v7}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 585
    .line 586
    .line 587
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->o()V

    .line 588
    .line 589
    .line 590
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 591
    move-result-object v0

    .line 592
    .line 593
    .line 594
    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 595
    move-result-object v0

    .line 596
    .line 597
    shr-int/lit8 v1, v14, 0x3

    .line 598
    .line 599
    and-int/lit8 v1, v1, 0x70

    .line 600
    .line 601
    .line 602
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 603
    move-result-object v1

    .line 604
    .line 605
    .line 606
    invoke-interface {v3, v0, v2, v1}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    .line 608
    .line 609
    const v0, 0x7ab4aae9

    .line 610
    .line 611
    .line 612
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 613
    .line 614
    shr-int/lit8 v0, v14, 0x9

    .line 615
    .line 616
    .line 617
    const v1, -0x286e2e7f

    .line 618
    .line 619
    .line 620
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 621
    .line 622
    and-int/lit8 v0, v0, 0xa

    .line 623
    const/4 v3, 0x2

    .line 624
    .line 625
    if-ne v0, v3, :cond_11

    .line 626
    .line 627
    .line 628
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->b()Z

    .line 629
    move-result v0

    .line 630
    .line 631
    if-nez v0, :cond_10

    .line 632
    goto :goto_8

    .line 633
    .line 634
    .line 635
    :cond_10
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->g()V

    .line 636
    goto :goto_9

    .line 637
    .line 638
    :cond_11
    :goto_8
    sget-object v0, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    .line 639
    .line 640
    shr-int/lit8 v3, v4, 0x6

    .line 641
    .line 642
    and-int/lit8 v3, v3, 0x70

    .line 643
    .line 644
    or-int/lit8 v3, v3, 0x6

    .line 645
    .line 646
    .line 647
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 648
    move-result-object v3

    .line 649
    .line 650
    .line 651
    invoke-interface {v6, v0, v2, v3}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    .line 653
    .line 654
    :goto_9
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 655
    .line 656
    .line 657
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 658
    .line 659
    .line 660
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->d()V

    .line 661
    .line 662
    .line 663
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 664
    .line 665
    .line 666
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 667
    .line 668
    .line 669
    const v0, 0x44faf204

    .line 670
    .line 671
    .line 672
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 673
    .line 674
    .line 675
    invoke-interface {v2, v9}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 676
    move-result v0

    .line 677
    .line 678
    .line 679
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 680
    move-result-object v3

    .line 681
    .line 682
    if-nez v0, :cond_12

    .line 683
    .line 684
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 685
    .line 686
    .line 687
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 688
    move-result-object v0

    .line 689
    .line 690
    if-ne v3, v0, :cond_13

    .line 691
    .line 692
    :cond_12
    new-instance v3, Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$2$1$1$1;

    .line 693
    .line 694
    .line 695
    invoke-direct {v3, v9}, Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$2$1$1$1;-><init>(Landroidx/compose/material/DismissState;)V

    .line 696
    .line 697
    .line 698
    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 699
    .line 700
    .line 701
    :cond_13
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 702
    .line 703
    check-cast v3, Le8/l;

    .line 704
    .line 705
    .line 706
    invoke-static {v5, v3}, Landroidx/compose/foundation/layout/OffsetKt;->a(Landroidx/compose/ui/Modifier;Le8/l;)Landroidx/compose/ui/Modifier;

    .line 707
    move-result-object v0

    .line 708
    .line 709
    shr-int/lit8 v3, v8, 0x6

    .line 710
    .line 711
    and-int/lit16 v3, v3, 0x1c00

    .line 712
    .line 713
    .line 714
    const v4, 0x2952b718

    .line 715
    .line 716
    .line 717
    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 718
    .line 719
    .line 720
    invoke-virtual {v12}, Landroidx/compose/foundation/layout/Arrangement;->e()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 721
    move-result-object v4

    .line 722
    .line 723
    .line 724
    invoke-virtual {v11}, Landroidx/compose/ui/Alignment$Companion;->l()Landroidx/compose/ui/Alignment$Vertical;

    .line 725
    move-result-object v5

    .line 726
    .line 727
    shr-int/lit8 v6, v3, 0x3

    .line 728
    .line 729
    and-int/lit8 v7, v6, 0xe

    .line 730
    .line 731
    and-int/lit8 v6, v6, 0x70

    .line 732
    or-int/2addr v6, v7

    .line 733
    .line 734
    .line 735
    invoke-static {v4, v5, v2, v6}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 736
    move-result-object v4

    .line 737
    .line 738
    shl-int/lit8 v5, v3, 0x3

    .line 739
    .line 740
    and-int/lit8 v5, v5, 0x70

    .line 741
    .line 742
    .line 743
    const v6, -0x4ee9b9da

    .line 744
    .line 745
    .line 746
    invoke-interface {v2, v6}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 747
    .line 748
    .line 749
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 750
    move-result-object v6

    .line 751
    .line 752
    .line 753
    invoke-interface {v2, v6}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 754
    move-result-object v6

    .line 755
    .line 756
    check-cast v6, Landroidx/compose/ui/unit/Density;

    .line 757
    .line 758
    .line 759
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 760
    move-result-object v7

    .line 761
    .line 762
    .line 763
    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 764
    move-result-object v7

    .line 765
    .line 766
    check-cast v7, Landroidx/compose/ui/unit/LayoutDirection;

    .line 767
    .line 768
    .line 769
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 770
    move-result-object v8

    .line 771
    .line 772
    .line 773
    invoke-interface {v2, v8}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 774
    move-result-object v8

    .line 775
    .line 776
    check-cast v8, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 777
    .line 778
    .line 779
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 780
    move-result-object v9

    .line 781
    .line 782
    .line 783
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 784
    move-result-object v0

    .line 785
    .line 786
    shl-int/lit8 v5, v5, 0x9

    .line 787
    .line 788
    and-int/lit16 v5, v5, 0x1c00

    .line 789
    .line 790
    or-int/lit8 v5, v5, 0x6

    .line 791
    .line 792
    .line 793
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 794
    move-result-object v10

    .line 795
    .line 796
    instance-of v10, v10, Landroidx/compose/runtime/Applier;

    .line 797
    .line 798
    if-nez v10, :cond_14

    .line 799
    .line 800
    .line 801
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 802
    .line 803
    .line 804
    :cond_14
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->e()V

    .line 805
    .line 806
    .line 807
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->r()Z

    .line 808
    move-result v10

    .line 809
    .line 810
    if-eqz v10, :cond_15

    .line 811
    .line 812
    .line 813
    invoke-interface {v2, v9}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 814
    goto :goto_a

    .line 815
    .line 816
    .line 817
    :cond_15
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->c()V

    .line 818
    .line 819
    .line 820
    :goto_a
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->L()V

    .line 821
    .line 822
    .line 823
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 824
    move-result-object v9

    .line 825
    .line 826
    .line 827
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 828
    move-result-object v10

    .line 829
    .line 830
    .line 831
    invoke-static {v9, v4, v10}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 832
    .line 833
    .line 834
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 835
    move-result-object v4

    .line 836
    .line 837
    .line 838
    invoke-static {v9, v6, v4}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 839
    .line 840
    .line 841
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 842
    move-result-object v4

    .line 843
    .line 844
    .line 845
    invoke-static {v9, v7, v4}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 846
    .line 847
    .line 848
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 849
    move-result-object v4

    .line 850
    .line 851
    .line 852
    invoke-static {v9, v8, v4}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 853
    .line 854
    .line 855
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->o()V

    .line 856
    .line 857
    .line 858
    invoke-static/range {p2 .. p2}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 859
    move-result-object v4

    .line 860
    .line 861
    .line 862
    invoke-static {v4}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 863
    move-result-object v4

    .line 864
    .line 865
    shr-int/lit8 v6, v5, 0x3

    .line 866
    .line 867
    and-int/lit8 v6, v6, 0x70

    .line 868
    .line 869
    .line 870
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 871
    move-result-object v6

    .line 872
    .line 873
    .line 874
    invoke-interface {v0, v4, v2, v6}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    .line 876
    .line 877
    const v0, 0x7ab4aae9

    .line 878
    .line 879
    .line 880
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 881
    .line 882
    shr-int/lit8 v0, v5, 0x9

    .line 883
    .line 884
    .line 885
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 886
    .line 887
    and-int/lit8 v0, v0, 0xa

    .line 888
    const/4 v1, 0x2

    .line 889
    .line 890
    if-ne v0, v1, :cond_17

    .line 891
    .line 892
    .line 893
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->b()Z

    .line 894
    move-result v0

    .line 895
    .line 896
    if-nez v0, :cond_16

    .line 897
    goto :goto_b

    .line 898
    .line 899
    .line 900
    :cond_16
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->g()V

    .line 901
    goto :goto_c

    .line 902
    .line 903
    :cond_17
    :goto_b
    sget-object v0, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    .line 904
    .line 905
    shr-int/lit8 v1, v3, 0x6

    .line 906
    .line 907
    and-int/lit8 v1, v1, 0x70

    .line 908
    .line 909
    or-int/lit8 v1, v1, 0x6

    .line 910
    .line 911
    .line 912
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 913
    move-result-object v1

    .line 914
    .line 915
    move-object/from16 v3, v20

    .line 916
    .line 917
    .line 918
    invoke-interface {v3, v0, v2, v1}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    .line 920
    .line 921
    :goto_c
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 922
    .line 923
    .line 924
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 925
    .line 926
    .line 927
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->d()V

    .line 928
    .line 929
    .line 930
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 931
    .line 932
    .line 933
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 934
    .line 935
    .line 936
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 937
    .line 938
    .line 939
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 940
    .line 941
    .line 942
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 943
    .line 944
    .line 945
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->d()V

    .line 946
    .line 947
    .line 948
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 949
    .line 950
    .line 951
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 952
    :goto_d
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
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$2;->a(Landroidx/compose/foundation/layout/BoxWithConstraintsScope;Landroidx/compose/runtime/Composer;I)V

    .line 14
    .line 15
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 16
    return-object p1
.end method
