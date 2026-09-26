.class public final Landroidx/activity/compose/BackHandlerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBackHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BackHandler.kt\nandroidx/activity/compose/BackHandlerKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt\n*L\n1#1,110:1\n25#2:111\n50#2:118\n49#2:119\n955#3,6:112\n955#3,6:120\n76#4:126\n89#5:127\n*S KotlinDebug\n*F\n+ 1 BackHandler.kt\nandroidx/activity/compose/BackHandlerKt\n*L\n86#1:111\n94#1:118\n94#1:119\n86#1:112,6\n94#1:120,6\n100#1:126\n84#1:127\n*E\n"
.end annotation


# direct methods
.method public static final a(ZLe8/a;Landroidx/compose/runtime/Composer;II)V
    .locals 4
    .param p1    # Le8/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Le8/a<",
            "Lw7/l0;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "onBack"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const v0, -0x158b58d6

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->s(I)Landroidx/compose/runtime/Composer;

    .line 12
    move-result-object p2

    .line 13
    .line 14
    and-int/lit8 v0, p4, 0x1

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    or-int/lit8 v1, p3, 0x6

    .line 19
    goto :goto_1

    .line 20
    .line 21
    :cond_0
    and-int/lit8 v1, p3, 0xe

    .line 22
    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    .line 26
    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->m(Z)Z

    .line 27
    move-result v1

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    const/4 v1, 0x4

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v1, 0x2

    .line 33
    :goto_0
    or-int/2addr v1, p3

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    move v1, p3

    .line 36
    .line 37
    :goto_1
    and-int/lit8 v2, p4, 0x2

    .line 38
    .line 39
    if-eqz v2, :cond_3

    .line 40
    .line 41
    or-int/lit8 v1, v1, 0x30

    .line 42
    goto :goto_3

    .line 43
    .line 44
    :cond_3
    and-int/lit8 v2, p3, 0x70

    .line 45
    .line 46
    if-nez v2, :cond_5

    .line 47
    .line 48
    .line 49
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 50
    move-result v2

    .line 51
    .line 52
    if-eqz v2, :cond_4

    .line 53
    .line 54
    const/16 v2, 0x20

    .line 55
    goto :goto_2

    .line 56
    .line 57
    :cond_4
    const/16 v2, 0x10

    .line 58
    :goto_2
    or-int/2addr v1, v2

    .line 59
    .line 60
    :cond_5
    :goto_3
    and-int/lit8 v2, v1, 0x5b

    .line 61
    .line 62
    const/16 v3, 0x12

    .line 63
    .line 64
    if-ne v2, v3, :cond_7

    .line 65
    .line 66
    .line 67
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->b()Z

    .line 68
    move-result v2

    .line 69
    .line 70
    if-nez v2, :cond_6

    .line 71
    goto :goto_4

    .line 72
    .line 73
    .line 74
    :cond_6
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->g()V

    .line 75
    .line 76
    goto/16 :goto_5

    .line 77
    .line 78
    :cond_7
    :goto_4
    if-eqz v0, :cond_8

    .line 79
    const/4 p0, 0x1

    .line 80
    .line 81
    :cond_8
    shr-int/lit8 v0, v1, 0x3

    .line 82
    .line 83
    and-int/lit8 v0, v0, 0xe

    .line 84
    .line 85
    .line 86
    invoke-static {p1, p2, v0}, Landroidx/compose/runtime/SnapshotStateKt;->n(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 87
    move-result-object v0

    .line 88
    .line 89
    .line 90
    const v1, -0x384349

    .line 91
    .line 92
    .line 93
    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 94
    .line 95
    .line 96
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 97
    move-result-object v1

    .line 98
    .line 99
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 103
    move-result-object v3

    .line 104
    .line 105
    if-ne v1, v3, :cond_9

    .line 106
    .line 107
    new-instance v1, Landroidx/activity/compose/BackHandlerKt$BackHandler$backCallback$1$1;

    .line 108
    .line 109
    .line 110
    invoke-direct {v1, p0, v0}, Landroidx/activity/compose/BackHandlerKt$BackHandler$backCallback$1$1;-><init>(ZLandroidx/compose/runtime/State;)V

    .line 111
    .line 112
    .line 113
    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    :cond_9
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 117
    .line 118
    check-cast v1, Landroidx/activity/compose/BackHandlerKt$BackHandler$backCallback$1$1;

    .line 119
    .line 120
    .line 121
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 122
    move-result-object v0

    .line 123
    .line 124
    .line 125
    const v3, -0x384098

    .line 126
    .line 127
    .line 128
    invoke-interface {p2, v3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 129
    .line 130
    .line 131
    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 132
    move-result v3

    .line 133
    .line 134
    .line 135
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->k(Ljava/lang/Object;)Z

    .line 136
    move-result v0

    .line 137
    or-int/2addr v0, v3

    .line 138
    .line 139
    .line 140
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 141
    move-result-object v3

    .line 142
    .line 143
    if-nez v0, :cond_a

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 147
    move-result-object v0

    .line 148
    .line 149
    if-ne v3, v0, :cond_b

    .line 150
    .line 151
    :cond_a
    new-instance v3, Landroidx/activity/compose/BackHandlerKt$BackHandler$1$1;

    .line 152
    .line 153
    .line 154
    invoke-direct {v3, v1, p0}, Landroidx/activity/compose/BackHandlerKt$BackHandler$1$1;-><init>(Landroidx/activity/compose/BackHandlerKt$BackHandler$backCallback$1$1;Z)V

    .line 155
    .line 156
    .line 157
    invoke-interface {p2, v3}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    :cond_b
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 161
    .line 162
    check-cast v3, Le8/a;

    .line 163
    const/4 v0, 0x0

    .line 164
    .line 165
    .line 166
    invoke-static {v3, p2, v0}, Landroidx/compose/runtime/EffectsKt;->h(Le8/a;Landroidx/compose/runtime/Composer;I)V

    .line 167
    .line 168
    sget-object v0, Landroidx/activity/compose/LocalOnBackPressedDispatcherOwner;->INSTANCE:Landroidx/activity/compose/LocalOnBackPressedDispatcherOwner;

    .line 169
    const/4 v2, 0x6

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, p2, v2}, Landroidx/activity/compose/LocalOnBackPressedDispatcherOwner;->a(Landroidx/compose/runtime/Composer;I)Landroidx/activity/OnBackPressedDispatcherOwner;

    .line 173
    move-result-object v0

    .line 174
    .line 175
    if-eqz v0, :cond_d

    .line 176
    .line 177
    .line 178
    invoke-interface {v0}, Landroidx/activity/OnBackPressedDispatcherOwner;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 179
    move-result-object v0

    .line 180
    .line 181
    .line 182
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->i()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 183
    move-result-object v2

    .line 184
    .line 185
    .line 186
    invoke-interface {p2, v2}, Landroidx/compose/runtime/Composer;->x(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 187
    move-result-object v2

    .line 188
    .line 189
    check-cast v2, Landroidx/lifecycle/LifecycleOwner;

    .line 190
    .line 191
    new-instance v3, Landroidx/activity/compose/BackHandlerKt$BackHandler$2;

    .line 192
    .line 193
    .line 194
    invoke-direct {v3, v0, v2, v1}, Landroidx/activity/compose/BackHandlerKt$BackHandler$2;-><init>(Landroidx/activity/OnBackPressedDispatcher;Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/compose/BackHandlerKt$BackHandler$backCallback$1$1;)V

    .line 195
    .line 196
    const/16 v1, 0x48

    .line 197
    .line 198
    .line 199
    invoke-static {v2, v0, v3, p2, v1}, Landroidx/compose/runtime/EffectsKt;->b(Ljava/lang/Object;Ljava/lang/Object;Le8/l;Landroidx/compose/runtime/Composer;I)V

    .line 200
    .line 201
    .line 202
    :goto_5
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->u()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 203
    move-result-object p2

    .line 204
    .line 205
    if-nez p2, :cond_c

    .line 206
    goto :goto_6

    .line 207
    .line 208
    :cond_c
    new-instance v0, Landroidx/activity/compose/BackHandlerKt$BackHandler$3;

    .line 209
    .line 210
    .line 211
    invoke-direct {v0, p0, p1, p3, p4}, Landroidx/activity/compose/BackHandlerKt$BackHandler$3;-><init>(ZLe8/a;II)V

    .line 212
    .line 213
    .line 214
    invoke-interface {p2, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->a(Le8/p;)V

    .line 215
    :goto_6
    return-void

    .line 216
    .line 217
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 218
    .line 219
    const-string p1, "No OnBackPressedDispatcherOwner was provided via LocalOnBackPressedDispatcherOwner"

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 223
    move-result-object p1

    .line 224
    .line 225
    .line 226
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 227
    throw p0
.end method

.method private static final b(Landroidx/compose/runtime/State;)Le8/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Le8/a<",
            "Lw7/l0;",
            ">;>;)",
            "Le8/a<",
            "Lw7/l0;",
            ">;"
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
    check-cast p0, Le8/a;

    .line 7
    return-object p0
.end method

.method public static final synthetic c(Landroidx/compose/runtime/State;)Le8/a;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/activity/compose/BackHandlerKt;->b(Landroidx/compose/runtime/State;)Le8/a;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
