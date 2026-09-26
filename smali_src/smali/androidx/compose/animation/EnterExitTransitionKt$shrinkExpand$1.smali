.class final Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/EnterExitTransitionKt;->A(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/Transition;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Ljava/lang/String;)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/v;",
        "Le8/q<",
        "Landroidx/compose/ui/Modifier;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/ui/Modifier;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEnterExitTransition.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EnterExitTransition.kt\nandroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,1154:1\n36#2:1155\n25#2:1162\n25#2:1169\n36#2:1176\n1057#3,6:1156\n1057#3,6:1163\n1057#3,6:1170\n1057#3,6:1177\n76#4:1183\n102#4,2:1184\n*S KotlinDebug\n*F\n+ 1 EnterExitTransition.kt\nandroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1\n*L\n1012#1:1155\n1035#1:1162\n1040#1:1169\n1044#1:1176\n1012#1:1156,6\n1035#1:1163,6\n1040#1:1170,6\n1044#1:1177,6\n1012#1:1183\n1012#1:1184,2\n*E\n"
.end annotation


# instance fields
.field final synthetic $expand:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/animation/ChangeSize;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $labelPrefix:Ljava/lang/String;

.field final synthetic $shrink:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/animation/ChangeSize;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $transition:Landroidx/compose/animation/core/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/Transition<",
            "Landroidx/compose/animation/EnterExitState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Transition<",
            "Landroidx/compose/animation/EnterExitState;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/animation/ChangeSize;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/animation/ChangeSize;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->$transition:Landroidx/compose/animation/core/Transition;

    iput-object p2, p0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->$expand:Landroidx/compose/runtime/State;

    iput-object p3, p0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->$shrink:Landroidx/compose/runtime/State;

    iput-object p4, p0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->$labelPrefix:Ljava/lang/String;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method

.method private static final b(Landroidx/compose/runtime/MutableState;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;)Z"
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
    check-cast p0, Ljava/lang/Boolean;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static final c(Landroidx/compose/runtime/MutableState;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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
.method public final a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 20
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

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
    move-object/from16 v8, p2

    .line 7
    .line 8
    const-string v2, "$this$composed"

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const v2, -0x861e7e5

    .line 15
    .line 16
    .line 17
    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 18
    .line 19
    iget-object v2, v0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->$transition:Landroidx/compose/animation/core/Transition;

    .line 20
    .line 21
    .line 22
    const v9, 0x44faf204

    .line 23
    .line 24
    .line 25
    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 29
    move-result v2

    .line 30
    .line 31
    .line 32
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 33
    move-result-object v3

    .line 34
    const/4 v10, 0x0

    .line 35
    .line 36
    if-nez v2, :cond_0

    .line 37
    .line 38
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 42
    move-result-object v2

    .line 43
    .line 44
    if-ne v3, v2, :cond_1

    .line 45
    .line 46
    :cond_0
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 47
    const/4 v3, 0x2

    .line 48
    .line 49
    .line 50
    invoke-static {v2, v10, v3, v10}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 51
    move-result-object v3

    .line 52
    .line 53
    .line 54
    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 58
    .line 59
    check-cast v3, Landroidx/compose/runtime/MutableState;

    .line 60
    .line 61
    iget-object v2, v0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->$transition:Landroidx/compose/animation/core/Transition;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition;->g()Ljava/lang/Object;

    .line 65
    move-result-object v2

    .line 66
    .line 67
    iget-object v4, v0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->$transition:Landroidx/compose/animation/core/Transition;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4}, Landroidx/compose/animation/core/Transition;->m()Ljava/lang/Object;

    .line 71
    move-result-object v4

    .line 72
    const/4 v11, 0x1

    .line 73
    const/4 v12, 0x0

    .line 74
    .line 75
    if-ne v2, v4, :cond_2

    .line 76
    .line 77
    iget-object v2, v0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->$transition:Landroidx/compose/animation/core/Transition;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition;->q()Z

    .line 81
    move-result v2

    .line 82
    .line 83
    if-nez v2, :cond_2

    .line 84
    .line 85
    .line 86
    invoke-static {v3, v12}, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->c(Landroidx/compose/runtime/MutableState;Z)V

    .line 87
    goto :goto_0

    .line 88
    .line 89
    :cond_2
    iget-object v2, v0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->$expand:Landroidx/compose/runtime/State;

    .line 90
    .line 91
    .line 92
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 93
    move-result-object v2

    .line 94
    .line 95
    if-nez v2, :cond_3

    .line 96
    .line 97
    iget-object v2, v0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->$shrink:Landroidx/compose/runtime/State;

    .line 98
    .line 99
    .line 100
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 101
    move-result-object v2

    .line 102
    .line 103
    if-eqz v2, :cond_4

    .line 104
    .line 105
    .line 106
    :cond_3
    invoke-static {v3, v11}, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->c(Landroidx/compose/runtime/MutableState;Z)V

    .line 107
    .line 108
    .line 109
    :cond_4
    :goto_0
    invoke-static {v3}, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->b(Landroidx/compose/runtime/MutableState;)Z

    .line 110
    move-result v2

    .line 111
    .line 112
    if-eqz v2, :cond_14

    .line 113
    .line 114
    iget-object v2, v0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->$transition:Landroidx/compose/animation/core/Transition;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition;->k()Landroidx/compose/animation/core/Transition$Segment;

    .line 118
    move-result-object v2

    .line 119
    .line 120
    sget-object v3, Landroidx/compose/animation/EnterExitState;->PreEnter:Landroidx/compose/animation/EnterExitState;

    .line 121
    .line 122
    sget-object v4, Landroidx/compose/animation/EnterExitState;->Visible:Landroidx/compose/animation/EnterExitState;

    .line 123
    .line 124
    .line 125
    invoke-interface {v2, v3, v4}, Landroidx/compose/animation/core/Transition$Segment;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 126
    move-result v2

    .line 127
    .line 128
    iget-object v3, v0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->$expand:Landroidx/compose/runtime/State;

    .line 129
    .line 130
    iget-object v4, v0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->$shrink:Landroidx/compose/runtime/State;

    .line 131
    .line 132
    if-eqz v2, :cond_7

    .line 133
    .line 134
    .line 135
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 136
    move-result-object v2

    .line 137
    .line 138
    check-cast v2, Landroidx/compose/animation/ChangeSize;

    .line 139
    .line 140
    if-eqz v2, :cond_5

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2}, Landroidx/compose/animation/ChangeSize;->a()Landroidx/compose/ui/Alignment;

    .line 144
    move-result-object v2

    .line 145
    .line 146
    if-nez v2, :cond_9

    .line 147
    .line 148
    .line 149
    :cond_5
    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 150
    move-result-object v2

    .line 151
    .line 152
    check-cast v2, Landroidx/compose/animation/ChangeSize;

    .line 153
    .line 154
    if-eqz v2, :cond_6

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2}, Landroidx/compose/animation/ChangeSize;->a()Landroidx/compose/ui/Alignment;

    .line 158
    move-result-object v2

    .line 159
    goto :goto_1

    .line 160
    :cond_6
    move-object v2, v10

    .line 161
    goto :goto_1

    .line 162
    .line 163
    .line 164
    :cond_7
    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 165
    move-result-object v2

    .line 166
    .line 167
    check-cast v2, Landroidx/compose/animation/ChangeSize;

    .line 168
    .line 169
    if-eqz v2, :cond_8

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2}, Landroidx/compose/animation/ChangeSize;->a()Landroidx/compose/ui/Alignment;

    .line 173
    move-result-object v2

    .line 174
    .line 175
    if-nez v2, :cond_9

    .line 176
    .line 177
    .line 178
    :cond_8
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 179
    move-result-object v2

    .line 180
    .line 181
    check-cast v2, Landroidx/compose/animation/ChangeSize;

    .line 182
    .line 183
    if-eqz v2, :cond_6

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2}, Landroidx/compose/animation/ChangeSize;->a()Landroidx/compose/ui/Alignment;

    .line 187
    move-result-object v2

    .line 188
    .line 189
    .line 190
    :cond_9
    :goto_1
    invoke-static {v2, v8, v12}, Landroidx/compose/runtime/SnapshotStateKt;->n(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 191
    move-result-object v19

    .line 192
    .line 193
    iget-object v2, v0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->$transition:Landroidx/compose/animation/core/Transition;

    .line 194
    .line 195
    sget-object v3, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    .line 196
    .line 197
    .line 198
    invoke-static {v3}, Landroidx/compose/animation/core/VectorConvertersKt;->h(Landroidx/compose/ui/unit/IntSize$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 199
    move-result-object v3

    .line 200
    .line 201
    iget-object v4, v0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->$labelPrefix:Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    const v13, -0x1d58f75c

    .line 205
    .line 206
    .line 207
    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 208
    .line 209
    .line 210
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 211
    move-result-object v5

    .line 212
    .line 213
    sget-object v14, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 217
    move-result-object v6

    .line 218
    .line 219
    if-ne v5, v6, :cond_a

    .line 220
    .line 221
    new-instance v5, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    const-string v4, " shrink/expand"

    .line 230
    .line 231
    .line 232
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    move-result-object v5

    .line 237
    .line 238
    .line 239
    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    :cond_a
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 243
    move-object v4, v5

    .line 244
    .line 245
    check-cast v4, Ljava/lang/String;

    .line 246
    .line 247
    const/16 v6, 0x1c0

    .line 248
    const/4 v7, 0x0

    .line 249
    .line 250
    move-object/from16 v5, p2

    .line 251
    .line 252
    .line 253
    invoke-static/range {v2 .. v7}, Landroidx/compose/animation/core/TransitionKt;->b(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 254
    move-result-object v15

    .line 255
    .line 256
    iget-object v2, v0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->$transition:Landroidx/compose/animation/core/Transition;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition;->g()Ljava/lang/Object;

    .line 260
    move-result-object v2

    .line 261
    .line 262
    iget-object v3, v0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->$transition:Landroidx/compose/animation/core/Transition;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v3}, Landroidx/compose/animation/core/Transition;->m()Ljava/lang/Object;

    .line 266
    move-result-object v3

    .line 267
    .line 268
    if-ne v2, v3, :cond_b

    .line 269
    goto :goto_2

    .line 270
    :cond_b
    move v11, v12

    .line 271
    .line 272
    .line 273
    :goto_2
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 274
    move-result-object v2

    .line 275
    .line 276
    .line 277
    const v3, -0x5c942cad

    .line 278
    .line 279
    .line 280
    invoke-interface {v8, v3, v2}, Landroidx/compose/runtime/Composer;->K(ILjava/lang/Object;)V

    .line 281
    .line 282
    iget-object v2, v0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->$transition:Landroidx/compose/animation/core/Transition;

    .line 283
    .line 284
    sget-object v3, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    .line 285
    .line 286
    .line 287
    invoke-static {v3}, Landroidx/compose/animation/core/VectorConvertersKt;->g(Landroidx/compose/ui/unit/IntOffset$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 288
    move-result-object v3

    .line 289
    .line 290
    iget-object v4, v0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->$labelPrefix:Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    invoke-interface {v8, v13}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 294
    .line 295
    .line 296
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 297
    move-result-object v5

    .line 298
    .line 299
    .line 300
    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 301
    move-result-object v6

    .line 302
    .line 303
    if-ne v5, v6, :cond_c

    .line 304
    .line 305
    new-instance v5, Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    const-string v4, " InterruptionHandlingOffset"

    .line 314
    .line 315
    .line 316
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    move-result-object v5

    .line 321
    .line 322
    .line 323
    invoke-interface {v8, v5}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 324
    .line 325
    .line 326
    :cond_c
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 327
    move-object v4, v5

    .line 328
    .line 329
    check-cast v4, Ljava/lang/String;

    .line 330
    .line 331
    const/16 v6, 0x1c0

    .line 332
    const/4 v7, 0x0

    .line 333
    .line 334
    move-object/from16 v5, p2

    .line 335
    .line 336
    .line 337
    invoke-static/range {v2 .. v7}, Landroidx/compose/animation/core/TransitionKt;->b(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 338
    move-result-object v2

    .line 339
    .line 340
    .line 341
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->P()V

    .line 342
    .line 343
    iget-object v3, v0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->$transition:Landroidx/compose/animation/core/Transition;

    .line 344
    .line 345
    iget-object v4, v0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->$expand:Landroidx/compose/runtime/State;

    .line 346
    .line 347
    iget-object v5, v0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->$shrink:Landroidx/compose/runtime/State;

    .line 348
    .line 349
    .line 350
    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 351
    .line 352
    .line 353
    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 354
    move-result v3

    .line 355
    .line 356
    .line 357
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 358
    move-result-object v6

    .line 359
    .line 360
    if-nez v3, :cond_d

    .line 361
    .line 362
    .line 363
    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 364
    move-result-object v3

    .line 365
    .line 366
    if-ne v6, v3, :cond_e

    .line 367
    .line 368
    :cond_d
    new-instance v6, Landroidx/compose/animation/ExpandShrinkModifier;

    .line 369
    move-object v13, v6

    .line 370
    move-object v14, v15

    .line 371
    move-object v15, v2

    .line 372
    .line 373
    move-object/from16 v16, v4

    .line 374
    .line 375
    move-object/from16 v17, v5

    .line 376
    .line 377
    move-object/from16 v18, v19

    .line 378
    .line 379
    .line 380
    invoke-direct/range {v13 .. v18}, Landroidx/compose/animation/ExpandShrinkModifier;-><init>(Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V

    .line 381
    .line 382
    .line 383
    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 384
    .line 385
    .line 386
    :cond_e
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 387
    .line 388
    check-cast v6, Landroidx/compose/animation/ExpandShrinkModifier;

    .line 389
    .line 390
    iget-object v2, v0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->$transition:Landroidx/compose/animation/core/Transition;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition;->g()Ljava/lang/Object;

    .line 394
    move-result-object v2

    .line 395
    .line 396
    iget-object v3, v0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->$transition:Landroidx/compose/animation/core/Transition;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v3}, Landroidx/compose/animation/core/Transition;->m()Ljava/lang/Object;

    .line 400
    move-result-object v3

    .line 401
    .line 402
    if-ne v2, v3, :cond_f

    .line 403
    .line 404
    .line 405
    invoke-virtual {v6, v10}, Landroidx/compose/animation/ExpandShrinkModifier;->d(Landroidx/compose/ui/Alignment;)V

    .line 406
    goto :goto_3

    .line 407
    .line 408
    .line 409
    :cond_f
    invoke-virtual {v6}, Landroidx/compose/animation/ExpandShrinkModifier;->a()Landroidx/compose/ui/Alignment;

    .line 410
    move-result-object v2

    .line 411
    .line 412
    if-nez v2, :cond_11

    .line 413
    .line 414
    .line 415
    invoke-interface/range {v19 .. v19}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 416
    move-result-object v2

    .line 417
    .line 418
    check-cast v2, Landroidx/compose/ui/Alignment;

    .line 419
    .line 420
    if-nez v2, :cond_10

    .line 421
    .line 422
    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 423
    .line 424
    .line 425
    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->o()Landroidx/compose/ui/Alignment;

    .line 426
    move-result-object v2

    .line 427
    .line 428
    .line 429
    :cond_10
    invoke-virtual {v6, v2}, Landroidx/compose/animation/ExpandShrinkModifier;->d(Landroidx/compose/ui/Alignment;)V

    .line 430
    .line 431
    :cond_11
    :goto_3
    iget-object v2, v0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->$expand:Landroidx/compose/runtime/State;

    .line 432
    .line 433
    .line 434
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 435
    move-result-object v2

    .line 436
    .line 437
    check-cast v2, Landroidx/compose/animation/ChangeSize;

    .line 438
    .line 439
    if-eqz v2, :cond_12

    .line 440
    .line 441
    .line 442
    invoke-virtual {v2}, Landroidx/compose/animation/ChangeSize;->c()Z

    .line 443
    move-result v2

    .line 444
    .line 445
    if-nez v2, :cond_12

    .line 446
    goto :goto_4

    .line 447
    .line 448
    :cond_12
    iget-object v2, v0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->$shrink:Landroidx/compose/runtime/State;

    .line 449
    .line 450
    .line 451
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 452
    move-result-object v2

    .line 453
    .line 454
    check-cast v2, Landroidx/compose/animation/ChangeSize;

    .line 455
    .line 456
    if-eqz v2, :cond_13

    .line 457
    .line 458
    .line 459
    invoke-virtual {v2}, Landroidx/compose/animation/ChangeSize;->c()Z

    .line 460
    move-result v2

    .line 461
    .line 462
    if-nez v2, :cond_13

    .line 463
    .line 464
    :goto_4
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 465
    goto :goto_5

    .line 466
    .line 467
    :cond_13
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 468
    .line 469
    .line 470
    invoke-static {v2}, Landroidx/compose/ui/draw/ClipKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 471
    move-result-object v2

    .line 472
    .line 473
    .line 474
    :goto_5
    invoke-interface {v1, v2}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 475
    move-result-object v1

    .line 476
    .line 477
    .line 478
    invoke-interface {v1, v6}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 479
    move-result-object v1

    .line 480
    .line 481
    .line 482
    :cond_14
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 483
    return-object v1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/compose/ui/Modifier;

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
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
