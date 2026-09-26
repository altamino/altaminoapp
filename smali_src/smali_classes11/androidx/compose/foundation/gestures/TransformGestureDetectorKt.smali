.class public final Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransformGestureDetector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransformGestureDetector.kt\nandroidx/compose/foundation/gestures/TransformGestureDetectorKt\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,257:1\n108#2,3:258\n32#2,4:261\n111#2,2:265\n37#2:267\n113#2:268\n32#2,6:269\n32#2,6:275\n32#2,6:281\n*S KotlinDebug\n*F\n+ 1 TransformGestureDetector.kt\nandroidx/compose/foundation/gestures/TransformGestureDetectorKt\n*L\n118#1:258,3\n118#1:261,4\n118#1:265,2\n118#1:267\n118#1:268\n133#1:269,6\n218#1:275,6\n244#1:281,6\n*E\n"
.end annotation


# direct methods
.method private static final a(J)F
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    cmpg-float v0, v0, v1

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 13
    move-result v0

    .line 14
    .line 15
    cmpg-float v0, v0, v1

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    goto :goto_0

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 22
    move-result v0

    .line 23
    float-to-double v0, v0

    .line 24
    .line 25
    .line 26
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 27
    move-result p0

    .line 28
    float-to-double p0, p0

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    .line 32
    move-result-wide p0

    .line 33
    double-to-float p0, p0

    .line 34
    neg-float p0, p0

    .line 35
    .line 36
    const/high16 p1, 0x43340000    # 180.0f

    .line 37
    mul-float/2addr p0, p1

    .line 38
    .line 39
    .line 40
    const p1, 0x40490fdb    # (float)Math.PI

    .line 41
    .line 42
    div-float v1, p0, p1

    .line 43
    :goto_0
    return v1
.end method

.method public static final b(Landroidx/compose/ui/input/pointer/PointerEvent;Z)J
    .locals 7
    .param p0    # Landroidx/compose/ui/input/pointer/PointerEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->c()J

    .line 11
    move-result-wide v0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerEvent;->c()Ljava/util/List;

    .line 15
    move-result-object p0

    .line 16
    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x0

    .line 21
    move v4, v3

    .line 22
    .line 23
    :goto_0
    if-ge v3, v2, :cond_2

    .line 24
    .line 25
    .line 26
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v5

    .line 28
    .line 29
    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->g()Z

    .line 33
    move-result v6

    .line 34
    .line 35
    if-eqz v6, :cond_1

    .line 36
    .line 37
    .line 38
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->i()Z

    .line 39
    move-result v6

    .line 40
    .line 41
    if-eqz v6, :cond_1

    .line 42
    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->f()J

    .line 47
    move-result-wide v5

    .line 48
    goto :goto_1

    .line 49
    .line 50
    .line 51
    :cond_0
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->h()J

    .line 52
    move-result-wide v5

    .line 53
    .line 54
    .line 55
    :goto_1
    invoke-static {v0, v1, v5, v6}, Landroidx/compose/ui/geometry/Offset;->r(JJ)J

    .line 56
    move-result-wide v0

    .line 57
    .line 58
    add-int/lit8 v4, v4, 0x1

    .line 59
    .line 60
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 61
    goto :goto_0

    .line 62
    .line 63
    :cond_2
    if-nez v4, :cond_3

    .line 64
    .line 65
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->b()J

    .line 69
    move-result-wide p0

    .line 70
    goto :goto_2

    .line 71
    :cond_3
    int-to-float p0, v4

    .line 72
    .line 73
    .line 74
    invoke-static {v0, v1, p0}, Landroidx/compose/ui/geometry/Offset;->h(JF)J

    .line 75
    move-result-wide p0

    .line 76
    :goto_2
    return-wide p0
.end method

.method public static final c(Landroidx/compose/ui/input/pointer/PointerEvent;Z)F
    .locals 8
    .param p0    # Landroidx/compose/ui/input/pointer/PointerEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0, p1}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->b(Landroidx/compose/ui/input/pointer/PointerEvent;Z)J

    .line 9
    move-result-wide v0

    .line 10
    .line 11
    sget-object v2, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Offset$Companion;->b()J

    .line 15
    move-result-wide v2

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/Offset;->j(JJ)Z

    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x0

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    return v3

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerEvent;->c()Ljava/util/List;

    .line 27
    move-result-object p0

    .line 28
    .line 29
    .line 30
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 31
    move-result v2

    .line 32
    const/4 v4, 0x0

    .line 33
    move v5, v4

    .line 34
    .line 35
    :goto_0
    if-ge v4, v2, :cond_3

    .line 36
    .line 37
    .line 38
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    move-result-object v6

    .line 40
    .line 41
    check-cast v6, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->g()Z

    .line 45
    move-result v7

    .line 46
    .line 47
    if-eqz v7, :cond_2

    .line 48
    .line 49
    .line 50
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->i()Z

    .line 51
    move-result v7

    .line 52
    .line 53
    if-eqz v7, :cond_2

    .line 54
    .line 55
    if-eqz p1, :cond_1

    .line 56
    .line 57
    .line 58
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->f()J

    .line 59
    move-result-wide v6

    .line 60
    goto :goto_1

    .line 61
    .line 62
    .line 63
    :cond_1
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->h()J

    .line 64
    move-result-wide v6

    .line 65
    .line 66
    .line 67
    :goto_1
    invoke-static {v6, v7, v0, v1}, Landroidx/compose/ui/geometry/Offset;->q(JJ)J

    .line 68
    move-result-wide v6

    .line 69
    .line 70
    .line 71
    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->k(J)F

    .line 72
    move-result v6

    .line 73
    add-float/2addr v3, v6

    .line 74
    .line 75
    add-int/lit8 v5, v5, 0x1

    .line 76
    .line 77
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 78
    goto :goto_0

    .line 79
    :cond_3
    int-to-float p0, v5

    .line 80
    div-float/2addr v3, p0

    .line 81
    return v3
.end method

.method public static final d(Landroidx/compose/ui/input/pointer/PointerEvent;)J
    .locals 5
    .param p0    # Landroidx/compose/ui/input/pointer/PointerEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x1

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v0}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->b(Landroidx/compose/ui/input/pointer/PointerEvent;Z)J

    .line 10
    move-result-wide v0

    .line 11
    .line 12
    sget-object v2, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Offset$Companion;->b()J

    .line 16
    move-result-wide v3

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1, v3, v4}, Landroidx/compose/ui/geometry/Offset;->j(JJ)Z

    .line 20
    move-result v3

    .line 21
    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Offset$Companion;->c()J

    .line 26
    move-result-wide v0

    .line 27
    return-wide v0

    .line 28
    :cond_0
    const/4 v2, 0x0

    .line 29
    .line 30
    .line 31
    invoke-static {p0, v2}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->b(Landroidx/compose/ui/input/pointer/PointerEvent;Z)J

    .line 32
    move-result-wide v2

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/Offset;->q(JJ)J

    .line 36
    move-result-wide v0

    .line 37
    return-wide v0
.end method

.method public static final e(Landroidx/compose/ui/input/pointer/PointerEvent;)F
    .locals 15
    .param p0    # Landroidx/compose/ui/input/pointer/PointerEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerEvent;->c()Ljava/util/List;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    move v4, v3

    .line 17
    :goto_0
    const/4 v5, 0x1

    .line 18
    .line 19
    if-ge v3, v1, :cond_1

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v6

    .line 24
    .line 25
    check-cast v6, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->i()Z

    .line 29
    move-result v7

    .line 30
    .line 31
    if-eqz v7, :cond_0

    .line 32
    .line 33
    .line 34
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->g()Z

    .line 35
    move-result v6

    .line 36
    .line 37
    if-eqz v6, :cond_0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    move v5, v2

    .line 40
    :goto_1
    add-int/2addr v4, v5

    .line 41
    .line 42
    add-int/lit8 v3, v3, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 v0, 0x2

    .line 45
    const/4 v1, 0x0

    .line 46
    .line 47
    if-ge v4, v0, :cond_2

    .line 48
    return v1

    .line 49
    .line 50
    .line 51
    :cond_2
    invoke-static {p0, v5}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->b(Landroidx/compose/ui/input/pointer/PointerEvent;Z)J

    .line 52
    move-result-wide v3

    .line 53
    .line 54
    .line 55
    invoke-static {p0, v2}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->b(Landroidx/compose/ui/input/pointer/PointerEvent;Z)J

    .line 56
    move-result-wide v5

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerEvent;->c()Ljava/util/List;

    .line 60
    move-result-object p0

    .line 61
    .line 62
    .line 63
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 64
    move-result v0

    .line 65
    move v7, v1

    .line 66
    move v8, v7

    .line 67
    .line 68
    :goto_2
    if-ge v2, v0, :cond_6

    .line 69
    .line 70
    .line 71
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    move-result-object v9

    .line 73
    .line 74
    check-cast v9, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/PointerInputChange;->g()Z

    .line 78
    move-result v10

    .line 79
    .line 80
    if-eqz v10, :cond_5

    .line 81
    .line 82
    .line 83
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/PointerInputChange;->i()Z

    .line 84
    move-result v10

    .line 85
    .line 86
    if-eqz v10, :cond_5

    .line 87
    .line 88
    .line 89
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/PointerInputChange;->f()J

    .line 90
    move-result-wide v10

    .line 91
    .line 92
    .line 93
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/PointerInputChange;->h()J

    .line 94
    move-result-wide v12

    .line 95
    .line 96
    .line 97
    invoke-static {v12, v13, v5, v6}, Landroidx/compose/ui/geometry/Offset;->q(JJ)J

    .line 98
    move-result-wide v12

    .line 99
    .line 100
    .line 101
    invoke-static {v10, v11, v3, v4}, Landroidx/compose/ui/geometry/Offset;->q(JJ)J

    .line 102
    move-result-wide v9

    .line 103
    .line 104
    .line 105
    invoke-static {v12, v13}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->a(J)F

    .line 106
    move-result v11

    .line 107
    .line 108
    .line 109
    invoke-static {v9, v10}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->a(J)F

    .line 110
    move-result v14

    .line 111
    sub-float/2addr v14, v11

    .line 112
    .line 113
    .line 114
    invoke-static {v9, v10, v12, v13}, Landroidx/compose/ui/geometry/Offset;->r(JJ)J

    .line 115
    move-result-wide v9

    .line 116
    .line 117
    .line 118
    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/Offset;->k(J)F

    .line 119
    move-result v9

    .line 120
    .line 121
    const/high16 v10, 0x40000000    # 2.0f

    .line 122
    div-float/2addr v9, v10

    .line 123
    .line 124
    const/high16 v10, 0x43340000    # 180.0f

    .line 125
    .line 126
    cmpl-float v10, v14, v10

    .line 127
    .line 128
    const/high16 v11, 0x43b40000    # 360.0f

    .line 129
    .line 130
    if-lez v10, :cond_3

    .line 131
    sub-float/2addr v14, v11

    .line 132
    goto :goto_3

    .line 133
    .line 134
    :cond_3
    const/high16 v10, -0x3ccc0000    # -180.0f

    .line 135
    .line 136
    cmpg-float v10, v14, v10

    .line 137
    .line 138
    if-gez v10, :cond_4

    .line 139
    add-float/2addr v14, v11

    .line 140
    :cond_4
    :goto_3
    mul-float/2addr v14, v9

    .line 141
    add-float/2addr v8, v14

    .line 142
    add-float/2addr v7, v9

    .line 143
    .line 144
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 145
    goto :goto_2

    .line 146
    .line 147
    :cond_6
    cmpg-float p0, v7, v1

    .line 148
    .line 149
    if-nez p0, :cond_7

    .line 150
    goto :goto_4

    .line 151
    .line 152
    :cond_7
    div-float v1, v8, v7

    .line 153
    :goto_4
    return v1
.end method

.method public static final f(Landroidx/compose/ui/input/pointer/PointerEvent;)F
    .locals 3
    .param p0    # Landroidx/compose/ui/input/pointer/PointerEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x1

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v0}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->c(Landroidx/compose/ui/input/pointer/PointerEvent;Z)F

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v1}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->c(Landroidx/compose/ui/input/pointer/PointerEvent;Z)F

    .line 15
    move-result p0

    .line 16
    const/4 v1, 0x0

    .line 17
    .line 18
    cmpg-float v2, v0, v1

    .line 19
    .line 20
    if-nez v2, :cond_0

    .line 21
    goto :goto_0

    .line 22
    .line 23
    :cond_0
    cmpg-float v1, p0, v1

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    :goto_0
    const/high16 p0, 0x3f800000    # 1.0f

    .line 28
    return p0

    .line 29
    :cond_1
    div-float/2addr v0, p0

    .line 30
    return v0
.end method
