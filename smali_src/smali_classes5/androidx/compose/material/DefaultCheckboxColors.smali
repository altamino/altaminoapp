.class final Landroidx/compose/material/DefaultCheckboxColors;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/material/CheckboxColors;


# annotations
.annotation build Landroidx/compose/runtime/Stable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material/DefaultCheckboxColors$WhenMappings;
    }
.end annotation


# instance fields
.field private final checkedBorderColor:J

.field private final checkedBoxColor:J

.field private final checkedCheckmarkColor:J

.field private final disabledBorderColor:J

.field private final disabledCheckedBoxColor:J

.field private final disabledIndeterminateBorderColor:J

.field private final disabledIndeterminateBoxColor:J

.field private final disabledUncheckedBoxColor:J

.field private final uncheckedBorderColor:J

.field private final uncheckedBoxColor:J

.field private final uncheckedCheckmarkColor:J


# direct methods
.method private constructor <init>(JJJJJJJJJJJ)V
    .locals 3

    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    iput-wide v1, v0, Landroidx/compose/material/DefaultCheckboxColors;->checkedCheckmarkColor:J

    move-wide v1, p3

    iput-wide v1, v0, Landroidx/compose/material/DefaultCheckboxColors;->uncheckedCheckmarkColor:J

    move-wide v1, p5

    iput-wide v1, v0, Landroidx/compose/material/DefaultCheckboxColors;->checkedBoxColor:J

    move-wide v1, p7

    iput-wide v1, v0, Landroidx/compose/material/DefaultCheckboxColors;->uncheckedBoxColor:J

    move-wide v1, p9

    iput-wide v1, v0, Landroidx/compose/material/DefaultCheckboxColors;->disabledCheckedBoxColor:J

    move-wide v1, p11

    iput-wide v1, v0, Landroidx/compose/material/DefaultCheckboxColors;->disabledUncheckedBoxColor:J

    move-wide/from16 v1, p13

    iput-wide v1, v0, Landroidx/compose/material/DefaultCheckboxColors;->disabledIndeterminateBoxColor:J

    move-wide/from16 v1, p15

    iput-wide v1, v0, Landroidx/compose/material/DefaultCheckboxColors;->checkedBorderColor:J

    move-wide/from16 v1, p17

    iput-wide v1, v0, Landroidx/compose/material/DefaultCheckboxColors;->uncheckedBorderColor:J

    move-wide/from16 v1, p19

    iput-wide v1, v0, Landroidx/compose/material/DefaultCheckboxColors;->disabledBorderColor:J

    move-wide/from16 v1, p21

    iput-wide v1, v0, Landroidx/compose/material/DefaultCheckboxColors;->disabledIndeterminateBorderColor:J

    return-void
.end method

.method public synthetic constructor <init>(JJJJJJJJJJJLkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p22}, Landroidx/compose/material/DefaultCheckboxColors;-><init>(JJJJJJJJJJJ)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/compose/ui/state/ToggleableState;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 9
    .param p1    # Landroidx/compose/ui/state/ToggleableState;
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
            "Landroidx/compose/ui/state/ToggleableState;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string p3, "state"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, p3}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const p3, 0x2076cb8b

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 12
    .line 13
    sget-object p3, Landroidx/compose/ui/state/ToggleableState;->Off:Landroidx/compose/ui/state/ToggleableState;

    .line 14
    .line 15
    if-ne p1, p3, :cond_0

    .line 16
    .line 17
    iget-wide v0, p0, Landroidx/compose/material/DefaultCheckboxColors;->uncheckedCheckmarkColor:J

    .line 18
    :goto_0
    move-wide v2, v0

    .line 19
    goto :goto_1

    .line 20
    .line 21
    :cond_0
    iget-wide v0, p0, Landroidx/compose/material/DefaultCheckboxColors;->checkedCheckmarkColor:J

    .line 22
    goto :goto_0

    .line 23
    .line 24
    :goto_1
    if-ne p1, p3, :cond_1

    .line 25
    .line 26
    const/16 p1, 0x64

    .line 27
    goto :goto_2

    .line 28
    .line 29
    :cond_1
    const/16 p1, 0x32

    .line 30
    :goto_2
    const/4 p3, 0x0

    .line 31
    const/4 v0, 0x6

    .line 32
    const/4 v1, 0x0

    .line 33
    .line 34
    .line 35
    invoke-static {p1, p3, v1, v0, v1}, Landroidx/compose/animation/core/AnimationSpecKt;->k(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    .line 36
    move-result-object v4

    .line 37
    const/4 v5, 0x0

    .line 38
    const/4 v7, 0x0

    .line 39
    const/4 v8, 0x4

    .line 40
    move-object v6, p2

    .line 41
    .line 42
    .line 43
    invoke-static/range {v2 .. v8}, Landroidx/compose/animation/SingleValueAnimationKt;->a(JLandroidx/compose/animation/core/AnimationSpec;Le8/l;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->Q()V

    .line 48
    return-object p1
.end method

.method public b(ZLandroidx/compose/ui/state/ToggleableState;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 9
    .param p2    # Landroidx/compose/ui/state/ToggleableState;
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
            "Landroidx/compose/ui/state/ToggleableState;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string p4, "state"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, p4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const p4, 0x321f21a5

    .line 9
    .line 10
    .line 11
    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 12
    const/4 p4, 0x3

    .line 13
    const/4 v0, 0x2

    .line 14
    const/4 v1, 0x1

    .line 15
    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    sget-object v2, Landroidx/compose/material/DefaultCheckboxColors$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 22
    move-result v3

    .line 23
    .line 24
    aget v2, v2, v3

    .line 25
    .line 26
    if-eq v2, v1, :cond_1

    .line 27
    .line 28
    if-eq v2, v0, :cond_1

    .line 29
    .line 30
    if-ne v2, p4, :cond_0

    .line 31
    .line 32
    iget-wide v0, p0, Landroidx/compose/material/DefaultCheckboxColors;->uncheckedBoxColor:J

    .line 33
    :goto_0
    move-wide v2, v0

    .line 34
    goto :goto_1

    .line 35
    .line 36
    :cond_0
    new-instance p1, Lw7/s;

    .line 37
    .line 38
    .line 39
    invoke-direct {p1}, Lw7/s;-><init>()V

    .line 40
    throw p1

    .line 41
    .line 42
    :cond_1
    iget-wide v0, p0, Landroidx/compose/material/DefaultCheckboxColors;->checkedBoxColor:J

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_2
    sget-object v2, Landroidx/compose/material/DefaultCheckboxColors$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 49
    move-result v3

    .line 50
    .line 51
    aget v2, v2, v3

    .line 52
    .line 53
    if-eq v2, v1, :cond_5

    .line 54
    .line 55
    if-eq v2, v0, :cond_4

    .line 56
    .line 57
    if-ne v2, p4, :cond_3

    .line 58
    .line 59
    iget-wide v0, p0, Landroidx/compose/material/DefaultCheckboxColors;->disabledUncheckedBoxColor:J

    .line 60
    goto :goto_0

    .line 61
    .line 62
    :cond_3
    new-instance p1, Lw7/s;

    .line 63
    .line 64
    .line 65
    invoke-direct {p1}, Lw7/s;-><init>()V

    .line 66
    throw p1

    .line 67
    .line 68
    :cond_4
    iget-wide v0, p0, Landroidx/compose/material/DefaultCheckboxColors;->disabledIndeterminateBoxColor:J

    .line 69
    goto :goto_0

    .line 70
    .line 71
    :cond_5
    iget-wide v0, p0, Landroidx/compose/material/DefaultCheckboxColors;->disabledCheckedBoxColor:J

    .line 72
    goto :goto_0

    .line 73
    :goto_1
    const/4 p4, 0x0

    .line 74
    .line 75
    if-eqz p1, :cond_7

    .line 76
    .line 77
    .line 78
    const p1, -0x77d7fc7b

    .line 79
    .line 80
    .line 81
    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 82
    .line 83
    sget-object p1, Landroidx/compose/ui/state/ToggleableState;->Off:Landroidx/compose/ui/state/ToggleableState;

    .line 84
    .line 85
    if-ne p2, p1, :cond_6

    .line 86
    .line 87
    const/16 p1, 0x64

    .line 88
    goto :goto_2

    .line 89
    .line 90
    :cond_6
    const/16 p1, 0x32

    .line 91
    :goto_2
    const/4 p2, 0x6

    .line 92
    const/4 v0, 0x0

    .line 93
    .line 94
    .line 95
    invoke-static {p1, p4, v0, p2, v0}, Landroidx/compose/animation/core/AnimationSpecKt;->k(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    .line 96
    move-result-object v4

    .line 97
    const/4 v5, 0x0

    .line 98
    const/4 v7, 0x0

    .line 99
    const/4 v8, 0x4

    .line 100
    move-object v6, p3

    .line 101
    .line 102
    .line 103
    invoke-static/range {v2 .. v8}, Landroidx/compose/animation/SingleValueAnimationKt;->a(JLandroidx/compose/animation/core/AnimationSpec;Le8/l;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 104
    move-result-object p1

    .line 105
    .line 106
    .line 107
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 108
    goto :goto_3

    .line 109
    .line 110
    .line 111
    :cond_7
    const p1, -0x77d7fbc1

    .line 112
    .line 113
    .line 114
    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 115
    .line 116
    .line 117
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->h(J)Landroidx/compose/ui/graphics/Color;

    .line 118
    move-result-object p1

    .line 119
    .line 120
    .line 121
    invoke-static {p1, p3, p4}, Landroidx/compose/runtime/SnapshotStateKt;->n(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 122
    move-result-object p1

    .line 123
    .line 124
    .line 125
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 126
    .line 127
    .line 128
    :goto_3
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 129
    return-object p1
.end method

.method public c(ZLandroidx/compose/ui/state/ToggleableState;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 9
    .param p2    # Landroidx/compose/ui/state/ToggleableState;
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
            "Landroidx/compose/ui/state/ToggleableState;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string p4, "state"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, p4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const p4, -0x5d7afd5e

    .line 9
    .line 10
    .line 11
    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 12
    const/4 p4, 0x3

    .line 13
    const/4 v0, 0x2

    .line 14
    const/4 v1, 0x1

    .line 15
    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    sget-object v2, Landroidx/compose/material/DefaultCheckboxColors$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 22
    move-result v3

    .line 23
    .line 24
    aget v2, v2, v3

    .line 25
    .line 26
    if-eq v2, v1, :cond_1

    .line 27
    .line 28
    if-eq v2, v0, :cond_1

    .line 29
    .line 30
    if-ne v2, p4, :cond_0

    .line 31
    .line 32
    iget-wide v0, p0, Landroidx/compose/material/DefaultCheckboxColors;->uncheckedBorderColor:J

    .line 33
    :goto_0
    move-wide v2, v0

    .line 34
    goto :goto_2

    .line 35
    .line 36
    :cond_0
    new-instance p1, Lw7/s;

    .line 37
    .line 38
    .line 39
    invoke-direct {p1}, Lw7/s;-><init>()V

    .line 40
    throw p1

    .line 41
    .line 42
    :cond_1
    iget-wide v0, p0, Landroidx/compose/material/DefaultCheckboxColors;->checkedBorderColor:J

    .line 43
    goto :goto_0

    .line 44
    .line 45
    :cond_2
    sget-object v2, Landroidx/compose/material/DefaultCheckboxColors$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 49
    move-result v3

    .line 50
    .line 51
    aget v2, v2, v3

    .line 52
    .line 53
    if-eq v2, v1, :cond_5

    .line 54
    .line 55
    if-eq v2, v0, :cond_4

    .line 56
    .line 57
    if-ne v2, p4, :cond_3

    .line 58
    goto :goto_1

    .line 59
    .line 60
    :cond_3
    new-instance p1, Lw7/s;

    .line 61
    .line 62
    .line 63
    invoke-direct {p1}, Lw7/s;-><init>()V

    .line 64
    throw p1

    .line 65
    .line 66
    :cond_4
    iget-wide v0, p0, Landroidx/compose/material/DefaultCheckboxColors;->disabledIndeterminateBorderColor:J

    .line 67
    goto :goto_0

    .line 68
    .line 69
    :cond_5
    :goto_1
    iget-wide v0, p0, Landroidx/compose/material/DefaultCheckboxColors;->disabledBorderColor:J

    .line 70
    goto :goto_0

    .line 71
    :goto_2
    const/4 p4, 0x0

    .line 72
    .line 73
    if-eqz p1, :cond_7

    .line 74
    .line 75
    .line 76
    const p1, -0x2f782e5a

    .line 77
    .line 78
    .line 79
    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 80
    .line 81
    sget-object p1, Landroidx/compose/ui/state/ToggleableState;->Off:Landroidx/compose/ui/state/ToggleableState;

    .line 82
    .line 83
    if-ne p2, p1, :cond_6

    .line 84
    .line 85
    const/16 p1, 0x64

    .line 86
    goto :goto_3

    .line 87
    .line 88
    :cond_6
    const/16 p1, 0x32

    .line 89
    :goto_3
    const/4 p2, 0x6

    .line 90
    const/4 v0, 0x0

    .line 91
    .line 92
    .line 93
    invoke-static {p1, p4, v0, p2, v0}, Landroidx/compose/animation/core/AnimationSpecKt;->k(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    .line 94
    move-result-object v4

    .line 95
    const/4 v5, 0x0

    .line 96
    const/4 v7, 0x0

    .line 97
    const/4 v8, 0x4

    .line 98
    move-object v6, p3

    .line 99
    .line 100
    .line 101
    invoke-static/range {v2 .. v8}, Landroidx/compose/animation/SingleValueAnimationKt;->a(JLandroidx/compose/animation/core/AnimationSpec;Le8/l;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 102
    move-result-object p1

    .line 103
    .line 104
    .line 105
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 106
    goto :goto_4

    .line 107
    .line 108
    .line 109
    :cond_7
    const p1, -0x2f782da0

    .line 110
    .line 111
    .line 112
    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 113
    .line 114
    .line 115
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->h(J)Landroidx/compose/ui/graphics/Color;

    .line 116
    move-result-object p1

    .line 117
    .line 118
    .line 119
    invoke-static {p1, p3, p4}, Landroidx/compose/runtime/SnapshotStateKt;->n(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 120
    move-result-object p1

    .line 121
    .line 122
    .line 123
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 124
    .line 125
    .line 126
    :goto_4
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 127
    return-object p1
.end method
