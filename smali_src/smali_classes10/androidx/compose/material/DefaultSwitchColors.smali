.class final Landroidx/compose/material/DefaultSwitchColors;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/material/SwitchColors;


# annotations
.annotation build Landroidx/compose/runtime/Immutable;
.end annotation


# instance fields
.field private final checkedThumbColor:J

.field private final checkedTrackColor:J

.field private final disabledCheckedThumbColor:J

.field private final disabledCheckedTrackColor:J

.field private final disabledUncheckedThumbColor:J

.field private final disabledUncheckedTrackColor:J

.field private final uncheckedThumbColor:J

.field private final uncheckedTrackColor:J


# direct methods
.method private constructor <init>(JJJJJJJJ)V
    .locals 3

    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    iput-wide v1, v0, Landroidx/compose/material/DefaultSwitchColors;->checkedThumbColor:J

    move-wide v1, p3

    iput-wide v1, v0, Landroidx/compose/material/DefaultSwitchColors;->checkedTrackColor:J

    move-wide v1, p5

    iput-wide v1, v0, Landroidx/compose/material/DefaultSwitchColors;->uncheckedThumbColor:J

    move-wide v1, p7

    iput-wide v1, v0, Landroidx/compose/material/DefaultSwitchColors;->uncheckedTrackColor:J

    move-wide v1, p9

    iput-wide v1, v0, Landroidx/compose/material/DefaultSwitchColors;->disabledCheckedThumbColor:J

    move-wide v1, p11

    iput-wide v1, v0, Landroidx/compose/material/DefaultSwitchColors;->disabledCheckedTrackColor:J

    move-wide/from16 v1, p13

    iput-wide v1, v0, Landroidx/compose/material/DefaultSwitchColors;->disabledUncheckedThumbColor:J

    move-wide/from16 v1, p15

    iput-wide v1, v0, Landroidx/compose/material/DefaultSwitchColors;->disabledUncheckedTrackColor:J

    return-void
.end method

.method public synthetic constructor <init>(JJJJJJJJLkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p16}, Landroidx/compose/material/DefaultSwitchColors;-><init>(JJJJJJJJ)V

    return-void
.end method


# virtual methods
.method public a(ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 0
    .param p3    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
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
    .line 3
    const p4, -0x461d9342

    .line 4
    .line 5
    .line 6
    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    iget-wide p1, p0, Landroidx/compose/material/DefaultSwitchColors;->checkedTrackColor:J

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-wide p1, p0, Landroidx/compose/material/DefaultSwitchColors;->uncheckedTrackColor:J

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_1
    if-eqz p2, :cond_2

    .line 19
    .line 20
    iget-wide p1, p0, Landroidx/compose/material/DefaultSwitchColors;->disabledCheckedTrackColor:J

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_2
    iget-wide p1, p0, Landroidx/compose/material/DefaultSwitchColors;->disabledUncheckedTrackColor:J

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/Color;->h(J)Landroidx/compose/ui/graphics/Color;

    .line 27
    move-result-object p1

    .line 28
    const/4 p2, 0x0

    .line 29
    .line 30
    .line 31
    invoke-static {p1, p3, p2}, Landroidx/compose/runtime/SnapshotStateKt;->n(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 36
    return-object p1
.end method

.method public b(ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 0
    .param p3    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
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
    .line 3
    const p4, -0x3f58d77

    .line 4
    .line 5
    .line 6
    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    iget-wide p1, p0, Landroidx/compose/material/DefaultSwitchColors;->checkedThumbColor:J

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    iget-wide p1, p0, Landroidx/compose/material/DefaultSwitchColors;->uncheckedThumbColor:J

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_1
    if-eqz p2, :cond_2

    .line 19
    .line 20
    iget-wide p1, p0, Landroidx/compose/material/DefaultSwitchColors;->disabledCheckedThumbColor:J

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_2
    iget-wide p1, p0, Landroidx/compose/material/DefaultSwitchColors;->disabledUncheckedThumbColor:J

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/Color;->h(J)Landroidx/compose/ui/graphics/Color;

    .line 27
    move-result-object p1

    .line 28
    const/4 p2, 0x0

    .line 29
    .line 30
    .line 31
    invoke-static {p1, p3, p2}, Landroidx/compose/runtime/SnapshotStateKt;->n(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 32
    move-result-object p1

    .line 33
    .line 34
    .line 35
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->Q()V

    .line 36
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    .line 7
    if-eqz p1, :cond_a

    .line 8
    .line 9
    const-class v2, Landroidx/compose/material/DefaultSwitchColors;

    .line 10
    .line 11
    .line 12
    invoke-static {v2}, Lkotlin/jvm/internal/q0;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    move-result-object v3

    .line 18
    .line 19
    .line 20
    invoke-static {v3}, Lkotlin/jvm/internal/q0;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 21
    move-result-object v3

    .line 22
    .line 23
    .line 24
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    move-result v2

    .line 26
    .line 27
    if-nez v2, :cond_1

    .line 28
    goto :goto_0

    .line 29
    .line 30
    :cond_1
    check-cast p1, Landroidx/compose/material/DefaultSwitchColors;

    .line 31
    .line 32
    iget-wide v2, p0, Landroidx/compose/material/DefaultSwitchColors;->checkedThumbColor:J

    .line 33
    .line 34
    iget-wide v4, p1, Landroidx/compose/material/DefaultSwitchColors;->checkedThumbColor:J

    .line 35
    .line 36
    .line 37
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    .line 38
    move-result v2

    .line 39
    .line 40
    if-nez v2, :cond_2

    .line 41
    return v1

    .line 42
    .line 43
    :cond_2
    iget-wide v2, p0, Landroidx/compose/material/DefaultSwitchColors;->checkedTrackColor:J

    .line 44
    .line 45
    iget-wide v4, p1, Landroidx/compose/material/DefaultSwitchColors;->checkedTrackColor:J

    .line 46
    .line 47
    .line 48
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    .line 49
    move-result v2

    .line 50
    .line 51
    if-nez v2, :cond_3

    .line 52
    return v1

    .line 53
    .line 54
    :cond_3
    iget-wide v2, p0, Landroidx/compose/material/DefaultSwitchColors;->uncheckedThumbColor:J

    .line 55
    .line 56
    iget-wide v4, p1, Landroidx/compose/material/DefaultSwitchColors;->uncheckedThumbColor:J

    .line 57
    .line 58
    .line 59
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    .line 60
    move-result v2

    .line 61
    .line 62
    if-nez v2, :cond_4

    .line 63
    return v1

    .line 64
    .line 65
    :cond_4
    iget-wide v2, p0, Landroidx/compose/material/DefaultSwitchColors;->uncheckedTrackColor:J

    .line 66
    .line 67
    iget-wide v4, p1, Landroidx/compose/material/DefaultSwitchColors;->uncheckedTrackColor:J

    .line 68
    .line 69
    .line 70
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    .line 71
    move-result v2

    .line 72
    .line 73
    if-nez v2, :cond_5

    .line 74
    return v1

    .line 75
    .line 76
    :cond_5
    iget-wide v2, p0, Landroidx/compose/material/DefaultSwitchColors;->disabledCheckedThumbColor:J

    .line 77
    .line 78
    iget-wide v4, p1, Landroidx/compose/material/DefaultSwitchColors;->disabledCheckedThumbColor:J

    .line 79
    .line 80
    .line 81
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    .line 82
    move-result v2

    .line 83
    .line 84
    if-nez v2, :cond_6

    .line 85
    return v1

    .line 86
    .line 87
    :cond_6
    iget-wide v2, p0, Landroidx/compose/material/DefaultSwitchColors;->disabledCheckedTrackColor:J

    .line 88
    .line 89
    iget-wide v4, p1, Landroidx/compose/material/DefaultSwitchColors;->disabledCheckedTrackColor:J

    .line 90
    .line 91
    .line 92
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    .line 93
    move-result v2

    .line 94
    .line 95
    if-nez v2, :cond_7

    .line 96
    return v1

    .line 97
    .line 98
    :cond_7
    iget-wide v2, p0, Landroidx/compose/material/DefaultSwitchColors;->disabledUncheckedThumbColor:J

    .line 99
    .line 100
    iget-wide v4, p1, Landroidx/compose/material/DefaultSwitchColors;->disabledUncheckedThumbColor:J

    .line 101
    .line 102
    .line 103
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    .line 104
    move-result v2

    .line 105
    .line 106
    if-nez v2, :cond_8

    .line 107
    return v1

    .line 108
    .line 109
    :cond_8
    iget-wide v2, p0, Landroidx/compose/material/DefaultSwitchColors;->disabledUncheckedTrackColor:J

    .line 110
    .line 111
    iget-wide v4, p1, Landroidx/compose/material/DefaultSwitchColors;->disabledUncheckedTrackColor:J

    .line 112
    .line 113
    .line 114
    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->n(JJ)Z

    .line 115
    move-result p1

    .line 116
    .line 117
    if-nez p1, :cond_9

    .line 118
    return v1

    .line 119
    :cond_9
    return v0

    .line 120
    :cond_a
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    .line 2
    iget-wide v0, p0, Landroidx/compose/material/DefaultSwitchColors;->checkedThumbColor:J

    .line 3
    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->t(J)I

    .line 6
    move-result v0

    .line 7
    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget-wide v1, p0, Landroidx/compose/material/DefaultSwitchColors;->checkedTrackColor:J

    .line 11
    .line 12
    .line 13
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->t(J)I

    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    .line 17
    mul-int/lit8 v0, v0, 0x1f

    .line 18
    .line 19
    iget-wide v1, p0, Landroidx/compose/material/DefaultSwitchColors;->uncheckedThumbColor:J

    .line 20
    .line 21
    .line 22
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->t(J)I

    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    .line 26
    mul-int/lit8 v0, v0, 0x1f

    .line 27
    .line 28
    iget-wide v1, p0, Landroidx/compose/material/DefaultSwitchColors;->uncheckedTrackColor:J

    .line 29
    .line 30
    .line 31
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->t(J)I

    .line 32
    move-result v1

    .line 33
    add-int/2addr v0, v1

    .line 34
    .line 35
    mul-int/lit8 v0, v0, 0x1f

    .line 36
    .line 37
    iget-wide v1, p0, Landroidx/compose/material/DefaultSwitchColors;->disabledCheckedThumbColor:J

    .line 38
    .line 39
    .line 40
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->t(J)I

    .line 41
    move-result v1

    .line 42
    add-int/2addr v0, v1

    .line 43
    .line 44
    mul-int/lit8 v0, v0, 0x1f

    .line 45
    .line 46
    iget-wide v1, p0, Landroidx/compose/material/DefaultSwitchColors;->disabledCheckedTrackColor:J

    .line 47
    .line 48
    .line 49
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->t(J)I

    .line 50
    move-result v1

    .line 51
    add-int/2addr v0, v1

    .line 52
    .line 53
    mul-int/lit8 v0, v0, 0x1f

    .line 54
    .line 55
    iget-wide v1, p0, Landroidx/compose/material/DefaultSwitchColors;->disabledUncheckedThumbColor:J

    .line 56
    .line 57
    .line 58
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->t(J)I

    .line 59
    move-result v1

    .line 60
    add-int/2addr v0, v1

    .line 61
    .line 62
    mul-int/lit8 v0, v0, 0x1f

    .line 63
    .line 64
    iget-wide v1, p0, Landroidx/compose/material/DefaultSwitchColors;->disabledUncheckedTrackColor:J

    .line 65
    .line 66
    .line 67
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->t(J)I

    .line 68
    move-result v1

    .line 69
    add-int/2addr v0, v1

    .line 70
    return v0
.end method
