.class final Landroidx/compose/foundation/ClickableKt$combinedClickable$4;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/ClickableKt;->f(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Ljava/lang/String;Le8/a;Le8/a;Le8/a;)Landroidx/compose/ui/Modifier;
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
    value = "SMAP\nClickable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Clickable.kt\nandroidx/compose/foundation/ClickableKt$combinedClickable$4\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,506:1\n25#2:507\n25#2:514\n25#2:521\n1057#3,6:508\n1057#3,6:515\n1057#3,6:522\n*S KotlinDebug\n*F\n+ 1 Clickable.kt\nandroidx/compose/foundation/ClickableKt$combinedClickable$4\n*L\n296#1:507\n312#1:514\n344#1:521\n296#1:508,6\n312#1:515,6\n344#1:522,6\n*E\n"
.end annotation


# instance fields
.field final synthetic $enabled:Z

.field final synthetic $indication:Landroidx/compose/foundation/Indication;

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $onClick:Le8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/a<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onClickLabel:Ljava/lang/String;

.field final synthetic $onDoubleClick:Le8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/a<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onLongClick:Le8/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le8/a<",
            "Lw7/l0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onLongClickLabel:Ljava/lang/String;

.field final synthetic $role:Landroidx/compose/ui/semantics/Role;


# direct methods
.method constructor <init>(Le8/a;Le8/a;Le8/a;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;Ljava/lang/String;Landroidx/compose/ui/semantics/Role;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/a<",
            "Lw7/l0;",
            ">;",
            "Le8/a<",
            "Lw7/l0;",
            ">;",
            "Le8/a<",
            "Lw7/l0;",
            ">;Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/foundation/Indication;",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/semantics/Role;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$onClick:Le8/a;

    iput-object p2, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$onLongClick:Le8/a;

    iput-object p3, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$onDoubleClick:Le8/a;

    iput-boolean p4, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$enabled:Z

    iput-object p5, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p6, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$indication:Landroidx/compose/foundation/Indication;

    iput-object p7, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$onClickLabel:Ljava/lang/String;

    iput-object p8, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$role:Landroidx/compose/ui/semantics/Role;

    iput-object p9, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$onLongClickLabel:Ljava/lang/String;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 30
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
    move-object/from16 v1, p2

    .line 5
    .line 6
    const-string v2, "$this$composed"

    .line 7
    .line 8
    move-object/from16 v3, p1

    .line 9
    .line 10
    .line 11
    invoke-static {v3, v2}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const v2, 0x6dc662f0

    .line 15
    .line 16
    .line 17
    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 18
    .line 19
    iget-object v2, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$onClick:Le8/a;

    .line 20
    const/4 v3, 0x0

    .line 21
    .line 22
    .line 23
    invoke-static {v2, v1, v3}, Landroidx/compose/runtime/SnapshotStateKt;->n(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 24
    move-result-object v13

    .line 25
    .line 26
    iget-object v2, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$onLongClick:Le8/a;

    .line 27
    .line 28
    .line 29
    invoke-static {v2, v1, v3}, Landroidx/compose/runtime/SnapshotStateKt;->n(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 30
    move-result-object v9

    .line 31
    .line 32
    iget-object v2, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$onDoubleClick:Le8/a;

    .line 33
    .line 34
    .line 35
    invoke-static {v2, v1, v3}, Landroidx/compose/runtime/SnapshotStateKt;->n(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 36
    move-result-object v8

    .line 37
    .line 38
    iget-object v2, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$onLongClick:Le8/a;

    .line 39
    .line 40
    if-eqz v2, :cond_0

    .line 41
    const/4 v7, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move v7, v3

    .line 44
    .line 45
    :goto_0
    iget-object v2, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$onDoubleClick:Le8/a;

    .line 46
    .line 47
    if-eqz v2, :cond_1

    .line 48
    const/4 v5, 0x1

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    move v5, v3

    .line 51
    .line 52
    .line 53
    :goto_1
    const v2, -0x1d58f75c

    .line 54
    .line 55
    .line 56
    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 57
    .line 58
    .line 59
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 60
    move-result-object v6

    .line 61
    .line 62
    sget-object v15, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v15}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 66
    move-result-object v10

    .line 67
    const/4 v11, 0x2

    .line 68
    const/4 v12, 0x0

    .line 69
    .line 70
    if-ne v6, v10, :cond_2

    .line 71
    .line 72
    .line 73
    invoke-static {v12, v12, v11, v12}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 74
    move-result-object v6

    .line 75
    .line 76
    .line 77
    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 81
    move-object v14, v6

    .line 82
    .line 83
    check-cast v14, Landroidx/compose/runtime/MutableState;

    .line 84
    .line 85
    .line 86
    const v6, 0x4ebe7db2

    .line 87
    .line 88
    .line 89
    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 90
    .line 91
    iget-boolean v6, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$enabled:Z

    .line 92
    .line 93
    if-eqz v6, :cond_3

    .line 94
    .line 95
    .line 96
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 97
    move-result-object v6

    .line 98
    .line 99
    new-instance v10, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$1;

    .line 100
    .line 101
    iget-object v4, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 102
    .line 103
    .line 104
    invoke-direct {v10, v14, v4}, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;)V

    .line 105
    .line 106
    .line 107
    invoke-static {v6, v10, v1, v3}, Landroidx/compose/runtime/EffectsKt;->a(Ljava/lang/Object;Le8/l;Landroidx/compose/runtime/Composer;I)V

    .line 108
    .line 109
    iget-object v4, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 110
    .line 111
    const/16 v6, 0x30

    .line 112
    .line 113
    .line 114
    invoke-static {v4, v14, v1, v6}, Landroidx/compose/foundation/ClickableKt;->a(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/Composer;I)V

    .line 115
    .line 116
    .line 117
    :cond_3
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 118
    .line 119
    .line 120
    invoke-static {v1, v3}, Landroidx/compose/foundation/Clickable_androidKt;->d(Landroidx/compose/runtime/Composer;I)Le8/a;

    .line 121
    move-result-object v4

    .line 122
    .line 123
    .line 124
    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 125
    .line 126
    .line 127
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 128
    move-result-object v6

    .line 129
    .line 130
    .line 131
    invoke-virtual {v15}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 132
    move-result-object v10

    .line 133
    .line 134
    if-ne v6, v10, :cond_4

    .line 135
    .line 136
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 137
    .line 138
    .line 139
    invoke-static {v6, v12, v11, v12}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 140
    move-result-object v6

    .line 141
    .line 142
    .line 143
    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    :cond_4
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 147
    move-object v12, v6

    .line 148
    .line 149
    check-cast v12, Landroidx/compose/runtime/MutableState;

    .line 150
    .line 151
    new-instance v6, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$delayPressInteraction$1;

    .line 152
    .line 153
    .line 154
    invoke-direct {v6, v12, v4}, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$delayPressInteraction$1;-><init>(Landroidx/compose/runtime/MutableState;Le8/a;)V

    .line 155
    .line 156
    .line 157
    invoke-static {v6, v1, v3}, Landroidx/compose/runtime/SnapshotStateKt;->n(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 158
    move-result-object v16

    .line 159
    .line 160
    sget-object v10, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 161
    const/4 v4, 0x4

    .line 162
    .line 163
    new-array v6, v4, [Ljava/lang/Object;

    .line 164
    .line 165
    iget-object v4, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 166
    .line 167
    aput-object v4, v6, v3

    .line 168
    .line 169
    .line 170
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 171
    move-result-object v3

    .line 172
    const/4 v4, 0x1

    .line 173
    .line 174
    aput-object v3, v6, v4

    .line 175
    .line 176
    .line 177
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 178
    move-result-object v3

    .line 179
    .line 180
    aput-object v3, v6, v11

    .line 181
    .line 182
    iget-boolean v3, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$enabled:Z

    .line 183
    .line 184
    .line 185
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 186
    move-result-object v3

    .line 187
    const/4 v4, 0x3

    .line 188
    .line 189
    aput-object v3, v6, v4

    .line 190
    .line 191
    new-instance v3, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1;

    .line 192
    .line 193
    iget-boolean v11, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$enabled:Z

    .line 194
    .line 195
    iget-object v4, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 196
    .line 197
    const/16 v17, 0x0

    .line 198
    .line 199
    move-object/from16 v18, v4

    .line 200
    move-object v4, v3

    .line 201
    move-object v2, v6

    .line 202
    move v6, v11

    .line 203
    move-object v11, v10

    .line 204
    .line 205
    move-object/from16 v10, v18

    .line 206
    move-object v0, v11

    .line 207
    move-object v11, v14

    .line 208
    move-object v14, v12

    .line 209
    .line 210
    move-object/from16 v12, v16

    .line 211
    .line 212
    move-object/from16 v19, v14

    .line 213
    .line 214
    move-object/from16 v14, v17

    .line 215
    .line 216
    .line 217
    invoke-direct/range {v4 .. v14}, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1;-><init>(ZZZLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lkotlin/coroutines/d;)V

    .line 218
    .line 219
    .line 220
    invoke-static {v0, v2, v3}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->d(Landroidx/compose/ui/Modifier;[Ljava/lang/Object;Le8/p;)Landroidx/compose/ui/Modifier;

    .line 221
    move-result-object v21

    .line 222
    .line 223
    .line 224
    const v2, -0x1d58f75c

    .line 225
    .line 226
    .line 227
    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 228
    .line 229
    .line 230
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 231
    move-result-object v2

    .line 232
    .line 233
    .line 234
    invoke-virtual {v15}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 235
    move-result-object v3

    .line 236
    .line 237
    if-ne v2, v3, :cond_5

    .line 238
    .line 239
    new-instance v2, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$2$1;

    .line 240
    .line 241
    move-object/from16 v6, v19

    .line 242
    .line 243
    .line 244
    invoke-direct {v2, v6}, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$2$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 245
    .line 246
    .line 247
    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    :cond_5
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 251
    .line 252
    check-cast v2, Landroidx/compose/ui/Modifier;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0, v2}, Landroidx/compose/ui/Modifier$Companion;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 256
    move-result-object v20

    .line 257
    .line 258
    move-object/from16 v0, p0

    .line 259
    .line 260
    iget-object v2, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 261
    .line 262
    iget-object v3, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$indication:Landroidx/compose/foundation/Indication;

    .line 263
    .line 264
    iget-boolean v4, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$enabled:Z

    .line 265
    .line 266
    iget-object v5, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$onClickLabel:Ljava/lang/String;

    .line 267
    .line 268
    iget-object v6, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$role:Landroidx/compose/ui/semantics/Role;

    .line 269
    .line 270
    iget-object v7, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$onLongClickLabel:Ljava/lang/String;

    .line 271
    .line 272
    iget-object v8, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$onLongClick:Le8/a;

    .line 273
    .line 274
    iget-object v9, v0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->$onClick:Le8/a;

    .line 275
    .line 276
    move-object/from16 v22, v2

    .line 277
    .line 278
    move-object/from16 v23, v3

    .line 279
    .line 280
    move/from16 v24, v4

    .line 281
    .line 282
    move-object/from16 v25, v5

    .line 283
    .line 284
    move-object/from16 v26, v6

    .line 285
    .line 286
    move-object/from16 v27, v7

    .line 287
    .line 288
    move-object/from16 v28, v8

    .line 289
    .line 290
    move-object/from16 v29, v9

    .line 291
    .line 292
    .line 293
    invoke-static/range {v20 .. v29}, Landroidx/compose/foundation/ClickableKt;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Ljava/lang/String;Le8/a;Le8/a;)Landroidx/compose/ui/Modifier;

    .line 294
    move-result-object v2

    .line 295
    .line 296
    .line 297
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 298
    return-object v2
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
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
