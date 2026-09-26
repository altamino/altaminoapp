.class public final Landroidx/compose/material/TextFieldDefaultsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextFieldDefaults.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextFieldDefaults.kt\nandroidx/compose/material/TextFieldDefaultsKt\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,854:1\n76#2:855\n*S KotlinDebug\n*F\n+ 1 TextFieldDefaults.kt\nandroidx/compose/material/TextFieldDefaultsKt\n*L\n843#1:855\n*E\n"
.end annotation


# direct methods
.method public static final synthetic a(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material/TextFieldColors;FFLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static/range {p0 .. p7}, Landroidx/compose/material/TextFieldDefaultsKt;->b(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material/TextFieldColors;FFLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final b(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material/TextFieldColors;FFLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 9
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Landroidx/compose/foundation/interaction/InteractionSource;",
            "Landroidx/compose/material/TextFieldColors;",
            "FF",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/foundation/BorderStroke;",
            ">;"
        }
    .end annotation

    .line 1
    move-object v6, p6

    .line 2
    .line 3
    move/from16 v7, p7

    .line 4
    .line 5
    .line 6
    const v0, 0x41709f90

    .line 7
    .line 8
    .line 9
    invoke-interface {p6, v0}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 10
    .line 11
    shr-int/lit8 v0, v7, 0x6

    .line 12
    .line 13
    and-int/lit8 v0, v0, 0xe

    .line 14
    move-object v3, p2

    .line 15
    .line 16
    .line 17
    invoke-static {p2, p6, v0}, Landroidx/compose/foundation/interaction/FocusInteractionKt;->a(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 18
    move-result-object v8

    .line 19
    .line 20
    and-int/lit8 v0, v7, 0xe

    .line 21
    .line 22
    and-int/lit8 v1, v7, 0x70

    .line 23
    or-int/2addr v0, v1

    .line 24
    .line 25
    and-int/lit16 v1, v7, 0x380

    .line 26
    or-int/2addr v0, v1

    .line 27
    .line 28
    and-int/lit16 v1, v7, 0x1c00

    .line 29
    .line 30
    or-int v5, v0, v1

    .line 31
    move-object v0, p3

    .line 32
    move v1, p0

    .line 33
    move v2, p1

    .line 34
    move-object v4, p6

    .line 35
    .line 36
    .line 37
    invoke-interface/range {v0 .. v5}, Landroidx/compose/material/TextFieldColors;->d(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    .line 41
    invoke-static {v8}, Landroidx/compose/material/TextFieldDefaultsKt;->c(Landroidx/compose/runtime/State;)Z

    .line 42
    move-result v1

    .line 43
    .line 44
    if-eqz v1, :cond_0

    .line 45
    move v1, p4

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move v1, p5

    .line 48
    :goto_0
    const/4 v2, 0x0

    .line 49
    const/4 v3, 0x0

    .line 50
    .line 51
    if-eqz p0, :cond_1

    .line 52
    .line 53
    .line 54
    const v4, 0x6479eca5

    .line 55
    .line 56
    .line 57
    invoke-interface {p6, v4}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 58
    .line 59
    const/16 v4, 0x96

    .line 60
    const/4 v5, 0x6

    .line 61
    .line 62
    .line 63
    invoke-static {v4, v2, v3, v5, v3}, Landroidx/compose/animation/core/AnimationSpecKt;->k(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    .line 64
    move-result-object v4

    .line 65
    const/4 v5, 0x0

    .line 66
    .line 67
    const/16 v7, 0x30

    .line 68
    const/4 v8, 0x4

    .line 69
    move p0, v1

    .line 70
    move-object p1, v4

    .line 71
    move-object p2, v5

    .line 72
    move-object p3, p6

    .line 73
    move p4, v7

    .line 74
    move p5, v8

    .line 75
    .line 76
    .line 77
    invoke-static/range {p0 .. p5}, Landroidx/compose/animation/core/AnimateAsStateKt;->c(FLandroidx/compose/animation/core/AnimationSpec;Le8/l;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 78
    move-result-object v1

    .line 79
    .line 80
    .line 81
    invoke-interface {p6}, Landroidx/compose/runtime/Composer;->Q()V

    .line 82
    goto :goto_1

    .line 83
    .line 84
    .line 85
    :cond_1
    const v1, 0x6479ed07

    .line 86
    .line 87
    .line 88
    invoke-interface {p6, v1}, Landroidx/compose/runtime/Composer;->G(I)V

    .line 89
    .line 90
    .line 91
    invoke-static {p5}, Landroidx/compose/ui/unit/Dp;->c(F)Landroidx/compose/ui/unit/Dp;

    .line 92
    move-result-object v1

    .line 93
    .line 94
    shr-int/lit8 v4, v7, 0xf

    .line 95
    .line 96
    and-int/lit8 v4, v4, 0xe

    .line 97
    .line 98
    .line 99
    invoke-static {v1, p6, v4}, Landroidx/compose/runtime/SnapshotStateKt;->n(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 100
    move-result-object v1

    .line 101
    .line 102
    .line 103
    invoke-interface {p6}, Landroidx/compose/runtime/Composer;->Q()V

    .line 104
    .line 105
    :goto_1
    new-instance v4, Landroidx/compose/foundation/BorderStroke;

    .line 106
    .line 107
    .line 108
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 109
    move-result-object v1

    .line 110
    .line 111
    check-cast v1, Landroidx/compose/ui/unit/Dp;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Landroidx/compose/ui/unit/Dp;->l()F

    .line 115
    move-result v1

    .line 116
    .line 117
    new-instance v5, Landroidx/compose/ui/graphics/SolidColor;

    .line 118
    .line 119
    .line 120
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 121
    move-result-object v0

    .line 122
    .line 123
    check-cast v0, Landroidx/compose/ui/graphics/Color;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color;->v()J

    .line 127
    move-result-wide v7

    .line 128
    .line 129
    .line 130
    invoke-direct {v5, v7, v8, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/k;)V

    .line 131
    .line 132
    .line 133
    invoke-direct {v4, v1, v5, v3}, Landroidx/compose/foundation/BorderStroke;-><init>(FLandroidx/compose/ui/graphics/Brush;Lkotlin/jvm/internal/k;)V

    .line 134
    .line 135
    .line 136
    invoke-static {v4, p6, v2}, Landroidx/compose/runtime/SnapshotStateKt;->n(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 137
    move-result-object v0

    .line 138
    .line 139
    .line 140
    invoke-interface {p6}, Landroidx/compose/runtime/Composer;->Q()V

    .line 141
    return-object v0
.end method

.method private static final c(Landroidx/compose/runtime/State;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
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
