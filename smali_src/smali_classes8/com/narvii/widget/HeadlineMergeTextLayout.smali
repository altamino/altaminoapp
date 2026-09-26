.class public Lcom/narvii/widget/HeadlineMergeTextLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field private static final MODE_LARGE_IMAGE:I = 0x3

.field private static final MODE_MULTI_IMAGE:I = 0x1

.field private static final MODE_NO_IMAGE:I = 0x2

.field private static final MODE_SMALL_IMAGE:I


# instance fields
.field private mainMaxline:I

.field private mergeMode:I

.field private subMaxLine:I

.field private totalMaxLine:I

.field private tvMain:Landroid/widget/TextView;

.field private tvSub:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/HeadlineMergeTextLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->totalMaxLine:I

    iput v0, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->mainMaxline:I

    iput v0, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->subMaxLine:I

    .line 3
    sget-object v1, Lcom/narvii/lib/R$styleable;->HeadlineMergeTextLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 4
    sget p2, Lcom/narvii/lib/R$styleable;->HeadlineMergeTextLayout_mergeMode:I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->mergeMode:I

    .line 5
    sget p2, Lcom/narvii/lib/R$styleable;->HeadlineMergeTextLayout_mergeMaxLines:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->totalMaxLine:I

    .line 6
    sget p2, Lcom/narvii/lib/R$styleable;->HeadlineMergeTextLayout_mainMaxLines:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->mainMaxline:I

    .line 7
    sget p2, Lcom/narvii/lib/R$styleable;->HeadlineMergeTextLayout_subMaxLines:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->subMaxLine:I

    .line 8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getRequiredLineCount(Landroid/widget/TextView;I)I
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 4
    move-result-object v1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 8
    move-result-object v2

    .line 9
    .line 10
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 11
    .line 12
    new-instance p1, Landroid/text/StaticLayout;

    .line 13
    .line 14
    const/high16 v5, 0x3f800000    # 1.0f

    .line 15
    const/4 v6, 0x0

    .line 16
    const/4 v7, 0x1

    .line 17
    move-object v0, p1

    .line 18
    move v3, p2

    .line 19
    .line 20
    .line 21
    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    .line 25
    move-result p1

    .line 26
    return p1
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    move-result v1

    .line 9
    .line 10
    if-ge v0, v1, :cond_2

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    instance-of v2, v1, Landroid/widget/TextView;

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    const-string v3, "main"

    .line 25
    .line 26
    .line 27
    invoke-static {v3, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    move-result v3

    .line 29
    .line 30
    if-eqz v3, :cond_0

    .line 31
    move-object v3, v1

    .line 32
    .line 33
    check-cast v3, Landroid/widget/TextView;

    .line 34
    .line 35
    iput-object v3, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->tvMain:Landroid/widget/TextView;

    .line 36
    .line 37
    .line 38
    :cond_0
    const-string/jumbo v3, "sub"

    .line 39
    .line 40
    .line 41
    invoke-static {v3, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    move-result v2

    .line 43
    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    check-cast v1, Landroid/widget/TextView;

    .line 47
    .line 48
    iput-object v1, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->tvSub:Landroid/widget/TextView;

    .line 49
    .line 50
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 4
    move-result v0

    .line 5
    .line 6
    iget v1, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->totalMaxLine:I

    .line 7
    const/4 v2, -0x1

    .line 8
    .line 9
    if-eq v1, v2, :cond_7

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->tvMain:Landroid/widget/TextView;

    .line 12
    .line 13
    if-eqz v1, :cond_7

    .line 14
    .line 15
    iget-object v3, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->tvSub:Landroid/widget/TextView;

    .line 16
    .line 17
    if-eqz v3, :cond_7

    .line 18
    .line 19
    iget v3, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->mainMaxline:I

    .line 20
    .line 21
    if-eq v3, v2, :cond_7

    .line 22
    .line 23
    iget v3, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->subMaxLine:I

    .line 24
    .line 25
    if-eq v3, v2, :cond_7

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, v1, v0}, Lcom/narvii/widget/HeadlineMergeTextLayout;->getRequiredLineCount(Landroid/widget/TextView;I)I

    .line 29
    move-result v1

    .line 30
    .line 31
    iget-object v2, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->tvSub:Landroid/widget/TextView;

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, v2, v0}, Lcom/narvii/widget/HeadlineMergeTextLayout;->getRequiredLineCount(Landroid/widget/TextView;I)I

    .line 35
    .line 36
    iget v0, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->mainMaxline:I

    .line 37
    .line 38
    .line 39
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 40
    move-result v0

    .line 41
    .line 42
    iget v1, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->mergeMode:I

    .line 43
    const/4 v2, 0x2

    .line 44
    .line 45
    if-nez v1, :cond_1

    .line 46
    .line 47
    iget-object v1, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->tvMain:Landroid/widget/TextView;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 51
    .line 52
    iget-object v1, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->tvSub:Landroid/widget/TextView;

    .line 53
    .line 54
    if-lt v0, v2, :cond_0

    .line 55
    goto :goto_0

    .line 56
    .line 57
    :cond_0
    iget v2, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->subMaxLine:I

    .line 58
    .line 59
    .line 60
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 61
    goto :goto_4

    .line 62
    :cond_1
    const/4 v3, 0x1

    .line 63
    const/4 v4, 0x0

    .line 64
    .line 65
    if-ne v1, v3, :cond_3

    .line 66
    .line 67
    iget-object v1, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->tvMain:Landroid/widget/TextView;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 71
    .line 72
    iget-object v1, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->tvSub:Landroid/widget/TextView;

    .line 73
    .line 74
    iget v2, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->totalMaxLine:I

    .line 75
    .line 76
    sub-int v3, v2, v0

    .line 77
    .line 78
    if-gez v3, :cond_2

    .line 79
    goto :goto_1

    .line 80
    .line 81
    :cond_2
    sub-int v4, v2, v0

    .line 82
    .line 83
    .line 84
    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 85
    goto :goto_4

    .line 86
    .line 87
    :cond_3
    if-ne v1, v2, :cond_5

    .line 88
    .line 89
    iget-object v1, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->tvMain:Landroid/widget/TextView;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 93
    .line 94
    iget-object v1, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->tvSub:Landroid/widget/TextView;

    .line 95
    .line 96
    if-lt v0, v2, :cond_4

    .line 97
    goto :goto_2

    .line 98
    .line 99
    :cond_4
    iget v2, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->subMaxLine:I

    .line 100
    .line 101
    .line 102
    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 103
    goto :goto_4

    .line 104
    :cond_5
    const/4 v2, 0x3

    .line 105
    .line 106
    if-ne v1, v2, :cond_7

    .line 107
    .line 108
    iget-object v1, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->tvMain:Landroid/widget/TextView;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 112
    .line 113
    iget-object v1, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->tvSub:Landroid/widget/TextView;

    .line 114
    .line 115
    iget v2, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->totalMaxLine:I

    .line 116
    .line 117
    sub-int v3, v2, v0

    .line 118
    .line 119
    if-gez v3, :cond_6

    .line 120
    goto :goto_3

    .line 121
    .line 122
    :cond_6
    sub-int v4, v2, v0

    .line 123
    .line 124
    .line 125
    :goto_3
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 126
    .line 127
    .line 128
    :cond_7
    :goto_4
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 129
    return-void
.end method
