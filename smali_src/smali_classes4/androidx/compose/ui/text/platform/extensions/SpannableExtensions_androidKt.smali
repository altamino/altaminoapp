.class public final Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSpannableExtensions.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SpannableExtensions.android.kt\nandroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 4 TempListUtils.kt\nandroidx/compose/ui/text/TempListUtilsKt\n+ 5 Color.kt\nandroidx/compose/ui/graphics/ColorKt\n*L\n1#1,528:1\n1#2:529\n32#3,6:530\n32#3,4:539\n37#3:545\n49#3,6:547\n32#3,6:553\n34#4,3:536\n37#4,2:543\n39#4:546\n654#5:559\n654#5:560\n*S KotlinDebug\n*F\n+ 1 SpannableExtensions.android.kt\nandroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt\n*L\n200#1:530,6\n274#1:539,4\n274#1:545\n342#1:547,6\n362#1:553,6\n274#1:536,3\n274#1:543,2\n274#1:546\n411#1:559\n484#1:560\n*E\n"
.end annotation


# direct methods
.method private static final a(JLandroidx/compose/ui/unit/Density;)Landroid/text/style/MetricAffectingSpan;
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnit;->g(J)J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    sget-object v2, Landroidx/compose/ui/unit/TextUnitType;->Companion:Landroidx/compose/ui/unit/TextUnitType$Companion;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v2}, Landroidx/compose/ui/unit/TextUnitType$Companion;->b()J

    .line 10
    move-result-wide v3

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1, v3, v4}, Landroidx/compose/ui/unit/TextUnitType;->g(JJ)Z

    .line 14
    move-result v3

    .line 15
    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    new-instance v0, Landroidx/compose/ui/text/android/style/LetterSpacingSpanPx;

    .line 19
    .line 20
    .line 21
    invoke-interface {p2, p0, p1}, Landroidx/compose/ui/unit/Density;->p0(J)F

    .line 22
    move-result p0

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p0}, Landroidx/compose/ui/text/android/style/LetterSpacingSpanPx;-><init>(F)V

    .line 26
    goto :goto_0

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {v2}, Landroidx/compose/ui/unit/TextUnitType$Companion;->a()J

    .line 30
    move-result-wide v2

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/TextUnitType;->g(JJ)Z

    .line 34
    move-result p2

    .line 35
    .line 36
    if-eqz p2, :cond_1

    .line 37
    .line 38
    new-instance v0, Landroidx/compose/ui/text/android/style/LetterSpacingSpanEm;

    .line 39
    .line 40
    .line 41
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnit;->h(J)F

    .line 42
    move-result p0

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, p0}, Landroidx/compose/ui/text/android/style/LetterSpacingSpanEm;-><init>(F)V

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 v0, 0x0

    .line 48
    :goto_0
    return-object v0
.end method

.method public static final b(Landroidx/compose/ui/text/SpanStyle;Ljava/util/List;Le8/q;)V
    .locals 12
    .param p0    # Landroidx/compose/ui/text/SpanStyle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/SpanStyle;",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Landroidx/compose/ui/text/SpanStyle;",
            ">;>;",
            "Le8/q<",
            "-",
            "Landroidx/compose/ui/text/SpanStyle;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Lw7/l0;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "spanStyles"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "block"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x1

    .line 17
    .line 18
    if-gt v0, v2, :cond_1

    .line 19
    move-object v0, p1

    .line 20
    .line 21
    check-cast v0, Ljava/util/Collection;

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 25
    move-result v0

    .line 26
    xor-int/2addr v0, v2

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    check-cast v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString$Range;->e()Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 39
    .line 40
    check-cast v0, Landroidx/compose/ui/text/SpanStyle;

    .line 41
    .line 42
    .line 43
    invoke-static {p0, v0}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->d(Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;)Landroidx/compose/ui/text/SpanStyle;

    .line 44
    move-result-object p0

    .line 45
    .line 46
    .line 47
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    move-result-object v0

    .line 49
    .line 50
    check-cast v0, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString$Range;->f()I

    .line 54
    move-result v0

    .line 55
    .line 56
    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object v0

    .line 59
    .line 60
    .line 61
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    move-result-object p1

    .line 63
    .line 64
    check-cast p1, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Landroidx/compose/ui/text/AnnotatedString$Range;->d()I

    .line 68
    move-result p1

    .line 69
    .line 70
    .line 71
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    .line 75
    invoke-interface {p2, p0, v0, p1}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_0
    return-void

    .line 77
    .line 78
    .line 79
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 80
    move-result v0

    .line 81
    .line 82
    mul-int/lit8 v2, v0, 0x2

    .line 83
    .line 84
    new-array v3, v2, [Ljava/lang/Integer;

    .line 85
    move v4, v1

    .line 86
    .line 87
    :goto_0
    if-ge v4, v2, :cond_2

    .line 88
    .line 89
    .line 90
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    move-result-object v5

    .line 92
    .line 93
    aput-object v5, v3, v4

    .line 94
    .line 95
    add-int/lit8 v4, v4, 0x1

    .line 96
    goto :goto_0

    .line 97
    .line 98
    .line 99
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 100
    move-result v4

    .line 101
    move v5, v1

    .line 102
    .line 103
    :goto_1
    if-ge v5, v4, :cond_3

    .line 104
    .line 105
    .line 106
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 107
    move-result-object v6

    .line 108
    .line 109
    check-cast v6, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v6}, Landroidx/compose/ui/text/AnnotatedString$Range;->f()I

    .line 113
    move-result v7

    .line 114
    .line 115
    .line 116
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    move-result-object v7

    .line 118
    .line 119
    aput-object v7, v3, v5

    .line 120
    .line 121
    add-int v7, v5, v0

    .line 122
    .line 123
    .line 124
    invoke-virtual {v6}, Landroidx/compose/ui/text/AnnotatedString$Range;->d()I

    .line 125
    move-result v6

    .line 126
    .line 127
    .line 128
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    move-result-object v6

    .line 130
    .line 131
    aput-object v6, v3, v7

    .line 132
    .line 133
    add-int/lit8 v5, v5, 0x1

    .line 134
    goto :goto_1

    .line 135
    :cond_3
    move-object v0, v3

    .line 136
    .line 137
    check-cast v0, [Ljava/lang/Comparable;

    .line 138
    .line 139
    .line 140
    invoke-static {v0}, Lkotlin/collections/l;->x([Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    invoke-static {v3}, Lkotlin/collections/l;->M([Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    move-result-object v0

    .line 145
    .line 146
    check-cast v0, Ljava/lang/Number;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 150
    move-result v0

    .line 151
    move v4, v1

    .line 152
    .line 153
    :goto_2
    if-ge v4, v2, :cond_8

    .line 154
    .line 155
    aget-object v5, v3, v4

    .line 156
    .line 157
    .line 158
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 159
    move-result v5

    .line 160
    .line 161
    if-ne v5, v0, :cond_4

    .line 162
    goto :goto_4

    .line 163
    .line 164
    .line 165
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 166
    move-result v6

    .line 167
    move-object v8, p0

    .line 168
    move v7, v1

    .line 169
    .line 170
    :goto_3
    if-ge v7, v6, :cond_6

    .line 171
    .line 172
    .line 173
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 174
    move-result-object v9

    .line 175
    .line 176
    check-cast v9, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v9}, Landroidx/compose/ui/text/AnnotatedString$Range;->f()I

    .line 180
    move-result v10

    .line 181
    .line 182
    .line 183
    invoke-virtual {v9}, Landroidx/compose/ui/text/AnnotatedString$Range;->d()I

    .line 184
    move-result v11

    .line 185
    .line 186
    if-eq v10, v11, :cond_5

    .line 187
    .line 188
    .line 189
    invoke-virtual {v9}, Landroidx/compose/ui/text/AnnotatedString$Range;->f()I

    .line 190
    move-result v10

    .line 191
    .line 192
    .line 193
    invoke-virtual {v9}, Landroidx/compose/ui/text/AnnotatedString$Range;->d()I

    .line 194
    move-result v11

    .line 195
    .line 196
    .line 197
    invoke-static {v0, v5, v10, v11}, Landroidx/compose/ui/text/AnnotatedStringKt;->g(IIII)Z

    .line 198
    move-result v10

    .line 199
    .line 200
    if-eqz v10, :cond_5

    .line 201
    .line 202
    .line 203
    invoke-virtual {v9}, Landroidx/compose/ui/text/AnnotatedString$Range;->e()Ljava/lang/Object;

    .line 204
    move-result-object v9

    .line 205
    .line 206
    check-cast v9, Landroidx/compose/ui/text/SpanStyle;

    .line 207
    .line 208
    .line 209
    invoke-static {v8, v9}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->d(Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;)Landroidx/compose/ui/text/SpanStyle;

    .line 210
    move-result-object v8

    .line 211
    .line 212
    :cond_5
    add-int/lit8 v7, v7, 0x1

    .line 213
    goto :goto_3

    .line 214
    .line 215
    :cond_6
    if-eqz v8, :cond_7

    .line 216
    .line 217
    .line 218
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 219
    move-result-object v0

    .line 220
    .line 221
    .line 222
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 223
    move-result-object v6

    .line 224
    .line 225
    .line 226
    invoke-interface {p2, v8, v0, v6}, Le8/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_7
    move v0, v5

    .line 228
    .line 229
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 230
    goto :goto_2

    .line 231
    :cond_8
    return-void
.end method

.method private static final c(Landroidx/compose/ui/text/TextStyle;)Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextStyle;->E()Landroidx/compose/ui/text/SpanStyle;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroidx/compose/ui/text/platform/extensions/TextPaintExtensions_androidKt;->b(Landroidx/compose/ui/text/SpanStyle;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextStyle;->l()Landroidx/compose/ui/text/font/FontSynthesis;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    :goto_1
    return p0
.end method

.method private static final d(Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/SpanStyle;)Landroidx/compose/ui/text/SpanStyle;
    .locals 0

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    return-object p1

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/SpanStyle;->v(Landroidx/compose/ui/text/SpanStyle;)Landroidx/compose/ui/text/SpanStyle;

    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method private static final e(JFLandroidx/compose/ui/unit/Density;)F
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnit;->g(J)J

    .line 4
    move-result-wide v0

    .line 5
    .line 6
    sget-object v2, Landroidx/compose/ui/unit/TextUnitType;->Companion:Landroidx/compose/ui/unit/TextUnitType$Companion;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v2}, Landroidx/compose/ui/unit/TextUnitType$Companion;->b()J

    .line 10
    move-result-wide v3

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1, v3, v4}, Landroidx/compose/ui/unit/TextUnitType;->g(JJ)Z

    .line 14
    move-result v3

    .line 15
    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    .line 19
    invoke-interface {p3, p0, p1}, Landroidx/compose/ui/unit/Density;->p0(J)F

    .line 20
    move-result p0

    .line 21
    goto :goto_0

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {v2}, Landroidx/compose/ui/unit/TextUnitType$Companion;->a()J

    .line 25
    move-result-wide v2

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/TextUnitType;->g(JJ)Z

    .line 29
    move-result p3

    .line 30
    .line 31
    if-eqz p3, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/TextUnit;->h(J)F

    .line 35
    move-result p0

    .line 36
    mul-float/2addr p0, p2

    .line 37
    goto :goto_0

    .line 38
    .line 39
    :cond_1
    const/high16 p0, 0x7fc00000    # Float.NaN

    .line 40
    :goto_0
    return p0
.end method

.method public static final f(Landroid/text/Spannable;JII)V
    .locals 2
    .param p0    # Landroid/text/Spannable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "$this$setBackground"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->f()J

    .line 11
    move-result-wide v0

    .line 12
    .line 13
    cmp-long v0, p1, v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    .line 18
    .line 19
    .line 20
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/ColorKt;->l(J)I

    .line 21
    move-result p1

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 25
    .line 26
    .line 27
    invoke-static {p0, v0, p3, p4}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->r(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 28
    :cond_0
    return-void
.end method

.method private static final g(Landroid/text/Spannable;Landroidx/compose/ui/text/style/BaselineShift;II)V
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/compose/ui/text/style/BaselineShift;->h()F

    .line 6
    move-result p1

    .line 7
    .line 8
    new-instance v0, Landroidx/compose/ui/text/android/style/BaselineShiftSpan;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p1}, Landroidx/compose/ui/text/android/style/BaselineShiftSpan;-><init>(F)V

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v0, p2, p3}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->r(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 15
    :cond_0
    return-void
.end method

.method private static final h(Landroid/text/Spannable;Landroidx/compose/ui/graphics/Brush;II)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    instance-of v0, p1, Landroidx/compose/ui/graphics/SolidColor;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p1, Landroidx/compose/ui/graphics/SolidColor;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/SolidColor;->c()J

    .line 12
    move-result-wide v0

    .line 13
    .line 14
    .line 15
    invoke-static {p0, v0, v1, p2, p3}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->i(Landroid/text/Spannable;JII)V

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    instance-of v0, p1, Landroidx/compose/ui/graphics/ShaderBrush;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    new-instance v0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;

    .line 23
    .line 24
    check-cast p1, Landroidx/compose/ui/graphics/ShaderBrush;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, p1}, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;-><init>(Landroidx/compose/ui/graphics/ShaderBrush;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p0, v0, p2, p3}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->r(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 31
    :cond_1
    :goto_0
    return-void
.end method

.method public static final i(Landroid/text/Spannable;JII)V
    .locals 2
    .param p0    # Landroid/text/Spannable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "$this$setColor"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->f()J

    .line 11
    move-result-wide v0

    .line 12
    .line 13
    cmp-long v0, p1, v0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    .line 18
    .line 19
    .line 20
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/ColorKt;->l(J)I

    .line 21
    move-result p1

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 25
    .line 26
    .line 27
    invoke-static {p0, v0, p3, p4}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->r(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 28
    :cond_0
    return-void
.end method

.method private static final j(Landroid/text/Spannable;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Le8/r;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "Landroidx/compose/ui/text/TextStyle;",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Landroidx/compose/ui/text/SpanStyle;",
            ">;>;",
            "Le8/r<",
            "-",
            "Landroidx/compose/ui/text/font/FontFamily;",
            "-",
            "Landroidx/compose/ui/text/font/FontWeight;",
            "-",
            "Landroidx/compose/ui/text/font/FontStyle;",
            "-",
            "Landroidx/compose/ui/text/font/FontSynthesis;",
            "+",
            "Landroid/graphics/Typeface;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    .line 16
    :goto_0
    if-ge v2, v1, :cond_2

    .line 17
    .line 18
    move-object/from16 v3, p2

    .line 19
    .line 20
    .line 21
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v4

    .line 23
    move-object v5, v4

    .line 24
    .line 25
    check-cast v5, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v5}, Landroidx/compose/ui/text/AnnotatedString$Range;->e()Ljava/lang/Object;

    .line 29
    move-result-object v6

    .line 30
    .line 31
    check-cast v6, Landroidx/compose/ui/text/SpanStyle;

    .line 32
    .line 33
    .line 34
    invoke-static {v6}, Landroidx/compose/ui/text/platform/extensions/TextPaintExtensions_androidKt;->b(Landroidx/compose/ui/text/SpanStyle;)Z

    .line 35
    move-result v6

    .line 36
    .line 37
    if-nez v6, :cond_0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v5}, Landroidx/compose/ui/text/AnnotatedString$Range;->e()Ljava/lang/Object;

    .line 41
    move-result-object v5

    .line 42
    .line 43
    check-cast v5, Landroidx/compose/ui/text/SpanStyle;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5}, Landroidx/compose/ui/text/SpanStyle;->k()Landroidx/compose/ui/text/font/FontSynthesis;

    .line 47
    move-result-object v5

    .line 48
    .line 49
    if-eqz v5, :cond_1

    .line 50
    .line 51
    .line 52
    :cond_0
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 55
    goto :goto_0

    .line 56
    .line 57
    .line 58
    :cond_2
    invoke-static/range {p1 .. p1}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->c(Landroidx/compose/ui/text/TextStyle;)Z

    .line 59
    move-result v1

    .line 60
    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    .line 64
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/TextStyle;->h()Landroidx/compose/ui/text/font/FontFamily;

    .line 65
    move-result-object v10

    .line 66
    .line 67
    .line 68
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/TextStyle;->m()Landroidx/compose/ui/text/font/FontWeight;

    .line 69
    move-result-object v7

    .line 70
    .line 71
    .line 72
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/TextStyle;->k()Landroidx/compose/ui/text/font/FontStyle;

    .line 73
    move-result-object v8

    .line 74
    .line 75
    .line 76
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/TextStyle;->l()Landroidx/compose/ui/text/font/FontSynthesis;

    .line 77
    move-result-object v9

    .line 78
    .line 79
    new-instance v1, Landroidx/compose/ui/text/SpanStyle;

    .line 80
    move-object v2, v1

    .line 81
    .line 82
    const-wide/16 v3, 0x0

    .line 83
    .line 84
    const-wide/16 v5, 0x0

    .line 85
    const/4 v11, 0x0

    .line 86
    .line 87
    const-wide/16 v12, 0x0

    .line 88
    const/4 v14, 0x0

    .line 89
    const/4 v15, 0x0

    .line 90
    .line 91
    const/16 v16, 0x0

    .line 92
    .line 93
    const-wide/16 v17, 0x0

    .line 94
    .line 95
    const/16 v19, 0x0

    .line 96
    .line 97
    const/16 v20, 0x0

    .line 98
    .line 99
    const/16 v21, 0x3fc3

    .line 100
    .line 101
    const/16 v22, 0x0

    .line 102
    .line 103
    .line 104
    invoke-direct/range {v2 .. v22}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;ILkotlin/jvm/internal/k;)V

    .line 105
    goto :goto_1

    .line 106
    :cond_3
    const/4 v1, 0x0

    .line 107
    .line 108
    :goto_1
    new-instance v2, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt$setFontAttributes$1;

    .line 109
    .line 110
    move-object/from16 v3, p0

    .line 111
    .line 112
    move-object/from16 v4, p3

    .line 113
    .line 114
    .line 115
    invoke-direct {v2, v3, v4}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt$setFontAttributes$1;-><init>(Landroid/text/Spannable;Le8/r;)V

    .line 116
    .line 117
    .line 118
    invoke-static {v1, v0, v2}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->b(Landroidx/compose/ui/text/SpanStyle;Ljava/util/List;Le8/q;)V

    .line 119
    return-void
.end method

.method private static final k(Landroid/text/Spannable;Ljava/lang/String;II)V
    .locals 1

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    new-instance v0, Landroidx/compose/ui/text/android/style/FontFeatureSpan;

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, p1}, Landroidx/compose/ui/text/android/style/FontFeatureSpan;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p0, v0, p2, p3}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->r(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 11
    :cond_0
    return-void
.end method

.method public static final l(Landroid/text/Spannable;JLandroidx/compose/ui/unit/Density;II)V
    .locals 5
    .param p0    # Landroid/text/Spannable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "$this$setFontSize"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "density"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/TextUnit;->g(J)J

    .line 14
    move-result-wide v0

    .line 15
    .line 16
    sget-object v2, Landroidx/compose/ui/unit/TextUnitType;->Companion:Landroidx/compose/ui/unit/TextUnitType$Companion;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Landroidx/compose/ui/unit/TextUnitType$Companion;->b()J

    .line 20
    move-result-wide v3

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1, v3, v4}, Landroidx/compose/ui/unit/TextUnitType;->g(JJ)Z

    .line 24
    move-result v3

    .line 25
    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    .line 29
    .line 30
    .line 31
    invoke-interface {p3, p1, p2}, Landroidx/compose/ui/unit/Density;->p0(J)F

    .line 32
    move-result p1

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lg8/a;->c(F)I

    .line 36
    move-result p1

    .line 37
    const/4 p2, 0x0

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, p1, p2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 41
    .line 42
    .line 43
    invoke-static {p0, v0, p4, p5}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->r(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 44
    goto :goto_0

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-virtual {v2}, Landroidx/compose/ui/unit/TextUnitType$Companion;->a()J

    .line 48
    move-result-wide v2

    .line 49
    .line 50
    .line 51
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/TextUnitType;->g(JJ)Z

    .line 52
    move-result p3

    .line 53
    .line 54
    if-eqz p3, :cond_1

    .line 55
    .line 56
    new-instance p3, Landroid/text/style/RelativeSizeSpan;

    .line 57
    .line 58
    .line 59
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/TextUnit;->h(J)F

    .line 60
    move-result p1

    .line 61
    .line 62
    .line 63
    invoke-direct {p3, p1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 64
    .line 65
    .line 66
    invoke-static {p0, p3, p4, p5}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->r(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 67
    :cond_1
    :goto_0
    return-void
.end method

.method private static final m(Landroid/text/Spannable;Landroidx/compose/ui/text/style/TextGeometricTransform;II)V
    .locals 2

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    new-instance v0, Landroid/text/style/ScaleXSpan;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/compose/ui/text/style/TextGeometricTransform;->b()F

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Landroid/text/style/ScaleXSpan;-><init>(F)V

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v0, p2, p3}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->r(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 15
    .line 16
    new-instance v0, Landroidx/compose/ui/text/android/style/SkewXSpan;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/compose/ui/text/style/TextGeometricTransform;->c()F

    .line 20
    move-result p1

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, p1}, Landroidx/compose/ui/text/android/style/SkewXSpan;-><init>(F)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0, v0, p2, p3}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->r(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 27
    :cond_0
    return-void
.end method

.method public static final n(Landroid/text/Spannable;JFLandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/style/LineHeightStyle;)V
    .locals 8
    .param p0    # Landroid/text/Spannable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/ui/text/style/LineHeightStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "$this$setLineHeight"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "density"

    .line 8
    .line 9
    .line 10
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "lineHeightStyle"

    .line 13
    .line 14
    .line 15
    invoke-static {p5, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1, p2, p3, p4}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->e(JFLandroidx/compose/ui/unit/Density;)F

    .line 19
    move-result v2

    .line 20
    .line 21
    .line 22
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 23
    move-result p1

    .line 24
    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    new-instance p1, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    .line 28
    const/4 v3, 0x0

    .line 29
    .line 30
    .line 31
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 32
    move-result v4

    .line 33
    .line 34
    .line 35
    invoke-virtual {p5}, Landroidx/compose/ui/text/style/LineHeightStyle;->c()I

    .line 36
    move-result p2

    .line 37
    .line 38
    .line 39
    invoke-static {p2}, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->f(I)Z

    .line 40
    move-result v5

    .line 41
    .line 42
    .line 43
    invoke-virtual {p5}, Landroidx/compose/ui/text/style/LineHeightStyle;->c()I

    .line 44
    move-result p2

    .line 45
    .line 46
    .line 47
    invoke-static {p2}, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->g(I)Z

    .line 48
    move-result v6

    .line 49
    .line 50
    .line 51
    invoke-virtual {p5}, Landroidx/compose/ui/text/style/LineHeightStyle;->b()I

    .line 52
    move-result v7

    .line 53
    move-object v1, p1

    .line 54
    .line 55
    .line 56
    invoke-direct/range {v1 .. v7}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;-><init>(FIIZZI)V

    .line 57
    const/4 p2, 0x0

    .line 58
    .line 59
    .line 60
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 61
    move-result p3

    .line 62
    .line 63
    .line 64
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->r(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 65
    :cond_0
    return-void
.end method

.method public static final o(Landroid/text/Spannable;JFLandroidx/compose/ui/unit/Density;)V
    .locals 1
    .param p0    # Landroid/text/Spannable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "$this$setLineHeight"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "density"

    .line 8
    .line 9
    .line 10
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1, p2, p3, p4}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->e(JFLandroidx/compose/ui/unit/Density;)F

    .line 14
    move-result p1

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 18
    move-result p2

    .line 19
    .line 20
    if-nez p2, :cond_0

    .line 21
    .line 22
    new-instance p2, Landroidx/compose/ui/text/android/style/LineHeightSpan;

    .line 23
    .line 24
    .line 25
    invoke-direct {p2, p1}, Landroidx/compose/ui/text/android/style/LineHeightSpan;-><init>(F)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 29
    move-result p1

    .line 30
    const/4 p3, 0x0

    .line 31
    .line 32
    .line 33
    invoke-static {p0, p2, p3, p1}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->r(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 34
    :cond_0
    return-void
.end method

.method public static final p(Landroid/text/Spannable;Landroidx/compose/ui/text/intl/LocaleList;II)V
    .locals 2
    .param p0    # Landroid/text/Spannable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/text/intl/LocaleList;
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
    if-eqz p1, :cond_2

    .line 8
    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v1, 0x18

    .line 12
    .line 13
    if-lt v0, v1, :cond_0

    .line 14
    .line 15
    sget-object v0, Landroidx/compose/ui/text/platform/extensions/LocaleListHelperMethods;->INSTANCE:Landroidx/compose/ui/text/platform/extensions/LocaleListHelperMethods;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/platform/extensions/LocaleListHelperMethods;->a(Landroidx/compose/ui/text/intl/LocaleList;)Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    goto :goto_1

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/text/intl/LocaleList;->isEmpty()Z

    .line 24
    move-result v0

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    sget-object p1, Landroidx/compose/ui/text/intl/Locale;->Companion:Landroidx/compose/ui/text/intl/Locale$Companion;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/compose/ui/text/intl/Locale$Companion;->a()Landroidx/compose/ui/text/intl/Locale;

    .line 32
    move-result-object p1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroidx/compose/ui/text/intl/LocaleList;->c(I)Landroidx/compose/ui/text/intl/Locale;

    .line 38
    move-result-object p1

    .line 39
    .line 40
    :goto_0
    new-instance v0, Landroid/text/style/LocaleSpan;

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Landroidx/compose/ui/text/platform/extensions/LocaleExtensions_androidKt;->a(Landroidx/compose/ui/text/intl/Locale;)Ljava/util/Locale;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-direct {v0, p1}, Landroid/text/style/LocaleSpan;-><init>(Ljava/util/Locale;)V

    .line 48
    move-object p1, v0

    .line 49
    .line 50
    .line 51
    :goto_1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->r(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 52
    :cond_2
    return-void
.end method

.method private static final q(Landroid/text/Spannable;Landroidx/compose/ui/graphics/Shadow;II)V
    .locals 5

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    new-instance v0, Landroidx/compose/ui/text/android/style/ShadowSpan;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/Shadow;->c()J

    .line 8
    move-result-wide v1

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/ColorKt;->l(J)I

    .line 12
    move-result v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/Shadow;->d()J

    .line 16
    move-result-wide v2

    .line 17
    .line 18
    .line 19
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->m(J)F

    .line 20
    move-result v2

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/Shadow;->d()J

    .line 24
    move-result-wide v3

    .line 25
    .line 26
    .line 27
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->n(J)F

    .line 28
    move-result v3

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/Shadow;->b()F

    .line 32
    move-result p1

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, v1, v2, v3, p1}, Landroidx/compose/ui/text/android/style/ShadowSpan;-><init>(IFFF)V

    .line 36
    .line 37
    .line 38
    invoke-static {p0, v0, p2, p3}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->r(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 39
    :cond_0
    return-void
.end method

.method public static final r(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 1
    .param p0    # Landroid/text/Spannable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
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
    const-string v0, "span"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const/16 v0, 0x21

    .line 13
    .line 14
    .line 15
    invoke-interface {p0, p1, p2, p3, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 16
    return-void
.end method

.method private static final s(Landroid/text/Spannable;Landroidx/compose/ui/text/AnnotatedString$Range;Landroidx/compose/ui/unit/Density;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Landroidx/compose/ui/text/SpanStyle;",
            ">;",
            "Landroidx/compose/ui/unit/Density;",
            "Ljava/util/ArrayList<",
            "Landroidx/compose/ui/text/platform/extensions/SpanRange;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/ui/text/AnnotatedString$Range;->f()I

    .line 4
    move-result v6

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/compose/ui/text/AnnotatedString$Range;->d()I

    .line 8
    move-result v7

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/compose/ui/text/AnnotatedString$Range;->e()Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    check-cast p1, Landroidx/compose/ui/text/SpanStyle;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->d()Landroidx/compose/ui/text/style/BaselineShift;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    .line 21
    invoke-static {p0, v0, v6, v7}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->g(Landroid/text/Spannable;Landroidx/compose/ui/text/style/BaselineShift;II)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->f()J

    .line 25
    move-result-wide v0

    .line 26
    .line 27
    .line 28
    invoke-static {p0, v0, v1, v6, v7}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->i(Landroid/text/Spannable;JII)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->e()Landroidx/compose/ui/graphics/Brush;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    .line 35
    invoke-static {p0, v0, v6, v7}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->h(Landroid/text/Spannable;Landroidx/compose/ui/graphics/Brush;II)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->q()Landroidx/compose/ui/text/style/TextDecoration;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-static {p0, v0, v6, v7}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->u(Landroid/text/Spannable;Landroidx/compose/ui/text/style/TextDecoration;II)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->i()J

    .line 46
    move-result-wide v1

    .line 47
    move-object v0, p0

    .line 48
    move-object v3, p2

    .line 49
    move v4, v6

    .line 50
    move v5, v7

    .line 51
    .line 52
    .line 53
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->l(Landroid/text/Spannable;JLandroidx/compose/ui/unit/Density;II)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->h()Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    .line 59
    .line 60
    invoke-static {p0, v0, v6, v7}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->k(Landroid/text/Spannable;Ljava/lang/String;II)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->s()Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    .line 67
    invoke-static {p0, v0, v6, v7}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->m(Landroid/text/Spannable;Landroidx/compose/ui/text/style/TextGeometricTransform;II)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->n()Landroidx/compose/ui/text/intl/LocaleList;

    .line 71
    move-result-object v0

    .line 72
    .line 73
    .line 74
    invoke-static {p0, v0, v6, v7}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->p(Landroid/text/Spannable;Landroidx/compose/ui/text/intl/LocaleList;II)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->c()J

    .line 78
    move-result-wide v0

    .line 79
    .line 80
    .line 81
    invoke-static {p0, v0, v1, v6, v7}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->f(Landroid/text/Spannable;JII)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->p()Landroidx/compose/ui/graphics/Shadow;

    .line 85
    move-result-object v0

    .line 86
    .line 87
    .line 88
    invoke-static {p0, v0, v6, v7}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->q(Landroid/text/Spannable;Landroidx/compose/ui/graphics/Shadow;II)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->m()J

    .line 92
    move-result-wide p0

    .line 93
    .line 94
    .line 95
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->a(JLandroidx/compose/ui/unit/Density;)Landroid/text/style/MetricAffectingSpan;

    .line 96
    move-result-object p0

    .line 97
    .line 98
    if-eqz p0, :cond_0

    .line 99
    .line 100
    new-instance p1, Landroidx/compose/ui/text/platform/extensions/SpanRange;

    .line 101
    .line 102
    .line 103
    invoke-direct {p1, p0, v6, v7}, Landroidx/compose/ui/text/platform/extensions/SpanRange;-><init>(Ljava/lang/Object;II)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_0
    return-void
.end method

.method public static final t(Landroid/text/Spannable;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Landroidx/compose/ui/unit/Density;Le8/r;)V
    .locals 6
    .param p0    # Landroid/text/Spannable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/text/TextStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Le8/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "Landroidx/compose/ui/text/TextStyle;",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Landroidx/compose/ui/text/SpanStyle;",
            ">;>;",
            "Landroidx/compose/ui/unit/Density;",
            "Le8/r<",
            "-",
            "Landroidx/compose/ui/text/font/FontFamily;",
            "-",
            "Landroidx/compose/ui/text/font/FontWeight;",
            "-",
            "Landroidx/compose/ui/text/font/FontStyle;",
            "-",
            "Landroidx/compose/ui/text/font/FontSynthesis;",
            "+",
            "Landroid/graphics/Typeface;",
            ">;)V"
        }
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
    const-string v0, "contextTextStyle"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    const-string v0, "spanStyles"

    .line 13
    .line 14
    .line 15
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    const-string v0, "density"

    .line 18
    .line 19
    .line 20
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    const-string v0, "resolveTypeface"

    .line 23
    .line 24
    .line 25
    invoke-static {p4, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0, p1, p2, p4}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->j(Landroid/text/Spannable;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Le8/r;)V

    .line 29
    .line 30
    new-instance p1, Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 37
    move-result p4

    .line 38
    const/4 v0, 0x0

    .line 39
    move v1, v0

    .line 40
    .line 41
    :goto_0
    if-ge v1, p4, :cond_2

    .line 42
    .line 43
    .line 44
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    check-cast v2, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Landroidx/compose/ui/text/AnnotatedString$Range;->f()I

    .line 51
    move-result v3

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Landroidx/compose/ui/text/AnnotatedString$Range;->d()I

    .line 55
    move-result v4

    .line 56
    .line 57
    if-ltz v3, :cond_1

    .line 58
    .line 59
    .line 60
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 61
    move-result v5

    .line 62
    .line 63
    if-ge v3, v5, :cond_1

    .line 64
    .line 65
    if-le v4, v3, :cond_1

    .line 66
    .line 67
    .line 68
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 69
    move-result v3

    .line 70
    .line 71
    if-le v4, v3, :cond_0

    .line 72
    goto :goto_1

    .line 73
    .line 74
    .line 75
    :cond_0
    invoke-static {p0, v2, p3, p1}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->s(Landroid/text/Spannable;Landroidx/compose/ui/text/AnnotatedString$Range;Landroidx/compose/ui/unit/Density;Ljava/util/ArrayList;)V

    .line 76
    .line 77
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 78
    goto :goto_0

    .line 79
    .line 80
    .line 81
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 82
    move-result p2

    .line 83
    .line 84
    :goto_2
    if-ge v0, p2, :cond_3

    .line 85
    .line 86
    .line 87
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 88
    move-result-object p3

    .line 89
    .line 90
    check-cast p3, Landroidx/compose/ui/text/platform/extensions/SpanRange;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p3}, Landroidx/compose/ui/text/platform/extensions/SpanRange;->a()Ljava/lang/Object;

    .line 94
    move-result-object p4

    .line 95
    .line 96
    .line 97
    invoke-virtual {p3}, Landroidx/compose/ui/text/platform/extensions/SpanRange;->b()I

    .line 98
    move-result v1

    .line 99
    .line 100
    .line 101
    invoke-virtual {p3}, Landroidx/compose/ui/text/platform/extensions/SpanRange;->c()I

    .line 102
    move-result p3

    .line 103
    .line 104
    .line 105
    invoke-static {p0, p4, v1, p3}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->r(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 106
    .line 107
    add-int/lit8 v0, v0, 0x1

    .line 108
    goto :goto_2

    .line 109
    :cond_3
    return-void
.end method

.method public static final u(Landroid/text/Spannable;Landroidx/compose/ui/text/style/TextDecoration;II)V
    .locals 3
    .param p0    # Landroid/text/Spannable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/text/style/TextDecoration;
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
    if-eqz p1, :cond_0

    .line 8
    .line 9
    new-instance v0, Landroidx/compose/ui/text/android/style/TextDecorationSpan;

    .line 10
    .line 11
    sget-object v1, Landroidx/compose/ui/text/style/TextDecoration;->Companion:Landroidx/compose/ui/text/style/TextDecoration$Companion;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->d()Landroidx/compose/ui/text/style/TextDecoration;

    .line 15
    move-result-object v2

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v2}, Landroidx/compose/ui/text/style/TextDecoration;->d(Landroidx/compose/ui/text/style/TextDecoration;)Z

    .line 19
    move-result v2

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->b()Landroidx/compose/ui/text/style/TextDecoration;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v1}, Landroidx/compose/ui/text/style/TextDecoration;->d(Landroidx/compose/ui/text/style/TextDecoration;)Z

    .line 27
    move-result p1

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, v2, p1}, Landroidx/compose/ui/text/android/style/TextDecorationSpan;-><init>(ZZ)V

    .line 31
    .line 32
    .line 33
    invoke-static {p0, v0, p2, p3}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->r(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 34
    :cond_0
    return-void
.end method

.method public static final v(Landroid/text/Spannable;Landroidx/compose/ui/text/style/TextIndent;FLandroidx/compose/ui/unit/Density;)V
    .locals 10
    .param p0    # Landroid/text/Spannable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/text/style/TextIndent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/unit/Density;
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
    const-string v0, "density"

    .line 8
    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    if-eqz p1, :cond_6

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/compose/ui/text/style/TextIndent;->b()J

    .line 16
    move-result-wide v0

    .line 17
    const/4 v2, 0x0

    .line 18
    .line 19
    .line 20
    invoke-static {v2}, Landroidx/compose/ui/unit/TextUnitKt;->e(I)J

    .line 21
    move-result-wide v3

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1, v3, v4}, Landroidx/compose/ui/unit/TextUnit;->e(JJ)Z

    .line 25
    move-result v0

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/compose/ui/text/style/TextIndent;->c()J

    .line 31
    move-result-wide v0

    .line 32
    .line 33
    .line 34
    invoke-static {v2}, Landroidx/compose/ui/unit/TextUnitKt;->e(I)J

    .line 35
    move-result-wide v3

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1, v3, v4}, Landroidx/compose/ui/unit/TextUnit;->e(JJ)Z

    .line 39
    move-result v0

    .line 40
    .line 41
    if-nez v0, :cond_6

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/text/style/TextIndent;->b()J

    .line 45
    move-result-wide v0

    .line 46
    .line 47
    .line 48
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/TextUnitKt;->f(J)Z

    .line 49
    move-result v0

    .line 50
    .line 51
    if-nez v0, :cond_6

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Landroidx/compose/ui/text/style/TextIndent;->c()J

    .line 55
    move-result-wide v0

    .line 56
    .line 57
    .line 58
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/TextUnitKt;->f(J)Z

    .line 59
    move-result v0

    .line 60
    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    goto/16 :goto_2

    .line 64
    .line 65
    .line 66
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/text/style/TextIndent;->b()J

    .line 67
    move-result-wide v0

    .line 68
    .line 69
    .line 70
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/TextUnit;->g(J)J

    .line 71
    move-result-wide v0

    .line 72
    .line 73
    sget-object v3, Landroidx/compose/ui/unit/TextUnitType;->Companion:Landroidx/compose/ui/unit/TextUnitType$Companion;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Landroidx/compose/ui/unit/TextUnitType$Companion;->b()J

    .line 77
    move-result-wide v4

    .line 78
    .line 79
    .line 80
    invoke-static {v0, v1, v4, v5}, Landroidx/compose/ui/unit/TextUnitType;->g(JJ)Z

    .line 81
    move-result v4

    .line 82
    const/4 v5, 0x0

    .line 83
    .line 84
    if-eqz v4, :cond_2

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Landroidx/compose/ui/text/style/TextIndent;->b()J

    .line 88
    move-result-wide v0

    .line 89
    .line 90
    .line 91
    invoke-interface {p3, v0, v1}, Landroidx/compose/ui/unit/Density;->p0(J)F

    .line 92
    move-result v0

    .line 93
    goto :goto_0

    .line 94
    .line 95
    .line 96
    :cond_2
    invoke-virtual {v3}, Landroidx/compose/ui/unit/TextUnitType$Companion;->a()J

    .line 97
    move-result-wide v6

    .line 98
    .line 99
    .line 100
    invoke-static {v0, v1, v6, v7}, Landroidx/compose/ui/unit/TextUnitType;->g(JJ)Z

    .line 101
    move-result v0

    .line 102
    .line 103
    if-eqz v0, :cond_3

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Landroidx/compose/ui/text/style/TextIndent;->b()J

    .line 107
    move-result-wide v0

    .line 108
    .line 109
    .line 110
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/TextUnit;->h(J)F

    .line 111
    move-result v0

    .line 112
    mul-float/2addr v0, p2

    .line 113
    goto :goto_0

    .line 114
    :cond_3
    move v0, v5

    .line 115
    .line 116
    .line 117
    :goto_0
    invoke-virtual {p1}, Landroidx/compose/ui/text/style/TextIndent;->c()J

    .line 118
    move-result-wide v6

    .line 119
    .line 120
    .line 121
    invoke-static {v6, v7}, Landroidx/compose/ui/unit/TextUnit;->g(J)J

    .line 122
    move-result-wide v6

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3}, Landroidx/compose/ui/unit/TextUnitType$Companion;->b()J

    .line 126
    move-result-wide v8

    .line 127
    .line 128
    .line 129
    invoke-static {v6, v7, v8, v9}, Landroidx/compose/ui/unit/TextUnitType;->g(JJ)Z

    .line 130
    move-result v1

    .line 131
    .line 132
    if-eqz v1, :cond_4

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Landroidx/compose/ui/text/style/TextIndent;->c()J

    .line 136
    move-result-wide p1

    .line 137
    .line 138
    .line 139
    invoke-interface {p3, p1, p2}, Landroidx/compose/ui/unit/Density;->p0(J)F

    .line 140
    move-result v5

    .line 141
    goto :goto_1

    .line 142
    .line 143
    .line 144
    :cond_4
    invoke-virtual {v3}, Landroidx/compose/ui/unit/TextUnitType$Companion;->a()J

    .line 145
    move-result-wide v3

    .line 146
    .line 147
    .line 148
    invoke-static {v6, v7, v3, v4}, Landroidx/compose/ui/unit/TextUnitType;->g(JJ)Z

    .line 149
    move-result p3

    .line 150
    .line 151
    if-eqz p3, :cond_5

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1}, Landroidx/compose/ui/text/style/TextIndent;->c()J

    .line 155
    move-result-wide v3

    .line 156
    .line 157
    .line 158
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/TextUnit;->h(J)F

    .line 159
    move-result p1

    .line 160
    .line 161
    mul-float v5, p1, p2

    .line 162
    .line 163
    :cond_5
    :goto_1
    new-instance p1, Landroid/text/style/LeadingMarginSpan$Standard;

    .line 164
    float-to-double p2, v0

    .line 165
    .line 166
    .line 167
    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    .line 168
    move-result-wide p2

    .line 169
    double-to-float p2, p2

    .line 170
    float-to-int p2, p2

    .line 171
    float-to-double v0, v5

    .line 172
    .line 173
    .line 174
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 175
    move-result-wide v0

    .line 176
    double-to-float p3, v0

    .line 177
    float-to-int p3, p3

    .line 178
    .line 179
    .line 180
    invoke-direct {p1, p2, p3}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(II)V

    .line 181
    .line 182
    .line 183
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 184
    move-result p2

    .line 185
    .line 186
    .line 187
    invoke-static {p0, p1, v2, p2}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->r(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 188
    :cond_6
    :goto_2
    return-void
.end method
