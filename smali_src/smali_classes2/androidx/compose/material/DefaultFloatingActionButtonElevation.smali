.class final Landroidx/compose/material/DefaultFloatingActionButtonElevation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/material/FloatingActionButtonElevation;


# annotations
.annotation build Landroidx/compose/runtime/Stable;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFloatingActionButton.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FloatingActionButton.kt\nandroidx/compose/material/DefaultFloatingActionButtonElevation\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,333:1\n25#2:334\n25#2:341\n1057#3,6:335\n1057#3,6:342\n*S KotlinDebug\n*F\n+ 1 FloatingActionButton.kt\nandroidx/compose/material/DefaultFloatingActionButtonElevation\n*L\n271#1:334\n309#1:341\n271#1:335,6\n309#1:342,6\n*E\n"
.end annotation


# instance fields
.field private final defaultElevation:F

.field private final focusedElevation:F

.field private final hoveredElevation:F

.field private final pressedElevation:F


# direct methods
.method private constructor <init>(FFFF)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/material/DefaultFloatingActionButtonElevation;->defaultElevation:F

    iput p2, p0, Landroidx/compose/material/DefaultFloatingActionButtonElevation;->pressedElevation:F

    iput p3, p0, Landroidx/compose/material/DefaultFloatingActionButtonElevation;->hoveredElevation:F

    iput p4, p0, Landroidx/compose/material/DefaultFloatingActionButtonElevation;->focusedElevation:F

    return-void
.end method

.method public synthetic constructor <init>(FFFFLkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/material/DefaultFloatingActionButtonElevation;-><init>(FFFF)V

    return-void
.end method

.method public static final synthetic b(Landroidx/compose/material/DefaultFloatingActionButtonElevation;)F
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/compose/material/DefaultFloatingActionButtonElevation;->focusedElevation:F

    .line 3
    return p0
.end method

.method public static final synthetic c(Landroidx/compose/material/DefaultFloatingActionButtonElevation;)F
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/compose/material/DefaultFloatingActionButtonElevation;->hoveredElevation:F

    .line 3
    return p0
.end method

.method public static final synthetic d(Landroidx/compose/material/DefaultFloatingActionButtonElevation;)F
    .locals 0

    .line 1
    .line 2
    iget p0, p0, Landroidx/compose/material/DefaultFloatingActionButtonElevation;->pressedElevation:F

    .line 3
    return p0
.end method


# virtual methods
.method public a(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 9
    .param p1    # Landroidx/compose/foundation/interaction/InteractionSource;
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
            "(",
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
    .line 2
    const-string v0, "interactionSource"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const v0, -0x1c84f447

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 12
    .line 13
    .line 14
    const v0, -0x1d58f75c

    .line 15
    .line 16
    .line 17
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 27
    move-result-object v3

    .line 28
    .line 29
    if-ne v1, v3, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->d()Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 40
    .line 41
    check-cast v1, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 42
    .line 43
    new-instance v3, Landroidx/compose/material/DefaultFloatingActionButtonElevation$elevation$1;

    .line 44
    const/4 v4, 0x0

    .line 45
    .line 46
    .line 47
    invoke-direct {v3, p1, v1, v4}, Landroidx/compose/material/DefaultFloatingActionButtonElevation$elevation$1;-><init>(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/snapshots/SnapshotStateList;Lkotlin/coroutines/d;)V

    .line 48
    .line 49
    and-int/lit8 p3, p3, 0xe

    .line 50
    .line 51
    .line 52
    invoke-static {p1, v3, p2, p3}, Landroidx/compose/runtime/EffectsKt;->d(Ljava/lang/Object;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 53
    .line 54
    .line 55
    invoke-static {v1}, Lkotlin/collections/t;->w0(Ljava/util/List;)Ljava/lang/Object;

    .line 56
    move-result-object p1

    .line 57
    move-object v7, p1

    .line 58
    .line 59
    check-cast v7, Landroidx/compose/foundation/interaction/Interaction;

    .line 60
    .line 61
    instance-of p1, v7, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 62
    .line 63
    if-eqz p1, :cond_1

    .line 64
    .line 65
    iget p1, p0, Landroidx/compose/material/DefaultFloatingActionButtonElevation;->pressedElevation:F

    .line 66
    :goto_0
    move v6, p1

    .line 67
    goto :goto_1

    .line 68
    .line 69
    :cond_1
    instance-of p1, v7, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 70
    .line 71
    if-eqz p1, :cond_2

    .line 72
    .line 73
    iget p1, p0, Landroidx/compose/material/DefaultFloatingActionButtonElevation;->hoveredElevation:F

    .line 74
    goto :goto_0

    .line 75
    .line 76
    :cond_2
    instance-of p1, v7, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 77
    .line 78
    if-eqz p1, :cond_3

    .line 79
    .line 80
    iget p1, p0, Landroidx/compose/material/DefaultFloatingActionButtonElevation;->focusedElevation:F

    .line 81
    goto :goto_0

    .line 82
    .line 83
    :cond_3
    iget p1, p0, Landroidx/compose/material/DefaultFloatingActionButtonElevation;->defaultElevation:F

    .line 84
    goto :goto_0

    .line 85
    .line 86
    .line 87
    :goto_1
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 88
    .line 89
    .line 90
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->H()Ljava/lang/Object;

    .line 91
    move-result-object p1

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->a()Ljava/lang/Object;

    .line 95
    move-result-object p3

    .line 96
    .line 97
    if-ne p1, p3, :cond_4

    .line 98
    .line 99
    new-instance p1, Landroidx/compose/animation/core/Animatable;

    .line 100
    .line 101
    .line 102
    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->c(F)Landroidx/compose/ui/unit/Dp;

    .line 103
    move-result-object v1

    .line 104
    .line 105
    sget-object p3, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    .line 106
    .line 107
    .line 108
    invoke-static {p3}, Landroidx/compose/animation/core/VectorConvertersKt;->e(Landroidx/compose/ui/unit/Dp$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 109
    move-result-object v2

    .line 110
    const/4 v3, 0x0

    .line 111
    const/4 v4, 0x4

    .line 112
    const/4 v5, 0x0

    .line 113
    move-object v0, p1

    .line 114
    .line 115
    .line 116
    invoke-direct/range {v0 .. v5}, Landroidx/compose/animation/core/Animatable;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;ILkotlin/jvm/internal/k;)V

    .line 117
    .line 118
    .line 119
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->z(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    :cond_4
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 123
    .line 124
    check-cast p1, Landroidx/compose/animation/core/Animatable;

    .line 125
    .line 126
    .line 127
    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->c(F)Landroidx/compose/ui/unit/Dp;

    .line 128
    move-result-object p3

    .line 129
    .line 130
    new-instance v0, Landroidx/compose/material/DefaultFloatingActionButtonElevation$elevation$2;

    .line 131
    const/4 v8, 0x0

    .line 132
    move-object v3, v0

    .line 133
    move-object v4, p1

    .line 134
    move-object v5, p0

    .line 135
    .line 136
    .line 137
    invoke-direct/range {v3 .. v8}, Landroidx/compose/material/DefaultFloatingActionButtonElevation$elevation$2;-><init>(Landroidx/compose/animation/core/Animatable;Landroidx/compose/material/DefaultFloatingActionButtonElevation;FLandroidx/compose/foundation/interaction/Interaction;Lkotlin/coroutines/d;)V

    .line 138
    const/4 v1, 0x0

    .line 139
    .line 140
    .line 141
    invoke-static {p3, v0, p2, v1}, Landroidx/compose/runtime/EffectsKt;->d(Ljava/lang/Object;Le8/p;Landroidx/compose/runtime/Composer;I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Landroidx/compose/animation/core/Animatable;->g()Landroidx/compose/runtime/State;

    .line 145
    move-result-object p1

    .line 146
    .line 147
    .line 148
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 149
    return-object p1
.end method
