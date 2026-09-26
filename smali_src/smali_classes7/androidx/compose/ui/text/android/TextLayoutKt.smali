.class public final Landroidx/compose/ui/text/android/TextLayoutKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextLayout.kt\nandroidx/compose/ui/text/android/TextLayoutKt\n+ 2 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,685:1\n26#2:686\n26#2:687\n*S KotlinDebug\n*F\n+ 1 TextLayout.kt\nandroidx/compose/ui/text/android/TextLayoutKt\n*L\n678#1:686\n682#1:687\n*E\n"
.end annotation


# static fields
.field private static final EmptyPair:Lw7/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw7/u<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lw7/u;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v1

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, v1}, Lw7/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    .line 12
    sput-object v0, Landroidx/compose/ui/text/android/TextLayoutKt;->EmptyPair:Lw7/u;

    .line 13
    return-void
.end method

.method public static final synthetic a(Landroidx/compose/ui/text/android/TextLayout;)Lw7/u;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/ui/text/android/TextLayoutKt;->c(Landroidx/compose/ui/text/android/TextLayout;)Lw7/u;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b(Landroidx/compose/ui/text/android/TextLayout;)Lw7/u;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/ui/text/android/TextLayoutKt;->f(Landroidx/compose/ui/text/android/TextLayout;)Lw7/u;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final c(Landroidx/compose/ui/text/android/TextLayout;)Lw7/u;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/android/TextLayout;",
            ")",
            "Lw7/u<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Landroidx/compose/ui/text/android/TextLayoutKt;->d(Landroidx/compose/ui/text/android/TextLayout;)[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    .line 4
    move-result-object p0

    .line 5
    array-length v0, p0

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    move v3, v2

    .line 9
    .line 10
    :goto_0
    if-ge v1, v0, :cond_2

    .line 11
    .line 12
    aget-object v4, p0, v1

    .line 13
    .line 14
    .line 15
    invoke-virtual {v4}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->b()I

    .line 16
    move-result v5

    .line 17
    .line 18
    if-gez v5, :cond_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v4}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->b()I

    .line 22
    move-result v5

    .line 23
    .line 24
    .line 25
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 26
    move-result v5

    .line 27
    .line 28
    .line 29
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    .line 30
    move-result v2

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {v4}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->c()I

    .line 34
    move-result v5

    .line 35
    .line 36
    if-gez v5, :cond_1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->c()I

    .line 40
    move-result v3

    .line 41
    .line 42
    .line 43
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 44
    move-result v3

    .line 45
    .line 46
    .line 47
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 48
    move-result v3

    .line 49
    .line 50
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_2
    if-nez v2, :cond_3

    .line 54
    .line 55
    if-nez v3, :cond_3

    .line 56
    .line 57
    sget-object p0, Landroidx/compose/ui/text/android/TextLayoutKt;->EmptyPair:Lw7/u;

    .line 58
    goto :goto_1

    .line 59
    .line 60
    :cond_3
    new-instance p0, Lw7/u;

    .line 61
    .line 62
    .line 63
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    .line 67
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    .line 71
    invoke-direct {p0, v0, v1}, Lw7/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    :goto_1
    return-object p0
.end method

.method private static final d(Landroidx/compose/ui/text/android/TextLayout;)[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->z()Ljava/lang/CharSequence;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v0, v0, Landroid/text/Spanned;

    .line 7
    const/4 v1, 0x0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-array p0, v1, [Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    .line 12
    return-object p0

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->z()Ljava/lang/CharSequence;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    check-cast v0, Landroid/text/Spanned;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->z()Ljava/lang/CharSequence;

    .line 22
    move-result-object p0

    .line 23
    .line 24
    .line 25
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 26
    move-result p0

    .line 27
    .line 28
    const-class v2, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, v1, p0, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 32
    move-result-object p0

    .line 33
    .line 34
    check-cast p0, [Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    .line 35
    .line 36
    const-string v0, "lineHeightStyleSpans"

    .line 37
    .line 38
    .line 39
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    array-length v0, p0

    .line 41
    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    new-array p0, v1, [Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    .line 45
    :cond_1
    return-object p0
.end method

.method public static final e(I)Landroid/text/TextDirectionHeuristic;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    if-eqz p0, :cond_5

    .line 3
    const/4 v0, 0x1

    .line 4
    .line 5
    if-eq p0, v0, :cond_4

    .line 6
    const/4 v0, 0x2

    .line 7
    .line 8
    const-string v1, "FIRSTSTRONG_LTR"

    .line 9
    .line 10
    if-eq p0, v0, :cond_3

    .line 11
    const/4 v0, 0x3

    .line 12
    .line 13
    if-eq p0, v0, :cond_2

    .line 14
    const/4 v0, 0x4

    .line 15
    .line 16
    if-eq p0, v0, :cond_1

    .line 17
    const/4 v0, 0x5

    .line 18
    .line 19
    if-eq p0, v0, :cond_0

    .line 20
    .line 21
    sget-object p0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    .line 22
    .line 23
    .line 24
    invoke-static {p0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_0
    sget-object p0, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    .line 28
    .line 29
    const-string v0, "LOCALE"

    .line 30
    .line 31
    .line 32
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :cond_1
    sget-object p0, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    .line 36
    .line 37
    const-string v0, "ANYRTL_LTR"

    .line 38
    .line 39
    .line 40
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    goto :goto_0

    .line 42
    .line 43
    :cond_2
    sget-object p0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    .line 44
    .line 45
    const-string v0, "FIRSTSTRONG_RTL"

    .line 46
    .line 47
    .line 48
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_3
    sget-object p0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    .line 52
    .line 53
    .line 54
    invoke-static {p0, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :cond_4
    sget-object p0, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    .line 58
    .line 59
    const-string v0, "RTL"

    .line 60
    .line 61
    .line 62
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    goto :goto_0

    .line 64
    .line 65
    :cond_5
    sget-object p0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 66
    .line 67
    const-string v0, "LTR"

    .line 68
    .line 69
    .line 70
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    :goto_0
    return-object p0
.end method

.method private static final f(Landroidx/compose/ui/text/android/TextLayout;)Lw7/u;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/android/TextLayout;",
            ")",
            "Lw7/u<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->c()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v2

    .line 10
    .line 11
    if-nez v0, :cond_5

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->A()Z

    .line 15
    move-result v0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto/16 :goto_4

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->d()Landroid/text/Layout;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->d()Landroid/text/Layout;

    .line 31
    move-result-object v2

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 35
    move-result-object v2

    .line 36
    .line 37
    const-string v3, "paint"

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    const-string v3, "text"

    .line 43
    .line 44
    .line 45
    invoke-static {v2, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->d()Landroid/text/Layout;

    .line 49
    move-result-object v3

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v1}, Landroid/text/Layout;->getLineStart(I)I

    .line 53
    move-result v3

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->d()Landroid/text/Layout;

    .line 57
    move-result-object v4

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4, v1}, Landroid/text/Layout;->getLineEnd(I)I

    .line 61
    move-result v4

    .line 62
    .line 63
    .line 64
    invoke-static {v0, v2, v3, v4}, Landroidx/compose/ui/text/android/PaintExtensionsKt;->c(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)Landroid/graphics/Rect;

    .line 65
    move-result-object v3

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->d()Landroid/text/Layout;

    .line 69
    move-result-object v4

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4, v1}, Landroid/text/Layout;->getLineAscent(I)I

    .line 73
    move-result v1

    .line 74
    .line 75
    iget v4, v3, Landroid/graphics/Rect;->top:I

    .line 76
    .line 77
    if-ge v4, v1, :cond_1

    .line 78
    sub-int/2addr v1, v4

    .line 79
    goto :goto_0

    .line 80
    .line 81
    .line 82
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->d()Landroid/text/Layout;

    .line 83
    move-result-object v1

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Landroid/text/Layout;->getTopPadding()I

    .line 87
    move-result v1

    .line 88
    .line 89
    .line 90
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->h()I

    .line 91
    move-result v4

    .line 92
    const/4 v5, 0x1

    .line 93
    .line 94
    if-ne v4, v5, :cond_2

    .line 95
    goto :goto_1

    .line 96
    .line 97
    .line 98
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->d()Landroid/text/Layout;

    .line 99
    move-result-object v3

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3}, Landroid/text/Layout;->getLineCount()I

    .line 103
    move-result v3

    .line 104
    sub-int/2addr v3, v5

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->d()Landroid/text/Layout;

    .line 108
    move-result-object v4

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineStart(I)I

    .line 112
    move-result v4

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->d()Landroid/text/Layout;

    .line 116
    move-result-object v6

    .line 117
    .line 118
    .line 119
    invoke-virtual {v6, v3}, Landroid/text/Layout;->getLineEnd(I)I

    .line 120
    move-result v3

    .line 121
    .line 122
    .line 123
    invoke-static {v0, v2, v4, v3}, Landroidx/compose/ui/text/android/PaintExtensionsKt;->c(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)Landroid/graphics/Rect;

    .line 124
    move-result-object v3

    .line 125
    .line 126
    .line 127
    :goto_1
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->d()Landroid/text/Layout;

    .line 128
    move-result-object v0

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->d()Landroid/text/Layout;

    .line 132
    move-result-object v2

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    .line 136
    move-result v2

    .line 137
    sub-int/2addr v2, v5

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineDescent(I)I

    .line 141
    move-result v0

    .line 142
    .line 143
    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    .line 144
    .line 145
    if-le v2, v0, :cond_3

    .line 146
    sub-int/2addr v2, v0

    .line 147
    goto :goto_2

    .line 148
    .line 149
    .line 150
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->d()Landroid/text/Layout;

    .line 151
    move-result-object p0

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0}, Landroid/text/Layout;->getBottomPadding()I

    .line 155
    move-result v2

    .line 156
    .line 157
    :goto_2
    if-nez v1, :cond_4

    .line 158
    .line 159
    if-nez v2, :cond_4

    .line 160
    .line 161
    sget-object p0, Landroidx/compose/ui/text/android/TextLayoutKt;->EmptyPair:Lw7/u;

    .line 162
    goto :goto_3

    .line 163
    .line 164
    :cond_4
    new-instance p0, Lw7/u;

    .line 165
    .line 166
    .line 167
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    move-result-object v0

    .line 169
    .line 170
    .line 171
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    move-result-object v1

    .line 173
    .line 174
    .line 175
    invoke-direct {p0, v0, v1}, Lw7/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 176
    :goto_3
    return-object p0

    .line 177
    .line 178
    :cond_5
    :goto_4
    new-instance p0, Lw7/u;

    .line 179
    .line 180
    .line 181
    invoke-direct {p0, v2, v2}, Lw7/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 182
    return-object p0
.end method
