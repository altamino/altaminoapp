.class public abstract Lcom/narvii/widget/TagRoundView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


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
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput v0, p0, Lcom/narvii/widget/TagRoundView;->DEFAULT_BACKGROUD_COLOR:I

    .line 7
    .line 8
    iput v0, p0, Lcom/narvii/widget/TagRoundView;->BACKGROUND_STYLE_SOLID:I

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    iput v1, p0, Lcom/narvii/widget/TagRoundView;->BACKGROUND_STYLE_SEMITRANSPARENT_WITH_STROKE:I

    .line 12
    .line 13
    iput v0, p0, Lcom/narvii/widget/TagRoundView;->backgroundStyle:I

    .line 14
    .line 15
    iput v0, p0, Lcom/narvii/widget/TagRoundView;->strokeWidth:I

    .line 16
    .line 17
    iput v0, p0, Lcom/narvii/widget/TagRoundView;->backgroundColor:I

    .line 18
    .line 19
    iput-boolean v1, p0, Lcom/narvii/widget/TagRoundView;->isAutoBackground:Z

    .line 20
    const/4 v1, -0x1

    .line 21
    .line 22
    iput v1, p0, Lcom/narvii/widget/TagRoundView;->AUTO_RADIUS:I

    .line 23
    .line 24
    iput v1, p0, Lcom/narvii/widget/TagRoundView;->radius:I

    .line 25
    .line 26
    sget-object v1, Lcom/narvii/lib/R$styleable;->TagRoundView:[I

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 30
    move-result-object p1

    .line 31
    .line 32
    sget p2, Lcom/narvii/lib/R$styleable;->TagRoundView_radius:I

    .line 33
    .line 34
    const/high16 v1, -0x40800000    # -1.0f

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 38
    move-result p2

    .line 39
    float-to-int p2, p2

    .line 40
    .line 41
    iput p2, p0, Lcom/narvii/widget/TagRoundView;->radius:I

    .line 42
    .line 43
    sget p2, Lcom/narvii/lib/R$styleable;->TagRoundView_background_style:I

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 47
    move-result p2

    .line 48
    .line 49
    iput p2, p0, Lcom/narvii/widget/TagRoundView;->backgroundStyle:I

    .line 50
    .line 51
    sget p2, Lcom/narvii/lib/R$styleable;->TagRoundView_background_stroke_width:I

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 55
    move-result-object v0

    .line 56
    .line 57
    const/high16 v1, 0x3f800000    # 1.0f

    .line 58
    .line 59
    .line 60
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 61
    move-result v0

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 65
    move-result p2

    .line 66
    .line 67
    iput p2, p0, Lcom/narvii/widget/TagRoundView;->strokeWidth:I

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 71
    return-void
.end method


# virtual methods
.method protected abstract getAutoBackgroundColor()I
.end method

.method protected getBackgroundDrawable()Landroid/graphics/drawable/GradientDrawable;
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/TagRoundView;->radius:I

    .line 3
    const/4 v1, -0x1

    .line 4
    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 9
    move-result v0

    .line 10
    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 15
    move-result v0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 20
    move-result v0

    .line 21
    :goto_0
    int-to-float v0, v0

    .line 22
    .line 23
    const/high16 v1, 0x40000000    # 2.0f

    .line 24
    div-float/2addr v0, v1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    int-to-float v0, v0

    .line 27
    .line 28
    .line 29
    :goto_1
    invoke-virtual {p0, v0}, Lcom/narvii/widget/TagRoundView;->onRadiusUpdated(F)V

    .line 30
    .line 31
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    .line 32
    .line 33
    .line 34
    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 35
    const/4 v2, 0x0

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/narvii/widget/TagRoundView;->getBackgroundDrawableColor()I

    .line 45
    move-result v0

    .line 46
    .line 47
    iget v2, p0, Lcom/narvii/widget/TagRoundView;->backgroundStyle:I

    .line 48
    const/4 v3, 0x1

    .line 49
    .line 50
    if-ne v2, v3, :cond_2

    .line 51
    .line 52
    .line 53
    const v2, 0x33ffffff

    .line 54
    and-int/2addr v2, v0

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 58
    .line 59
    iget v2, p0, Lcom/narvii/widget/TagRoundView;->strokeWidth:I

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 63
    .line 64
    iget-object v2, p0, Lcom/narvii/widget/TagRoundView;->topicText:Landroid/widget/TextView;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    goto :goto_2

    .line 69
    .line 70
    .line 71
    :cond_2
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 72
    :goto_2
    return-object v1
.end method

.method protected getBackgroundDrawableColor()I
    .locals 1

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/narvii/widget/TagRoundView;->isAutoBackground:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/widget/TagRoundView;->getAutoBackgroundColor()I

    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    iget v0, p0, Lcom/narvii/widget/TagRoundView;->backgroundColor:I

    .line 12
    :goto_0
    return v0
.end method

.method protected abstract getName()Ljava/lang/String;
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    .line 5
    sget v0, Lcom/narvii/lib/R$id;->text:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Landroid/widget/TextView;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/widget/TagRoundView;->topicText:Landroid/widget/TextView;

    .line 14
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/narvii/widget/TagRoundView;->updateBackground()V

    .line 7
    return-void
.end method

.method protected onRadiusUpdated(F)V
    .locals 0

    return-void
.end method

.method public setAutoBackground()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/narvii/widget/TagRoundView;->isAutoBackground:Z

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/narvii/widget/TagRoundView;->isAutoBackground:Z

    iput p1, p0, Lcom/narvii/widget/TagRoundView;->backgroundColor:I

    return-void
.end method

.method public setRadius(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/widget/TagRoundView;->radius:I

    return-void
.end method

.method protected updateBackground()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/widget/TagRoundView;->getBackgroundDrawable()Landroid/graphics/drawable/GradientDrawable;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 8
    return-void
.end method

.method protected updateView()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/TagRoundView;->topicText:Landroid/widget/TextView;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/narvii/widget/TagRoundView;->getName()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/widget/TagRoundView;->updateBackground()V

    .line 15
    return-void
.end method
