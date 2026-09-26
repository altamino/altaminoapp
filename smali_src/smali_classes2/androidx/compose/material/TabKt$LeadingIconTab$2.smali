.class final Landroidx/compose/material/TabKt$LeadingIconTab$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/TabKt;->a(ZLe8/a;Le8/p;Le8/p;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;JJLandroidx/compose/runtime/Composer;II)V
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
    value = "SMAP\nTab.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Tab.kt\nandroidx/compose/material/TabKt$LeadingIconTab$2\n+ 2 Row.kt\nandroidx/compose/foundation/layout/RowKt\n+ 3 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n*L\n1#1,434:1\n79#2,2:435\n81#2:463\n85#2:468\n75#3:437\n76#3,11:439\n89#3:467\n76#4:438\n460#5,13:450\n473#5,3:464\n*S KotlinDebug\n*F\n+ 1 Tab.kt\nandroidx/compose/material/TabKt$LeadingIconTab$2\n*L\n169#1:435,2\n169#1:463\n169#1:468\n169#1:437\n169#1:439,11\n169#1:467\n169#1:438\n169#1:450,13\n169#1:464,3\n*E\n"
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $enabled:Z

.field final synthetic $icon:Le8/p;
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

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $onClick:Le8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/a<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $ripple:Landroidx/compose/foundation/Indication;

.field final synthetic $selected:Z

.field final synthetic $text:Le8/p;
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
.method constructor <init>(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLe8/a;Le8/p;ILe8/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/foundation/Indication;",
            "Z",
            "Le8/a<",
            "Lw7/l0;",
            ">;",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;I",
            "Le8/p<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/TabKt$LeadingIconTab$2;->$modifier:Landroidx/compose/ui/Modifier;

    iput-boolean p2, p0, Landroidx/compose/material/TabKt$LeadingIconTab$2;->$selected:Z

    iput-object p3, p0, Landroidx/compose/material/TabKt$LeadingIconTab$2;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p4, p0, Landroidx/compose/material/TabKt$LeadingIconTab$2;->$ripple:Landroidx/compose/foundation/Indication;

    iput-boolean p5, p0, Landroidx/compose/material/TabKt$LeadingIconTab$2;->$enabled:Z

    iput-object p6, p0, Landroidx/compose/material/TabKt$LeadingIconTab$2;->$onClick:Le8/a;

    iput-object p7, p0, Landroidx/compose/material/TabKt$LeadingIconTab$2;->$icon:Le8/p;

    iput p8, p0, Landroidx/compose/material/TabKt$LeadingIconTab$2;->$$dirty:I

    iput-object p9, p0, Landroidx/compose/material/TabKt$LeadingIconTab$2;->$text:Le8/p;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/runtime/Composer;I)V
    .locals 34
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
    move-object/from16 v1, p1

    .line 5
    .line 6
    and-int/lit8 v2, p2, 0xb

    .line 7
    const/4 v3, 0x2

    .line 8
    .line 9
    if-ne v2, v3, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->b()Z

    .line 13
    move-result v2

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->g()V

    .line 20
    .line 21
    goto/16 :goto_2

    .line 22
    .line 23
    :cond_1
    :goto_0
    iget-object v2, v0, Landroidx/compose/material/TabKt$LeadingIconTab$2;->$modifier:Landroidx/compose/ui/Modifier;

    .line 24
    .line 25
    .line 26
    invoke-static {}, Landroidx/compose/material/TabKt;->k()F

    .line 27
    move-result v4

    .line 28
    .line 29
    .line 30
    invoke-static {v2, v4}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 31
    move-result-object v5

    .line 32
    .line 33
    sget-object v2, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/Role$Companion;->f()I

    .line 37
    move-result v2

    .line 38
    .line 39
    iget-boolean v6, v0, Landroidx/compose/material/TabKt$LeadingIconTab$2;->$selected:Z

    .line 40
    .line 41
    iget-object v7, v0, Landroidx/compose/material/TabKt$LeadingIconTab$2;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 42
    .line 43
    iget-object v8, v0, Landroidx/compose/material/TabKt$LeadingIconTab$2;->$ripple:Landroidx/compose/foundation/Indication;

    .line 44
    .line 45
    iget-boolean v9, v0, Landroidx/compose/material/TabKt$LeadingIconTab$2;->$enabled:Z

    .line 46
    .line 47
    .line 48
    invoke-static {v2}, Landroidx/compose/ui/semantics/Role;->g(I)Landroidx/compose/ui/semantics/Role;

    .line 49
    move-result-object v10

    .line 50
    .line 51
    iget-object v11, v0, Landroidx/compose/material/TabKt$LeadingIconTab$2;->$onClick:Le8/a;

    .line 52
    .line 53
    .line 54
    invoke-static/range {v5 .. v11}, Landroidx/compose/foundation/selection/SelectableKt;->a(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Le8/a;)Landroidx/compose/ui/Modifier;

    .line 55
    move-result-object v2

    .line 56
    .line 57
    .line 58
    invoke-static {}, Landroidx/compose/material/TabKt;->i()F

    .line 59
    move-result v4

    .line 60
    const/4 v5, 0x0

    .line 61
    const/4 v6, 0x0

    .line 62
    .line 63
    .line 64
    invoke-static {v2, v4, v5, v3, v6}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 65
    move-result-object v2

    .line 66
    const/4 v3, 0x1

    .line 67
    .line 68
    .line 69
    invoke-static {v2, v5, v3, v6}, Landroidx/compose/foundation/layout/SizeKt;->n(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 70
    move-result-object v2

    .line 71
    .line 72
    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3}, Landroidx/compose/foundation/layout/Arrangement;->b()Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    .line 76
    move-result-object v3

    .line 77
    .line 78
    sget-object v4, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4}, Landroidx/compose/ui/Alignment$Companion;->i()Landroidx/compose/ui/Alignment$Vertical;

    .line 82
    move-result-object v4

    .line 83
    .line 84
    iget-object v5, v0, Landroidx/compose/material/TabKt$LeadingIconTab$2;->$icon:Le8/p;

    .line 85
    .line 86
    iget v6, v0, Landroidx/compose/material/TabKt$LeadingIconTab$2;->$$dirty:I

    .line 87
    .line 88
    iget-object v7, v0, Landroidx/compose/material/TabKt$LeadingIconTab$2;->$text:Le8/p;

    .line 89
    .line 90
    .line 91
    const v8, 0x2952b718

    .line 92
    .line 93
    .line 94
    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 95
    .line 96
    const/16 v8, 0x36

    .line 97
    .line 98
    .line 99
    invoke-static {v3, v4, v1, v8}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 100
    move-result-object v3

    .line 101
    .line 102
    .line 103
    const v4, -0x4ee9b9da

    .line 104
    .line 105
    .line 106
    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 107
    .line 108
    .line 109
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->e()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 110
    move-result-object v4

    .line 111
    .line 112
    .line 113
    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 114
    move-result-object v4

    .line 115
    .line 116
    check-cast v4, Landroidx/compose/ui/unit/Density;

    .line 117
    .line 118
    .line 119
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 120
    move-result-object v8

    .line 121
    .line 122
    .line 123
    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 124
    move-result-object v8

    .line 125
    .line 126
    check-cast v8, Landroidx/compose/ui/unit/LayoutDirection;

    .line 127
    .line 128
    .line 129
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->n()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 130
    move-result-object v9

    .line 131
    .line 132
    .line 133
    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 134
    move-result-object v9

    .line 135
    .line 136
    check-cast v9, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 137
    .line 138
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v10}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Le8/a;

    .line 142
    move-result-object v11

    .line 143
    .line 144
    .line 145
    invoke-static {v2}, Landroidx/compose/ui/layout/LayoutKt;->c(Landroidx/compose/ui/Modifier;)Le8/q;

    .line 146
    move-result-object v2

    .line 147
    .line 148
    .line 149
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->t()Landroidx/compose/runtime/Applier;

    .line 150
    move-result-object v12

    .line 151
    .line 152
    instance-of v12, v12, Landroidx/compose/runtime/Applier;

    .line 153
    .line 154
    if-nez v12, :cond_2

    .line 155
    .line 156
    .line 157
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->c()V

    .line 158
    .line 159
    .line 160
    :cond_2
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->e()V

    .line 161
    .line 162
    .line 163
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->r()Z

    .line 164
    move-result v12

    .line 165
    .line 166
    if-eqz v12, :cond_3

    .line 167
    .line 168
    .line 169
    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->w(Le8/a;)V

    .line 170
    goto :goto_1

    .line 171
    .line 172
    .line 173
    :cond_3
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->c()V

    .line 174
    .line 175
    .line 176
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->L()V

    .line 177
    .line 178
    .line 179
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/Updater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 180
    move-result-object v11

    .line 181
    .line 182
    .line 183
    invoke-virtual {v10}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Le8/p;

    .line 184
    move-result-object v12

    .line 185
    .line 186
    .line 187
    invoke-static {v11, v3, v12}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v10}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Le8/p;

    .line 191
    move-result-object v3

    .line 192
    .line 193
    .line 194
    invoke-static {v11, v4, v3}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v10}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Le8/p;

    .line 198
    move-result-object v3

    .line 199
    .line 200
    .line 201
    invoke-static {v11, v8, v3}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v10}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f()Le8/p;

    .line 205
    move-result-object v3

    .line 206
    .line 207
    .line 208
    invoke-static {v11, v9, v3}, Landroidx/compose/runtime/Updater;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Le8/p;)V

    .line 209
    .line 210
    .line 211
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->o()V

    .line 212
    .line 213
    .line 214
    invoke-static/range {p1 .. p1}, Landroidx/compose/runtime/SkippableUpdater;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 215
    move-result-object v3

    .line 216
    .line 217
    .line 218
    invoke-static {v3}, Landroidx/compose/runtime/SkippableUpdater;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 219
    move-result-object v3

    .line 220
    const/4 v4, 0x0

    .line 221
    .line 222
    .line 223
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 224
    move-result-object v4

    .line 225
    .line 226
    .line 227
    invoke-interface {v2, v3, v1, v4}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    const v2, 0x7ab4aae9

    .line 231
    .line 232
    .line 233
    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 234
    .line 235
    .line 236
    const v2, -0x286e2e7f

    .line 237
    .line 238
    .line 239
    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 240
    .line 241
    sget-object v2, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    .line 242
    .line 243
    .line 244
    const v2, 0x3bc6d8d7

    .line 245
    .line 246
    .line 247
    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 248
    .line 249
    shr-int/lit8 v2, v6, 0x9

    .line 250
    .line 251
    and-int/lit8 v2, v2, 0xe

    .line 252
    .line 253
    .line 254
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 255
    move-result-object v2

    .line 256
    .line 257
    .line 258
    invoke-interface {v5, v1, v2}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .line 260
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 261
    .line 262
    .line 263
    invoke-static {}, Landroidx/compose/material/TabKt;->l()F

    .line 264
    move-result v3

    .line 265
    .line 266
    .line 267
    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/SizeKt;->x(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 268
    move-result-object v2

    .line 269
    const/4 v3, 0x6

    .line 270
    .line 271
    .line 272
    invoke-static {v2, v1, v3}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 273
    .line 274
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v2, v1, v3}, Landroidx/compose/material/MaterialTheme;->c(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Typography;

    .line 278
    move-result-object v2

    .line 279
    .line 280
    .line 281
    invoke-virtual {v2}, Landroidx/compose/material/Typography;->c()Landroidx/compose/ui/text/TextStyle;

    .line 282
    move-result-object v8

    .line 283
    .line 284
    const-wide/16 v9, 0x0

    .line 285
    .line 286
    const-wide/16 v11, 0x0

    .line 287
    const/4 v13, 0x0

    .line 288
    const/4 v14, 0x0

    .line 289
    const/4 v15, 0x0

    .line 290
    .line 291
    const/16 v16, 0x0

    .line 292
    .line 293
    const/16 v17, 0x0

    .line 294
    .line 295
    const-wide/16 v18, 0x0

    .line 296
    .line 297
    const/16 v20, 0x0

    .line 298
    .line 299
    const/16 v21, 0x0

    .line 300
    .line 301
    const/16 v22, 0x0

    .line 302
    .line 303
    const-wide/16 v23, 0x0

    .line 304
    .line 305
    const/16 v25, 0x0

    .line 306
    .line 307
    const/16 v26, 0x0

    .line 308
    .line 309
    sget-object v2, Landroidx/compose/ui/text/style/TextAlign;->Companion:Landroidx/compose/ui/text/style/TextAlign$Companion;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v2}, Landroidx/compose/ui/text/style/TextAlign$Companion;->a()I

    .line 313
    move-result v2

    .line 314
    .line 315
    .line 316
    invoke-static {v2}, Landroidx/compose/ui/text/style/TextAlign;->g(I)Landroidx/compose/ui/text/style/TextAlign;

    .line 317
    move-result-object v27

    .line 318
    .line 319
    const/16 v28, 0x0

    .line 320
    .line 321
    const-wide/16 v29, 0x0

    .line 322
    .line 323
    const/16 v31, 0x0

    .line 324
    .line 325
    .line 326
    const v32, 0x3bfff

    .line 327
    .line 328
    const/16 v33, 0x0

    .line 329
    .line 330
    .line 331
    invoke-static/range {v8 .. v33}, Landroidx/compose/ui/text/TextStyle;->c(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;ILjava/lang/Object;)Landroidx/compose/ui/text/TextStyle;

    .line 332
    move-result-object v2

    .line 333
    .line 334
    shr-int/lit8 v3, v6, 0x3

    .line 335
    .line 336
    and-int/lit8 v3, v3, 0x70

    .line 337
    .line 338
    .line 339
    invoke-static {v2, v7, v1, v3}, Landroidx/compose/material/TextKt;->a(Landroidx/compose/ui/text/TextStyle;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 340
    .line 341
    .line 342
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 343
    .line 344
    .line 345
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 346
    .line 347
    .line 348
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 349
    .line 350
    .line 351
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->d()V

    .line 352
    .line 353
    .line 354
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 355
    .line 356
    .line 357
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->Q()V

    .line 358
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/TabKt$LeadingIconTab$2;->a(Landroidx/compose/runtime/Composer;I)V

    .line 12
    .line 13
    sget-object p1, Lw7/l0;->INSTANCE:Lw7/l0;

    .line 14
    return-object p1
.end method
