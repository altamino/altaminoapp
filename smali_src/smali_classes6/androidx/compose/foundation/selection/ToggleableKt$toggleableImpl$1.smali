.class final Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/selection/ToggleableKt;->c(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/state/ToggleableState;ZLandroidx/compose/ui/semantics/Role;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;Le8/a;)Landroidx/compose/ui/Modifier;
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
    value = "SMAP\nToggleable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Toggleable.kt\nandroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,302:1\n25#2:303\n25#2:310\n25#2:317\n1057#3,6:304\n1057#3,6:311\n1057#3,6:318\n*S KotlinDebug\n*F\n+ 1 Toggleable.kt\nandroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1\n*L\n247#1:303\n265#1:310\n286#1:317\n247#1:304,6\n265#1:311,6\n286#1:318,6\n*E\n"
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

.field final synthetic $role:Landroidx/compose/ui/semantics/Role;

.field final synthetic $state:Landroidx/compose/ui/state/ToggleableState;


# direct methods
.method constructor <init>(Le8/a;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;Landroidx/compose/ui/semantics/Role;Landroidx/compose/ui/state/ToggleableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/a<",
            "Lw7/l0;",
            ">;Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/foundation/Indication;",
            "Landroidx/compose/ui/semantics/Role;",
            "Landroidx/compose/ui/state/ToggleableState;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1;->$onClick:Le8/a;

    iput-boolean p2, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1;->$enabled:Z

    iput-object p3, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p4, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1;->$indication:Landroidx/compose/foundation/Indication;

    iput-object p5, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1;->$role:Landroidx/compose/ui/semantics/Role;

    iput-object p6, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1;->$state:Landroidx/compose/ui/state/ToggleableState;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 18
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
    move-object/from16 v2, p2

    .line 7
    .line 8
    const-string v3, "$this$composed"

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const v3, 0x7e7040c2

    .line 15
    .line 16
    .line 17
    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 18
    .line 19
    .line 20
    const v3, -0x1d58f75c

    .line 21
    .line 22
    .line 23
    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 24
    .line 25
    .line 26
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 27
    move-result-object v4

    .line 28
    .line 29
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 33
    move-result-object v6

    .line 34
    const/4 v7, 0x2

    .line 35
    const/4 v8, 0x0

    .line 36
    .line 37
    if-ne v4, v6, :cond_0

    .line 38
    .line 39
    .line 40
    invoke-static {v8, v8, v7, v8}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 41
    move-result-object v4

    .line 42
    .line 43
    .line 44
    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 48
    move-object v12, v4

    .line 49
    .line 50
    check-cast v12, Landroidx/compose/runtime/MutableState;

    .line 51
    .line 52
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 53
    .line 54
    new-instance v6, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$semantics$1;

    .line 55
    .line 56
    iget-object v9, v0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1;->$role:Landroidx/compose/ui/semantics/Role;

    .line 57
    .line 58
    iget-object v10, v0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1;->$state:Landroidx/compose/ui/state/ToggleableState;

    .line 59
    .line 60
    iget-boolean v11, v0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1;->$enabled:Z

    .line 61
    .line 62
    iget-object v13, v0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1;->$onClick:Le8/a;

    .line 63
    .line 64
    .line 65
    invoke-direct {v6, v9, v10, v11, v13}, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$semantics$1;-><init>(Landroidx/compose/ui/semantics/Role;Landroidx/compose/ui/state/ToggleableState;ZLe8/a;)V

    .line 66
    const/4 v9, 0x1

    .line 67
    .line 68
    .line 69
    invoke-static {v4, v9, v6}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLe8/l;)Landroidx/compose/ui/Modifier;

    .line 70
    move-result-object v6

    .line 71
    .line 72
    iget-object v9, v0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1;->$onClick:Le8/a;

    .line 73
    const/4 v10, 0x0

    .line 74
    .line 75
    .line 76
    invoke-static {v9, v2, v10}, Landroidx/compose/runtime/SnapshotStateKt;->n(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 77
    move-result-object v14

    .line 78
    .line 79
    .line 80
    const v9, -0x7f4047f8

    .line 81
    .line 82
    .line 83
    invoke-interface {v2, v9}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 84
    .line 85
    iget-boolean v9, v0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1;->$enabled:Z

    .line 86
    .line 87
    if-eqz v9, :cond_1

    .line 88
    .line 89
    iget-object v9, v0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 90
    .line 91
    const/16 v11, 0x30

    .line 92
    .line 93
    .line 94
    invoke-static {v9, v12, v2, v11}, Landroidx/compose/foundation/ClickableKt;->a(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/Composer;I)V

    .line 95
    .line 96
    .line 97
    :cond_1
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 98
    .line 99
    .line 100
    invoke-static {v2, v10}, Landroidx/compose/foundation/Clickable_androidKt;->d(Landroidx/compose/runtime/Composer;I)Le8/a;

    .line 101
    move-result-object v9

    .line 102
    .line 103
    .line 104
    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 105
    .line 106
    .line 107
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 108
    move-result-object v11

    .line 109
    .line 110
    .line 111
    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 112
    move-result-object v13

    .line 113
    .line 114
    if-ne v11, v13, :cond_2

    .line 115
    .line 116
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 117
    .line 118
    .line 119
    invoke-static {v11, v8, v7, v8}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 120
    move-result-object v11

    .line 121
    .line 122
    .line 123
    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 127
    move-object v7, v11

    .line 128
    .line 129
    check-cast v7, Landroidx/compose/runtime/MutableState;

    .line 130
    .line 131
    new-instance v8, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$delayPressInteraction$1;

    .line 132
    .line 133
    .line 134
    invoke-direct {v8, v7, v9}, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$delayPressInteraction$1;-><init>(Landroidx/compose/runtime/MutableState;Le8/a;)V

    .line 135
    .line 136
    .line 137
    invoke-static {v8, v2, v10}, Landroidx/compose/runtime/SnapshotStateKt;->n(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 138
    move-result-object v13

    .line 139
    .line 140
    iget-object v8, v0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 141
    .line 142
    iget-boolean v9, v0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1;->$enabled:Z

    .line 143
    .line 144
    .line 145
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 146
    move-result-object v15

    .line 147
    .line 148
    new-instance v11, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;

    .line 149
    .line 150
    iget-boolean v10, v0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1;->$enabled:Z

    .line 151
    .line 152
    iget-object v9, v0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 153
    .line 154
    const/16 v16, 0x0

    .line 155
    .line 156
    move-object/from16 v17, v9

    .line 157
    move-object v9, v11

    .line 158
    move-object v3, v11

    .line 159
    .line 160
    move-object/from16 v11, v17

    .line 161
    move-object v0, v15

    .line 162
    .line 163
    move-object/from16 v15, v16

    .line 164
    .line 165
    .line 166
    invoke-direct/range {v9 .. v15}, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;-><init>(ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lkotlin/coroutines/d;)V

    .line 167
    .line 168
    .line 169
    invoke-static {v4, v8, v0, v3}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->c(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Ljava/lang/Object;Le8/p;)Landroidx/compose/ui/Modifier;

    .line 170
    move-result-object v0

    .line 171
    .line 172
    .line 173
    const v3, -0x1d58f75c

    .line 174
    .line 175
    .line 176
    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 177
    .line 178
    .line 179
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 180
    move-result-object v3

    .line 181
    .line 182
    .line 183
    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 184
    move-result-object v4

    .line 185
    .line 186
    if-ne v3, v4, :cond_3

    .line 187
    .line 188
    new-instance v3, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$1$1;

    .line 189
    .line 190
    .line 191
    invoke-direct {v3, v7}, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$1$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 192
    .line 193
    .line 194
    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    :cond_3
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 198
    .line 199
    check-cast v3, Landroidx/compose/ui/Modifier;

    .line 200
    .line 201
    .line 202
    invoke-interface {v1, v3}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 203
    move-result-object v1

    .line 204
    .line 205
    .line 206
    invoke-interface {v1, v6}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 207
    move-result-object v1

    .line 208
    .line 209
    move-object/from16 v3, p0

    .line 210
    .line 211
    iget-object v4, v3, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 212
    .line 213
    iget-object v5, v3, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1;->$indication:Landroidx/compose/foundation/Indication;

    .line 214
    .line 215
    .line 216
    invoke-static {v1, v4, v5}, Landroidx/compose/foundation/IndicationKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/foundation/Indication;)Landroidx/compose/ui/Modifier;

    .line 217
    move-result-object v1

    .line 218
    .line 219
    iget-object v4, v3, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 220
    .line 221
    iget-boolean v5, v3, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1;->$enabled:Z

    .line 222
    .line 223
    .line 224
    invoke-static {v1, v4, v5}, Landroidx/compose/foundation/HoverableKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Z)Landroidx/compose/ui/Modifier;

    .line 225
    move-result-object v1

    .line 226
    .line 227
    iget-boolean v4, v3, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1;->$enabled:Z

    .line 228
    .line 229
    iget-object v5, v3, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 230
    .line 231
    .line 232
    invoke-static {v1, v4, v5}, Landroidx/compose/foundation/FocusableKt;->e(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;)Landroidx/compose/ui/Modifier;

    .line 233
    move-result-object v1

    .line 234
    .line 235
    .line 236
    invoke-interface {v1, v0}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 237
    move-result-object v0

    .line 238
    .line 239
    .line 240
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 241
    return-object v0
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
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
