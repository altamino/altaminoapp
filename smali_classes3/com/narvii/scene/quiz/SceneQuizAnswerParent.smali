.class public Lcom/narvii/scene/quiz/SceneQuizAnswerParent;
.super Landroid/widget/LinearLayout;
.source "SceneQuizAnswerParent.java"


# instance fields
.field private forceCenter:Z

.field grid:Landroid/view/View;

.field private final itemMargin:I

.field private final itemPadding:I

.field private final questionBottom:I

.field statusBar:Landroid/view/View;

.field stub1:Landroid/view/View;

.field title:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lcom/narvii/scene/quiz/SceneQuizAnswerParent;->forceCenter:Z

    .line 28
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/narvii/mediaeditor/R$dimen;->scene_answer_item_padding_h:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/scene/quiz/SceneQuizAnswerParent;->itemPadding:I

    .line 29
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/narvii/mediaeditor/R$dimen;->scene_answer_item_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/scene/quiz/SceneQuizAnswerParent;->itemMargin:I

    .line 30
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/narvii/mediaeditor/R$dimen;->scene_quiz_question_margin_bottom:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/narvii/scene/quiz/SceneQuizAnswerParent;->questionBottom:I

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 112
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 113
    sget v0, Lcom/narvii/mediaeditor/R$id;->grid:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizAnswerParent;->grid:Landroid/view/View;

    .line 114
    sget v0, Lcom/narvii/mediaeditor/R$id;->question:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizAnswerParent;->title:Landroid/view/View;

    .line 115
    sget v0, Lcom/narvii/mediaeditor/R$id;->stub1:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizAnswerParent;->stub1:Landroid/view/View;

    .line 116
    sget v0, Lcom/narvii/mediaeditor/R$id;->status_bar_placeholder:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizAnswerParent;->statusBar:Landroid/view/View;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    .line 35
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 36
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 37
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f4ccccd    # 0.8f

    mul-float v1, v1, v2

    .line 39
    iget v2, p0, Lcom/narvii/scene/quiz/SceneQuizAnswerParent;->itemMargin:I

    int-to-float v3, v2

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/narvii/scene/quiz/SceneQuizAnswerParent;->itemPadding:I

    mul-int/lit8 v4, v3, 0x4

    int-to-float v4, v4

    sub-float/2addr v1, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    const v5, 0x3fa51eb8    # 1.29f

    mul-float v1, v1, v5

    mul-float v1, v1, v4

    mul-int/lit8 v3, v3, 0x4

    int-to-float v3, v3

    add-float/2addr v1, v3

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 45
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    const/4 v10, 0x1

    if-ge v3, v9, :cond_3

    .line 46
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 47
    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v11

    sget v12, Lcom/narvii/mediaeditor/R$id;->stub1:I

    if-eq v11, v12, :cond_2

    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v11

    sget v12, Lcom/narvii/mediaeditor/R$id;->grid:I

    if-eq v11, v12, :cond_2

    .line 48
    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v11

    sget v12, Lcom/narvii/mediaeditor/R$id;->question:I

    if-ne v11, v12, :cond_0

    const/4 v8, 0x1

    .line 51
    :cond_0
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 53
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    instance-of v11, v11, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v11, :cond_1

    .line 54
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 55
    iget v11, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v11, v9

    add-int/2addr v10, v11

    :cond_1
    add-int/2addr v6, v10

    if-nez v8, :cond_2

    add-int/2addr v7, v10

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    sub-int v3, v0, v6

    mul-int/lit8 v6, v7, 0x2

    sub-int v6, v0, v6

    .line 65
    iget-object v8, p0, Lcom/narvii/scene/quiz/SceneQuizAnswerParent;->title:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v6, v8

    iget v8, p0, Lcom/narvii/scene/quiz/SceneQuizAnswerParent;->questionBottom:I

    sub-int/2addr v6, v8

    if-le v6, v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v10, 0x0

    :goto_1
    if-eqz v10, :cond_5

    sub-int/2addr v6, v1

    .line 71
    div-int/lit8 v3, v6, 0x2

    goto :goto_3

    :cond_5
    if-le v3, v1, :cond_6

    goto :goto_2

    :cond_6
    move v1, v3

    :goto_2
    const/4 v3, 0x0

    :goto_3
    if-nez v10, :cond_7

    .line 79
    iget-boolean v6, p0, Lcom/narvii/scene/quiz/SceneQuizAnswerParent;->forceCenter:Z

    if-eqz v6, :cond_7

    .line 80
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v8, 0x420c0000    # 35.0f

    invoke-static {v6, v8}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v6

    iget-object v8, p0, Lcom/narvii/scene/quiz/SceneQuizAnswerParent;->statusBar:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v6, v8

    sub-int/2addr v0, v1

    iget-object v8, p0, Lcom/narvii/scene/quiz/SceneQuizAnswerParent;->title:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v0, v8

    iget v8, p0, Lcom/narvii/scene/quiz/SceneQuizAnswerParent;->questionBottom:I

    sub-int/2addr v0, v8

    div-int/lit8 v0, v0, 0x2

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int/2addr v0, v7

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    .line 82
    :goto_4
    iget v6, p0, Lcom/narvii/scene/quiz/SceneQuizAnswerParent;->itemPadding:I

    mul-int/lit8 v7, v6, 0x4

    sub-int v7, v1, v7

    iget v8, p0, Lcom/narvii/scene/quiz/SceneQuizAnswerParent;->itemMargin:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    div-float/2addr v7, v4

    div-float/2addr v7, v5

    mul-float v7, v7, v4

    mul-int/lit8 v6, v6, 0x4

    int-to-float v4, v6

    add-float/2addr v7, v4

    int-to-float v4, v8

    add-float/2addr v7, v4

    float-to-int v4, v7

    .line 83
    iget-object v5, p0, Lcom/narvii/scene/quiz/SceneQuizAnswerParent;->grid:Landroid/view/View;

    if-eqz v5, :cond_8

    .line 84
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 85
    iput v1, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 86
    iput v4, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 87
    iget-object v1, p0, Lcom/narvii/scene/quiz/SceneQuizAnswerParent;->grid:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    :cond_8
    iget-object v1, p0, Lcom/narvii/scene/quiz/SceneQuizAnswerParent;->stub1:Landroid/view/View;

    if-eqz v1, :cond_a

    .line 91
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 92
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 93
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_9

    .line 94
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 96
    :cond_9
    iget-object v0, p0, Lcom/narvii/scene/quiz/SceneQuizAnswerParent;->stub1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public setForceCenter(Z)V
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/narvii/scene/quiz/SceneQuizAnswerParent;->forceCenter:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 106
    :cond_0
    iput-boolean p1, p0, Lcom/narvii/scene/quiz/SceneQuizAnswerParent;->forceCenter:Z

    .line 107
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method
