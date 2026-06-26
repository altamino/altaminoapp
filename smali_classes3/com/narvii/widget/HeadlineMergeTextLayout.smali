.class public Lcom/narvii/widget/HeadlineMergeTextLayout;
.super Landroid/widget/LinearLayout;
.source "HeadlineMergeTextLayout.java"


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

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/HeadlineMergeTextLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 33
    iput v0, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->totalMaxLine:I

    .line 34
    iput v0, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->mainMaxline:I

    .line 35
    iput v0, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->subMaxLine:I

    .line 47
    sget-object v1, Lcom/narvii/lib/R$styleable;->HeadlineMergeTextLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 48
    sget p2, Lcom/narvii/lib/R$styleable;->HeadlineMergeTextLayout_mergeMode:I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->mergeMode:I

    .line 49
    sget p2, Lcom/narvii/lib/R$styleable;->HeadlineMergeTextLayout_mergeMaxLines:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->totalMaxLine:I

    .line 50
    sget p2, Lcom/narvii/lib/R$styleable;->HeadlineMergeTextLayout_mainMaxLines:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->mainMaxline:I

    .line 51
    sget p2, Lcom/narvii/lib/R$styleable;->HeadlineMergeTextLayout_subMaxLines:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->subMaxLine:I

    .line 52
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getRequiredLineCount(Landroid/widget/TextView;I)I
    .locals 8

    .line 98
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 99
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    .line 100
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 101
    new-instance p1, Landroid/text/StaticLayout;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 103
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p1

    return p1
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 4

    .line 57
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const/4 v0, 0x0

    .line 58
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 59
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 60
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 61
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "main"

    .line 62
    invoke-static {v3, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 63
    move-object v3, v1

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->tvMain:Landroid/widget/TextView;

    :cond_0
    const-string v3, "sub"

    .line 65
    invoke-static {v3, v2}, Lcom/narvii/util/Utils;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->tvSub:Landroid/widget/TextView;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 74
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 75
    iget v1, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->totalMaxLine:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    iget-object v1, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->tvMain:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    iget-object v3, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->tvSub:Landroid/widget/TextView;

    if-eqz v3, :cond_7

    iget v3, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->mainMaxline:I

    if-eq v3, v2, :cond_7

    iget v3, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->subMaxLine:I

    if-eq v3, v2, :cond_7

    .line 76
    invoke-direct {p0, v1, v0}, Lcom/narvii/widget/HeadlineMergeTextLayout;->getRequiredLineCount(Landroid/widget/TextView;I)I

    move-result v1

    .line 77
    iget-object v2, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->tvSub:Landroid/widget/TextView;

    invoke-direct {p0, v2, v0}, Lcom/narvii/widget/HeadlineMergeTextLayout;->getRequiredLineCount(Landroid/widget/TextView;I)I

    .line 78
    iget v0, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->mainMaxline:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 79
    iget v1, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->mergeMode:I

    const/4 v2, 0x2

    if-nez v1, :cond_1

    .line 80
    iget-object v1, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->tvMain:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 81
    iget-object v1, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->tvSub:Landroid/widget/TextView;

    if-lt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->subMaxLine:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_4

    :cond_1
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v3, :cond_3

    .line 83
    iget-object v1, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->tvMain:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 84
    iget-object v1, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->tvSub:Landroid/widget/TextView;

    iget v2, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->totalMaxLine:I

    sub-int v3, v2, v0

    if-gez v3, :cond_2

    goto :goto_1

    :cond_2
    sub-int v4, v2, v0

    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_4

    :cond_3
    if-ne v1, v2, :cond_5

    .line 86
    iget-object v1, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->tvMain:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 87
    iget-object v1, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->tvSub:Landroid/widget/TextView;

    if-lt v0, v2, :cond_4

    goto :goto_2

    :cond_4
    iget v2, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->subMaxLine:I

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_4

    :cond_5
    const/4 v2, 0x3

    if-ne v1, v2, :cond_7

    .line 89
    iget-object v1, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->tvMain:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 90
    iget-object v1, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->tvSub:Landroid/widget/TextView;

    iget v2, p0, Lcom/narvii/widget/HeadlineMergeTextLayout;->totalMaxLine:I

    sub-int v3, v2, v0

    if-gez v3, :cond_6

    goto :goto_3

    :cond_6
    sub-int v4, v2, v0

    :goto_3
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 93
    :cond_7
    :goto_4
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method
