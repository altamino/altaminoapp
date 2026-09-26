.class final Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1;->a(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/q<",
        "Ljava/lang/Integer;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lw7/l0;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBottomSheetScaffold.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BottomSheetScaffold.kt\nandroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1$1\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,487:1\n36#2:488\n1057#3,6:489\n*S KotlinDebug\n*F\n+ 1 BottomSheetScaffold.kt\nandroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1$1\n*L\n355#1:488\n355#1:489,6\n*E\n"
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $$dirty1:I

.field final synthetic $bottomSheetHeight$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $peekHeightPx:F

.field final synthetic $scaffoldState:Landroidx/compose/material/BottomSheetScaffoldState;

.field final synthetic $semantics:Landroidx/compose/ui/Modifier;

.field final synthetic $sheetBackgroundColor:J

.field final synthetic $sheetContent:Le8/q;
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

.field final synthetic $sheetContentColor:J

.field final synthetic $sheetElevation:F

.field final synthetic $sheetGesturesEnabled:Z

.field final synthetic $sheetPeekHeight:F

.field final synthetic $sheetShape:Landroidx/compose/ui/graphics/Shape;


# direct methods
.method constructor <init>(FLandroidx/compose/material/BottomSheetScaffoldState;ZLandroidx/compose/ui/Modifier;FLandroidx/compose/runtime/MutableState;Landroidx/compose/ui/graphics/Shape;JJFIILe8/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Landroidx/compose/material/BottomSheetScaffoldState;",
            "Z",
            "Landroidx/compose/ui/Modifier;",
            "F",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJFII",
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
    iput p1, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1$1;->$peekHeightPx:F

    iput-object p2, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1$1;->$scaffoldState:Landroidx/compose/material/BottomSheetScaffoldState;

    iput-boolean p3, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1$1;->$sheetGesturesEnabled:Z

    iput-object p4, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1$1;->$semantics:Landroidx/compose/ui/Modifier;

    iput p5, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1$1;->$sheetPeekHeight:F

    iput-object p6, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1$1;->$bottomSheetHeight$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p7, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1$1;->$sheetShape:Landroidx/compose/ui/graphics/Shape;

    iput-wide p8, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1$1;->$sheetBackgroundColor:J

    iput-wide p10, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1$1;->$sheetContentColor:J

    iput p12, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1$1;->$sheetElevation:F

    iput p13, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1$1;->$$dirty:I

    iput p14, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1$1;->$$dirty1:I

    iput-object p15, p0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1$1;->$sheetContent:Le8/q;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(ILandroidx/compose/runtime/Composer;I)V
    .locals 23
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
    move/from16 v1, p1

    .line 5
    .line 6
    move-object/from16 v10, p2

    .line 7
    .line 8
    and-int/lit8 v2, p3, 0xe

    .line 9
    const/4 v3, 0x2

    .line 10
    .line 11
    if-nez v2, :cond_1

    .line 12
    .line 13
    .line 14
    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->p(I)Z

    .line 15
    move-result v2

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    const/4 v2, 0x4

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v2, v3

    .line 21
    .line 22
    :goto_0
    or-int v2, p3, v2

    .line 23
    goto :goto_1

    .line 24
    .line 25
    :cond_1
    move/from16 v2, p3

    .line 26
    .line 27
    :goto_1
    and-int/lit8 v2, v2, 0x5b

    .line 28
    .line 29
    const/16 v4, 0x12

    .line 30
    .line 31
    if-ne v2, v4, :cond_3

    .line 32
    .line 33
    .line 34
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->b()Z

    .line 35
    move-result v2

    .line 36
    .line 37
    if-nez v2, :cond_2

    .line 38
    goto :goto_2

    .line 39
    .line 40
    .line 41
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->g()V

    .line 42
    .line 43
    goto/16 :goto_6

    .line 44
    .line 45
    :cond_3
    :goto_2
    iget-object v2, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1$1;->$bottomSheetHeight$delegate:Landroidx/compose/runtime/MutableState;

    .line 46
    .line 47
    .line 48
    invoke-static {v2}, Landroidx/compose/material/BottomSheetScaffoldKt;->f(Landroidx/compose/runtime/MutableState;)Ljava/lang/Float;

    .line 49
    move-result-object v2

    .line 50
    const/4 v4, 0x1

    .line 51
    .line 52
    if-nez v2, :cond_4

    .line 53
    .line 54
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 55
    .line 56
    goto/16 :goto_5

    .line 57
    .line 58
    .line 59
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 60
    move-result v5

    .line 61
    .line 62
    .line 63
    invoke-static {v5}, Lg8/a;->c(F)I

    .line 64
    move-result v5

    .line 65
    .line 66
    iget v6, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1$1;->$peekHeightPx:F

    .line 67
    .line 68
    .line 69
    invoke-static {v6}, Lg8/a;->c(F)I

    .line 70
    move-result v6

    .line 71
    .line 72
    if-ne v5, v6, :cond_5

    .line 73
    int-to-float v1, v1

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 77
    move-result v2

    .line 78
    sub-float/2addr v1, v2

    .line 79
    .line 80
    .line 81
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 82
    move-result-object v1

    .line 83
    .line 84
    sget-object v2, Landroidx/compose/material/BottomSheetValue;->Collapsed:Landroidx/compose/material/BottomSheetValue;

    .line 85
    .line 86
    .line 87
    invoke-static {v1, v2}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 88
    move-result-object v1

    .line 89
    .line 90
    .line 91
    invoke-static {v1}, Lkotlin/collections/p0;->f(Lw7/u;)Ljava/util/Map;

    .line 92
    move-result-object v1

    .line 93
    :goto_3
    move-object v13, v1

    .line 94
    goto :goto_4

    .line 95
    .line 96
    :cond_5
    new-array v2, v3, [Lw7/u;

    .line 97
    int-to-float v1, v1

    .line 98
    .line 99
    iget-object v5, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1$1;->$bottomSheetHeight$delegate:Landroidx/compose/runtime/MutableState;

    .line 100
    .line 101
    .line 102
    invoke-static {v5}, Landroidx/compose/material/BottomSheetScaffoldKt;->f(Landroidx/compose/runtime/MutableState;)Ljava/lang/Float;

    .line 103
    move-result-object v5

    .line 104
    .line 105
    .line 106
    invoke-static {v5}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 110
    move-result v5

    .line 111
    .line 112
    sub-float v5, v1, v5

    .line 113
    .line 114
    .line 115
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 116
    move-result-object v5

    .line 117
    .line 118
    sget-object v6, Landroidx/compose/material/BottomSheetValue;->Expanded:Landroidx/compose/material/BottomSheetValue;

    .line 119
    .line 120
    .line 121
    invoke-static {v5, v6}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 122
    move-result-object v5

    .line 123
    const/4 v6, 0x0

    .line 124
    .line 125
    aput-object v5, v2, v6

    .line 126
    .line 127
    iget v5, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1$1;->$peekHeightPx:F

    .line 128
    sub-float/2addr v1, v5

    .line 129
    .line 130
    .line 131
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 132
    move-result-object v1

    .line 133
    .line 134
    sget-object v5, Landroidx/compose/material/BottomSheetValue;->Collapsed:Landroidx/compose/material/BottomSheetValue;

    .line 135
    .line 136
    .line 137
    invoke-static {v1, v5}, Lw7/a0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lw7/u;

    .line 138
    move-result-object v1

    .line 139
    .line 140
    aput-object v1, v2, v4

    .line 141
    .line 142
    .line 143
    invoke-static {v2}, Lkotlin/collections/p0;->l([Lw7/u;)Ljava/util/Map;

    .line 144
    move-result-object v1

    .line 145
    goto :goto_3

    .line 146
    .line 147
    :goto_4
    sget-object v11, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 148
    .line 149
    iget-object v1, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1$1;->$scaffoldState:Landroidx/compose/material/BottomSheetScaffoldState;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1}, Landroidx/compose/material/BottomSheetScaffoldState;->a()Landroidx/compose/material/BottomSheetState;

    .line 153
    move-result-object v12

    .line 154
    .line 155
    sget-object v14, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 156
    .line 157
    iget-boolean v15, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1$1;->$sheetGesturesEnabled:Z

    .line 158
    .line 159
    const/16 v16, 0x0

    .line 160
    .line 161
    const/16 v17, 0x0

    .line 162
    .line 163
    const/16 v18, 0x0

    .line 164
    .line 165
    const/16 v19, 0x0

    .line 166
    .line 167
    const/16 v20, 0x0

    .line 168
    .line 169
    const/16 v21, 0x170

    .line 170
    .line 171
    const/16 v22, 0x0

    .line 172
    .line 173
    .line 174
    invoke-static/range {v11 .. v22}, Landroidx/compose/material/SwipeableKt;->i(Landroidx/compose/ui/Modifier;Landroidx/compose/material/SwipeableState;Ljava/util/Map;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/interaction/MutableInteractionSource;Le8/p;Landroidx/compose/material/ResistanceConfig;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 175
    move-result-object v1

    .line 176
    .line 177
    :goto_5
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 178
    .line 179
    iget-object v5, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1$1;->$scaffoldState:Landroidx/compose/material/BottomSheetScaffoldState;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v5}, Landroidx/compose/material/BottomSheetScaffoldState;->a()Landroidx/compose/material/BottomSheetState;

    .line 183
    move-result-object v5

    .line 184
    .line 185
    .line 186
    invoke-virtual {v5}, Landroidx/compose/material/BottomSheetState;->M()Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    .line 187
    move-result-object v5

    .line 188
    const/4 v6, 0x0

    .line 189
    .line 190
    .line 191
    invoke-static {v2, v5, v6, v3, v6}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 192
    move-result-object v2

    .line 193
    .line 194
    .line 195
    invoke-interface {v2, v1}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 196
    move-result-object v1

    .line 197
    .line 198
    iget-object v2, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1$1;->$semantics:Landroidx/compose/ui/Modifier;

    .line 199
    .line 200
    .line 201
    invoke-interface {v1, v2}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 202
    move-result-object v1

    .line 203
    const/4 v2, 0x0

    .line 204
    .line 205
    .line 206
    invoke-static {v1, v2, v4, v6}, Landroidx/compose/foundation/layout/SizeKt;->n(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 207
    move-result-object v1

    .line 208
    .line 209
    iget v5, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1$1;->$sheetPeekHeight:F

    .line 210
    .line 211
    .line 212
    invoke-static {v1, v5, v2, v3, v6}, Landroidx/compose/foundation/layout/SizeKt;->s(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 213
    move-result-object v1

    .line 214
    .line 215
    iget-object v2, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1$1;->$bottomSheetHeight$delegate:Landroidx/compose/runtime/MutableState;

    .line 216
    .line 217
    .line 218
    const v3, 0x44faf204

    .line 219
    .line 220
    .line 221
    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 222
    .line 223
    .line 224
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 225
    move-result v3

    .line 226
    .line 227
    .line 228
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 229
    move-result-object v5

    .line 230
    .line 231
    if-nez v3, :cond_6

    .line 232
    .line 233
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 237
    move-result-object v3

    .line 238
    .line 239
    if-ne v5, v3, :cond_7

    .line 240
    .line 241
    :cond_6
    new-instance v5, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1$1$1$1;

    .line 242
    .line 243
    .line 244
    invoke-direct {v5, v2}, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1$1$1$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 245
    .line 246
    .line 247
    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    :cond_7
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 251
    .line 252
    check-cast v5, Le8/l;

    .line 253
    .line 254
    .line 255
    invoke-static {v1, v5}, Landroidx/compose/ui/layout/OnRemeasuredModifierKt;->a(Landroidx/compose/ui/Modifier;Le8/l;)Landroidx/compose/ui/Modifier;

    .line 256
    move-result-object v1

    .line 257
    .line 258
    iget-object v2, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1$1;->$sheetShape:Landroidx/compose/ui/graphics/Shape;

    .line 259
    .line 260
    iget-wide v5, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1$1;->$sheetBackgroundColor:J

    .line 261
    .line 262
    iget-wide v7, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1$1;->$sheetContentColor:J

    .line 263
    const/4 v9, 0x0

    .line 264
    .line 265
    iget v11, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1$1;->$sheetElevation:F

    .line 266
    .line 267
    new-instance v3, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1$1$2;

    .line 268
    .line 269
    iget-object v12, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1$1;->$sheetContent:Le8/q;

    .line 270
    .line 271
    iget v13, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1$1;->$$dirty:I

    .line 272
    .line 273
    .line 274
    invoke-direct {v3, v12, v13}, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1$1$2;-><init>(Le8/q;I)V

    .line 275
    .line 276
    .line 277
    const v12, -0x29a86add

    .line 278
    .line 279
    .line 280
    invoke-static {v10, v12, v4, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 281
    move-result-object v12

    .line 282
    .line 283
    iget v3, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1$1;->$$dirty:I

    .line 284
    .line 285
    shr-int/lit8 v4, v3, 0x15

    .line 286
    .line 287
    and-int/lit8 v4, v4, 0x70

    .line 288
    .line 289
    const/high16 v13, 0x180000

    .line 290
    or-int/2addr v4, v13

    .line 291
    .line 292
    iget v13, v0, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1$1;->$$dirty1:I

    .line 293
    .line 294
    shl-int/lit8 v14, v13, 0x6

    .line 295
    .line 296
    and-int/lit16 v14, v14, 0x380

    .line 297
    or-int/2addr v4, v14

    .line 298
    .line 299
    shl-int/lit8 v13, v13, 0x6

    .line 300
    .line 301
    and-int/lit16 v13, v13, 0x1c00

    .line 302
    or-int/2addr v4, v13

    .line 303
    .line 304
    shr-int/lit8 v3, v3, 0xc

    .line 305
    .line 306
    const/high16 v13, 0x70000

    .line 307
    and-int/2addr v3, v13

    .line 308
    .line 309
    or-int v13, v4, v3

    .line 310
    .line 311
    const/16 v14, 0x10

    .line 312
    move-wide v3, v5

    .line 313
    move-wide v5, v7

    .line 314
    move-object v7, v9

    .line 315
    move v8, v11

    .line 316
    move-object v9, v12

    .line 317
    .line 318
    move-object/from16 v10, p2

    .line 319
    move v11, v13

    .line 320
    move v12, v14

    .line 321
    .line 322
    .line 323
    invoke-static/range {v1 .. v12}, Landroidx/compose/material/SurfaceKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLe8/p;Landroidx/compose/runtime/Composer;II)V

    .line 324
    :goto_6
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Ljava/lang/Number;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 6
    move-result p1

    .line 7
    .line 8
    check-cast p2, Landroidx/compose/runtime/Composer;

    .line 9
    .line 10
    check-cast p3, Ljava/lang/Number;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 14
    move-result p3

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material/BottomSheetScaffoldKt$BottomSheetScaffold$child$1$1;->a(ILandroidx/compose/runtime/Composer;I)V

    .line 18
    .line 19
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 20
    return-object p1
.end method
