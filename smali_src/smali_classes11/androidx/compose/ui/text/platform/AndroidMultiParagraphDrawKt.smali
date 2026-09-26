.class public final Landroidx/compose/ui/text/platform/AndroidMultiParagraphDrawKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidMultiParagraphDraw.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidMultiParagraphDraw.kt\nandroidx/compose/ui/text/platform/AndroidMultiParagraphDrawKt\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,79:1\n32#2,6:80\n32#2,6:86\n32#2,6:92\n*S KotlinDebug\n*F\n+ 1 AndroidMultiParagraphDraw.kt\nandroidx/compose/ui/text/platform/AndroidMultiParagraphDrawKt\n*L\n48#1:80,6\n55#1:86,6\n75#1:92,6\n*E\n"
.end annotation


# direct methods
.method public static final a(Landroidx/compose/ui/text/MultiParagraph;Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;)V
    .locals 9
    .param p0    # Landroidx/compose/ui/text/MultiParagraph;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/graphics/Brush;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/graphics/Shadow;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/text/style/TextDecoration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    const-string v0, "canvas"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "brush"

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->r()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/compose/ui/text/MultiParagraph;->v()Ljava/util/List;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x1

    .line 28
    .line 29
    if-gt v0, v1, :cond_0

    .line 30
    .line 31
    .line 32
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/text/platform/AndroidMultiParagraphDrawKt;->b(Landroidx/compose/ui/text/MultiParagraph;Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;)V

    .line 33
    .line 34
    goto/16 :goto_2

    .line 35
    .line 36
    :cond_0
    instance-of v0, p2, Landroidx/compose/ui/graphics/SolidColor;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    .line 41
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/text/platform/AndroidMultiParagraphDrawKt;->b(Landroidx/compose/ui/text/MultiParagraph;Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;)V

    .line 42
    .line 43
    goto/16 :goto_2

    .line 44
    .line 45
    :cond_1
    instance-of v0, p2, Landroidx/compose/ui/graphics/ShaderBrush;

    .line 46
    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroidx/compose/ui/text/MultiParagraph;->v()Ljava/util/List;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    .line 54
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 55
    move-result v1

    .line 56
    const/4 v2, 0x0

    .line 57
    const/4 v3, 0x0

    .line 58
    move v4, v2

    .line 59
    move v5, v3

    .line 60
    move v6, v5

    .line 61
    .line 62
    :goto_0
    if-ge v4, v1, :cond_2

    .line 63
    .line 64
    .line 65
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    move-result-object v7

    .line 67
    .line 68
    check-cast v7, Landroidx/compose/ui/text/ParagraphInfo;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v7}, Landroidx/compose/ui/text/ParagraphInfo;->e()Landroidx/compose/ui/text/Paragraph;

    .line 72
    move-result-object v8

    .line 73
    .line 74
    .line 75
    invoke-interface {v8}, Landroidx/compose/ui/text/Paragraph;->getHeight()F

    .line 76
    move-result v8

    .line 77
    add-float/2addr v6, v8

    .line 78
    .line 79
    .line 80
    invoke-virtual {v7}, Landroidx/compose/ui/text/ParagraphInfo;->e()Landroidx/compose/ui/text/Paragraph;

    .line 81
    move-result-object v7

    .line 82
    .line 83
    .line 84
    invoke-interface {v7}, Landroidx/compose/ui/text/Paragraph;->getWidth()F

    .line 85
    move-result v7

    .line 86
    .line 87
    .line 88
    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    .line 89
    move-result v5

    .line 90
    .line 91
    add-int/lit8 v4, v4, 0x1

    .line 92
    goto :goto_0

    .line 93
    .line 94
    :cond_2
    check-cast p2, Landroidx/compose/ui/graphics/ShaderBrush;

    .line 95
    .line 96
    .line 97
    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/SizeKt;->a(FF)J

    .line 98
    move-result-wide v0

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2, v0, v1}, Landroidx/compose/ui/graphics/ShaderBrush;->c(J)Landroid/graphics/Shader;

    .line 102
    move-result-object p2

    .line 103
    .line 104
    new-instance v0, Landroid/graphics/Matrix;

    .line 105
    .line 106
    .line 107
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2, v0}, Landroid/graphics/Shader;->getLocalMatrix(Landroid/graphics/Matrix;)Z

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Landroidx/compose/ui/text/MultiParagraph;->v()Ljava/util/List;

    .line 114
    move-result-object p0

    .line 115
    .line 116
    .line 117
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 118
    move-result v1

    .line 119
    .line 120
    :goto_1
    if-ge v2, v1, :cond_3

    .line 121
    .line 122
    .line 123
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 124
    move-result-object v4

    .line 125
    .line 126
    check-cast v4, Landroidx/compose/ui/text/ParagraphInfo;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v4}, Landroidx/compose/ui/text/ParagraphInfo;->e()Landroidx/compose/ui/text/Paragraph;

    .line 130
    move-result-object v5

    .line 131
    .line 132
    .line 133
    invoke-static {p2}, Landroidx/compose/ui/graphics/BrushKt;->a(Landroid/graphics/Shader;)Landroidx/compose/ui/graphics/ShaderBrush;

    .line 134
    move-result-object v6

    .line 135
    .line 136
    .line 137
    invoke-interface {v5, p1, v6, p3, p4}, Landroidx/compose/ui/text/Paragraph;->d(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4}, Landroidx/compose/ui/text/ParagraphInfo;->e()Landroidx/compose/ui/text/Paragraph;

    .line 141
    move-result-object v5

    .line 142
    .line 143
    .line 144
    invoke-interface {v5}, Landroidx/compose/ui/text/Paragraph;->getHeight()F

    .line 145
    move-result v5

    .line 146
    .line 147
    .line 148
    invoke-interface {p1, v3, v5}, Landroidx/compose/ui/graphics/Canvas;->b(FF)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v4}, Landroidx/compose/ui/text/ParagraphInfo;->e()Landroidx/compose/ui/text/Paragraph;

    .line 152
    move-result-object v4

    .line 153
    .line 154
    .line 155
    invoke-interface {v4}, Landroidx/compose/ui/text/Paragraph;->getHeight()F

    .line 156
    move-result v4

    .line 157
    neg-float v4, v4

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p2, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 164
    .line 165
    add-int/lit8 v2, v2, 0x1

    .line 166
    goto :goto_1

    .line 167
    .line 168
    .line 169
    :cond_3
    :goto_2
    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->n()V

    .line 170
    return-void
.end method

.method private static final b(Landroidx/compose/ui/text/MultiParagraph;Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/text/MultiParagraph;->v()Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    .line 11
    :goto_0
    if-ge v1, v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    check-cast v2, Landroidx/compose/ui/text/ParagraphInfo;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Landroidx/compose/ui/text/ParagraphInfo;->e()Landroidx/compose/ui/text/Paragraph;

    .line 21
    move-result-object v3

    .line 22
    .line 23
    .line 24
    invoke-interface {v3, p1, p2, p3, p4}, Landroidx/compose/ui/text/Paragraph;->d(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Landroidx/compose/ui/text/ParagraphInfo;->e()Landroidx/compose/ui/text/Paragraph;

    .line 28
    move-result-object v2

    .line 29
    .line 30
    .line 31
    invoke-interface {v2}, Landroidx/compose/ui/text/Paragraph;->getHeight()F

    .line 32
    move-result v2

    .line 33
    const/4 v3, 0x0

    .line 34
    .line 35
    .line 36
    invoke-interface {p1, v3, v2}, Landroidx/compose/ui/graphics/Canvas;->b(FF)V

    .line 37
    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    return-void
.end method
