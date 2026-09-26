.class final Landroidx/compose/animation/EnterExitTransitionKt$slideInOut$1;
.super Lkotlin/jvm/internal/v;
.source "SourceFile"

# interfaces
.implements Le8/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/EnterExitTransitionKt;->H(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/Transition;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Ljava/lang/String;)Landroidx/compose/ui/Modifier;
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
    value = "SMAP\nEnterExitTransition.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EnterExitTransition.kt\nandroidx/compose/animation/EnterExitTransitionKt$slideInOut$1\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,1154:1\n36#2:1155\n25#2:1162\n36#2:1169\n1057#3,6:1156\n1057#3,6:1163\n1057#3,6:1170\n76#4:1176\n102#4,2:1177\n*S KotlinDebug\n*F\n+ 1 EnterExitTransition.kt\nandroidx/compose/animation/EnterExitTransitionKt$slideInOut$1\n*L\n929#1:1155\n941#1:1162\n943#1:1169\n929#1:1156,6\n941#1:1163,6\n943#1:1170,6\n929#1:1176\n929#1:1177,2\n*E\n"
.end annotation


# instance fields
.field final synthetic $labelPrefix:Ljava/lang/String;

.field final synthetic $slideIn:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/animation/Slide;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $slideOut:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/animation/Slide;",
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
            "Landroidx/compose/animation/Slide;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/animation/Slide;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/animation/EnterExitTransitionKt$slideInOut$1;->$transition:Landroidx/compose/animation/core/Transition;

    iput-object p2, p0, Landroidx/compose/animation/EnterExitTransitionKt$slideInOut$1;->$slideIn:Landroidx/compose/runtime/State;

    iput-object p3, p0, Landroidx/compose/animation/EnterExitTransitionKt$slideInOut$1;->$slideOut:Landroidx/compose/runtime/State;

    iput-object p4, p0, Landroidx/compose/animation/EnterExitTransitionKt$slideInOut$1;->$labelPrefix:Ljava/lang/String;

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
    .locals 8
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
    const p3, 0x970add0

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 12
    .line 13
    iget-object p3, p0, Landroidx/compose/animation/EnterExitTransitionKt$slideInOut$1;->$transition:Landroidx/compose/animation/core/Transition;

    .line 14
    .line 15
    .line 16
    const v0, 0x44faf204

    .line 17
    .line 18
    .line 19
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 23
    move-result p3

    .line 24
    .line 25
    .line 26
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    if-nez p3, :cond_0

    .line 30
    .line 31
    sget-object p3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 35
    move-result-object p3

    .line 36
    .line 37
    if-ne v1, p3, :cond_1

    .line 38
    .line 39
    :cond_0
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 40
    const/4 v1, 0x2

    .line 41
    const/4 v2, 0x0

    .line 42
    .line 43
    .line 44
    invoke-static {p3, v2, v1, v2}, Landroidx/compose/runtime/SnapshotStateKt;->h(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 45
    move-result-object v1

    .line 46
    .line 47
    .line 48
    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 52
    .line 53
    check-cast v1, Landroidx/compose/runtime/MutableState;

    .line 54
    .line 55
    iget-object p3, p0, Landroidx/compose/animation/EnterExitTransitionKt$slideInOut$1;->$transition:Landroidx/compose/animation/core/Transition;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3}, Landroidx/compose/animation/core/Transition;->g()Ljava/lang/Object;

    .line 59
    move-result-object p3

    .line 60
    .line 61
    iget-object v2, p0, Landroidx/compose/animation/EnterExitTransitionKt$slideInOut$1;->$transition:Landroidx/compose/animation/core/Transition;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Landroidx/compose/animation/core/Transition;->m()Ljava/lang/Object;

    .line 65
    move-result-object v2

    .line 66
    .line 67
    if-ne p3, v2, :cond_2

    .line 68
    .line 69
    iget-object p3, p0, Landroidx/compose/animation/EnterExitTransitionKt$slideInOut$1;->$transition:Landroidx/compose/animation/core/Transition;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p3}, Landroidx/compose/animation/core/Transition;->q()Z

    .line 73
    move-result p3

    .line 74
    .line 75
    if-nez p3, :cond_2

    .line 76
    const/4 p3, 0x0

    .line 77
    .line 78
    .line 79
    invoke-static {v1, p3}, Landroidx/compose/animation/EnterExitTransitionKt$slideInOut$1;->c(Landroidx/compose/runtime/MutableState;Z)V

    .line 80
    goto :goto_0

    .line 81
    .line 82
    :cond_2
    iget-object p3, p0, Landroidx/compose/animation/EnterExitTransitionKt$slideInOut$1;->$slideIn:Landroidx/compose/runtime/State;

    .line 83
    .line 84
    .line 85
    invoke-interface {p3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 86
    move-result-object p3

    .line 87
    .line 88
    if-nez p3, :cond_3

    .line 89
    .line 90
    iget-object p3, p0, Landroidx/compose/animation/EnterExitTransitionKt$slideInOut$1;->$slideOut:Landroidx/compose/runtime/State;

    .line 91
    .line 92
    .line 93
    invoke-interface {p3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 94
    move-result-object p3

    .line 95
    .line 96
    if-eqz p3, :cond_4

    .line 97
    :cond_3
    const/4 p3, 0x1

    .line 98
    .line 99
    .line 100
    invoke-static {v1, p3}, Landroidx/compose/animation/EnterExitTransitionKt$slideInOut$1;->c(Landroidx/compose/runtime/MutableState;Z)V

    .line 101
    .line 102
    .line 103
    :cond_4
    :goto_0
    invoke-static {v1}, Landroidx/compose/animation/EnterExitTransitionKt$slideInOut$1;->b(Landroidx/compose/runtime/MutableState;)Z

    .line 104
    move-result p3

    .line 105
    .line 106
    if-eqz p3, :cond_8

    .line 107
    .line 108
    iget-object v1, p0, Landroidx/compose/animation/EnterExitTransitionKt$slideInOut$1;->$transition:Landroidx/compose/animation/core/Transition;

    .line 109
    .line 110
    sget-object p3, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    .line 111
    .line 112
    .line 113
    invoke-static {p3}, Landroidx/compose/animation/core/VectorConvertersKt;->g(Landroidx/compose/ui/unit/IntOffset$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 114
    move-result-object v2

    .line 115
    .line 116
    iget-object p3, p0, Landroidx/compose/animation/EnterExitTransitionKt$slideInOut$1;->$labelPrefix:Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    const v3, -0x1d58f75c

    .line 120
    .line 121
    .line 122
    invoke-interface {p2, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 123
    .line 124
    .line 125
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 126
    move-result-object v3

    .line 127
    .line 128
    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 132
    move-result-object v4

    .line 133
    .line 134
    if-ne v3, v4, :cond_5

    .line 135
    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    const-string p3, " slide"

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    move-result-object v3

    .line 152
    .line 153
    .line 154
    invoke-interface {p2, v3}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    :cond_5
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 158
    .line 159
    check-cast v3, Ljava/lang/String;

    .line 160
    .line 161
    const/16 v5, 0x1c0

    .line 162
    const/4 v6, 0x0

    .line 163
    move-object v4, p2

    .line 164
    .line 165
    .line 166
    invoke-static/range {v1 .. v6}, Landroidx/compose/animation/core/TransitionKt;->b(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 167
    move-result-object p3

    .line 168
    .line 169
    iget-object v1, p0, Landroidx/compose/animation/EnterExitTransitionKt$slideInOut$1;->$transition:Landroidx/compose/animation/core/Transition;

    .line 170
    .line 171
    iget-object v2, p0, Landroidx/compose/animation/EnterExitTransitionKt$slideInOut$1;->$slideIn:Landroidx/compose/runtime/State;

    .line 172
    .line 173
    iget-object v3, p0, Landroidx/compose/animation/EnterExitTransitionKt$slideInOut$1;->$slideOut:Landroidx/compose/runtime/State;

    .line 174
    .line 175
    .line 176
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 177
    .line 178
    .line 179
    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 180
    move-result v0

    .line 181
    .line 182
    .line 183
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 184
    move-result-object v1

    .line 185
    .line 186
    if-nez v0, :cond_6

    .line 187
    .line 188
    .line 189
    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 190
    move-result-object v0

    .line 191
    .line 192
    if-ne v1, v0, :cond_7

    .line 193
    .line 194
    :cond_6
    new-instance v1, Landroidx/compose/animation/SlideModifier;

    .line 195
    .line 196
    .line 197
    invoke-direct {v1, p3, v2, v3}, Landroidx/compose/animation/SlideModifier;-><init>(Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V

    .line 198
    .line 199
    .line 200
    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    :cond_7
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 204
    .line 205
    check-cast v1, Landroidx/compose/animation/SlideModifier;

    .line 206
    .line 207
    .line 208
    invoke-interface {p1, v1}, Landroidx/compose/ui/Modifier;->B(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 209
    move-result-object p1

    .line 210
    .line 211
    .line 212
    :cond_8
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 213
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
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/animation/EnterExitTransitionKt$slideInOut$1;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
