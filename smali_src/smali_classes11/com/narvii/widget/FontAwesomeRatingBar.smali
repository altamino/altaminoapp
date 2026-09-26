.class public Lcom/narvii/widget/FontAwesomeRatingBar;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    sget-object v0, Lcom/narvii/lib/R$styleable;->FontAwesomeRatingBar:[I

    .line 6
    .line 7
    sget v1, Lcom/narvii/lib/R$style;->FontAwesomeRatingBar:I

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 11
    move-result-object p2

    .line 12
    .line 13
    sget v0, Lcom/narvii/lib/R$styleable;->FontAwesomeRatingBar_rating0Text:I

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    iput-object v0, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->text0:Ljava/lang/String;

    .line 20
    .line 21
    sget v0, Lcom/narvii/lib/R$styleable;->FontAwesomeRatingBar_rating1Text:I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    iput-object v0, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->text1:Ljava/lang/String;

    .line 28
    .line 29
    sget v0, Lcom/narvii/lib/R$styleable;->FontAwesomeRatingBar_rating0Color:I

    .line 30
    const/4 v1, 0x0

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 34
    move-result v0

    .line 35
    .line 36
    iput v0, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->color0:I

    .line 37
    .line 38
    sget v0, Lcom/narvii/lib/R$styleable;->FontAwesomeRatingBar_rating1Color:I

    .line 39
    .line 40
    const/high16 v2, -0x1000000

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 44
    move-result v0

    .line 45
    .line 46
    iput v0, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->color1:I

    .line 47
    .line 48
    sget v0, Lcom/narvii/lib/R$styleable;->FontAwesomeRatingBar_ratingMax:I

    .line 49
    const/4 v2, 0x5

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 53
    move-result v0

    .line 54
    .line 55
    iput v0, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->max:I

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    .line 60
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 61
    const/4 v0, -0x1

    .line 62
    .line 63
    const/high16 v2, 0x3f800000    # 1.0f

    .line 64
    .line 65
    .line 66
    invoke-direct {p2, v1, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 67
    .line 68
    iput-object p2, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->lp:Landroid/widget/LinearLayout$LayoutParams;

    .line 69
    .line 70
    iget-object p2, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->text0:Ljava/lang/String;

    .line 71
    .line 72
    const/high16 v0, 0x3f400000    # 0.75f

    .line 73
    .line 74
    if-eqz p2, :cond_0

    .line 75
    .line 76
    new-instance p2, Lcom/narvii/util/FontAwesomeDrawable;

    .line 77
    .line 78
    iget-object v1, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->text0:Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    invoke-direct {p2, p1, v1}, Lcom/narvii/util/FontAwesomeDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 82
    .line 83
    iput-object p2, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->draw0:Lcom/narvii/util/FontAwesomeDrawable;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, v0}, Lcom/narvii/util/FontAwesomeDrawable;->setFocalArea(F)V

    .line 87
    .line 88
    iget-object p2, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->draw0:Lcom/narvii/util/FontAwesomeDrawable;

    .line 89
    .line 90
    iget v1, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->color0:I

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2, v1}, Lcom/narvii/util/FontAwesomeDrawable;->setColor(I)V

    .line 94
    .line 95
    :cond_0
    iget-object p2, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->text1:Ljava/lang/String;

    .line 96
    .line 97
    if-eqz p2, :cond_1

    .line 98
    .line 99
    new-instance p2, Lcom/narvii/util/FontAwesomeDrawable;

    .line 100
    .line 101
    iget-object v1, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->text1:Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    invoke-direct {p2, p1, v1}, Lcom/narvii/util/FontAwesomeDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    .line 106
    iput-object p2, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->draw1:Lcom/narvii/util/FontAwesomeDrawable;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2, v0}, Lcom/narvii/util/FontAwesomeDrawable;->setFocalArea(F)V

    .line 110
    .line 111
    iget-object p1, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->draw1:Lcom/narvii/util/FontAwesomeDrawable;

    .line 112
    .line 113
    iget p2, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->color1:I

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, p2}, Lcom/narvii/util/FontAwesomeDrawable;->setColor(I)V

    .line 117
    :cond_1
    return-void
.end method

.method private update()V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    .line 6
    :goto_0
    iget v1, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->max:I

    .line 7
    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Landroid/widget/ImageView;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    iget-object v2, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->lp:Landroid/widget/LinearLayout$LayoutParams;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 25
    goto :goto_0

    .line 26
    .line 27
    .line 28
    :cond_0
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 29
    move-result v0

    .line 30
    .line 31
    iget v1, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->max:I

    .line 32
    .line 33
    if-le v0, v1, :cond_1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 37
    move-result v0

    .line 38
    .line 39
    add-int/lit8 v0, v0, -0x1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/4 v0, 0x0

    .line 45
    .line 46
    :goto_2
    iget v1, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->max:I

    .line 47
    .line 48
    if-ge v0, v1, :cond_3

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    check-cast v1, Landroid/widget/ImageView;

    .line 55
    .line 56
    iget v2, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->rating:I

    .line 57
    .line 58
    if-ge v0, v2, :cond_2

    .line 59
    .line 60
    iget-object v2, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->draw1:Lcom/narvii/util/FontAwesomeDrawable;

    .line 61
    goto :goto_3

    .line 62
    .line 63
    :cond_2
    iget-object v2, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->draw0:Lcom/narvii/util/FontAwesomeDrawable;

    .line 64
    .line 65
    .line 66
    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    .line 68
    add-int/lit8 v0, v0, 0x1

    .line 69
    goto :goto_2

    .line 70
    :cond_3
    return-void
.end method


# virtual methods
.method public getRating()I
    .locals 1

    iget v0, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->rating:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/narvii/widget/FontAwesomeRatingBar;->update()V

    .line 7
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    const/4 v2, 0x2

    .line 17
    .line 18
    if-eq v0, v2, :cond_0

    .line 19
    goto :goto_0

    .line 20
    .line 21
    :cond_0
    iget v0, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->max:I

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    return v1

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 28
    move-result v0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 32
    move-result v2

    .line 33
    sub-int/2addr v0, v2

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 37
    move-result v2

    .line 38
    sub-int/2addr v0, v2

    .line 39
    .line 40
    iget v2, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->max:I

    .line 41
    div-int/2addr v0, v2

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 45
    move-result p1

    .line 46
    float-to-int p1, p1

    .line 47
    .line 48
    mul-int/lit8 v2, v0, 0x3

    .line 49
    .line 50
    div-int/lit8 v2, v2, 0x4

    .line 51
    add-int/2addr p1, v2

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 55
    move-result v2

    .line 56
    sub-int/2addr p1, v2

    .line 57
    div-int/2addr p1, v0

    .line 58
    .line 59
    iget v0, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->rating:I

    .line 60
    .line 61
    if-eq v0, p1, :cond_2

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p1}, Lcom/narvii/widget/FontAwesomeRatingBar;->setRating(I)V

    .line 65
    .line 66
    iget-object v0, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->touchCallback:Lcom/narvii/util/Callback;

    .line 67
    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    .line 71
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    move-result-object p1

    .line 73
    .line 74
    .line 75
    invoke-interface {v0, p1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 76
    :cond_2
    return v1

    .line 77
    .line 78
    .line 79
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 80
    move-result p1

    .line 81
    return p1
.end method

.method public setRating(I)V
    .locals 0

    .line 1
    .line 2
    iput p1, p0, Lcom/narvii/widget/FontAwesomeRatingBar;->rating:I

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/widget/FontAwesomeRatingBar;->update()V

    .line 6
    return-void
.end method
