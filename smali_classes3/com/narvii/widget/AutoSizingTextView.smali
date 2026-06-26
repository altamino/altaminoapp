.class public Lcom/narvii/widget/AutoSizingTextView;
.super Landroid/support/v7/widget/AppCompatTextView;
.source "AutoSizingTextView.java"


# instance fields
.field private autoSizeTextMaxSize:I

.field private autoSizeTextMinSize:I

.field private autoSizeTextStep:I

.field private isAutoSizeText:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/AutoSizingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/widget/AutoSizingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    sget-object v0, Lcom/narvii/lib/R$styleable;->AutoSizingTextView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 35
    sget p3, Lcom/narvii/lib/R$styleable;->AutoSizingTextView_autoSizeText:I

    const/4 v0, 0x1

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/narvii/widget/AutoSizingTextView;->isAutoSizeText:Z

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/high16 p3, 0x41000000    # 8.0f

    mul-float p1, p1, p3

    float-to-int p1, p1

    .line 38
    iput p1, p0, Lcom/narvii/widget/AutoSizingTextView;->autoSizeTextMinSize:I

    .line 39
    sget p1, Lcom/narvii/lib/R$styleable;->AutoSizingTextView_autoSizeTextMinSize:I

    iget p3, p0, Lcom/narvii/widget/AutoSizingTextView;->autoSizeTextMinSize:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/AutoSizingTextView;->autoSizeTextMinSize:I

    .line 41
    sget p1, Lcom/narvii/lib/R$styleable;->AutoSizingTextView_autoSizeTextMaxSize:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/AutoSizingTextView;->autoSizeTextMaxSize:I

    .line 42
    iget p1, p0, Lcom/narvii/widget/AutoSizingTextView;->autoSizeTextMaxSize:I

    if-nez p1, :cond_0

    .line 43
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/narvii/widget/AutoSizingTextView;->autoSizeTextMaxSize:I

    .line 46
    :cond_0
    sget p1, Lcom/narvii/lib/R$styleable;->AutoSizingTextView_autoSizeTextStep:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/AutoSizingTextView;->autoSizeTextStep:I

    .line 48
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    invoke-direct {p0}, Lcom/narvii/widget/AutoSizingTextView;->resetAutoSizing()V

    return-void
.end method

.method private fitAutoSize()I
    .locals 3

    .line 121
    iget v0, p0, Lcom/narvii/widget/AutoSizingTextView;->autoSizeTextMinSize:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 122
    iput v1, p0, Lcom/narvii/widget/AutoSizingTextView;->autoSizeTextMinSize:I

    .line 124
    :cond_0
    iget v0, p0, Lcom/narvii/widget/AutoSizingTextView;->autoSizeTextMaxSize:I

    iget v2, p0, Lcom/narvii/widget/AutoSizingTextView;->autoSizeTextMinSize:I

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private resetAutoSizing()V
    .locals 4

    .line 111
    iget-boolean v0, p0, Lcom/narvii/widget/AutoSizingTextView;->isAutoSizeText:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/narvii/widget/AutoSizingTextView;->fitAutoSize()I

    move-result v0

    .line 113
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 114
    iget v2, p0, Lcom/narvii/widget/AutoSizingTextView;->autoSizeTextMinSize:I

    iget v3, p0, Lcom/narvii/widget/AutoSizingTextView;->autoSizeTextStep:I

    invoke-static {p0, v2, v0, v3, v1}, Landroid/support/v4/widget/TextViewCompat;->setAutoSizeTextTypeUniformWithConfiguration(Landroid/widget/TextView;IIII)V

    goto :goto_0

    .line 116
    :cond_0
    invoke-static {p0, v1}, Landroid/support/v4/widget/TextViewCompat;->setAutoSizeTextTypeWithDefaults(Landroid/widget/TextView;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getAutoSizeTextMaxSize()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/narvii/widget/AutoSizingTextView;->autoSizeTextMaxSize:I

    return v0
.end method

.method public getAutoSizeTextMinSize()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/narvii/widget/AutoSizingTextView;->autoSizeTextMinSize:I

    return v0
.end method

.method public getAutoSizeTextStep()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/narvii/widget/AutoSizingTextView;->autoSizeTextStep:I

    return v0
.end method

.method public isAutoSizeText()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/narvii/widget/AutoSizingTextView;->isAutoSizeText:Z

    return v0
.end method

.method public resizingFromMaxSize()V
    .locals 2

    .line 106
    invoke-direct {p0}, Lcom/narvii/widget/AutoSizingTextView;->fitAutoSize()I

    move-result v0

    .line 107
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method

.method public setAutoSizeText(Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/narvii/widget/AutoSizingTextView;->isAutoSizeText:Z

    .line 59
    invoke-direct {p0}, Lcom/narvii/widget/AutoSizingTextView;->resetAutoSizing()V

    return-void
.end method

.method public setAutoSizeTextMaxSize(I)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/narvii/widget/AutoSizingTextView;->autoSizeTextMaxSize:I

    .line 77
    invoke-direct {p0}, Lcom/narvii/widget/AutoSizingTextView;->resetAutoSizing()V

    return-void
.end method

.method public setAutoSizeTextMinSize(I)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/narvii/widget/AutoSizingTextView;->autoSizeTextMinSize:I

    .line 68
    invoke-direct {p0}, Lcom/narvii/widget/AutoSizingTextView;->resetAutoSizing()V

    return-void
.end method

.method public setAutoSizeTextStep(I)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/narvii/widget/AutoSizingTextView;->autoSizeTextStep:I

    .line 86
    invoke-direct {p0}, Lcom/narvii/widget/AutoSizingTextView;->resetAutoSizing()V

    return-void
.end method
