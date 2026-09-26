.class final Landroidx/compose/foundation/ClickableKt$clickable$4;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/ClickableKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Le8/a;)Landroidx/compose/ui/Modifier;
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
    value = "SMAP\nClickable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Clickable.kt\nandroidx/compose/foundation/ClickableKt$clickable$4\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,506:1\n25#2:507\n25#2:514\n25#2:521\n1057#3,6:508\n1057#3,6:515\n1057#3,6:522\n*S KotlinDebug\n*F\n+ 1 Clickable.kt\nandroidx/compose/foundation/ClickableKt$clickable$4\n*L\n132#1:507\n137#1:514\n158#1:521\n132#1:508,6\n137#1:515,6\n158#1:522,6\n*E\n"
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

.field final synthetic $role:Landroidx/compose/ui/semantics/Role;


# direct methods
.method constructor <init>(Le8/a;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;Ljava/lang/String;Landroidx/compose/ui/semantics/Role;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le8/a<",
            "Lw7/l0;",
            ">;Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/foundation/Indication;",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/semantics/Role;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/ClickableKt$clickable$4;->$onClick:Le8/a;

    iput-boolean p2, p0, Landroidx/compose/foundation/ClickableKt$clickable$4;->$enabled:Z

    iput-object p3, p0, Landroidx/compose/foundation/ClickableKt$clickable$4;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p4, p0, Landroidx/compose/foundation/ClickableKt$clickable$4;->$indication:Landroidx/compose/foundation/Indication;

    iput-object p5, p0, Landroidx/compose/foundation/ClickableKt$clickable$4;->$onClickLabel:Ljava/lang/String;

    iput-object p6, p0, Landroidx/compose/foundation/ClickableKt$clickable$4;->$role:Landroidx/compose/ui/semantics/Role;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/v;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 27
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
    const v2, 0x57cf7f4

    .line 15
    .line 16
    .line 17
    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 18
    .line 19
    iget-object v2, v0, Landroidx/compose/foundation/ClickableKt$clickable$4;->$onClick:Le8/a;

    .line 20
    const/4 v3, 0x0

    .line 21
    .line 22
    .line 23
    invoke-static {v2, v1, v3}, Landroidx/compose/runtime/SnapshotStateKt;->n(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 24
    move-result-object v9

    .line 25
    .line 26
    .line 27
    const v2, -0x1d58f75c

    .line 28
    .line 29
    .line 30
    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 31
    .line 32
    .line 33
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 34
    move-result-object v4

    .line 35
    .line 36
    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 40
    move-result-object v5

    .line 41
    const/4 v6, 0x2

    .line 42
    const/4 v7, 0x0

    .line 43
    .line 44
    if-ne v4, v5, :cond_0

    .line 45
    .line 46
    .line 47
    invoke-static {v7, v7, v6, v7}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 48
    move-result-object v4

    .line 49
    .line 50
    .line 51
    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 55
    move-object v8, v4

    .line 56
    .line 57
    check-cast v8, Landroidx/compose/runtime/MutableState;

    .line 58
    .line 59
    .line 60
    const v4, 0x6dca6714

    .line 61
    .line 62
    .line 63
    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 64
    .line 65
    iget-boolean v4, v0, Landroidx/compose/foundation/ClickableKt$clickable$4;->$enabled:Z

    .line 66
    .line 67
    if-eqz v4, :cond_1

    .line 68
    .line 69
    iget-object v4, v0, Landroidx/compose/foundation/ClickableKt$clickable$4;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 70
    .line 71
    const/16 v5, 0x30

    .line 72
    .line 73
    .line 74
    invoke-static {v4, v8, v1, v5}, Landroidx/compose/foundation/ClickableKt;->a(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/Composer;I)V

    .line 75
    .line 76
    .line 77
    :cond_1
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 78
    .line 79
    .line 80
    invoke-static {v1, v3}, Landroidx/compose/foundation/Clickable_androidKt;->d(Landroidx/compose/runtime/Composer;I)Le8/a;

    .line 81
    move-result-object v4

    .line 82
    .line 83
    .line 84
    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 85
    .line 86
    .line 87
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 88
    move-result-object v5

    .line 89
    .line 90
    .line 91
    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 92
    move-result-object v10

    .line 93
    .line 94
    if-ne v5, v10, :cond_2

    .line 95
    .line 96
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 97
    .line 98
    .line 99
    invoke-static {v5, v7, v6, v7}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 100
    move-result-object v5

    .line 101
    .line 102
    .line 103
    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 107
    move-object v12, v5

    .line 108
    .line 109
    check-cast v12, Landroidx/compose/runtime/MutableState;

    .line 110
    .line 111
    new-instance v5, Landroidx/compose/foundation/ClickableKt$clickable$4$delayPressInteraction$1;

    .line 112
    .line 113
    .line 114
    invoke-direct {v5, v12, v4}, Landroidx/compose/foundation/ClickableKt$clickable$4$delayPressInteraction$1;-><init>(Landroidx/compose/runtime/MutableState;Le8/a;)V

    .line 115
    .line 116
    .line 117
    invoke-static {v5, v1, v3}, Landroidx/compose/runtime/SnapshotStateKt;->n(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 118
    move-result-object v3

    .line 119
    .line 120
    sget-object v13, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 121
    .line 122
    iget-object v14, v0, Landroidx/compose/foundation/ClickableKt$clickable$4;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 123
    .line 124
    iget-boolean v4, v0, Landroidx/compose/foundation/ClickableKt$clickable$4;->$enabled:Z

    .line 125
    .line 126
    .line 127
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 128
    move-result-object v15

    .line 129
    .line 130
    new-instance v10, Landroidx/compose/foundation/ClickableKt$clickable$4$gesture$1;

    .line 131
    .line 132
    iget-boolean v5, v0, Landroidx/compose/foundation/ClickableKt$clickable$4;->$enabled:Z

    .line 133
    .line 134
    iget-object v6, v0, Landroidx/compose/foundation/ClickableKt$clickable$4;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 135
    .line 136
    const/16 v16, 0x0

    .line 137
    move-object v4, v10

    .line 138
    move-object v7, v8

    .line 139
    move-object v8, v3

    .line 140
    move-object v3, v10

    .line 141
    .line 142
    move-object/from16 v10, v16

    .line 143
    .line 144
    .line 145
    invoke-direct/range {v4 .. v10}, Landroidx/compose/foundation/ClickableKt$clickable$4$gesture$1;-><init>(ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lkotlin/coroutines/d;)V

    .line 146
    .line 147
    .line 148
    invoke-static {v13, v14, v15, v3}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->c(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Ljava/lang/Object;Le8/p;)Landroidx/compose/ui/Modifier;

    .line 149
    move-result-object v18

    .line 150
    .line 151
    .line 152
    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 153
    .line 154
    .line 155
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 156
    move-result-object v2

    .line 157
    .line 158
    .line 159
    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 160
    move-result-object v3

    .line 161
    .line 162
    if-ne v2, v3, :cond_3

    .line 163
    .line 164
    new-instance v2, Landroidx/compose/foundation/ClickableKt$clickable$4$1$1;

    .line 165
    .line 166
    .line 167
    invoke-direct {v2, v12}, Landroidx/compose/foundation/ClickableKt$clickable$4$1$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 168
    .line 169
    .line 170
    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    :cond_3
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 174
    .line 175
    check-cast v2, Landroidx/compose/ui/Modifier;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v13, v2}, Landroidx/compose/ui/Modifier$Companion;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 179
    move-result-object v17

    .line 180
    .line 181
    iget-object v2, v0, Landroidx/compose/foundation/ClickableKt$clickable$4;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 182
    .line 183
    iget-object v3, v0, Landroidx/compose/foundation/ClickableKt$clickable$4;->$indication:Landroidx/compose/foundation/Indication;

    .line 184
    .line 185
    iget-boolean v4, v0, Landroidx/compose/foundation/ClickableKt$clickable$4;->$enabled:Z

    .line 186
    .line 187
    iget-object v5, v0, Landroidx/compose/foundation/ClickableKt$clickable$4;->$onClickLabel:Ljava/lang/String;

    .line 188
    .line 189
    iget-object v6, v0, Landroidx/compose/foundation/ClickableKt$clickable$4;->$role:Landroidx/compose/ui/semantics/Role;

    .line 190
    .line 191
    const/16 v24, 0x0

    .line 192
    .line 193
    const/16 v25, 0x0

    .line 194
    .line 195
    iget-object v7, v0, Landroidx/compose/foundation/ClickableKt$clickable$4;->$onClick:Le8/a;

    .line 196
    .line 197
    move-object/from16 v19, v2

    .line 198
    .line 199
    move-object/from16 v20, v3

    .line 200
    .line 201
    move/from16 v21, v4

    .line 202
    .line 203
    move-object/from16 v22, v5

    .line 204
    .line 205
    move-object/from16 v23, v6

    .line 206
    .line 207
    move-object/from16 v26, v7

    .line 208
    .line 209
    .line 210
    invoke-static/range {v17 .. v26}, Landroidx/compose/foundation/ClickableKt;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Ljava/lang/String;Le8/a;Le8/a;)Landroidx/compose/ui/Modifier;

    .line 211
    move-result-object v2

    .line 212
    .line 213
    .line 214
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 215
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
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/ClickableKt$clickable$4;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
