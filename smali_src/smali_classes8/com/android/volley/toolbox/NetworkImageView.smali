.class public Lcom/android/volley/toolbox/NetworkImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private mDefaultImageId:I

.field private mErrorImageId:I

.field private mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

.field private mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/volley/toolbox/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static bridge synthetic a(Lcom/android/volley/toolbox/NetworkImageView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/volley/toolbox/NetworkImageView;->mDefaultImageId:I

    return p0
.end method

.method static bridge synthetic b(Lcom/android/volley/toolbox/NetworkImageView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/volley/toolbox/NetworkImageView;->mErrorImageId:I

    return p0
.end method

.method private setDefaultImageOrNull()V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->mDefaultImageId:I

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 13
    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "me"    # Landroid/view/MotionEvent;

    const-string v0, "com.android.volley"

    invoke-static {v0, p0, p1}, Lcom/safedk/android/analytics/brandsafety/DetectTouchUtils;->viewOnTouch(Ljava/lang/String;Landroid/view/View;Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroid/widget/ImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected drawableStateChanged()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7
    return-void
.end method

.method loadImageIfNecessary(Z)V
    .locals 8

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 8
    move-result v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    .line 12
    move-result-object v7

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x1

    .line 18
    const/4 v4, 0x0

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 27
    const/4 v5, -0x2

    .line 28
    .line 29
    if-ne v2, v5, :cond_0

    .line 30
    move v2, v3

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v2, v4

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 36
    move-result-object v6

    .line 37
    .line 38
    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 39
    .line 40
    if-ne v6, v5, :cond_1

    .line 41
    move v5, v3

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move v5, v4

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    move v2, v4

    .line 46
    move v5, v2

    .line 47
    .line 48
    :goto_1
    if-eqz v2, :cond_3

    .line 49
    .line 50
    if-eqz v5, :cond_3

    .line 51
    goto :goto_2

    .line 52
    :cond_3
    move v3, v4

    .line 53
    .line 54
    :goto_2
    if-nez v0, :cond_4

    .line 55
    .line 56
    if-nez v1, :cond_4

    .line 57
    .line 58
    if-nez v3, :cond_4

    .line 59
    return-void

    .line 60
    .line 61
    :cond_4
    iget-object v3, p0, Lcom/android/volley/toolbox/NetworkImageView;->mUrl:Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    move-result v3

    .line 66
    .line 67
    if-eqz v3, :cond_6

    .line 68
    .line 69
    iget-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 70
    .line 71
    if-eqz p1, :cond_5

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    .line 75
    const/4 p1, 0x0

    .line 76
    .line 77
    iput-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 78
    .line 79
    .line 80
    :cond_5
    invoke-direct {p0}, Lcom/android/volley/toolbox/NetworkImageView;->setDefaultImageOrNull()V

    .line 81
    return-void

    .line 82
    .line 83
    :cond_6
    iget-object v3, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 84
    .line 85
    if-eqz v3, :cond_8

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getRequestUrl()Ljava/lang/String;

    .line 89
    move-result-object v3

    .line 90
    .line 91
    if-eqz v3, :cond_8

    .line 92
    .line 93
    iget-object v3, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getRequestUrl()Ljava/lang/String;

    .line 97
    move-result-object v3

    .line 98
    .line 99
    iget-object v6, p0, Lcom/android/volley/toolbox/NetworkImageView;->mUrl:Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    move-result v3

    .line 104
    .line 105
    if-eqz v3, :cond_7

    .line 106
    return-void

    .line 107
    .line 108
    :cond_7
    iget-object v3, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    .line 112
    .line 113
    .line 114
    invoke-direct {p0}, Lcom/android/volley/toolbox/NetworkImageView;->setDefaultImageOrNull()V

    .line 115
    .line 116
    :cond_8
    if-eqz v2, :cond_9

    .line 117
    move v0, v4

    .line 118
    .line 119
    :cond_9
    if-eqz v5, :cond_a

    .line 120
    move v6, v4

    .line 121
    goto :goto_3

    .line 122
    :cond_a
    move v6, v1

    .line 123
    .line 124
    :goto_3
    iget-object v2, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    .line 125
    .line 126
    iget-object v3, p0, Lcom/android/volley/toolbox/NetworkImageView;->mUrl:Ljava/lang/String;

    .line 127
    .line 128
    new-instance v4, Lcom/android/volley/toolbox/NetworkImageView$1;

    .line 129
    .line 130
    .line 131
    invoke-direct {v4, p0, p1}, Lcom/android/volley/toolbox/NetworkImageView$1;-><init>(Lcom/android/volley/toolbox/NetworkImageView;Z)V

    .line 132
    move v5, v0

    .line 133
    .line 134
    .line 135
    invoke-virtual/range {v2 .. v7}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;IILandroid/widget/ImageView$ScaleType;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 136
    move-result-object p1

    .line 137
    .line 138
    iput-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 139
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->cancelRequest()V

    .line 8
    const/4 v0, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageContainer:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 17
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 4
    const/4 p1, 0x1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/NetworkImageView;->loadImageIfNecessary(Z)V

    .line 8
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    const-string v0, "com.android.volley"

    const/4 v0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/volley/toolbox/NetworkImageView;->setMeasuredDimension(II)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    return-void
.end method

.method public setDefaultImageResId(I)V
    .locals 0

    iput p1, p0, Lcom/android/volley/toolbox/NetworkImageView;->mDefaultImageId:I

    return-void
.end method

.method public setErrorImageResId(I)V
    .locals 0

    iput p1, p0, Lcom/android/volley/toolbox/NetworkImageView;->mErrorImageId:I

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader;)V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/android/volley/toolbox/Threads;->throwIfNotOnMainThread()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView;->mUrl:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/android/volley/toolbox/NetworkImageView;->mImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    .line 8
    const/4 p1, 0x0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/NetworkImageView;->loadImageIfNecessary(Z)V

    .line 12
    return-void
.end method
