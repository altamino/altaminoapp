.class public Lcom/narvii/widget/AutoFitTextView;
.super Landroid/widget/TextView;
.source "AutoFitTextView.java"

# interfaces
.implements Lcom/narvii/widget/AutofitHelper$OnTextSizeChangeListener;


# instance fields
.field mHelper:Lcom/narvii/widget/AutofitHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/AutoFitTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/widget/AutoFitTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/widget/AutoFitTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 30
    invoke-static {p0, p2, p3}, Lcom/narvii/widget/AutofitHelper;->create(Landroid/widget/TextView;Landroid/util/AttributeSet;I)Lcom/narvii/widget/AutofitHelper;

    move-result-object p1

    .line 31
    invoke-virtual {p1, p0}, Lcom/narvii/widget/AutofitHelper;->addOnTextSizeChangeListener(Lcom/narvii/widget/AutofitHelper$OnTextSizeChangeListener;)Lcom/narvii/widget/AutofitHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/widget/AutoFitTextView;->mHelper:Lcom/narvii/widget/AutofitHelper;

    return-void
.end method


# virtual methods
.method public getAutofitHelper()Lcom/narvii/widget/AutofitHelper;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/narvii/widget/AutoFitTextView;->mHelper:Lcom/narvii/widget/AutofitHelper;

    return-object v0
.end method

.method public getMaxTextSize()F
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/narvii/widget/AutoFitTextView;->mHelper:Lcom/narvii/widget/AutofitHelper;

    invoke-virtual {v0}, Lcom/narvii/widget/AutofitHelper;->getMaxTextSize()F

    move-result v0

    return v0
.end method

.method public getMinTextSize()F
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/narvii/widget/AutoFitTextView;->mHelper:Lcom/narvii/widget/AutofitHelper;

    invoke-virtual {v0}, Lcom/narvii/widget/AutofitHelper;->getMinTextSize()F

    move-result v0

    return v0
.end method

.method public isSizeToFit()Z
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/narvii/widget/AutoFitTextView;->mHelper:Lcom/narvii/widget/AutofitHelper;

    invoke-virtual {v0}, Lcom/narvii/widget/AutofitHelper;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 44
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 45
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 46
    iget-object p2, p0, Lcom/narvii/widget/AutoFitTextView;->mHelper:Lcom/narvii/widget/AutofitHelper;

    if-eqz p2, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 47
    :goto_0
    invoke-virtual {p2, p1}, Lcom/narvii/widget/AutofitHelper;->setFitHeight(Z)V

    :cond_1
    return-void
.end method

.method public onTextSizeChange(FF)V
    .locals 0

    return-void
.end method

.method public setLines(I)V
    .locals 1

    .line 65
    invoke-super {p0, p1}, Landroid/widget/TextView;->setLines(I)V

    .line 66
    iget-object v0, p0, Lcom/narvii/widget/AutoFitTextView;->mHelper:Lcom/narvii/widget/AutofitHelper;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0, p1}, Lcom/narvii/widget/AutofitHelper;->setMaxLines(I)Lcom/narvii/widget/AutofitHelper;

    :cond_0
    return-void
.end method

.method public setMaxLines(I)V
    .locals 1

    .line 73
    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 74
    iget-object v0, p0, Lcom/narvii/widget/AutoFitTextView;->mHelper:Lcom/narvii/widget/AutofitHelper;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0, p1}, Lcom/narvii/widget/AutofitHelper;->setMaxLines(I)Lcom/narvii/widget/AutofitHelper;

    :cond_0
    return-void
.end method

.method public setMaxTextSize(F)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/narvii/widget/AutoFitTextView;->mHelper:Lcom/narvii/widget/AutofitHelper;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/AutofitHelper;->setMaxTextSize(F)Lcom/narvii/widget/AutofitHelper;

    return-void
.end method

.method public setMaxTextSize(IF)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/narvii/widget/AutoFitTextView;->mHelper:Lcom/narvii/widget/AutofitHelper;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/widget/AutofitHelper;->setMaxTextSize(IF)Lcom/narvii/widget/AutofitHelper;

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/narvii/widget/AutoFitTextView;->mHelper:Lcom/narvii/widget/AutofitHelper;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0, p1}, Lcom/narvii/widget/AutofitHelper;->setMaxWidth(I)V

    :cond_0
    return-void
.end method

.method public setMinTextSize(I)V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/narvii/widget/AutoFitTextView;->mHelper:Lcom/narvii/widget/AutofitHelper;

    int-to-float p1, p1

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/narvii/widget/AutofitHelper;->setMinTextSize(IF)Lcom/narvii/widget/AutofitHelper;

    return-void
.end method

.method public setMinTextSize(IF)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/narvii/widget/AutoFitTextView;->mHelper:Lcom/narvii/widget/AutofitHelper;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/widget/AutofitHelper;->setMinTextSize(IF)Lcom/narvii/widget/AutofitHelper;

    return-void
.end method

.method public setSizeToFit()V
    .locals 1

    const/4 v0, 0x1

    .line 95
    invoke-virtual {p0, v0}, Lcom/narvii/widget/AutoFitTextView;->setSizeToFit(Z)V

    return-void
.end method

.method public setSizeToFit(Z)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/narvii/widget/AutoFitTextView;->mHelper:Lcom/narvii/widget/AutofitHelper;

    invoke-virtual {v0, p1}, Lcom/narvii/widget/AutofitHelper;->setEnabled(Z)Lcom/narvii/widget/AutofitHelper;

    return-void
.end method

.method public setTextSize(IF)V
    .locals 1

    .line 36
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 37
    iget-object v0, p0, Lcom/narvii/widget/AutoFitTextView;->mHelper:Lcom/narvii/widget/AutofitHelper;

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0, p1, p2}, Lcom/narvii/widget/AutofitHelper;->setTextSize(IF)V

    :cond_0
    return-void
.end method
