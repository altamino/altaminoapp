.class public final Landroidx/compose/foundation/text/selection/SelectionManagerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text/selection/SelectionManagerKt$WhenMappings;
    }
.end annotation


# direct methods
.method public static final a(Landroidx/compose/foundation/text/selection/SelectionManager;J)J
    .locals 4
    .param p0    # Landroidx/compose/foundation/text/selection/SelectionManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "manager"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->C()Landroidx/compose/foundation/text/selection/Selection;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->b()J

    .line 17
    move-result-wide p0

    .line 18
    return-wide p0

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->v()Landroidx/compose/foundation/text/Handle;

    .line 22
    move-result-object v1

    .line 23
    const/4 v2, -0x1

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    move v1, v2

    .line 27
    goto :goto_0

    .line 28
    .line 29
    :cond_1
    sget-object v3, Landroidx/compose/foundation/text/selection/SelectionManagerKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 33
    move-result v1

    .line 34
    .line 35
    aget v1, v3, v1

    .line 36
    .line 37
    :goto_0
    if-eq v1, v2, :cond_5

    .line 38
    const/4 v2, 0x1

    .line 39
    .line 40
    if-eq v1, v2, :cond_4

    .line 41
    const/4 v2, 0x2

    .line 42
    .line 43
    if-eq v1, v2, :cond_3

    .line 44
    const/4 p0, 0x3

    .line 45
    .line 46
    if-eq v1, p0, :cond_2

    .line 47
    .line 48
    new-instance p0, Lw7/s;

    .line 49
    .line 50
    .line 51
    invoke-direct {p0}, Lw7/s;-><init>()V

    .line 52
    throw p0

    .line 53
    .line 54
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string p1, "SelectionContainer does not support cursor"

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    .line 63
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 64
    throw p0

    .line 65
    .line 66
    .line 67
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/Selection;->c()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 68
    move-result-object v0

    .line 69
    const/4 v1, 0x0

    .line 70
    .line 71
    .line 72
    invoke-static {p0, p1, p2, v0, v1}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->b(Landroidx/compose/foundation/text/selection/SelectionManager;JLandroidx/compose/foundation/text/selection/Selection$AnchorInfo;Z)J

    .line 73
    move-result-wide p0

    .line 74
    goto :goto_1

    .line 75
    .line 76
    .line 77
    :cond_4
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/Selection;->e()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    .line 81
    invoke-static {p0, p1, p2, v0, v2}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->b(Landroidx/compose/foundation/text/selection/SelectionManager;JLandroidx/compose/foundation/text/selection/Selection$AnchorInfo;Z)J

    .line 82
    move-result-wide p0

    .line 83
    :goto_1
    return-wide p0

    .line 84
    .line 85
    :cond_5
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->b()J

    .line 89
    move-result-wide p0

    .line 90
    return-wide p0
.end method

.method private static final b(Landroidx/compose/foundation/text/selection/SelectionManager;JLandroidx/compose/foundation/text/selection/Selection$AnchorInfo;Z)J
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p3}, Landroidx/compose/foundation/text/selection/SelectionManager;->p(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;)Landroidx/compose/foundation/text/selection/Selectable;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->b()J

    .line 12
    move-result-wide p0

    .line 13
    return-wide p0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->q()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->b()J

    .line 25
    move-result-wide p0

    .line 26
    return-wide p0

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-interface {v0}, Landroidx/compose/foundation/text/selection/Selectable;->c()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 30
    move-result-object v2

    .line 31
    .line 32
    if-nez v2, :cond_2

    .line 33
    .line 34
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->b()J

    .line 38
    move-result-wide p0

    .line 39
    return-wide p0

    .line 40
    .line 41
    .line 42
    :cond_2
    invoke-virtual {p3}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->b()I

    .line 43
    move-result p3

    .line 44
    .line 45
    if-eqz p4, :cond_3

    .line 46
    goto :goto_0

    .line 47
    .line 48
    :cond_3
    add-int/lit8 p3, p3, -0x1

    .line 49
    .line 50
    .line 51
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->s()Landroidx/compose/ui/geometry/Offset;

    .line 52
    move-result-object p0

    .line 53
    .line 54
    .line 55
    invoke-static {p0}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset;->u()J

    .line 59
    move-result-wide v3

    .line 60
    .line 61
    .line 62
    invoke-interface {v2, v1, v3, v4}, Landroidx/compose/ui/layout/LayoutCoordinates;->O(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    .line 63
    move-result-wide v3

    .line 64
    .line 65
    .line 66
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 67
    move-result p0

    .line 68
    .line 69
    .line 70
    invoke-interface {v0, p3}, Landroidx/compose/foundation/text/selection/Selectable;->h(I)J

    .line 71
    move-result-wide v3

    .line 72
    .line 73
    .line 74
    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->l(J)I

    .line 75
    move-result p4

    .line 76
    .line 77
    .line 78
    invoke-interface {v0, p4}, Landroidx/compose/foundation/text/selection/Selectable;->b(I)Landroidx/compose/ui/geometry/Rect;

    .line 79
    move-result-object p4

    .line 80
    .line 81
    .line 82
    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->k(J)I

    .line 83
    move-result v5

    .line 84
    .line 85
    add-int/lit8 v5, v5, -0x1

    .line 86
    .line 87
    .line 88
    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->l(J)I

    .line 89
    move-result v3

    .line 90
    .line 91
    .line 92
    invoke-static {v5, v3}, Lj8/m;->e(II)I

    .line 93
    move-result v3

    .line 94
    .line 95
    .line 96
    invoke-interface {v0, v3}, Landroidx/compose/foundation/text/selection/Selectable;->b(I)Landroidx/compose/ui/geometry/Rect;

    .line 97
    move-result-object v3

    .line 98
    .line 99
    .line 100
    invoke-virtual {p4}, Landroidx/compose/ui/geometry/Rect;->j()F

    .line 101
    move-result v4

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/Rect;->j()F

    .line 105
    move-result v5

    .line 106
    .line 107
    .line 108
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    .line 109
    move-result v4

    .line 110
    .line 111
    .line 112
    invoke-virtual {p4}, Landroidx/compose/ui/geometry/Rect;->k()F

    .line 113
    move-result p4

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/Rect;->k()F

    .line 117
    move-result v3

    .line 118
    .line 119
    .line 120
    invoke-static {p4, v3}, Ljava/lang/Math;->max(FF)F

    .line 121
    move-result p4

    .line 122
    .line 123
    .line 124
    invoke-static {p0, v4, p4}, Lj8/m;->m(FFF)F

    .line 125
    move-result p4

    .line 126
    sub-float/2addr p0, p4

    .line 127
    .line 128
    .line 129
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    .line 130
    move-result p0

    .line 131
    .line 132
    .line 133
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->g(J)I

    .line 134
    move-result p1

    .line 135
    .line 136
    div-int/lit8 p1, p1, 0x2

    .line 137
    int-to-float p1, p1

    .line 138
    .line 139
    cmpl-float p0, p0, p1

    .line 140
    .line 141
    if-lez p0, :cond_4

    .line 142
    .line 143
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->b()J

    .line 147
    move-result-wide p0

    .line 148
    return-wide p0

    .line 149
    .line 150
    .line 151
    :cond_4
    invoke-interface {v0, p3}, Landroidx/compose/foundation/text/selection/Selectable;->b(I)Landroidx/compose/ui/geometry/Rect;

    .line 152
    move-result-object p0

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->h()J

    .line 156
    move-result-wide p0

    .line 157
    .line 158
    .line 159
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 160
    move-result p0

    .line 161
    .line 162
    .line 163
    invoke-static {p4, p0}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 164
    move-result-wide p0

    .line 165
    .line 166
    .line 167
    invoke-interface {v1, v2, p0, p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->O(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    .line 168
    move-result-wide p0

    .line 169
    return-wide p0
.end method

.method public static final c(Landroidx/compose/ui/geometry/Rect;J)Z
    .locals 3
    .param p0    # Landroidx/compose/ui/geometry/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "$this$containsInclusive"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->j()F

    .line 9
    move-result v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->k()F

    .line 13
    move-result v1

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 17
    move-result v2

    .line 18
    .line 19
    cmpg-float v0, v0, v2

    .line 20
    .line 21
    if-gtz v0, :cond_0

    .line 22
    .line 23
    cmpg-float v0, v2, v1

    .line 24
    .line 25
    if-gtz v0, :cond_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->m()F

    .line 29
    move-result v0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->e()F

    .line 33
    move-result p0

    .line 34
    .line 35
    .line 36
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 37
    move-result p1

    .line 38
    .line 39
    cmpg-float p2, v0, p1

    .line 40
    .line 41
    if-gtz p2, :cond_0

    .line 42
    .line 43
    cmpg-float p0, p1, p0

    .line 44
    .line 45
    if-gtz p0, :cond_0

    .line 46
    const/4 p0, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 p0, 0x0

    .line 49
    :goto_0
    return p0
.end method

.method public static final d(Landroidx/compose/foundation/text/selection/Selectable;Landroidx/compose/foundation/text/selection/Selection;)Landroidx/compose/ui/text/AnnotatedString;
    .locals 5
    .param p0    # Landroidx/compose/foundation/text/selection/Selectable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/foundation/text/selection/Selection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "selectable"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "selection"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p0}, Landroidx/compose/foundation/text/selection/Selectable;->a()Landroidx/compose/ui/text/AnnotatedString;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-interface {p0}, Landroidx/compose/foundation/text/selection/Selectable;->f()J

    .line 18
    move-result-wide v1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->e()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 22
    move-result-object v3

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->c()J

    .line 26
    move-result-wide v3

    .line 27
    .line 28
    cmp-long v1, v1, v3

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-interface {p0}, Landroidx/compose/foundation/text/selection/Selectable;->f()J

    .line 34
    move-result-wide v1

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->c()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 38
    move-result-object v3

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->c()J

    .line 42
    move-result-wide v3

    .line 43
    .line 44
    cmp-long v1, v1, v3

    .line 45
    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    goto/16 :goto_0

    .line 49
    .line 50
    .line 51
    :cond_0
    invoke-interface {p0}, Landroidx/compose/foundation/text/selection/Selectable;->f()J

    .line 52
    move-result-wide v1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->e()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 56
    move-result-object v3

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->c()J

    .line 60
    move-result-wide v3

    .line 61
    .line 62
    cmp-long v1, v1, v3

    .line 63
    .line 64
    if-nez v1, :cond_2

    .line 65
    .line 66
    .line 67
    invoke-interface {p0}, Landroidx/compose/foundation/text/selection/Selectable;->f()J

    .line 68
    move-result-wide v1

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->c()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 72
    move-result-object v3

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->c()J

    .line 76
    move-result-wide v3

    .line 77
    .line 78
    cmp-long v1, v1, v3

    .line 79
    .line 80
    if-nez v1, :cond_2

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->d()Z

    .line 84
    move-result p0

    .line 85
    .line 86
    if-eqz p0, :cond_1

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->c()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 90
    move-result-object p0

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->b()I

    .line 94
    move-result p0

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->e()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 98
    move-result-object p1

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->b()I

    .line 102
    move-result p1

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, p0, p1}, Landroidx/compose/ui/text/AnnotatedString;->j(II)Landroidx/compose/ui/text/AnnotatedString;

    .line 106
    move-result-object v0

    .line 107
    goto :goto_0

    .line 108
    .line 109
    .line 110
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->e()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 111
    move-result-object p0

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->b()I

    .line 115
    move-result p0

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->c()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 119
    move-result-object p1

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->b()I

    .line 123
    move-result p1

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, p0, p1}, Landroidx/compose/ui/text/AnnotatedString;->j(II)Landroidx/compose/ui/text/AnnotatedString;

    .line 127
    move-result-object v0

    .line 128
    goto :goto_0

    .line 129
    .line 130
    .line 131
    :cond_2
    invoke-interface {p0}, Landroidx/compose/foundation/text/selection/Selectable;->f()J

    .line 132
    move-result-wide v1

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->e()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 136
    move-result-object p0

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->c()J

    .line 140
    move-result-wide v3

    .line 141
    .line 142
    cmp-long p0, v1, v3

    .line 143
    const/4 v1, 0x0

    .line 144
    .line 145
    if-nez p0, :cond_4

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->d()Z

    .line 149
    move-result p0

    .line 150
    .line 151
    if-eqz p0, :cond_3

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->e()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 155
    move-result-object p0

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->b()I

    .line 159
    move-result p0

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v1, p0}, Landroidx/compose/ui/text/AnnotatedString;->j(II)Landroidx/compose/ui/text/AnnotatedString;

    .line 163
    move-result-object v0

    .line 164
    goto :goto_0

    .line 165
    .line 166
    .line 167
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->e()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 168
    move-result-object p0

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->b()I

    .line 172
    move-result p0

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString;->length()I

    .line 176
    move-result p1

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, p0, p1}, Landroidx/compose/ui/text/AnnotatedString;->j(II)Landroidx/compose/ui/text/AnnotatedString;

    .line 180
    move-result-object v0

    .line 181
    goto :goto_0

    .line 182
    .line 183
    .line 184
    :cond_4
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->d()Z

    .line 185
    move-result p0

    .line 186
    .line 187
    if-eqz p0, :cond_5

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->c()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 191
    move-result-object p0

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->b()I

    .line 195
    move-result p0

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString;->length()I

    .line 199
    move-result p1

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, p0, p1}, Landroidx/compose/ui/text/AnnotatedString;->j(II)Landroidx/compose/ui/text/AnnotatedString;

    .line 203
    move-result-object v0

    .line 204
    goto :goto_0

    .line 205
    .line 206
    .line 207
    :cond_5
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->c()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    .line 208
    move-result-object p0

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->b()I

    .line 212
    move-result p0

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, v1, p0}, Landroidx/compose/ui/text/AnnotatedString;->j(II)Landroidx/compose/ui/text/AnnotatedString;

    .line 216
    move-result-object v0

    .line 217
    :goto_0
    return-object v0
.end method

.method public static final e(Landroidx/compose/foundation/text/selection/Selection;Landroidx/compose/foundation/text/selection/Selection;)Landroidx/compose/foundation/text/selection/Selection;
    .locals 0
    .param p0    # Landroidx/compose/foundation/text/selection/Selection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/foundation/text/selection/Selection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    if-eqz p0, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/selection/Selection;->f(Landroidx/compose/foundation/text/selection/Selection;)Landroidx/compose/foundation/text/selection/Selection;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    if-nez p0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object p1, p0

    .line 11
    :cond_1
    :goto_0
    return-object p1
.end method

.method public static final f(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;
    .locals 5
    .param p0    # Landroidx/compose/ui/layout/LayoutCoordinates;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

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
    invoke-static {p0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->c(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->n()J

    .line 13
    move-result-wide v1

    .line 14
    .line 15
    .line 16
    invoke-interface {p0, v1, v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->S(J)J

    .line 17
    move-result-wide v1

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->g()J

    .line 21
    move-result-wide v3

    .line 22
    .line 23
    .line 24
    invoke-interface {p0, v3, v4}, Landroidx/compose/ui/layout/LayoutCoordinates;->S(J)J

    .line 25
    move-result-wide v3

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/geometry/RectKt;->a(JJ)Landroidx/compose/ui/geometry/Rect;

    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method
