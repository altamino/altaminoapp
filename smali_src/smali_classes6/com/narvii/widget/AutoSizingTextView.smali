.class public Lcom/narvii/widget/AutoSizingTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"


# instance fields
.field private autoSizeTextMaxSize:I

.field private autoSizeTextMinSize:I

.field private autoSizeTextStep:I

.field private isAutoSizeText:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/AutoSizingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/widget/AutoSizingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    sget-object v0, Lcom/narvii/lib/R$styleable;->AutoSizingTextView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 5
    sget p3, Lcom/narvii/lib/R$styleable;->AutoSizingTextView_autoSizeText:I

    const/4 v0, 0x1

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/narvii/widget/AutoSizingTextView;->isAutoSizeText:Z

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/high16 p3, 0x41000000    # 8.0f

    mul-float/2addr p1, p3

    float-to-int p1, p1

    iput p1, p0, Lcom/narvii/widget/AutoSizingTextView;->autoSizeTextMinSize:I

    .line 7
    sget p3, Lcom/narvii/lib/R$styleable;->AutoSizingTextView_autoSizeTextMinSize:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/AutoSizingTextView;->autoSizeTextMinSize:I

    .line 8
    sget p1, Lcom/narvii/lib/R$styleable;->AutoSizingTextView_autoSizeTextMaxSize:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/AutoSizingTextView;->autoSizeTextMaxSize:I

    if-nez p1, :cond_0

    .line 9
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/narvii/widget/AutoSizingTextView;->autoSizeTextMaxSize:I

    .line 10
    :cond_0
    sget p1, Lcom/narvii/lib/R$styleable;->AutoSizingTextView_autoSizeTextStep:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/narvii/widget/AutoSizingTextView;->autoSizeTextStep:I

    .line 11
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 12
    invoke-direct {p0}, Lcom/narvii/widget/AutoSizingTextView;->resetAutoSizing()V

    return-void
.end method

.method private fitAutoSize()I
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/AutoSizingTextView;->autoSizeTextMinSize:I

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    iput v1, p0, Lcom/narvii/widget/AutoSizingTextView;->autoSizeTextMinSize:I

    .line 8
    .line 9
    :cond_0
    iget v0, p0, Lcom/narvii/widget/AutoSizingTextView;->autoSizeTextMaxSize:I

    .line 10
    .line 11
    iget v2, p0, Lcom/narvii/widget/AutoSizingTextView;->autoSizeTextMinSize:I

    .line 12
    add-int/2addr v2, v1

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method private resetAutoSizing()V
    .locals 4

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/AutoSizingTextView;->isAutoSizeText:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/narvii/widget/AutoSizingTextView;->fitAutoSize()I

    .line 9
    move-result v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 13
    move-result-object v2

    .line 14
    int-to-float v3, v0

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 18
    .line 19
    iget v2, p0, Lcom/narvii/widget/AutoSizingTextView;->autoSizeTextMinSize:I

    .line 20
    .line 21
    iget v3, p0, Lcom/narvii/widget/AutoSizingTextView;->autoSizeTextStep:I

    .line 22
    .line 23
    .line 24
    invoke-static {p0, v2, v0, v3, v1}, Landroidx/core/widget/TextViewCompat;->h(Landroid/widget/TextView;IIII)V

    .line 25
    goto :goto_0

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-static {p0, v1}, Landroidx/core/widget/TextViewCompat;->i(Landroid/widget/TextView;I)V

    .line 29
    :goto_0
    return-void
.end method


# virtual methods
.method public getAutoSizeTextMaxSize()I
    .locals 1

    iget v0, p0, Lcom/narvii/widget/AutoSizingTextView;->autoSizeTextMaxSize:I

    return v0
.end method

.method public getAutoSizeTextMinSize()I
    .locals 1

    iget v0, p0, Lcom/narvii/widget/AutoSizingTextView;->autoSizeTextMinSize:I

    return v0
.end method

.method public getAutoSizeTextStep()I
    .locals 1

    iget v0, p0, Lcom/narvii/widget/AutoSizingTextView;->autoSizeTextStep:I

    return v0
.end method

.method public isAutoSizeText()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/widget/AutoSizingTextView;->isAutoSizeText:Z

    return v0
.end method

.method public resizingFromMaxSize()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/narvii/widget/AutoSizingTextView;->fitAutoSize()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 8
    move-result-object v1

    .line 9
    int-to-float v0, v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 13
    return-void
.end method

.method public setAutoSizeText(Z)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p1, p0, Lcom/narvii/widget/AutoSizingTextView;->isAutoSizeText:Z

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/widget/AutoSizingTextView;->resetAutoSizing()V

    .line 6
    return-void
.end method

.method public setAutoSizeTextMaxSize(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/widget/AutoSizingTextView;->autoSizeTextMaxSize:I

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/widget/AutoSizingTextView;->resetAutoSizing()V

    .line 6
    return-void
.end method

.method public setAutoSizeTextMinSize(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/widget/AutoSizingTextView;->autoSizeTextMinSize:I

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/widget/AutoSizingTextView;->resetAutoSizing()V

    .line 6
    return-void
.end method

.method public setAutoSizeTextStep(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/widget/AutoSizingTextView;->autoSizeTextStep:I

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/widget/AutoSizingTextView;->resetAutoSizing()V

    .line 6
    return-void
.end method
