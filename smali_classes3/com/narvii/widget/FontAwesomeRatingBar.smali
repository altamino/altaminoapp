.class public Lcom/narvii/widget/FontAwesomeRatingBar;
.super Landroid/widget/LinearLayout;
.source "FontAwesomeRatingBar.java"


# instance fields
.field private color0:I

.field private color1:I

.field private draw0:Lcom/narvii/util/FontAwesomeDrawable;

.field private draw1:Lcom/narvii/util/FontAwesomeDrawable;

.field private lp:Landroid/widget/LinearLayout$LayoutParams;

.field private max:I

.field private rating:I

.field private text0:Ljava/lang/String;

.field private text1:Ljava/lang/String;

.field public touchCallback:Lcom/narvii/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/narvii/util/Callback<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    sget-object v0, Lcom/narvii/lib/R$styleable;->FontAwesomeRatingBar:[I

    sget v1, Lcom/narvii/lib/R$style;->FontAwesomeRatingBar:I

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 31
    sget v0, Lcom/narvii/lib/R$styleable;->FontAwesomeRatingBar_rating0Text:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->text0:Ljava/lang/String;

    .line 32
    sget v0, Lcom/narvii/lib/R$styleable;->FontAwesomeRatingBar_rating1Text:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->text1:Ljava/lang/String;

    .line 33
    sget v0, Lcom/narvii/lib/R$styleable;->FontAwesomeRatingBar_rating0Color:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->color0:I

    .line 34
    sget v0, Lcom/narvii/lib/R$styleable;->FontAwesomeRatingBar_rating1Color:I

    const/high16 v2, -0x1000000

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->color1:I

    .line 36
    sget v0, Lcom/narvii/lib/R$styleable;->FontAwesomeRatingBar_ratingMax:I

    const/4 v2, 0x5

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->max:I

    .line 37
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 39
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p2, v1, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object p2, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->lp:Landroid/widget/LinearLayout$LayoutParams;

    .line 41
    iget-object p2, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->text0:Ljava/lang/String;

    const/high16 v0, 0x3f400000    # 0.75f

    if-eqz p2, :cond_0

    .line 42
    new-instance v1, Lcom/narvii/util/FontAwesomeDrawable;

    invoke-direct {v1, p1, p2}, Lcom/narvii/util/FontAwesomeDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->draw0:Lcom/narvii/util/FontAwesomeDrawable;

    .line 43
    iget-object p2, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->draw0:Lcom/narvii/util/FontAwesomeDrawable;

    invoke-virtual {p2, v0}, Lcom/narvii/util/FontAwesomeDrawable;->setFocalArea(F)V

    .line 44
    iget-object p2, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->draw0:Lcom/narvii/util/FontAwesomeDrawable;

    iget v1, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->color0:I

    invoke-virtual {p2, v1}, Lcom/narvii/util/FontAwesomeDrawable;->setColor(I)V

    .line 46
    :cond_0
    iget-object p2, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->text1:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 47
    new-instance v1, Lcom/narvii/util/FontAwesomeDrawable;

    invoke-direct {v1, p1, p2}, Lcom/narvii/util/FontAwesomeDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->draw1:Lcom/narvii/util/FontAwesomeDrawable;

    .line 48
    iget-object p1, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->draw1:Lcom/narvii/util/FontAwesomeDrawable;

    invoke-virtual {p1, v0}, Lcom/narvii/util/FontAwesomeDrawable;->setFocalArea(F)V

    .line 49
    iget-object p1, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->draw1:Lcom/narvii/util/FontAwesomeDrawable;

    iget p2, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->color1:I

    invoke-virtual {p1, p2}, Lcom/narvii/util/FontAwesomeDrawable;->setColor(I)V

    :cond_1
    return-void
.end method

.method private update()V
    .locals 3

    .line 70
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    :goto_0
    iget v1, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->max:I

    if-ge v0, v1, :cond_0

    .line 71
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 72
    iget-object v2, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->lp:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_0
    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->max:I

    if-le v0, v1, :cond_1

    .line 75
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 78
    :goto_2
    iget v1, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->max:I

    if-ge v0, v1, :cond_3

    .line 79
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 80
    iget v2, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->rating:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->draw1:Lcom/narvii/util/FontAwesomeDrawable;

    goto :goto_3

    :cond_2
    iget-object v2, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->draw0:Lcom/narvii/util/FontAwesomeDrawable;

    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method


# virtual methods
.method public getRating()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->rating:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 55
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 57
    invoke-direct {p0}, Lcom/narvii/widget/FontAwesomeRatingBar;->update()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 86
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    iget v0, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->max:I

    if-nez v0, :cond_1

    return v1

    .line 93
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->max:I

    div-int/2addr v0, v2

    .line 95
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    mul-int/lit8 v2, v0, 0x3

    div-int/lit8 v2, v2, 0x4

    add-int/2addr p1, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr p1, v2

    div-int/2addr p1, v0

    .line 96
    iget v0, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->rating:I

    if-eq v0, p1, :cond_2

    .line 97
    invoke-virtual {p0, p1}, Lcom/narvii/widget/FontAwesomeRatingBar;->setRating(I)V

    .line 98
    iget-object v0, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->touchCallback:Lcom/narvii/util/Callback;

    if-eqz v0, :cond_2

    .line 99
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_2
    return v1

    .line 105
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setRating(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->rating:I

    .line 66
    invoke-direct {p0}, Lcom/narvii/widget/FontAwesomeRatingBar;->update()V

    return-void
.end method
