.class final Landroidx/compose/material/SliderKt$Track$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SliderKt;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/material/SliderColors;ZFFLjava/util/List;FFLandroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/l<",
        "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
        "Lw7/l0;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSlider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Slider.kt\nandroidx/compose/material/SliderKt$Track$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,1163:1\n1475#2:1164\n1500#2,3:1165\n1503#2,3:1175\n1547#2:1179\n1618#2,3:1180\n357#3,7:1168\n211#4:1178\n212#4:1183\n*S KotlinDebug\n*F\n+ 1 Slider.kt\nandroidx/compose/material/SliderKt$Track$1\n*L\n758#1:1164\n758#1:1165,3\n758#1:1175,3\n761#1:1179\n761#1:1180,3\n758#1:1168,7\n759#1:1178\n759#1:1183\n*E\n"
.end annotation


# instance fields
.field final synthetic $activeTickColor:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $activeTrackColor:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $inactiveTickColor:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $inactiveTrackColor:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $positionFractionEnd:F

.field final synthetic $positionFractionStart:F

.field final synthetic $thumbPx:F

.field final synthetic $tickFractions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $trackStrokeWidth:F


# direct methods
.method constructor <init>(FLandroidx/compose/runtime/State;FFFLandroidx/compose/runtime/State;Ljava/util/List;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;FFF",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Landroidx/compose/material/SliderKt$Track$1;->$thumbPx:F

    iput-object p2, p0, Landroidx/compose/material/SliderKt$Track$1;->$inactiveTrackColor:Landroidx/compose/runtime/State;

    iput p3, p0, Landroidx/compose/material/SliderKt$Track$1;->$trackStrokeWidth:F

    iput p4, p0, Landroidx/compose/material/SliderKt$Track$1;->$positionFractionEnd:F

    iput p5, p0, Landroidx/compose/material/SliderKt$Track$1;->$positionFractionStart:F

    iput-object p6, p0, Landroidx/compose/material/SliderKt$Track$1;->$activeTrackColor:Landroidx/compose/runtime/State;

    iput-object p7, p0, Landroidx/compose/material/SliderKt$Track$1;->$tickFractions:Ljava/util/List;

    iput-object p8, p0, Landroidx/compose/material/SliderKt$Track$1;->$inactiveTickColor:Landroidx/compose/runtime/State;

    iput-object p9, p0, Landroidx/compose/material/SliderKt$Track$1;->$activeTickColor:Landroidx/compose/runtime/State;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 28
    .param p1    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    const-string v1, "$this$Canvas"

    .line 5
    .line 6
    move-object/from16 v15, p1

    .line 7
    .line 8
    .line 9
    invoke-static {v15, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    sget-object v2, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    .line 16
    .line 17
    const/16 v17, 0x0

    .line 18
    .line 19
    const/16 v18, 0x1

    .line 20
    .line 21
    if-ne v1, v2, :cond_0

    .line 22
    .line 23
    move/from16 v1, v18

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_0
    move/from16 v1, v17

    .line 27
    .line 28
    :goto_0
    iget v2, v0, Landroidx/compose/material/SliderKt$Track$1;->$thumbPx:F

    .line 29
    .line 30
    .line 31
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->W()J

    .line 32
    move-result-wide v3

    .line 33
    .line 34
    .line 35
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 36
    move-result v3

    .line 37
    .line 38
    .line 39
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 40
    move-result-wide v2

    .line 41
    .line 42
    .line 43
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->c()J

    .line 44
    move-result-wide v4

    .line 45
    .line 46
    .line 47
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Size;->i(J)F

    .line 48
    move-result v4

    .line 49
    .line 50
    iget v5, v0, Landroidx/compose/material/SliderKt$Track$1;->$thumbPx:F

    .line 51
    sub-float/2addr v4, v5

    .line 52
    .line 53
    .line 54
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->W()J

    .line 55
    move-result-wide v5

    .line 56
    .line 57
    .line 58
    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 59
    move-result v5

    .line 60
    .line 61
    .line 62
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 63
    move-result-wide v4

    .line 64
    .line 65
    if-eqz v1, :cond_1

    .line 66
    move-wide v13, v4

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    move-wide v13, v2

    .line 69
    .line 70
    :goto_1
    if-eqz v1, :cond_2

    .line 71
    move-wide v11, v2

    .line 72
    goto :goto_2

    .line 73
    :cond_2
    move-wide v11, v4

    .line 74
    .line 75
    :goto_2
    iget-object v1, v0, Landroidx/compose/material/SliderKt$Track$1;->$inactiveTrackColor:Landroidx/compose/runtime/State;

    .line 76
    .line 77
    .line 78
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 79
    move-result-object v1

    .line 80
    .line 81
    check-cast v1, Landroidx/compose/ui/graphics/Color;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color;->v()J

    .line 85
    move-result-wide v3

    .line 86
    .line 87
    iget v9, v0, Landroidx/compose/material/SliderKt$Track$1;->$trackStrokeWidth:F

    .line 88
    .line 89
    sget-object v1, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->b()I

    .line 93
    move-result v10

    .line 94
    .line 95
    const/16 v16, 0x0

    .line 96
    .line 97
    const/16 v19, 0x0

    .line 98
    .line 99
    const/16 v20, 0x0

    .line 100
    .line 101
    const/16 v21, 0x0

    .line 102
    .line 103
    const/16 v22, 0x1e0

    .line 104
    .line 105
    const/16 v23, 0x0

    .line 106
    .line 107
    move-object/from16 v2, p1

    .line 108
    move-wide v5, v13

    .line 109
    move-wide v7, v11

    .line 110
    .line 111
    move-wide/from16 v24, v11

    .line 112
    .line 113
    move-object/from16 v11, v16

    .line 114
    .line 115
    move/from16 v12, v19

    .line 116
    .line 117
    move-wide/from16 v26, v13

    .line 118
    .line 119
    move-object/from16 v13, v20

    .line 120
    .line 121
    move/from16 v14, v21

    .line 122
    .line 123
    move/from16 v15, v22

    .line 124
    .line 125
    move-object/from16 v16, v23

    .line 126
    .line 127
    .line 128
    invoke-static/range {v2 .. v16}, Landroidx/compose/ui/graphics/drawscope/a;->i(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    invoke-static/range {v26 .. v27}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 132
    move-result v2

    .line 133
    .line 134
    .line 135
    invoke-static/range {v24 .. v25}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 136
    move-result v3

    .line 137
    .line 138
    .line 139
    invoke-static/range {v26 .. v27}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 140
    move-result v4

    .line 141
    sub-float/2addr v3, v4

    .line 142
    .line 143
    iget v4, v0, Landroidx/compose/material/SliderKt$Track$1;->$positionFractionEnd:F

    .line 144
    mul-float/2addr v3, v4

    .line 145
    add-float/2addr v2, v3

    .line 146
    .line 147
    .line 148
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->W()J

    .line 149
    move-result-wide v3

    .line 150
    .line 151
    .line 152
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 153
    move-result v3

    .line 154
    .line 155
    .line 156
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 157
    move-result-wide v7

    .line 158
    .line 159
    .line 160
    invoke-static/range {v26 .. v27}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 161
    move-result v2

    .line 162
    .line 163
    .line 164
    invoke-static/range {v24 .. v25}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 165
    move-result v3

    .line 166
    .line 167
    .line 168
    invoke-static/range {v26 .. v27}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 169
    move-result v4

    .line 170
    sub-float/2addr v3, v4

    .line 171
    .line 172
    iget v4, v0, Landroidx/compose/material/SliderKt$Track$1;->$positionFractionStart:F

    .line 173
    mul-float/2addr v3, v4

    .line 174
    add-float/2addr v2, v3

    .line 175
    .line 176
    .line 177
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->W()J

    .line 178
    move-result-wide v3

    .line 179
    .line 180
    .line 181
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 182
    move-result v3

    .line 183
    .line 184
    .line 185
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 186
    move-result-wide v5

    .line 187
    .line 188
    iget-object v2, v0, Landroidx/compose/material/SliderKt$Track$1;->$activeTrackColor:Landroidx/compose/runtime/State;

    .line 189
    .line 190
    .line 191
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 192
    move-result-object v2

    .line 193
    .line 194
    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color;->v()J

    .line 198
    move-result-wide v3

    .line 199
    .line 200
    iget v9, v0, Landroidx/compose/material/SliderKt$Track$1;->$trackStrokeWidth:F

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->b()I

    .line 204
    move-result v10

    .line 205
    const/4 v11, 0x0

    .line 206
    const/4 v12, 0x0

    .line 207
    const/4 v13, 0x0

    .line 208
    const/4 v14, 0x0

    .line 209
    .line 210
    const/16 v15, 0x1e0

    .line 211
    .line 212
    const/16 v16, 0x0

    .line 213
    .line 214
    move-object/from16 v2, p1

    .line 215
    .line 216
    .line 217
    invoke-static/range {v2 .. v16}, Landroidx/compose/ui/graphics/drawscope/a;->i(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 218
    .line 219
    iget-object v1, v0, Landroidx/compose/material/SliderKt$Track$1;->$tickFractions:Ljava/util/List;

    .line 220
    .line 221
    check-cast v1, Ljava/lang/Iterable;

    .line 222
    .line 223
    iget v2, v0, Landroidx/compose/material/SliderKt$Track$1;->$positionFractionEnd:F

    .line 224
    .line 225
    iget v3, v0, Landroidx/compose/material/SliderKt$Track$1;->$positionFractionStart:F

    .line 226
    .line 227
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 228
    .line 229
    .line 230
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 231
    .line 232
    .line 233
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 234
    move-result-object v1

    .line 235
    .line 236
    .line 237
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 238
    move-result v5

    .line 239
    .line 240
    if-eqz v5, :cond_6

    .line 241
    .line 242
    .line 243
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 244
    move-result-object v5

    .line 245
    move-object v6, v5

    .line 246
    .line 247
    check-cast v6, Ljava/lang/Number;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    .line 251
    move-result v6

    .line 252
    .line 253
    cmpl-float v7, v6, v2

    .line 254
    .line 255
    if-gtz v7, :cond_4

    .line 256
    .line 257
    cmpg-float v6, v6, v3

    .line 258
    .line 259
    if-gez v6, :cond_3

    .line 260
    goto :goto_4

    .line 261
    .line 262
    :cond_3
    move/from16 v6, v17

    .line 263
    goto :goto_5

    .line 264
    .line 265
    :cond_4
    :goto_4
    move/from16 v6, v18

    .line 266
    .line 267
    .line 268
    :goto_5
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 269
    move-result-object v6

    .line 270
    .line 271
    .line 272
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    move-result-object v7

    .line 274
    .line 275
    if-nez v7, :cond_5

    .line 276
    .line 277
    new-instance v7, Ljava/util/ArrayList;

    .line 278
    .line 279
    .line 280
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .line 282
    .line 283
    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    .line 285
    :cond_5
    check-cast v7, Ljava/util/List;

    .line 286
    .line 287
    .line 288
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    goto :goto_3

    .line 290
    .line 291
    :cond_6
    iget-object v1, v0, Landroidx/compose/material/SliderKt$Track$1;->$inactiveTickColor:Landroidx/compose/runtime/State;

    .line 292
    .line 293
    iget-object v15, v0, Landroidx/compose/material/SliderKt$Track$1;->$activeTickColor:Landroidx/compose/runtime/State;

    .line 294
    .line 295
    iget v14, v0, Landroidx/compose/material/SliderKt$Track$1;->$trackStrokeWidth:F

    .line 296
    .line 297
    .line 298
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 299
    move-result-object v2

    .line 300
    .line 301
    .line 302
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 303
    move-result-object v16

    .line 304
    .line 305
    .line 306
    :goto_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 307
    move-result v2

    .line 308
    .line 309
    if-eqz v2, :cond_9

    .line 310
    .line 311
    .line 312
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 313
    move-result-object v2

    .line 314
    .line 315
    check-cast v2, Ljava/util/Map$Entry;

    .line 316
    .line 317
    .line 318
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 319
    move-result-object v3

    .line 320
    .line 321
    check-cast v3, Ljava/lang/Boolean;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 325
    move-result v3

    .line 326
    .line 327
    .line 328
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 329
    move-result-object v2

    .line 330
    .line 331
    check-cast v2, Ljava/util/List;

    .line 332
    .line 333
    check-cast v2, Ljava/lang/Iterable;

    .line 334
    .line 335
    new-instance v4, Ljava/util/ArrayList;

    .line 336
    .line 337
    const/16 v5, 0xa

    .line 338
    .line 339
    .line 340
    invoke-static {v2, v5}, Lkotlin/collections/t;->x(Ljava/lang/Iterable;I)I

    .line 341
    move-result v5

    .line 342
    .line 343
    .line 344
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 345
    .line 346
    .line 347
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 348
    move-result-object v2

    .line 349
    .line 350
    .line 351
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 352
    move-result v5

    .line 353
    .line 354
    if-eqz v5, :cond_7

    .line 355
    .line 356
    .line 357
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 358
    move-result-object v5

    .line 359
    .line 360
    check-cast v5, Ljava/lang/Number;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    .line 364
    move-result v5

    .line 365
    .line 366
    move-wide/from16 v10, v24

    .line 367
    .line 368
    move-wide/from16 v12, v26

    .line 369
    .line 370
    .line 371
    invoke-static {v12, v13, v10, v11, v5}, Landroidx/compose/ui/geometry/OffsetKt;->e(JJF)J

    .line 372
    move-result-wide v5

    .line 373
    .line 374
    .line 375
    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 376
    move-result v5

    .line 377
    .line 378
    .line 379
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->W()J

    .line 380
    move-result-wide v6

    .line 381
    .line 382
    .line 383
    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 384
    move-result v6

    .line 385
    .line 386
    .line 387
    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 388
    move-result-wide v5

    .line 389
    .line 390
    .line 391
    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->d(J)Landroidx/compose/ui/geometry/Offset;

    .line 392
    move-result-object v5

    .line 393
    .line 394
    .line 395
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 396
    goto :goto_7

    .line 397
    .line 398
    :cond_7
    move-wide/from16 v10, v24

    .line 399
    .line 400
    move-wide/from16 v12, v26

    .line 401
    .line 402
    sget-object v2, Landroidx/compose/ui/graphics/PointMode;->Companion:Landroidx/compose/ui/graphics/PointMode$Companion;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/PointMode$Companion;->b()I

    .line 406
    move-result v5

    .line 407
    .line 408
    if-eqz v3, :cond_8

    .line 409
    move-object v2, v1

    .line 410
    goto :goto_8

    .line 411
    :cond_8
    move-object v2, v15

    .line 412
    .line 413
    .line 414
    :goto_8
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 415
    move-result-object v2

    .line 416
    .line 417
    check-cast v2, Landroidx/compose/ui/graphics/Color;

    .line 418
    .line 419
    .line 420
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color;->v()J

    .line 421
    move-result-wide v6

    .line 422
    .line 423
    sget-object v2, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    .line 424
    .line 425
    .line 426
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->b()I

    .line 427
    move-result v8

    .line 428
    const/4 v9, 0x0

    .line 429
    .line 430
    const/16 v17, 0x0

    .line 431
    .line 432
    const/16 v18, 0x0

    .line 433
    .line 434
    const/16 v19, 0x0

    .line 435
    .line 436
    const/16 v20, 0x1e0

    .line 437
    .line 438
    const/16 v21, 0x0

    .line 439
    .line 440
    move-object/from16 v2, p1

    .line 441
    move-object v3, v4

    .line 442
    move v4, v5

    .line 443
    move-wide v5, v6

    .line 444
    move v7, v14

    .line 445
    .line 446
    move-wide/from16 v22, v10

    .line 447
    .line 448
    move/from16 v10, v17

    .line 449
    .line 450
    move-object/from16 v11, v18

    .line 451
    .line 452
    move-wide/from16 v17, v12

    .line 453
    .line 454
    move/from16 v12, v19

    .line 455
    .line 456
    move/from16 v13, v20

    .line 457
    .line 458
    move/from16 v19, v14

    .line 459
    .line 460
    move-object/from16 v14, v21

    .line 461
    .line 462
    .line 463
    invoke-static/range {v2 .. v14}, Landroidx/compose/ui/graphics/drawscope/a;->l(Landroidx/compose/ui/graphics/drawscope/DrawScope;Ljava/util/List;IJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 464
    .line 465
    move-wide/from16 v26, v17

    .line 466
    .line 467
    move/from16 v14, v19

    .line 468
    .line 469
    move-wide/from16 v24, v22

    .line 470
    .line 471
    goto/16 :goto_6

    .line 472
    :cond_9
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/material/SliderKt$Track$1;->a(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V

    .line 6
    .line 7
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 8
    return-object p1
.end method
