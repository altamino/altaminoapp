.class public Lcom/narvii/widget/AutoFitTextView;
.super Landroid/widget/TextView;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/widget/AutofitHelper$OnTextSizeChangeListener;


# instance fields
.field mHelper:Lcom/narvii/widget/AutofitHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/AutoFitTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/widget/AutoFitTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/widget/AutoFitTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p2, p3}, Lcom/narvii/widget/AutofitHelper;->create(Landroid/widget/TextView;Landroid/util/AttributeSet;I)Lcom/narvii/widget/AutofitHelper;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, p0}, Lcom/narvii/widget/AutofitHelper;->addOnTextSizeChangeListener(Lcom/narvii/widget/AutofitHelper$OnTextSizeChangeListener;)Lcom/narvii/widget/AutofitHelper;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/widget/AutoFitTextView;->mHelper:Lcom/narvii/widget/AutofitHelper;

    .line 11
    return-void
.end method


# virtual methods
.method public getAutofitHelper()Lcom/narvii/widget/AutofitHelper;
    .locals 1

    iget-object v0, p0, Lcom/narvii/widget/AutoFitTextView;->mHelper:Lcom/narvii/widget/AutofitHelper;

    return-object v0
.end method

.method public getMaxTextSize()F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/AutoFitTextView;->mHelper:Lcom/narvii/widget/AutofitHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/widget/AutofitHelper;->getMaxTextSize()F

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getMinTextSize()F
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/AutoFitTextView;->mHelper:Lcom/narvii/widget/AutofitHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/widget/AutofitHelper;->getMinTextSize()F

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isSizeToFit()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/AutoFitTextView;->mHelper:Lcom/narvii/widget/AutofitHelper;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/widget/AutofitHelper;->isEnabled()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 7
    move-result p1

    .line 8
    .line 9
    iget-object p2, p0, Lcom/narvii/widget/AutoFitTextView;->mHelper:Lcom/narvii/widget/AutofitHelper;

    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    const/high16 v0, 0x40000000    # 2.0f

    .line 14
    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    const/4 p1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {p2, p1}, Lcom/narvii/widget/AutofitHelper;->setFitHeight(Z)V

    .line 22
    :cond_1
    return-void
.end method

.method public onTextSizeChange(FF)V
    .locals 0

    return-void
.end method

.method public setLines(I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/TextView;->setLines(I)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/widget/AutoFitTextView;->mHelper:Lcom/narvii/widget/AutofitHelper;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/narvii/widget/AutofitHelper;->setMaxLines(I)Lcom/narvii/widget/AutofitHelper;

    .line 11
    :cond_0
    return-void
.end method

.method public setMaxLines(I)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/widget/AutoFitTextView;->mHelper:Lcom/narvii/widget/AutofitHelper;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/narvii/widget/AutofitHelper;->setMaxLines(I)Lcom/narvii/widget/AutofitHelper;

    .line 11
    :cond_0
    return-void
.end method

.method public setMaxTextSize(F)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/widget/AutoFitTextView;->mHelper:Lcom/narvii/widget/AutofitHelper;

    .line 1
    invoke-virtual {v0, p1}, Lcom/narvii/widget/AutofitHelper;->setMaxTextSize(F)Lcom/narvii/widget/AutofitHelper;

    return-void
.end method

.method public setMaxTextSize(IF)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/widget/AutoFitTextView;->mHelper:Lcom/narvii/widget/AutofitHelper;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/narvii/widget/AutofitHelper;->setMaxTextSize(IF)Lcom/narvii/widget/AutofitHelper;

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/AutoFitTextView;->mHelper:Lcom/narvii/widget/AutofitHelper;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/narvii/widget/AutofitHelper;->setMaxWidth(I)V

    .line 8
    :cond_0
    return-void
.end method

.method public setMinTextSize(I)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/widget/AutoFitTextView;->mHelper:Lcom/narvii/widget/AutofitHelper;

    const/4 v1, 0x2

    int-to-float p1, p1

    .line 1
    invoke-virtual {v0, v1, p1}, Lcom/narvii/widget/AutofitHelper;->setMinTextSize(IF)Lcom/narvii/widget/AutofitHelper;

    return-void
.end method

.method public setMinTextSize(IF)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/widget/AutoFitTextView;->mHelper:Lcom/narvii/widget/AutofitHelper;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/narvii/widget/AutofitHelper;->setMinTextSize(IF)Lcom/narvii/widget/AutofitHelper;

    return-void
.end method

.method public setSizeToFit()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/narvii/widget/AutoFitTextView;->setSizeToFit(Z)V

    return-void
.end method

.method public setSizeToFit(Z)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/widget/AutoFitTextView;->mHelper:Lcom/narvii/widget/AutofitHelper;

    .line 2
    invoke-virtual {v0, p1}, Lcom/narvii/widget/AutofitHelper;->setEnabled(Z)Lcom/narvii/widget/AutofitHelper;

    return-void
.end method

.method public setTextSize(IF)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/widget/AutoFitTextView;->mHelper:Lcom/narvii/widget/AutofitHelper;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1, p2}, Lcom/narvii/widget/AutofitHelper;->setTextSize(IF)V

    .line 11
    :cond_0
    return-void
.end method
