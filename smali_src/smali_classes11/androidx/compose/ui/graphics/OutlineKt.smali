.class public final Landroidx/compose/ui/graphics/OutlineKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOutline.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Outline.kt\nandroidx/compose/ui/graphics/OutlineKt\n*L\n1#1,307:1\n245#1,16:308\n245#1,16:324\n*S KotlinDebug\n*F\n+ 1 Outline.kt\nandroidx/compose/ui/graphics/OutlineKt\n*L\n155#1:308,16\n195#1:324,16\n*E\n"
.end annotation


# direct methods
.method public static final synthetic a(Landroidx/compose/ui/geometry/RoundRect;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/ui/graphics/OutlineKt;->g(Landroidx/compose/ui/geometry/RoundRect;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final b(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Outline;)V
    .locals 6
    .param p0    # Landroidx/compose/ui/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/graphics/Outline;
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
    const-string v0, "outline"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    instance-of v0, p1, Landroidx/compose/ui/graphics/Outline$Rectangle;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    check-cast p1, Landroidx/compose/ui/graphics/Outline$Rectangle;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/Outline$Rectangle;->a()Landroidx/compose/ui/geometry/Rect;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-interface {p0, p1}, Landroidx/compose/ui/graphics/Path;->j(Landroidx/compose/ui/geometry/Rect;)V

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_0
    instance-of v0, p1, Landroidx/compose/ui/graphics/Outline$Rounded;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    check-cast p1, Landroidx/compose/ui/graphics/Outline$Rounded;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/Outline$Rounded;->a()Landroidx/compose/ui/geometry/RoundRect;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    .line 37
    invoke-interface {p0, p1}, Landroidx/compose/ui/graphics/Path;->e(Landroidx/compose/ui/geometry/RoundRect;)V

    .line 38
    goto :goto_0

    .line 39
    .line 40
    :cond_1
    instance-of v0, p1, Landroidx/compose/ui/graphics/Outline$Generic;

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    check-cast p1, Landroidx/compose/ui/graphics/Outline$Generic;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/Outline$Generic;->a()Landroidx/compose/ui/graphics/Path;

    .line 48
    move-result-object v1

    .line 49
    .line 50
    const-wide/16 v2, 0x0

    .line 51
    const/4 v4, 0x2

    .line 52
    const/4 v5, 0x0

    .line 53
    move-object v0, p0

    .line 54
    .line 55
    .line 56
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/graphics/e1;->a(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;JILjava/lang/Object;)V

    .line 57
    :goto_0
    return-void

    .line 58
    .line 59
    :cond_2
    new-instance p0, Lw7/s;

    .line 60
    .line 61
    .line 62
    invoke-direct {p0}, Lw7/s;-><init>()V

    .line 63
    throw p0
.end method

.method public static final c(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Outline;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 14
    .param p0    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/graphics/Outline;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/graphics/Brush;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/graphics/drawscope/DrawStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/ui/graphics/ColorFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    move-object v0, p1

    .line 2
    .line 3
    const-string v1, "$this$drawOutline"

    .line 4
    move-object v2, p0

    .line 5
    .line 6
    .line 7
    invoke-static {p0, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    const-string v1, "outline"

    .line 10
    .line 11
    .line 12
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    const-string v1, "brush"

    .line 15
    .line 16
    move-object/from16 v4, p2

    .line 17
    .line 18
    .line 19
    invoke-static {v4, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    const-string v1, "style"

    .line 22
    .line 23
    move-object/from16 v11, p4

    .line 24
    .line 25
    .line 26
    invoke-static {v11, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    instance-of v1, v0, Landroidx/compose/ui/graphics/Outline$Rectangle;

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    check-cast v0, Landroidx/compose/ui/graphics/Outline$Rectangle;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Outline$Rectangle;->a()Landroidx/compose/ui/geometry/Rect;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Landroidx/compose/ui/graphics/OutlineKt;->j(Landroidx/compose/ui/geometry/Rect;)J

    .line 40
    move-result-wide v5

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Landroidx/compose/ui/graphics/OutlineKt;->h(Landroidx/compose/ui/geometry/Rect;)J

    .line 44
    move-result-wide v0

    .line 45
    move-object v2, p0

    .line 46
    .line 47
    move-object/from16 v3, p2

    .line 48
    move-wide v4, v5

    .line 49
    move-wide v6, v0

    .line 50
    .line 51
    move/from16 v8, p3

    .line 52
    .line 53
    move-object/from16 v9, p4

    .line 54
    .line 55
    move-object/from16 v10, p5

    .line 56
    .line 57
    move/from16 v11, p6

    .line 58
    .line 59
    .line 60
    invoke-interface/range {v2 .. v11}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->D(Landroidx/compose/ui/graphics/Brush;JJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V

    .line 61
    goto :goto_1

    .line 62
    .line 63
    :cond_0
    instance-of v1, v0, Landroidx/compose/ui/graphics/Outline$Rounded;

    .line 64
    .line 65
    if-eqz v1, :cond_2

    .line 66
    .line 67
    check-cast v0, Landroidx/compose/ui/graphics/Outline$Rounded;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Outline$Rounded;->b()Landroidx/compose/ui/graphics/Path;

    .line 71
    move-result-object v3

    .line 72
    .line 73
    if-eqz v3, :cond_1

    .line 74
    :goto_0
    move-object v2, p0

    .line 75
    .line 76
    move-object/from16 v4, p2

    .line 77
    .line 78
    move/from16 v5, p3

    .line 79
    .line 80
    move-object/from16 v6, p4

    .line 81
    .line 82
    move-object/from16 v7, p5

    .line 83
    .line 84
    move/from16 v8, p6

    .line 85
    .line 86
    .line 87
    invoke-interface/range {v2 .. v8}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->w(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V

    .line 88
    goto :goto_1

    .line 89
    .line 90
    .line 91
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Outline$Rounded;->a()Landroidx/compose/ui/geometry/RoundRect;

    .line 92
    move-result-object v0

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/RoundRect;->b()J

    .line 96
    move-result-wide v5

    .line 97
    .line 98
    .line 99
    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/CornerRadius;->e(J)F

    .line 100
    move-result v1

    .line 101
    .line 102
    .line 103
    invoke-static {v0}, Landroidx/compose/ui/graphics/OutlineKt;->k(Landroidx/compose/ui/geometry/RoundRect;)J

    .line 104
    move-result-wide v5

    .line 105
    .line 106
    .line 107
    invoke-static {v0}, Landroidx/compose/ui/graphics/OutlineKt;->i(Landroidx/compose/ui/geometry/RoundRect;)J

    .line 108
    move-result-wide v7

    .line 109
    const/4 v0, 0x2

    .line 110
    const/4 v3, 0x0

    .line 111
    const/4 v9, 0x0

    .line 112
    .line 113
    .line 114
    invoke-static {v1, v9, v0, v3}, Landroidx/compose/ui/geometry/CornerRadiusKt;->b(FFILjava/lang/Object;)J

    .line 115
    move-result-wide v0

    .line 116
    move-object v2, p0

    .line 117
    .line 118
    move-object/from16 v3, p2

    .line 119
    move-wide v4, v5

    .line 120
    move-wide v6, v7

    .line 121
    move-wide v8, v0

    .line 122
    .line 123
    move/from16 v10, p3

    .line 124
    .line 125
    move-object/from16 v11, p4

    .line 126
    .line 127
    move-object/from16 v12, p5

    .line 128
    .line 129
    move/from16 v13, p6

    .line 130
    .line 131
    .line 132
    invoke-interface/range {v2 .. v13}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->D0(Landroidx/compose/ui/graphics/Brush;JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V

    .line 133
    goto :goto_1

    .line 134
    .line 135
    :cond_2
    instance-of v1, v0, Landroidx/compose/ui/graphics/Outline$Generic;

    .line 136
    .line 137
    if-eqz v1, :cond_3

    .line 138
    .line 139
    check-cast v0, Landroidx/compose/ui/graphics/Outline$Generic;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Outline$Generic;->a()Landroidx/compose/ui/graphics/Path;

    .line 143
    move-result-object v3

    .line 144
    goto :goto_0

    .line 145
    :goto_1
    return-void

    .line 146
    .line 147
    :cond_3
    new-instance v0, Lw7/s;

    .line 148
    .line 149
    .line 150
    invoke-direct {v0}, Lw7/s;-><init>()V

    .line 151
    throw v0
.end method

.method public static synthetic d(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Outline;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V
    .locals 7

    .line 1
    .line 2
    and-int/lit8 p8, p7, 0x4

    .line 3
    .line 4
    if-eqz p8, :cond_0

    .line 5
    .line 6
    const/high16 p3, 0x3f800000    # 1.0f

    .line 7
    :cond_0
    move v3, p3

    .line 8
    .line 9
    and-int/lit8 p3, p7, 0x8

    .line 10
    .line 11
    if-eqz p3, :cond_1

    .line 12
    .line 13
    sget-object p4, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    .line 14
    :cond_1
    move-object v4, p4

    .line 15
    .line 16
    and-int/lit8 p3, p7, 0x10

    .line 17
    .line 18
    if-eqz p3, :cond_2

    .line 19
    const/4 p5, 0x0

    .line 20
    :cond_2
    move-object v5, p5

    .line 21
    .line 22
    and-int/lit8 p3, p7, 0x20

    .line 23
    .line 24
    if-eqz p3, :cond_3

    .line 25
    .line 26
    sget-object p3, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p3}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->a()I

    .line 30
    move-result p6

    .line 31
    :cond_3
    move v6, p6

    .line 32
    move-object v0, p0

    .line 33
    move-object v1, p1

    .line 34
    move-object v2, p2

    .line 35
    .line 36
    .line 37
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/graphics/OutlineKt;->c(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Outline;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V

    .line 38
    return-void
.end method

.method public static final e(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Outline;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V
    .locals 15
    .param p0    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/graphics/Outline;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/ui/graphics/drawscope/DrawStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/ui/graphics/ColorFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    move-object/from16 v0, p1

    .line 3
    .line 4
    const-string v1, "$this$drawOutline"

    .line 5
    move-object v2, p0

    .line 6
    .line 7
    .line 8
    invoke-static {p0, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    const-string v1, "outline"

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    const-string v1, "style"

    .line 16
    .line 17
    move-object/from16 v11, p5

    .line 18
    .line 19
    .line 20
    invoke-static {v11, v1}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    instance-of v1, v0, Landroidx/compose/ui/graphics/Outline$Rectangle;

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    check-cast v0, Landroidx/compose/ui/graphics/Outline$Rectangle;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Outline$Rectangle;->a()Landroidx/compose/ui/geometry/Rect;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Landroidx/compose/ui/graphics/OutlineKt;->j(Landroidx/compose/ui/geometry/Rect;)J

    .line 34
    move-result-wide v5

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Landroidx/compose/ui/graphics/OutlineKt;->h(Landroidx/compose/ui/geometry/Rect;)J

    .line 38
    move-result-wide v7

    .line 39
    move-object v2, p0

    .line 40
    .line 41
    move-wide/from16 v3, p2

    .line 42
    .line 43
    move/from16 v9, p4

    .line 44
    .line 45
    move-object/from16 v10, p5

    .line 46
    .line 47
    move-object/from16 v11, p6

    .line 48
    .line 49
    move/from16 v12, p7

    .line 50
    .line 51
    .line 52
    invoke-interface/range {v2 .. v12}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->x0(JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V

    .line 53
    goto :goto_1

    .line 54
    .line 55
    :cond_0
    instance-of v1, v0, Landroidx/compose/ui/graphics/Outline$Rounded;

    .line 56
    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    check-cast v0, Landroidx/compose/ui/graphics/Outline$Rounded;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Outline$Rounded;->b()Landroidx/compose/ui/graphics/Path;

    .line 63
    move-result-object v3

    .line 64
    .line 65
    if-eqz v3, :cond_1

    .line 66
    :goto_0
    move-object v2, p0

    .line 67
    .line 68
    move-wide/from16 v4, p2

    .line 69
    .line 70
    move/from16 v6, p4

    .line 71
    .line 72
    move-object/from16 v7, p5

    .line 73
    .line 74
    move-object/from16 v8, p6

    .line 75
    .line 76
    move/from16 v9, p7

    .line 77
    .line 78
    .line 79
    invoke-interface/range {v2 .. v9}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->G(Landroidx/compose/ui/graphics/Path;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V

    .line 80
    goto :goto_1

    .line 81
    .line 82
    .line 83
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Outline$Rounded;->a()Landroidx/compose/ui/geometry/RoundRect;

    .line 84
    move-result-object v0

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/RoundRect;->b()J

    .line 88
    move-result-wide v3

    .line 89
    .line 90
    .line 91
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/CornerRadius;->e(J)F

    .line 92
    move-result v1

    .line 93
    .line 94
    .line 95
    invoke-static {v0}, Landroidx/compose/ui/graphics/OutlineKt;->k(Landroidx/compose/ui/geometry/RoundRect;)J

    .line 96
    move-result-wide v5

    .line 97
    .line 98
    .line 99
    invoke-static {v0}, Landroidx/compose/ui/graphics/OutlineKt;->i(Landroidx/compose/ui/geometry/RoundRect;)J

    .line 100
    move-result-wide v7

    .line 101
    const/4 v0, 0x2

    .line 102
    const/4 v3, 0x0

    .line 103
    const/4 v4, 0x0

    .line 104
    .line 105
    .line 106
    invoke-static {v1, v4, v0, v3}, Landroidx/compose/ui/geometry/CornerRadiusKt;->b(FFILjava/lang/Object;)J

    .line 107
    move-result-wide v9

    .line 108
    move-object v2, p0

    .line 109
    .line 110
    move-wide/from16 v3, p2

    .line 111
    .line 112
    move-object/from16 v11, p5

    .line 113
    .line 114
    move/from16 v12, p4

    .line 115
    .line 116
    move-object/from16 v13, p6

    .line 117
    .line 118
    move/from16 v14, p7

    .line 119
    .line 120
    .line 121
    invoke-interface/range {v2 .. v14}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->o0(JJJJLandroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;I)V

    .line 122
    goto :goto_1

    .line 123
    .line 124
    :cond_2
    instance-of v1, v0, Landroidx/compose/ui/graphics/Outline$Generic;

    .line 125
    .line 126
    if-eqz v1, :cond_3

    .line 127
    .line 128
    check-cast v0, Landroidx/compose/ui/graphics/Outline$Generic;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Outline$Generic;->a()Landroidx/compose/ui/graphics/Path;

    .line 132
    move-result-object v3

    .line 133
    goto :goto_0

    .line 134
    :goto_1
    return-void

    .line 135
    .line 136
    :cond_3
    new-instance v0, Lw7/s;

    .line 137
    .line 138
    .line 139
    invoke-direct {v0}, Lw7/s;-><init>()V

    .line 140
    throw v0
.end method

.method public static synthetic f(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Outline;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V
    .locals 9

    .line 1
    .line 2
    and-int/lit8 v0, p8, 0x4

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    move v5, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v5, p4

    .line 10
    .line 11
    :goto_0
    and-int/lit8 v0, p8, 0x8

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    sget-object v0, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    .line 16
    move-object v6, v0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move-object v6, p5

    .line 19
    .line 20
    :goto_1
    and-int/lit8 v0, p8, 0x10

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    const/4 v0, 0x0

    .line 24
    move-object v7, v0

    .line 25
    goto :goto_2

    .line 26
    :cond_2
    move-object v7, p6

    .line 27
    .line 28
    :goto_2
    and-int/lit8 v0, p8, 0x20

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    sget-object v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;->Companion:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->a()I

    .line 36
    move-result v0

    .line 37
    move v8, v0

    .line 38
    goto :goto_3

    .line 39
    .line 40
    :cond_3
    move/from16 v8, p7

    .line 41
    :goto_3
    move-object v1, p0

    .line 42
    move-object v2, p1

    .line 43
    move-wide v3, p2

    .line 44
    .line 45
    .line 46
    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/graphics/OutlineKt;->e(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Outline;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V

    .line 47
    return-void
.end method

.method private static final g(Landroidx/compose/ui/geometry/RoundRect;)Z
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->b()J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/CornerRadius;->e(J)F

    .line 8
    move-result v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->c()J

    .line 12
    move-result-wide v1

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/CornerRadius;->e(J)F

    .line 16
    move-result v1

    .line 17
    .line 18
    cmpg-float v0, v0, v1

    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v2, 0x1

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->c()J

    .line 26
    move-result-wide v3

    .line 27
    .line 28
    .line 29
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/CornerRadius;->e(J)F

    .line 30
    move-result v0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->i()J

    .line 34
    move-result-wide v3

    .line 35
    .line 36
    .line 37
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/CornerRadius;->e(J)F

    .line 38
    move-result v3

    .line 39
    .line 40
    cmpg-float v0, v0, v3

    .line 41
    .line 42
    if-nez v0, :cond_0

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->i()J

    .line 46
    move-result-wide v3

    .line 47
    .line 48
    .line 49
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/CornerRadius;->e(J)F

    .line 50
    move-result v0

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->h()J

    .line 54
    move-result-wide v3

    .line 55
    .line 56
    .line 57
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/CornerRadius;->e(J)F

    .line 58
    move-result v3

    .line 59
    .line 60
    cmpg-float v0, v0, v3

    .line 61
    .line 62
    if-nez v0, :cond_0

    .line 63
    move v0, v2

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    move v0, v1

    .line 66
    .line 67
    .line 68
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->b()J

    .line 69
    move-result-wide v3

    .line 70
    .line 71
    .line 72
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/CornerRadius;->f(J)F

    .line 73
    move-result v3

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->c()J

    .line 77
    move-result-wide v4

    .line 78
    .line 79
    .line 80
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/CornerRadius;->f(J)F

    .line 81
    move-result v4

    .line 82
    .line 83
    cmpg-float v3, v3, v4

    .line 84
    .line 85
    if-nez v3, :cond_1

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->c()J

    .line 89
    move-result-wide v3

    .line 90
    .line 91
    .line 92
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/CornerRadius;->f(J)F

    .line 93
    move-result v3

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->i()J

    .line 97
    move-result-wide v4

    .line 98
    .line 99
    .line 100
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/CornerRadius;->f(J)F

    .line 101
    move-result v4

    .line 102
    .line 103
    cmpg-float v3, v3, v4

    .line 104
    .line 105
    if-nez v3, :cond_1

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->i()J

    .line 109
    move-result-wide v3

    .line 110
    .line 111
    .line 112
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/CornerRadius;->f(J)F

    .line 113
    move-result v3

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->h()J

    .line 117
    move-result-wide v4

    .line 118
    .line 119
    .line 120
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/CornerRadius;->f(J)F

    .line 121
    move-result p0

    .line 122
    .line 123
    cmpg-float p0, v3, p0

    .line 124
    .line 125
    if-nez p0, :cond_1

    .line 126
    move p0, v2

    .line 127
    goto :goto_1

    .line 128
    :cond_1
    move p0, v1

    .line 129
    .line 130
    :goto_1
    if-eqz v0, :cond_2

    .line 131
    .line 132
    if-eqz p0, :cond_2

    .line 133
    move v1, v2

    .line 134
    :cond_2
    return v1
.end method

.method private static final h(Landroidx/compose/ui/geometry/Rect;)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->p()F

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->i()F

    .line 8
    move-result p0

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p0}, Landroidx/compose/ui/geometry/SizeKt;->a(FF)J

    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method private static final i(Landroidx/compose/ui/geometry/RoundRect;)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->j()F

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->d()F

    .line 8
    move-result p0

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p0}, Landroidx/compose/ui/geometry/SizeKt;->a(FF)J

    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method private static final j(Landroidx/compose/ui/geometry/Rect;)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->j()F

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->m()F

    .line 8
    move-result p0

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p0}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method private static final k(Landroidx/compose/ui/geometry/RoundRect;)J
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->e()F

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->g()F

    .line 8
    move-result p0

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p0}, Landroidx/compose/ui/geometry/OffsetKt;->a(FF)J

    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method
