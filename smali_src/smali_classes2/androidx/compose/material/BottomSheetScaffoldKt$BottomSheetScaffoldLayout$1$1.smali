.class final Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/BottomSheetScaffoldKt;->b(Le8/p;Le8/q;Le8/q;Le8/p;Le8/p;FILandroidx/compose/runtime/State;Landroidx/compose/material/BottomSheetState;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/p<",
        "Landroidx/compose/ui/layout/SubcomposeMeasureScope;",
        "Landroidx/compose/ui/unit/Constraints;",
        "Landroidx/compose/ui/layout/MeasureResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $body:Le8/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/q<",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $bottomSheet:Le8/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/q<",
            "Ljava/lang/Integer;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $floatingActionButton:Le8/p;
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

.field final synthetic $floatingActionButtonPosition:I

.field final synthetic $sheetOffset:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $sheetPeekHeight:F

.field final synthetic $sheetState:Landroidx/compose/material/BottomSheetState;

.field final synthetic $snackbarHost:Le8/p;
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

.field final synthetic $topBar:Le8/p;
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


# direct methods
.method constructor <init>(Landroidx/compose/runtime/State;Le8/p;Le8/p;IFLe8/p;Landroidx/compose/material/BottomSheetState;Le8/q;ILe8/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;",
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
            ">;IF",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/material/BottomSheetState;",
            "Le8/q<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;I",
            "Le8/q<",
            "-",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1;->$sheetOffset:Landroidx/compose/runtime/State;

    iput-object p2, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1;->$topBar:Le8/p;

    iput-object p3, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1;->$floatingActionButton:Le8/p;

    iput p4, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1;->$floatingActionButtonPosition:I

    iput p5, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1;->$sheetPeekHeight:F

    iput-object p6, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1;->$snackbarHost:Le8/p;

    iput-object p7, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1;->$sheetState:Landroidx/compose/material/BottomSheetState;

    iput-object p8, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1;->$bottomSheet:Le8/q;

    iput p9, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1;->$$dirty:I

    iput-object p10, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1;->$body:Le8/q;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/layout/SubcomposeMeasureScope;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 22
    .param p1    # Landroidx/compose/ui/layout/SubcomposeMeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    move-object/from16 v1, p1

    .line 5
    .line 6
    const-string v2, "$this$SubcomposeLayout"

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/Constraints;->n(J)I

    .line 13
    move-result v2

    .line 14
    .line 15
    .line 16
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/Constraints;->m(J)I

    .line 17
    move-result v3

    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v7, 0x0

    .line 20
    const/4 v8, 0x0

    .line 21
    const/4 v9, 0x0

    .line 22
    .line 23
    const/16 v10, 0xa

    .line 24
    const/4 v11, 0x0

    .line 25
    .line 26
    move-wide/from16 v4, p2

    .line 27
    .line 28
    .line 29
    invoke-static/range {v4 .. v11}, Landroidx/compose/ui/unit/Constraints;->e(JIIIIILjava/lang/Object;)J

    .line 30
    move-result-wide v4

    .line 31
    .line 32
    sget-object v6, Landroidx/compose/material/BottomSheetScaffoldLayoutSlot;->Sheet:Landroidx/compose/material/BottomSheetScaffoldLayoutSlot;

    .line 33
    .line 34
    new-instance v7, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$sheetPlaceable$1;

    .line 35
    .line 36
    iget-object v8, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1;->$bottomSheet:Le8/q;

    .line 37
    .line 38
    iget v9, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1;->$$dirty:I

    .line 39
    .line 40
    .line 41
    invoke-direct {v7, v8, v3, v9}, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$sheetPlaceable$1;-><init>(Le8/q;II)V

    .line 42
    .line 43
    .line 44
    const v8, 0x1f061120

    .line 45
    const/4 v9, 0x1

    .line 46
    .line 47
    .line 48
    invoke-static {v8, v9, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->c(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 49
    move-result-object v7

    .line 50
    .line 51
    .line 52
    invoke-interface {v1, v6, v7}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->v(Ljava/lang/Object;Le8/p;)Ljava/util/List;

    .line 53
    move-result-object v6

    .line 54
    const/4 v7, 0x0

    .line 55
    .line 56
    .line 57
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    move-result-object v6

    .line 59
    .line 60
    check-cast v6, Landroidx/compose/ui/layout/Measurable;

    .line 61
    .line 62
    .line 63
    invoke-interface {v6, v4, v5}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 64
    move-result-object v6

    .line 65
    .line 66
    iget-object v8, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1;->$sheetOffset:Landroidx/compose/runtime/State;

    .line 67
    .line 68
    .line 69
    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 70
    move-result-object v8

    .line 71
    .line 72
    check-cast v8, Ljava/lang/Number;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    .line 76
    move-result v8

    .line 77
    .line 78
    .line 79
    invoke-static {v8}, Lg8/a;->c(F)I

    .line 80
    move-result v8

    .line 81
    .line 82
    iget-object v10, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1;->$topBar:Le8/p;

    .line 83
    .line 84
    if-eqz v10, :cond_0

    .line 85
    .line 86
    iget v12, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1;->$$dirty:I

    .line 87
    .line 88
    sget-object v13, Landroidx/compose/material/BottomSheetScaffoldLayoutSlot;->TopBar:Landroidx/compose/material/BottomSheetScaffoldLayoutSlot;

    .line 89
    .line 90
    new-instance v14, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$topBarPlaceable$1$1;

    .line 91
    .line 92
    .line 93
    invoke-direct {v14, v10, v12}, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$topBarPlaceable$1$1;-><init>(Le8/p;I)V

    .line 94
    .line 95
    .line 96
    const v10, 0x76857217

    .line 97
    .line 98
    .line 99
    invoke-static {v10, v9, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->c(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 100
    move-result-object v10

    .line 101
    .line 102
    .line 103
    invoke-interface {v1, v13, v10}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->v(Ljava/lang/Object;Le8/p;)Ljava/util/List;

    .line 104
    move-result-object v10

    .line 105
    .line 106
    .line 107
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 108
    move-result-object v10

    .line 109
    .line 110
    check-cast v10, Landroidx/compose/ui/layout/Measurable;

    .line 111
    .line 112
    .line 113
    invoke-interface {v10, v4, v5}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 114
    move-result-object v10

    .line 115
    .line 116
    move-object/from16 v20, v10

    .line 117
    goto :goto_0

    .line 118
    .line 119
    :cond_0
    const/16 v20, 0x0

    .line 120
    .line 121
    :goto_0
    if-eqz v20, :cond_1

    .line 122
    .line 123
    .line 124
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 125
    move-result v10

    .line 126
    .line 127
    move/from16 v21, v10

    .line 128
    goto :goto_1

    .line 129
    .line 130
    :cond_1
    move/from16 v21, v7

    .line 131
    :goto_1
    const/4 v14, 0x0

    .line 132
    const/4 v15, 0x0

    .line 133
    .line 134
    const/16 v16, 0x0

    .line 135
    .line 136
    sub-int v17, v3, v21

    .line 137
    .line 138
    const/16 v18, 0x7

    .line 139
    .line 140
    const/16 v19, 0x0

    .line 141
    move-wide v12, v4

    .line 142
    .line 143
    .line 144
    invoke-static/range {v12 .. v19}, Landroidx/compose/ui/unit/Constraints;->e(JIIIIILjava/lang/Object;)J

    .line 145
    move-result-wide v12

    .line 146
    .line 147
    sget-object v10, Landroidx/compose/material/BottomSheetScaffoldLayoutSlot;->Body:Landroidx/compose/material/BottomSheetScaffoldLayoutSlot;

    .line 148
    .line 149
    new-instance v14, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$bodyPlaceable$1;

    .line 150
    .line 151
    iget-object v15, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1;->$body:Le8/q;

    .line 152
    .line 153
    iget v11, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1;->$sheetPeekHeight:F

    .line 154
    .line 155
    iget v7, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1;->$$dirty:I

    .line 156
    .line 157
    .line 158
    invoke-direct {v14, v15, v11, v7}, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$bodyPlaceable$1;-><init>(Le8/q;FI)V

    .line 159
    .line 160
    .line 161
    const v7, 0x5765c775

    .line 162
    .line 163
    .line 164
    invoke-static {v7, v9, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->c(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 165
    move-result-object v7

    .line 166
    .line 167
    .line 168
    invoke-interface {v1, v10, v7}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->v(Ljava/lang/Object;Le8/p;)Ljava/util/List;

    .line 169
    move-result-object v7

    .line 170
    const/4 v10, 0x0

    .line 171
    .line 172
    .line 173
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 174
    move-result-object v7

    .line 175
    .line 176
    check-cast v7, Landroidx/compose/ui/layout/Measurable;

    .line 177
    .line 178
    .line 179
    invoke-interface {v7, v12, v13}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 180
    move-result-object v11

    .line 181
    .line 182
    iget-object v7, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1;->$floatingActionButton:Le8/p;

    .line 183
    .line 184
    if-eqz v7, :cond_2

    .line 185
    .line 186
    sget-object v12, Landroidx/compose/material/BottomSheetScaffoldLayoutSlot;->Fab:Landroidx/compose/material/BottomSheetScaffoldLayoutSlot;

    .line 187
    .line 188
    .line 189
    invoke-interface {v1, v12, v7}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->v(Ljava/lang/Object;Le8/p;)Ljava/util/List;

    .line 190
    move-result-object v7

    .line 191
    .line 192
    .line 193
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 194
    move-result-object v7

    .line 195
    .line 196
    check-cast v7, Landroidx/compose/ui/layout/Measurable;

    .line 197
    .line 198
    .line 199
    invoke-interface {v7, v4, v5}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 200
    move-result-object v7

    .line 201
    .line 202
    move-object/from16 v16, v7

    .line 203
    goto :goto_2

    .line 204
    .line 205
    :cond_2
    const/16 v16, 0x0

    .line 206
    .line 207
    :goto_2
    if-eqz v16, :cond_3

    .line 208
    .line 209
    .line 210
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 211
    move-result v10

    .line 212
    goto :goto_3

    .line 213
    :cond_3
    const/4 v10, 0x0

    .line 214
    .line 215
    :goto_3
    if-eqz v16, :cond_4

    .line 216
    .line 217
    .line 218
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 219
    move-result v7

    .line 220
    goto :goto_4

    .line 221
    :cond_4
    const/4 v7, 0x0

    .line 222
    .line 223
    :goto_4
    iget v12, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1;->$floatingActionButtonPosition:I

    .line 224
    .line 225
    sget-object v13, Landroidx/compose/material/FabPosition;->Companion:Landroidx/compose/material/FabPosition$Companion;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v13}, Landroidx/compose/material/FabPosition$Companion;->a()I

    .line 229
    move-result v13

    .line 230
    .line 231
    .line 232
    invoke-static {v12, v13}, Landroidx/compose/material/FabPosition;->f(II)Z

    .line 233
    move-result v12

    .line 234
    const/4 v13, 0x2

    .line 235
    .line 236
    if-eqz v12, :cond_5

    .line 237
    .line 238
    sub-int v10, v2, v10

    .line 239
    div-int/2addr v10, v13

    .line 240
    .line 241
    :goto_5
    move/from16 v17, v10

    .line 242
    goto :goto_6

    .line 243
    .line 244
    :cond_5
    sub-int v10, v2, v10

    .line 245
    .line 246
    .line 247
    invoke-static {}, Landroidx/compose/material/BottomSheetScaffoldKt;->h()F

    .line 248
    move-result v12

    .line 249
    .line 250
    .line 251
    invoke-interface {v1, v12}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 252
    move-result v12

    .line 253
    sub-int/2addr v10, v12

    .line 254
    goto :goto_5

    .line 255
    .line 256
    :goto_6
    iget v10, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1;->$sheetPeekHeight:F

    .line 257
    .line 258
    .line 259
    invoke-interface {v1, v10}, Landroidx/compose/ui/unit/Density;->H0(F)F

    .line 260
    move-result v10

    .line 261
    .line 262
    div-int/lit8 v12, v7, 0x2

    .line 263
    int-to-float v14, v12

    .line 264
    .line 265
    cmpg-float v10, v10, v14

    .line 266
    .line 267
    if-gez v10, :cond_6

    .line 268
    .line 269
    sub-int v7, v8, v7

    .line 270
    .line 271
    .line 272
    invoke-static {}, Landroidx/compose/material/BottomSheetScaffoldKt;->h()F

    .line 273
    move-result v10

    .line 274
    .line 275
    .line 276
    invoke-interface {v1, v10}, Landroidx/compose/ui/unit/Density;->j0(F)I

    .line 277
    move-result v10

    .line 278
    sub-int/2addr v7, v10

    .line 279
    .line 280
    :goto_7
    move/from16 v18, v7

    .line 281
    goto :goto_8

    .line 282
    .line 283
    :cond_6
    sub-int v7, v8, v12

    .line 284
    goto :goto_7

    .line 285
    .line 286
    :goto_8
    sget-object v7, Landroidx/compose/material/BottomSheetScaffoldLayoutSlot;->Snackbar:Landroidx/compose/material/BottomSheetScaffoldLayoutSlot;

    .line 287
    .line 288
    iget-object v10, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1;->$snackbarHost:Le8/p;

    .line 289
    .line 290
    .line 291
    invoke-interface {v1, v7, v10}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->v(Ljava/lang/Object;Le8/p;)Ljava/util/List;

    .line 292
    move-result-object v7

    .line 293
    const/4 v10, 0x0

    .line 294
    .line 295
    .line 296
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 297
    move-result-object v7

    .line 298
    .line 299
    check-cast v7, Landroidx/compose/ui/layout/Measurable;

    .line 300
    .line 301
    .line 302
    invoke-interface {v7, v4, v5}, Landroidx/compose/ui/layout/Measurable;->b0(J)Landroidx/compose/ui/layout/Placeable;

    .line 303
    move-result-object v19

    .line 304
    .line 305
    .line 306
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 307
    move-result v4

    .line 308
    .line 309
    sub-int v4, v2, v4

    .line 310
    div-int/2addr v4, v13

    .line 311
    .line 312
    iget-object v5, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1;->$sheetState:Landroidx/compose/material/BottomSheetState;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v5}, Landroidx/compose/material/SwipeableState;->p()Ljava/lang/Object;

    .line 316
    move-result-object v5

    .line 317
    .line 318
    check-cast v5, Landroidx/compose/material/BottomSheetValue;

    .line 319
    .line 320
    sget-object v7, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 321
    .line 322
    .line 323
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 324
    move-result v5

    .line 325
    .line 326
    aget v5, v7, v5

    .line 327
    .line 328
    if-eq v5, v9, :cond_8

    .line 329
    .line 330
    if-ne v5, v13, :cond_7

    .line 331
    .line 332
    .line 333
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 334
    move-result v5

    .line 335
    .line 336
    sub-int v5, v3, v5

    .line 337
    goto :goto_9

    .line 338
    .line 339
    :cond_7
    new-instance v1, Lw7/s;

    .line 340
    .line 341
    .line 342
    invoke-direct {v1}, Lw7/s;-><init>()V

    .line 343
    throw v1

    .line 344
    .line 345
    .line 346
    :cond_8
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 347
    move-result v5

    .line 348
    .line 349
    sub-int v5, v18, v5

    .line 350
    :goto_9
    const/4 v7, 0x0

    .line 351
    .line 352
    new-instance v9, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;

    .line 353
    move-object v10, v9

    .line 354
    .line 355
    move/from16 v12, v21

    .line 356
    .line 357
    move-object/from16 v13, v20

    .line 358
    move-object v14, v6

    .line 359
    move v15, v8

    .line 360
    .line 361
    move/from16 v20, v4

    .line 362
    .line 363
    move/from16 v21, v5

    .line 364
    .line 365
    .line 366
    invoke-direct/range {v10 .. v21}, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$1;-><init>(Landroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;II)V

    .line 367
    const/4 v6, 0x4

    .line 368
    const/4 v8, 0x0

    .line 369
    .line 370
    move-object/from16 v1, p1

    .line 371
    move-object v4, v7

    .line 372
    move-object v5, v9

    .line 373
    move-object v7, v8

    .line 374
    .line 375
    .line 376
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/MeasureScope$-CC;->b(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Le8/l;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 377
    move-result-object v1

    .line 378
    return-object v1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    .line 3
    .line 4
    check-cast p2, Landroidx/compose/ui/unit/Constraints;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Landroidx/compose/ui/unit/Constraints;->t()J

    .line 8
    move-result-wide v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, v0, v1}, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1;->a(Landroidx/compose/ui/layout/SubcomposeMeasureScope;J)Landroidx/compose/ui/layout/MeasureResult;

    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
