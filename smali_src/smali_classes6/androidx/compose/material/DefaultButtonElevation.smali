.class final Landroidx/compose/material/DefaultButtonElevation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/material/ButtonElevation;


# annotations
.annotation build Landroidx/compose/runtime/Stable;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nButton.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Button.kt\nandroidx/compose/material/DefaultButtonElevation\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,615:1\n25#2:616\n25#2:623\n1057#3,6:617\n1057#3,6:624\n*S KotlinDebug\n*F\n+ 1 Button.kt\nandroidx/compose/material/DefaultButtonElevation\n*L\n504#1:616\n546#1:623\n504#1:617,6\n546#1:624,6\n*E\n"
.end annotation


# instance fields
.field private final defaultElevation:F

.field private final disabledElevation:F

.field private final focusedElevation:F

.field private final hoveredElevation:F

.field private final pressedElevation:F


# direct methods
.method private constructor <init>(FFFFF)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/material/DefaultButtonElevation;->defaultElevation:F

    iput p2, p0, Landroidx/compose/material/DefaultButtonElevation;->pressedElevation:F

    iput p3, p0, Landroidx/compose/material/DefaultButtonElevation;->disabledElevation:F

    iput p4, p0, Landroidx/compose/material/DefaultButtonElevation;->hoveredElevation:F

    iput p5, p0, Landroidx/compose/material/DefaultButtonElevation;->focusedElevation:F

    return-void
.end method

.method public synthetic constructor <init>(FFFFFLkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Landroidx/compose/material/DefaultButtonElevation;-><init>(FFFFF)V

    return-void
.end method

.method public static final synthetic b(Landroidx/compose/material/DefaultButtonElevation;)F
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/compose/material/DefaultButtonElevation;->focusedElevation:F

    .line 3
    return p0
.end method

.method public static final synthetic c(Landroidx/compose/material/DefaultButtonElevation;)F
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/compose/material/DefaultButtonElevation;->hoveredElevation:F

    .line 3
    return p0
.end method

.method public static final synthetic d(Landroidx/compose/material/DefaultButtonElevation;)F
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/compose/material/DefaultButtonElevation;->pressedElevation:F

    .line 3
    return p0
.end method


# virtual methods
.method public a(ZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 15
    .param p2    # Landroidx/compose/foundation/interaction/InteractionSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/compose/foundation/interaction/InteractionSource;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/unit/Dp;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object v6, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    move-object/from16 v7, p3

    .line 6
    .line 7
    const-string v1, "interactionSource"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const v1, -0x5eb281ab

    .line 14
    .line 15
    .line 16
    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 17
    .line 18
    .line 19
    const v1, -0x1d58f75c

    .line 20
    .line 21
    .line 22
    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 23
    .line 24
    .line 25
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 32
    move-result-object v4

    .line 33
    .line 34
    if-ne v2, v4, :cond_0

    .line 35
    .line 36
    .line 37
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->d()Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    .line 41
    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 45
    .line 46
    check-cast v2, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 47
    .line 48
    new-instance v4, Landroidx/compose/material/DefaultButtonElevation$elevation$1;

    .line 49
    const/4 v5, 0x0

    .line 50
    .line 51
    .line 52
    invoke-direct {v4, v0, v2, v5}, Landroidx/compose/material/DefaultButtonElevation$elevation$1;-><init>(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/snapshots/SnapshotStateList;Lkotlin/coroutines/d;)V

    .line 53
    .line 54
    shr-int/lit8 v8, p4, 0x3

    .line 55
    .line 56
    and-int/lit8 v8, v8, 0xe

    .line 57
    .line 58
    .line 59
    invoke-static {v0, v4, v7, v8}, Landroidx/compose/runtime/EffectsKt;->d(Ljava/lang/Object;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 60
    .line 61
    .line 62
    invoke-static {v2}, Lkotlin/collections/t;->w0(Ljava/util/List;)Ljava/lang/Object;

    .line 63
    move-result-object v0

    .line 64
    move-object v4, v0

    .line 65
    .line 66
    check-cast v4, Landroidx/compose/foundation/interaction/Interaction;

    .line 67
    .line 68
    if-nez p1, :cond_1

    .line 69
    .line 70
    iget v0, v6, Landroidx/compose/material/DefaultButtonElevation;->disabledElevation:F

    .line 71
    :goto_0
    move v8, v0

    .line 72
    goto :goto_1

    .line 73
    .line 74
    :cond_1
    instance-of v0, v4, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 75
    .line 76
    if-eqz v0, :cond_2

    .line 77
    .line 78
    iget v0, v6, Landroidx/compose/material/DefaultButtonElevation;->pressedElevation:F

    .line 79
    goto :goto_0

    .line 80
    .line 81
    :cond_2
    instance-of v0, v4, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 82
    .line 83
    if-eqz v0, :cond_3

    .line 84
    .line 85
    iget v0, v6, Landroidx/compose/material/DefaultButtonElevation;->hoveredElevation:F

    .line 86
    goto :goto_0

    .line 87
    .line 88
    :cond_3
    instance-of v0, v4, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 89
    .line 90
    if-eqz v0, :cond_4

    .line 91
    .line 92
    iget v0, v6, Landroidx/compose/material/DefaultButtonElevation;->focusedElevation:F

    .line 93
    goto :goto_0

    .line 94
    .line 95
    :cond_4
    iget v0, v6, Landroidx/compose/material/DefaultButtonElevation;->defaultElevation:F

    .line 96
    goto :goto_0

    .line 97
    .line 98
    .line 99
    :goto_1
    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 100
    .line 101
    .line 102
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 103
    move-result-object v0

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 107
    move-result-object v1

    .line 108
    .line 109
    if-ne v0, v1, :cond_5

    .line 110
    .line 111
    new-instance v0, Landroidx/compose/animation/core/Animatable;

    .line 112
    .line 113
    .line 114
    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->c(F)Landroidx/compose/ui/unit/Dp;

    .line 115
    move-result-object v10

    .line 116
    .line 117
    sget-object v1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    .line 118
    .line 119
    .line 120
    invoke-static {v1}, Landroidx/compose/animation/core/VectorConvertersKt;->e(Landroidx/compose/ui/unit/Dp$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 121
    move-result-object v11

    .line 122
    const/4 v12, 0x0

    .line 123
    const/4 v13, 0x4

    .line 124
    const/4 v14, 0x0

    .line 125
    move-object v9, v0

    .line 126
    .line 127
    .line 128
    invoke-direct/range {v9 .. v14}, Landroidx/compose/animation/core/Animatable;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;ILkotlin/jvm/internal/k;)V

    .line 129
    .line 130
    .line 131
    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    :cond_5
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 135
    move-object v9, v0

    .line 136
    .line 137
    check-cast v9, Landroidx/compose/animation/core/Animatable;

    .line 138
    const/4 v10, 0x0

    .line 139
    .line 140
    if-nez p1, :cond_6

    .line 141
    .line 142
    .line 143
    const v0, -0x5f4bddb9

    .line 144
    .line 145
    .line 146
    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 147
    .line 148
    .line 149
    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->c(F)Landroidx/compose/ui/unit/Dp;

    .line 150
    move-result-object v0

    .line 151
    .line 152
    new-instance v1, Landroidx/compose/material/DefaultButtonElevation$elevation$2;

    .line 153
    .line 154
    .line 155
    invoke-direct {v1, v9, v8, v5}, Landroidx/compose/material/DefaultButtonElevation$elevation$2;-><init>(Landroidx/compose/animation/core/Animatable;FLkotlin/coroutines/d;)V

    .line 156
    .line 157
    .line 158
    invoke-static {v0, v1, v7, v10}, Landroidx/compose/runtime/EffectsKt;->d(Ljava/lang/Object;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 159
    .line 160
    .line 161
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 162
    goto :goto_2

    .line 163
    .line 164
    .line 165
    :cond_6
    const v0, -0x5f4bdd0e

    .line 166
    .line 167
    .line 168
    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 169
    .line 170
    .line 171
    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->c(F)Landroidx/compose/ui/unit/Dp;

    .line 172
    move-result-object v11

    .line 173
    .line 174
    new-instance v12, Landroidx/compose/material/DefaultButtonElevation$elevation$3;

    .line 175
    const/4 v5, 0x0

    .line 176
    move-object v0, v12

    .line 177
    move-object v1, v9

    .line 178
    move-object v2, p0

    .line 179
    move v3, v8

    .line 180
    .line 181
    .line 182
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material/DefaultButtonElevation$elevation$3;-><init>(Landroidx/compose/animation/core/Animatable;Landroidx/compose/material/DefaultButtonElevation;FLandroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/d;)V

    .line 183
    .line 184
    .line 185
    invoke-static {v11, v12, v7, v10}, Landroidx/compose/runtime/EffectsKt;->d(Ljava/lang/Object;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 186
    .line 187
    .line 188
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 189
    .line 190
    .line 191
    :goto_2
    invoke-virtual {v9}, Landroidx/compose/animation/core/Animatable;->g()Landroidx/compose/runtime/State;

    .line 192
    move-result-object v0

    .line 193
    .line 194
    .line 195
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 196
    return-object v0
.end method
