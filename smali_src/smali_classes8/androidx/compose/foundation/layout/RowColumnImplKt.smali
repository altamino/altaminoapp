.class public final Landroidx/compose/foundation/layout/RowColumnImplKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRowColumnImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RowColumnImpl.kt\nandroidx/compose/foundation/layout/RowColumnImplKt\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,937:1\n32#2,6:938\n32#2,6:944\n32#2,6:950\n*S KotlinDebug\n*F\n+ 1 RowColumnImpl.kt\nandroidx/compose/foundation/layout/RowColumnImplKt\n*L\n702#1:938,6\n726#1:944,6\n752#1:950,6\n*E\n"
.end annotation


# direct methods
.method private static final A(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/layout/LayoutOrientation;)I
    .locals 1

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 8
    move-result p0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 13
    move-result p0

    .line 14
    :goto_0
    return p0
.end method

.method private static final a(Landroidx/compose/foundation/layout/LayoutOrientation;)Le8/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/LayoutOrientation;",
            ")",
            "Le8/q<",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 3
    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    sget-object p0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->INSTANCE:Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->a()Le8/q;

    .line 10
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    sget-object p0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->INSTANCE:Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->e()Le8/q;

    .line 17
    move-result-object p0

    .line 18
    :goto_0
    return-object p0
.end method

.method private static final b(Landroidx/compose/foundation/layout/LayoutOrientation;)Le8/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/LayoutOrientation;",
            ")",
            "Le8/q<",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 3
    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    sget-object p0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->INSTANCE:Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->b()Le8/q;

    .line 10
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    sget-object p0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->INSTANCE:Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->f()Le8/q;

    .line 17
    move-result-object p0

    .line 18
    :goto_0
    return-object p0
.end method

.method private static final c(Landroidx/compose/foundation/layout/LayoutOrientation;)Le8/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/LayoutOrientation;",
            ")",
            "Le8/q<",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 3
    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    sget-object p0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->INSTANCE:Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->c()Le8/q;

    .line 10
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    sget-object p0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->INSTANCE:Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->g()Le8/q;

    .line 17
    move-result-object p0

    .line 18
    :goto_0
    return-object p0
.end method

.method private static final d(Landroidx/compose/foundation/layout/LayoutOrientation;)Le8/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/LayoutOrientation;",
            ")",
            "Le8/q<",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 3
    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    sget-object p0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->INSTANCE:Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->d()Le8/q;

    .line 10
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    sget-object p0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->INSTANCE:Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;->h()Le8/q;

    .line 17
    move-result-object p0

    .line 18
    :goto_0
    return-object p0
.end method

.method public static final synthetic e(Landroidx/compose/foundation/layout/LayoutOrientation;)Le8/q;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/foundation/layout/RowColumnImplKt;->a(Landroidx/compose/foundation/layout/LayoutOrientation;)Le8/q;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic f(Landroidx/compose/foundation/layout/LayoutOrientation;)Le8/q;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/foundation/layout/RowColumnImplKt;->b(Landroidx/compose/foundation/layout/LayoutOrientation;)Le8/q;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic g(Landroidx/compose/foundation/layout/LayoutOrientation;)Le8/q;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/foundation/layout/RowColumnImplKt;->c(Landroidx/compose/foundation/layout/LayoutOrientation;)Le8/q;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic h(Landroidx/compose/foundation/layout/LayoutOrientation;)Le8/q;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/foundation/layout/RowColumnImplKt;->d(Landroidx/compose/foundation/layout/LayoutOrientation;)Le8/q;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic i(Landroidx/compose/foundation/layout/RowColumnParentData;)Landroidx/compose/foundation/layout/CrossAxisAlignment;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/foundation/layout/RowColumnImplKt;->q(Landroidx/compose/foundation/layout/RowColumnParentData;)Landroidx/compose/foundation/layout/CrossAxisAlignment;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic j(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/foundation/layout/RowColumnImplKt;->r(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic k(Landroidx/compose/foundation/layout/RowColumnParentData;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/foundation/layout/RowColumnImplKt;->s(Landroidx/compose/foundation/layout/RowColumnParentData;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic l(Landroidx/compose/foundation/layout/RowColumnParentData;)F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/foundation/layout/RowColumnImplKt;->t(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic m(Ljava/util/List;Le8/p;Le8/p;IILandroidx/compose/foundation/layout/LayoutOrientation;Landroidx/compose/foundation/layout/LayoutOrientation;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static/range {p0 .. p6}, Landroidx/compose/foundation/layout/RowColumnImplKt;->w(Ljava/util/List;Le8/p;Le8/p;IILandroidx/compose/foundation/layout/LayoutOrientation;Landroidx/compose/foundation/layout/LayoutOrientation;)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic n(Landroidx/compose/foundation/layout/RowColumnParentData;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/foundation/layout/RowColumnImplKt;->x(Landroidx/compose/foundation/layout/RowColumnParentData;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic o(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/layout/LayoutOrientation;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/RowColumnImplKt;->z(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/layout/LayoutOrientation;)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic p(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/layout/LayoutOrientation;)I
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/RowColumnImplKt;->A(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/layout/LayoutOrientation;)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final q(Landroidx/compose/foundation/layout/RowColumnParentData;)Landroidx/compose/foundation/layout/CrossAxisAlignment;
    .locals 0

    .line 1
    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/RowColumnParentData;->a()Landroidx/compose/foundation/layout/CrossAxisAlignment;

    .line 6
    move-result-object p0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return-object p0
.end method

.method private static final r(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->e()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    instance-of v0, p0, Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p0, Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return-object p0
.end method

.method private static final s(Landroidx/compose/foundation/layout/RowColumnParentData;)Z
    .locals 0

    .line 1
    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/RowColumnParentData;->b()Z

    .line 6
    move-result p0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x1

    .line 9
    :goto_0
    return p0
.end method

.method private static final t(Landroidx/compose/foundation/layout/RowColumnParentData;)F
    .locals 0

    .line 1
    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/RowColumnParentData;->c()F

    .line 6
    move-result p0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
.end method

.method private static final u(Ljava/util/List;Le8/p;Le8/p;II)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;",
            "Le8/p<",
            "-",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Le8/p<",
            "-",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;II)I"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 5
    .line 6
    add-int/lit8 v0, v0, -0x1

    .line 7
    mul-int/2addr v0, p4

    .line 8
    .line 9
    .line 10
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    .line 11
    move-result p4

    .line 12
    .line 13
    .line 14
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x0

    .line 18
    move v3, v1

    .line 19
    move v5, v3

    .line 20
    move v4, v2

    .line 21
    .line 22
    .line 23
    :goto_0
    const v6, 0x7fffffff

    .line 24
    .line 25
    if-ge v3, v0, :cond_2

    .line 26
    .line 27
    .line 28
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v7

    .line 30
    .line 31
    check-cast v7, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 32
    .line 33
    .line 34
    invoke-static {v7}, Landroidx/compose/foundation/layout/RowColumnImplKt;->r(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 35
    move-result-object v8

    .line 36
    .line 37
    .line 38
    invoke-static {v8}, Landroidx/compose/foundation/layout/RowColumnImplKt;->t(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    .line 39
    move-result v8

    .line 40
    .line 41
    cmpg-float v9, v8, v2

    .line 42
    .line 43
    if-nez v9, :cond_0

    .line 44
    .line 45
    .line 46
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object v6

    .line 48
    .line 49
    .line 50
    invoke-interface {p1, v7, v6}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    move-result-object v6

    .line 52
    .line 53
    check-cast v6, Ljava/lang/Number;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 57
    move-result v6

    .line 58
    .line 59
    sub-int v8, p3, p4

    .line 60
    .line 61
    .line 62
    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    .line 63
    move-result v6

    .line 64
    add-int/2addr p4, v6

    .line 65
    .line 66
    .line 67
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    move-result-object v6

    .line 69
    .line 70
    .line 71
    invoke-interface {p2, v7, v6}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    move-result-object v6

    .line 73
    .line 74
    check-cast v6, Ljava/lang/Number;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 78
    move-result v6

    .line 79
    .line 80
    .line 81
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    .line 82
    move-result v5

    .line 83
    goto :goto_1

    .line 84
    .line 85
    :cond_0
    cmpl-float v6, v8, v2

    .line 86
    .line 87
    if-lez v6, :cond_1

    .line 88
    add-float/2addr v4, v8

    .line 89
    .line 90
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 91
    goto :goto_0

    .line 92
    .line 93
    :cond_2
    cmpg-float p1, v4, v2

    .line 94
    .line 95
    if-nez p1, :cond_3

    .line 96
    move p1, v1

    .line 97
    goto :goto_2

    .line 98
    .line 99
    :cond_3
    if-ne p3, v6, :cond_4

    .line 100
    move p1, v6

    .line 101
    goto :goto_2

    .line 102
    :cond_4
    sub-int/2addr p3, p4

    .line 103
    .line 104
    .line 105
    invoke-static {p3, v1}, Ljava/lang/Math;->max(II)I

    .line 106
    move-result p1

    .line 107
    int-to-float p1, p1

    .line 108
    div-float/2addr p1, v4

    .line 109
    .line 110
    .line 111
    invoke-static {p1}, Lg8/a;->c(F)I

    .line 112
    move-result p1

    .line 113
    .line 114
    .line 115
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 116
    move-result p3

    .line 117
    .line 118
    :goto_3
    if-ge v1, p3, :cond_7

    .line 119
    .line 120
    .line 121
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 122
    move-result-object p4

    .line 123
    .line 124
    check-cast p4, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 125
    .line 126
    .line 127
    invoke-static {p4}, Landroidx/compose/foundation/layout/RowColumnImplKt;->r(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 128
    move-result-object v0

    .line 129
    .line 130
    .line 131
    invoke-static {v0}, Landroidx/compose/foundation/layout/RowColumnImplKt;->t(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    .line 132
    move-result v0

    .line 133
    .line 134
    cmpl-float v3, v0, v2

    .line 135
    .line 136
    if-lez v3, :cond_6

    .line 137
    .line 138
    if-eq p1, v6, :cond_5

    .line 139
    int-to-float v3, p1

    .line 140
    mul-float/2addr v3, v0

    .line 141
    .line 142
    .line 143
    invoke-static {v3}, Lg8/a;->c(F)I

    .line 144
    move-result v0

    .line 145
    goto :goto_4

    .line 146
    :cond_5
    move v0, v6

    .line 147
    .line 148
    .line 149
    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    move-result-object v0

    .line 151
    .line 152
    .line 153
    invoke-interface {p2, p4, v0}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    move-result-object p4

    .line 155
    .line 156
    check-cast p4, Ljava/lang/Number;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    .line 160
    move-result p4

    .line 161
    .line 162
    .line 163
    invoke-static {v5, p4}, Ljava/lang/Math;->max(II)I

    .line 164
    move-result p4

    .line 165
    move v5, p4

    .line 166
    .line 167
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 168
    goto :goto_3

    .line 169
    :cond_7
    return v5
.end method

.method private static final v(Ljava/util/List;Le8/p;II)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;",
            "Le8/p<",
            "-",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;II)I"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    move v3, v1

    .line 8
    move v4, v3

    .line 9
    move v5, v2

    .line 10
    .line 11
    :goto_0
    if-ge v1, v0, :cond_2

    .line 12
    .line 13
    .line 14
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v6

    .line 16
    .line 17
    check-cast v6, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 18
    .line 19
    .line 20
    invoke-static {v6}, Landroidx/compose/foundation/layout/RowColumnImplKt;->r(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    .line 21
    move-result-object v7

    .line 22
    .line 23
    .line 24
    invoke-static {v7}, Landroidx/compose/foundation/layout/RowColumnImplKt;->t(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    .line 25
    move-result v7

    .line 26
    .line 27
    .line 28
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    move-result-object v8

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, v6, v8}, Le8/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    move-result-object v6

    .line 34
    .line 35
    check-cast v6, Ljava/lang/Number;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 39
    move-result v6

    .line 40
    .line 41
    cmpg-float v8, v7, v2

    .line 42
    .line 43
    if-nez v8, :cond_0

    .line 44
    add-int/2addr v4, v6

    .line 45
    goto :goto_1

    .line 46
    .line 47
    :cond_0
    cmpl-float v8, v7, v2

    .line 48
    .line 49
    if-lez v8, :cond_1

    .line 50
    add-float/2addr v5, v7

    .line 51
    int-to-float v6, v6

    .line 52
    div-float/2addr v6, v7

    .line 53
    .line 54
    .line 55
    invoke-static {v6}, Lg8/a;->c(F)I

    .line 56
    move-result v6

    .line 57
    .line 58
    .line 59
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    .line 60
    move-result v3

    .line 61
    .line 62
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    int-to-float p1, v3

    .line 65
    mul-float/2addr p1, v5

    .line 66
    .line 67
    .line 68
    invoke-static {p1}, Lg8/a;->c(F)I

    .line 69
    move-result p1

    .line 70
    add-int/2addr p1, v4

    .line 71
    .line 72
    .line 73
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 74
    move-result p0

    .line 75
    .line 76
    add-int/lit8 p0, p0, -0x1

    .line 77
    mul-int/2addr p0, p3

    .line 78
    add-int/2addr p1, p0

    .line 79
    return p1
.end method

.method private static final w(Ljava/util/List;Le8/p;Le8/p;IILandroidx/compose/foundation/layout/LayoutOrientation;Landroidx/compose/foundation/layout/LayoutOrientation;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;",
            "Le8/p<",
            "-",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Le8/p<",
            "-",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;II",
            "Landroidx/compose/foundation/layout/LayoutOrientation;",
            "Landroidx/compose/foundation/layout/LayoutOrientation;",
            ")I"
        }
    .end annotation

    .line 1
    .line 2
    if-ne p5, p6, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1, p3, p4}, Landroidx/compose/foundation/layout/RowColumnImplKt;->v(Ljava/util/List;Le8/p;II)I

    .line 6
    move-result p0

    .line 7
    goto :goto_0

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-static {p0, p2, p1, p3, p4}, Landroidx/compose/foundation/layout/RowColumnImplKt;->u(Ljava/util/List;Le8/p;Le8/p;II)I

    .line 11
    move-result p0

    .line 12
    :goto_0
    return p0
.end method

.method private static final x(Landroidx/compose/foundation/layout/RowColumnParentData;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/foundation/layout/RowColumnImplKt;->q(Landroidx/compose/foundation/layout/RowColumnParentData;)Landroidx/compose/foundation/layout/CrossAxisAlignment;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/CrossAxisAlignment;->c()Z

    .line 10
    move-result p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return p0
.end method

.method public static final y(Landroidx/compose/foundation/layout/LayoutOrientation;Le8/s;FLandroidx/compose/foundation/layout/SizeMode;Landroidx/compose/foundation/layout/CrossAxisAlignment;)Landroidx/compose/ui/layout/MeasurePolicy;
    .locals 7
    .param p0    # Landroidx/compose/foundation/layout/LayoutOrientation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Le8/s;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/foundation/layout/SizeMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/foundation/layout/CrossAxisAlignment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/LayoutOrientation;",
            "Le8/s<",
            "-",
            "Ljava/lang/Integer;",
            "-[I-",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "-[I",
            "Lw7/l0;",
            ">;F",
            "Landroidx/compose/foundation/layout/SizeMode;",
            "Landroidx/compose/foundation/layout/CrossAxisAlignment;",
            ")",
            "Landroidx/compose/ui/layout/MeasurePolicy;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "orientation"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "arrangement"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "crossAxisSize"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string v0, "crossAxisAlignment"

    .line 18
    .line 19
    .line 20
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    new-instance v0, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;

    .line 23
    move-object v1, v0

    .line 24
    move-object v2, p0

    .line 25
    move v3, p2

    .line 26
    move-object v4, p3

    .line 27
    move-object v5, p1

    .line 28
    move-object v6, p4

    .line 29
    .line 30
    .line 31
    invoke-direct/range {v1 .. v6}, Landroidx/compose/foundation/layout/RowColumnImplKt$rowColumnMeasurePolicy$1;-><init>(Landroidx/compose/foundation/layout/LayoutOrientation;FLandroidx/compose/foundation/layout/SizeMode;Le8/s;Landroidx/compose/foundation/layout/CrossAxisAlignment;)V

    .line 32
    return-object v0
.end method

.method private static final z(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/layout/LayoutOrientation;)I
    .locals 1

    .line 1
    .line 2
    sget-object v0, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->B0()I

    .line 8
    move-result p0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->Q0()I

    .line 13
    move-result p0

    .line 14
    :goto_0
    return p0
.end method
