.class public abstract Lcom/narvii/widget/TagRoundView;
.super Landroid/widget/FrameLayout;
.source "TagRoundView.java"


# instance fields
.field public final AUTO_RADIUS:I

.field public final BACKGROUND_STYLE_SEMITRANSPARENT_WITH_STROKE:I

.field public final BACKGROUND_STYLE_SOLID:I

.field protected final DEFAULT_BACKGROUD_COLOR:I

.field private backgroundColor:I

.field protected backgroundStyle:I

.field private isAutoBackground:Z

.field private radius:I

.field protected strokeWidth:I

.field protected topicText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/narvii/widget/TagRoundView;->DEFAULT_BACKGROUD_COLOR:I

    .line 24
    iput v0, p0, Lcom/narvii/widget/TagRoundView;->BACKGROUND_STYLE_SOLID:I

    const/4 v1, 0x1

    .line 25
    iput v1, p0, Lcom/narvii/widget/TagRoundView;->BACKGROUND_STYLE_SEMITRANSPARENT_WITH_STROKE:I

    .line 27
    iput v0, p0, Lcom/narvii/widget/TagRoundView;->backgroundStyle:I

    .line 28
    iput v0, p0, Lcom/narvii/widget/TagRoundView;->strokeWidth:I

    .line 31
    iput v0, p0, Lcom/narvii/widget/TagRoundView;->backgroundColor:I

    .line 32
    iput-boolean v1, p0, Lcom/narvii/widget/TagRoundView;->isAutoBackground:Z

    const/4 v1, -0x1

    .line 34
    iput v1, p0, Lcom/narvii/widget/TagRoundView;->AUTO_RADIUS:I

    .line 35
    iput v1, p0, Lcom/narvii/widget/TagRoundView;->radius:I

    .line 39
    sget-object v1, Lcom/narvii/lib/R$styleable;->TagRoundView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 40
    sget p2, Lcom/narvii/lib/R$styleable;->TagRoundView_radius:I

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/narvii/widget/TagRoundView;->radius:I

    .line 41
    sget p2, Lcom/narvii/lib/R$styleable;->TagRoundView_background_style:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/TagRoundView;->backgroundStyle:I

    .line 42
    sget p2, Lcom/narvii/lib/R$styleable;->TagRoundView_background_stroke_width:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/narvii/widget/TagRoundView;->strokeWidth:I

    .line 43
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected abstract getAutoBackgroundColor()I
.end method

.method protected getBackgroundDrawable()Landroid/graphics/drawable/GradientDrawable;
    .locals 4

    .line 86
    iget v0, p0, Lcom/narvii/widget/TagRoundView;->radius:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 87
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    goto :goto_1

    :cond_1
    int-to-float v0, v0

    .line 91
    :goto_1
    invoke-virtual {p0, v0}, Lcom/narvii/widget/TagRoundView;->onRadiusUpdated(F)V

    .line 93
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v2, 0x0

    .line 94
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 95
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 97
    invoke-virtual {p0}, Lcom/narvii/widget/TagRoundView;->getBackgroundDrawableColor()I

    move-result v0

    .line 98
    iget v2, p0, Lcom/narvii/widget/TagRoundView;->backgroundStyle:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const v2, 0x33ffffff

    and-int/2addr v2, v0

    .line 99
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 100
    iget v2, p0, Lcom/narvii/widget/TagRoundView;->strokeWidth:I

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 101
    iget-object v2, p0, Lcom/narvii/widget/TagRoundView;->topicText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 105
    :cond_2
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :goto_2
    return-object v1
.end method

.method protected getBackgroundDrawableColor()I
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcom/narvii/widget/TagRoundView;->isAutoBackground:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/narvii/widget/TagRoundView;->getAutoBackgroundColor()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/narvii/widget/TagRoundView;->backgroundColor:I

    :goto_0
    return v0
.end method

.method protected abstract getName()Ljava/lang/String;
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 48
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 49
    sget v0, Lcom/narvii/lib/R$id;->text:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/widget/TagRoundView;->topicText:Landroid/widget/TextView;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 67
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 68
    invoke-virtual {p0}, Lcom/narvii/widget/TagRoundView;->updateBackground()V

    return-void
.end method

.method protected onRadiusUpdated(F)V
    .locals 0

    return-void
.end method

.method public setAutoBackground()V
    .locals 1

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/narvii/widget/TagRoundView;->isAutoBackground:Z

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/narvii/widget/TagRoundView;->isAutoBackground:Z

    .line 54
    iput p1, p0, Lcom/narvii/widget/TagRoundView;->backgroundColor:I

    return-void
.end method

.method public setRadius(I)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/narvii/widget/TagRoundView;->radius:I

    return-void
.end method

.method protected updateBackground()V
    .locals 1

    .line 81
    invoke-virtual {p0}, Lcom/narvii/widget/TagRoundView;->getBackgroundDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected updateView()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/narvii/widget/TagRoundView;->topicText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/narvii/widget/TagRoundView;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/widget/TagRoundView;->updateBackground()V

    return-void
.end method
