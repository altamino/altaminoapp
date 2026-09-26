.class final Landroidx/compose/foundation/FocusableKt$focusable$2;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/FocusableKt;->c(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;)Landroidx/compose/ui/Modifier;
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
    value = "SMAP\nFocusable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Focusable.kt\nandroidx/compose/foundation/FocusableKt$focusable$2\n+ 2 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n+ 6 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,266:1\n473#2,4:267\n477#2,2:275\n481#2:281\n25#3:271\n25#3:282\n25#3:289\n25#3:296\n25#3:303\n25#3:310\n25#3:317\n1057#4,3:272\n1060#4,3:278\n1057#4,6:283\n1057#4,6:290\n1057#4,6:297\n1057#4,6:304\n1057#4,6:311\n1057#4,6:318\n473#5:277\n76#6:324\n102#6,2:325\n76#6:327\n102#6,2:328\n*S KotlinDebug\n*F\n+ 1 Focusable.kt\nandroidx/compose/foundation/FocusableKt$focusable$2\n*L\n74#1:267,4\n74#1:275,2\n74#1:281\n74#1:271\n75#1:282\n76#1:289\n77#1:296\n78#1:303\n90#1:310\n115#1:317\n74#1:272,3\n74#1:278,3\n75#1:283,6\n76#1:290,6\n77#1:297,6\n78#1:304,6\n90#1:311,6\n115#1:318,6\n74#1:277\n76#1:324\n76#1:325,2\n77#1:327\n77#1:328,2\n*E\n"
.end annotation


# instance fields
.field final synthetic $enabled:Z

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Z)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/FocusableKt$focusable$2;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-boolean p2, p0, Landroidx/compose/foundation/FocusableKt$focusable$2;->$enabled:Z

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method

.method public static final synthetic a(Landroidx/compose/runtime/MutableState;)Landroidx/compose/foundation/lazy/layout/PinnableParent;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/foundation/FocusableKt$focusable$2;->f(Landroidx/compose/runtime/MutableState;)Landroidx/compose/foundation/lazy/layout/PinnableParent;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/lazy/layout/PinnableParent;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/foundation/FocusableKt$focusable$2;->g(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/lazy/layout/PinnableParent;)V

    .line 4
    return-void
.end method

.method public static final synthetic c(Landroidx/compose/runtime/MutableState;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/foundation/FocusableKt$focusable$2;->h(Landroidx/compose/runtime/MutableState;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic d(Landroidx/compose/runtime/MutableState;Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/foundation/FocusableKt$focusable$2;->i(Landroidx/compose/runtime/MutableState;Z)V

    .line 4
    return-void
.end method

.method private static final f(Landroidx/compose/runtime/MutableState;)Landroidx/compose/foundation/lazy/layout/PinnableParent;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/foundation/lazy/layout/PinnableParent;",
            ">;)",
            "Landroidx/compose/foundation/lazy/layout/PinnableParent;"
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
    check-cast p0, Landroidx/compose/foundation/lazy/layout/PinnableParent;

    .line 7
    return-object p0
.end method

.method private static final g(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/lazy/layout/PinnableParent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/foundation/lazy/layout/PinnableParent;",
            ">;",
            "Landroidx/compose/foundation/lazy/layout/PinnableParent;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 4
    return-void
.end method

.method private static final h(Landroidx/compose/runtime/MutableState;)Z
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

.method private static final i(Landroidx/compose/runtime/MutableState;Z)V
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
.method public final e(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 12
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
    const-string p3, "$this$composed"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const p1, 0x6f8a9229

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 12
    .line 13
    .line 14
    const p1, 0x2e20b340

    .line 15
    .line 16
    .line 17
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 18
    .line 19
    .line 20
    const p1, -0x1d58f75c

    .line 21
    .line 22
    .line 23
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 27
    move-result-object p3

    .line 28
    .line 29
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    if-ne p3, v1, :cond_0

    .line 36
    .line 37
    sget-object p3, Lkotlin/coroutines/h;->INSTANCE:Lkotlin/coroutines/h;

    .line 38
    .line 39
    .line 40
    invoke-static {p3, p2}, Landroidx/compose/runtime/EffectsKt;->j(Lkotlin/coroutines/g;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/o0;

    .line 41
    move-result-object p3

    .line 42
    .line 43
    new-instance v1, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 44
    .line 45
    .line 46
    invoke-direct {v1, p3}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lkotlinx/coroutines/o0;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 50
    move-object p3, v1

    .line 51
    .line 52
    .line 53
    :cond_0
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 54
    .line 55
    check-cast p3, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->a()Lkotlinx/coroutines/o0;

    .line 59
    move-result-object v2

    .line 60
    .line 61
    .line 62
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 63
    .line 64
    .line 65
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 66
    .line 67
    .line 68
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 69
    move-result-object p3

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 73
    move-result-object v1

    .line 74
    const/4 v3, 0x2

    .line 75
    const/4 v4, 0x0

    .line 76
    .line 77
    if-ne p3, v1, :cond_1

    .line 78
    .line 79
    .line 80
    invoke-static {v4, v4, v3, v4}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 81
    move-result-object p3

    .line 82
    .line 83
    .line 84
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :cond_1
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 88
    move-object v6, p3

    .line 89
    .line 90
    check-cast v6, Landroidx/compose/runtime/MutableState;

    .line 91
    .line 92
    .line 93
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 94
    .line 95
    .line 96
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 97
    move-result-object p3

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 101
    move-result-object v1

    .line 102
    .line 103
    if-ne p3, v1, :cond_2

    .line 104
    .line 105
    .line 106
    invoke-static {v4, v4, v3, v4}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 107
    move-result-object p3

    .line 108
    .line 109
    .line 110
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 114
    move-object v5, p3

    .line 115
    .line 116
    check-cast v5, Landroidx/compose/runtime/MutableState;

    .line 117
    .line 118
    .line 119
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 120
    .line 121
    .line 122
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 123
    move-result-object p3

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 127
    move-result-object v1

    .line 128
    .line 129
    if-ne p3, v1, :cond_3

    .line 130
    .line 131
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 132
    .line 133
    .line 134
    invoke-static {p3, v4, v3, v4}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 135
    move-result-object p3

    .line 136
    .line 137
    .line 138
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    :cond_3
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 142
    move-object v3, p3

    .line 143
    .line 144
    check-cast v3, Landroidx/compose/runtime/MutableState;

    .line 145
    .line 146
    .line 147
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 148
    .line 149
    .line 150
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 151
    move-result-object p3

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 155
    move-result-object v1

    .line 156
    .line 157
    if-ne p3, v1, :cond_4

    .line 158
    .line 159
    new-instance p3, Landroidx/compose/ui/focus/FocusRequester;

    .line 160
    .line 161
    .line 162
    invoke-direct {p3}, Landroidx/compose/ui/focus/FocusRequester;-><init>()V

    .line 163
    .line 164
    .line 165
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    :cond_4
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 169
    .line 170
    check-cast p3, Landroidx/compose/ui/focus/FocusRequester;

    .line 171
    .line 172
    .line 173
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 174
    .line 175
    .line 176
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 177
    move-result-object v1

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 181
    move-result-object v7

    .line 182
    .line 183
    if-ne v1, v7, :cond_5

    .line 184
    .line 185
    .line 186
    invoke-static {}, Landroidx/compose/foundation/relocation/BringIntoViewRequesterKt;->a()Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    .line 187
    move-result-object v1

    .line 188
    .line 189
    .line 190
    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    :cond_5
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 194
    move-object v7, v1

    .line 195
    .line 196
    check-cast v7, Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    .line 197
    .line 198
    iget-object v1, p0, Landroidx/compose/foundation/FocusableKt$focusable$2;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 199
    .line 200
    new-instance v8, Landroidx/compose/foundation/FocusableKt$focusable$2$1;

    .line 201
    .line 202
    .line 203
    invoke-direct {v8, v6, v1}, Landroidx/compose/foundation/FocusableKt$focusable$2$1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;)V

    .line 204
    const/4 v9, 0x0

    .line 205
    .line 206
    .line 207
    invoke-static {v1, v8, p2, v9}, Landroidx/compose/runtime/EffectsKt;->a(Ljava/lang/Object;Le8/l;Landroidx/compose/runtime/Composer;I)V

    .line 208
    .line 209
    iget-boolean v1, p0, Landroidx/compose/foundation/FocusableKt$focusable$2;->$enabled:Z

    .line 210
    .line 211
    .line 212
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 213
    move-result-object v1

    .line 214
    .line 215
    new-instance v8, Landroidx/compose/foundation/FocusableKt$focusable$2$2;

    .line 216
    .line 217
    iget-boolean v10, p0, Landroidx/compose/foundation/FocusableKt$focusable$2;->$enabled:Z

    .line 218
    .line 219
    iget-object v11, p0, Landroidx/compose/foundation/FocusableKt$focusable$2;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 220
    .line 221
    .line 222
    invoke-direct {v8, v10, v2, v6, v11}, Landroidx/compose/foundation/FocusableKt$focusable$2$2;-><init>(ZLkotlinx/coroutines/o0;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;)V

    .line 223
    .line 224
    .line 225
    invoke-static {v1, v8, p2, v9}, Landroidx/compose/runtime/EffectsKt;->a(Ljava/lang/Object;Le8/l;Landroidx/compose/runtime/Composer;I)V

    .line 226
    .line 227
    iget-boolean v1, p0, Landroidx/compose/foundation/FocusableKt$focusable$2;->$enabled:Z

    .line 228
    .line 229
    if-eqz v1, :cond_8

    .line 230
    .line 231
    .line 232
    invoke-static {v3}, Landroidx/compose/foundation/FocusableKt$focusable$2;->h(Landroidx/compose/runtime/MutableState;)Z

    .line 233
    move-result v1

    .line 234
    .line 235
    if-eqz v1, :cond_7

    .line 236
    .line 237
    .line 238
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 239
    .line 240
    .line 241
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 242
    move-result-object p1

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 246
    move-result-object v0

    .line 247
    .line 248
    if-ne p1, v0, :cond_6

    .line 249
    .line 250
    new-instance p1, Landroidx/compose/foundation/FocusedBoundsModifier;

    .line 251
    .line 252
    .line 253
    invoke-direct {p1}, Landroidx/compose/foundation/FocusedBoundsModifier;-><init>()V

    .line 254
    .line 255
    .line 256
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    :cond_6
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 260
    .line 261
    check-cast p1, Landroidx/compose/ui/Modifier;

    .line 262
    goto :goto_0

    .line 263
    .line 264
    :cond_7
    sget-object p1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 265
    .line 266
    :goto_0
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 267
    .line 268
    new-instance v1, Landroidx/compose/foundation/FocusableKt$focusable$2$3;

    .line 269
    .line 270
    .line 271
    invoke-direct {v1, v3, p3}, Landroidx/compose/foundation/FocusableKt$focusable$2$3;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/focus/FocusRequester;)V

    .line 272
    const/4 v8, 0x1

    .line 273
    .line 274
    .line 275
    invoke-static {v0, v9, v1, v8, v4}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->c(Landroidx/compose/ui/Modifier;ZLe8/l;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 276
    move-result-object v0

    .line 277
    .line 278
    new-instance v1, Landroidx/compose/foundation/FocusableKt$focusable$2$4;

    .line 279
    .line 280
    .line 281
    invoke-direct {v1, v5}, Landroidx/compose/foundation/FocusableKt$focusable$2$4;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 282
    .line 283
    .line 284
    invoke-static {v0, v1}, Landroidx/compose/foundation/FocusableKt;->a(Landroidx/compose/ui/Modifier;Le8/l;)Landroidx/compose/ui/Modifier;

    .line 285
    move-result-object v0

    .line 286
    .line 287
    .line 288
    invoke-static {v0, v7}, Landroidx/compose/foundation/relocation/BringIntoViewRequesterKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/relocation/BringIntoViewRequester;)Landroidx/compose/ui/Modifier;

    .line 289
    move-result-object v0

    .line 290
    .line 291
    .line 292
    invoke-static {v0, p3}, Landroidx/compose/ui/focus/FocusRequesterModifierKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/focus/FocusRequester;)Landroidx/compose/ui/Modifier;

    .line 293
    move-result-object p3

    .line 294
    .line 295
    .line 296
    invoke-interface {p3, p1}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 297
    move-result-object p1

    .line 298
    .line 299
    new-instance p3, Landroidx/compose/foundation/FocusableKt$focusable$2$5;

    .line 300
    .line 301
    iget-object v0, p0, Landroidx/compose/foundation/FocusableKt$focusable$2;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 302
    move-object v1, p3

    .line 303
    move-object v4, v7

    .line 304
    move-object v7, v0

    .line 305
    .line 306
    .line 307
    invoke-direct/range {v1 .. v7}, Landroidx/compose/foundation/FocusableKt$focusable$2$5;-><init>(Lkotlinx/coroutines/o0;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/relocation/BringIntoViewRequester;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;)V

    .line 308
    .line 309
    .line 310
    invoke-static {p1, p3}, Landroidx/compose/ui/focus/FocusChangedModifierKt;->a(Landroidx/compose/ui/Modifier;Le8/l;)Landroidx/compose/ui/Modifier;

    .line 311
    move-result-object p1

    .line 312
    .line 313
    .line 314
    invoke-static {p1}, Landroidx/compose/ui/focus/FocusModifierKt;->a(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 315
    move-result-object p1

    .line 316
    goto :goto_1

    .line 317
    .line 318
    :cond_8
    sget-object p1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 319
    .line 320
    .line 321
    :goto_1
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 322
    return-object p1
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
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/FocusableKt$focusable$2;->e(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
