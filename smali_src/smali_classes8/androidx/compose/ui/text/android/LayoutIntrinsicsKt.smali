.class public final Landroidx/compose/ui/text/android/LayoutIntrinsicsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLayoutIntrinsics.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LayoutIntrinsics.kt\nandroidx/compose/ui/text/android/LayoutIntrinsicsKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,142:1\n1849#2,2:143\n*S KotlinDebug\n*F\n+ 1 LayoutIntrinsics.kt\nandroidx/compose/ui/text/android/LayoutIntrinsicsKt\n*L\n112#1:143,2\n*E\n"
.end annotation


# direct methods
.method public static synthetic a(Lw7/u;Lw7/u;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/text/android/LayoutIntrinsicsKt;->d(Lw7/u;Lw7/u;)I

    move-result p0

    return p0
.end method

.method public static final synthetic b(FLjava/lang/CharSequence;Landroid/text/TextPaint;)Z
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/text/android/LayoutIntrinsicsKt;->e(FLjava/lang/CharSequence;Landroid/text/TextPaint;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final c(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F
    .locals 8
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/text/TextPaint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "text"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "paint"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextLocale()Ljava/util/Locale;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Ljava/text/BreakIterator;->getLineInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    new-instance v1, Landroidx/compose/ui/text/android/CharSequenceCharacterIterator;

    .line 21
    .line 22
    .line 23
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 24
    move-result v2

    .line 25
    const/4 v3, 0x0

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, p0, v3, v2}, Landroidx/compose/ui/text/android/CharSequenceCharacterIterator;-><init>(Ljava/lang/CharSequence;II)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 32
    .line 33
    new-instance v1, Ljava/util/PriorityQueue;

    .line 34
    .line 35
    new-instance v2, Landroidx/compose/ui/text/android/a;

    .line 36
    .line 37
    .line 38
    invoke-direct {v2}, Landroidx/compose/ui/text/android/a;-><init>()V

    .line 39
    .line 40
    const/16 v4, 0xa

    .line 41
    .line 42
    .line 43
    invoke-direct {v1, v4, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/text/BreakIterator;->next()I

    .line 47
    move-result v2

    .line 48
    :goto_0
    move v7, v3

    .line 49
    move v3, v2

    .line 50
    move v2, v7

    .line 51
    const/4 v5, -0x1

    .line 52
    .line 53
    if-eq v3, v5, :cond_2

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    .line 57
    move-result v5

    .line 58
    .line 59
    if-ge v5, v4, :cond_0

    .line 60
    .line 61
    new-instance v5, Lw7/u;

    .line 62
    .line 63
    .line 64
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    move-result-object v2

    .line 66
    .line 67
    .line 68
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object v6

    .line 70
    .line 71
    .line 72
    invoke-direct {v5, v2, v6}, Lw7/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v5}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 76
    goto :goto_1

    .line 77
    .line 78
    .line 79
    :cond_0
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    .line 80
    move-result-object v5

    .line 81
    .line 82
    check-cast v5, Lw7/u;

    .line 83
    .line 84
    if-eqz v5, :cond_1

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5}, Lw7/u;->d()Ljava/lang/Object;

    .line 88
    move-result-object v6

    .line 89
    .line 90
    check-cast v6, Ljava/lang/Number;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 94
    move-result v6

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5}, Lw7/u;->c()Ljava/lang/Object;

    .line 98
    move-result-object v5

    .line 99
    .line 100
    check-cast v5, Ljava/lang/Number;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 104
    move-result v5

    .line 105
    sub-int/2addr v6, v5

    .line 106
    .line 107
    sub-int v5, v3, v2

    .line 108
    .line 109
    if-ge v6, v5, :cond_1

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 113
    .line 114
    new-instance v5, Lw7/u;

    .line 115
    .line 116
    .line 117
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    move-result-object v2

    .line 119
    .line 120
    .line 121
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    move-result-object v6

    .line 123
    .line 124
    .line 125
    invoke-direct {v5, v2, v6}, Lw7/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, v5}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/text/BreakIterator;->next()I

    .line 132
    move-result v2

    .line 133
    goto :goto_0

    .line 134
    .line 135
    .line 136
    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 137
    move-result-object v0

    .line 138
    const/4 v1, 0x0

    .line 139
    .line 140
    .line 141
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    move-result v2

    .line 143
    .line 144
    if-eqz v2, :cond_3

    .line 145
    .line 146
    .line 147
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    move-result-object v2

    .line 149
    .line 150
    check-cast v2, Lw7/u;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2}, Lw7/u;->a()Ljava/lang/Object;

    .line 154
    move-result-object v3

    .line 155
    .line 156
    check-cast v3, Ljava/lang/Number;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 160
    move-result v3

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2}, Lw7/u;->b()Ljava/lang/Object;

    .line 164
    move-result-object v2

    .line 165
    .line 166
    check-cast v2, Ljava/lang/Number;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 170
    move-result v2

    .line 171
    .line 172
    .line 173
    invoke-static {p0, v3, v2, p1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    .line 174
    move-result v2

    .line 175
    .line 176
    .line 177
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    .line 178
    move-result v1

    .line 179
    goto :goto_2

    .line 180
    :cond_3
    return v1
.end method

.method private static final d(Lw7/u;Lw7/u;)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lw7/u;->d()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Ljava/lang/Number;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 10
    move-result v0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lw7/u;->c()Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    check-cast p0, Ljava/lang/Number;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 20
    move-result p0

    .line 21
    sub-int/2addr v0, p0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lw7/u;->d()Ljava/lang/Object;

    .line 25
    move-result-object p0

    .line 26
    .line 27
    check-cast p0, Ljava/lang/Number;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 31
    move-result p0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lw7/u;->c()Ljava/lang/Object;

    .line 35
    move-result-object p1

    .line 36
    .line 37
    check-cast p1, Ljava/lang/Number;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 41
    move-result p1

    .line 42
    sub-int/2addr p0, p1

    .line 43
    sub-int/2addr v0, p0

    .line 44
    return v0
.end method

.method private static final e(FLjava/lang/CharSequence;Landroid/text/TextPaint;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    cmpg-float p0, p0, v0

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    goto :goto_0

    .line 7
    .line 8
    :cond_0
    instance-of p0, p1, Landroid/text/Spanned;

    .line 9
    .line 10
    if-eqz p0, :cond_2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/graphics/Paint;->getLetterSpacing()F

    .line 14
    move-result p0

    .line 15
    .line 16
    cmpg-float p0, p0, v0

    .line 17
    .line 18
    if-nez p0, :cond_1

    .line 19
    .line 20
    check-cast p1, Landroid/text/Spanned;

    .line 21
    .line 22
    const-class p0, Landroidx/compose/ui/text/android/style/LetterSpacingSpanPx;

    .line 23
    .line 24
    .line 25
    invoke-static {p1, p0}, Landroidx/compose/ui/text/android/SpannedExtensionsKt;->a(Landroid/text/Spanned;Ljava/lang/Class;)Z

    .line 26
    move-result p0

    .line 27
    .line 28
    if-nez p0, :cond_1

    .line 29
    .line 30
    const-class p0, Landroidx/compose/ui/text/android/style/LetterSpacingSpanEm;

    .line 31
    .line 32
    .line 33
    invoke-static {p1, p0}, Landroidx/compose/ui/text/android/SpannedExtensionsKt;->a(Landroid/text/Spanned;Ljava/lang/Class;)Z

    .line 34
    move-result p0

    .line 35
    .line 36
    if-eqz p0, :cond_2

    .line 37
    :cond_1
    const/4 p0, 0x1

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 40
    :goto_1
    return p0
.end method
