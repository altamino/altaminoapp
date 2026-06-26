.class public Lcom/narvii/widget/BackgroundPickerView;
.super Landroid/widget/RelativeLayout;
.source "BackgroundPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/BackgroundPickerView$OnPrePickCallback;
    }
.end annotation


# static fields
.field public static final IMAGE_BACKGROUND:I = 0x2710


# instance fields
.field backgroundPost:Lcom/narvii/image/BackgroundSource;

.field backgroundPreview:Lcom/narvii/widget/NVImageView;

.field backgroundText:Ljava/lang/String;

.field backgroundTextView:Landroid/widget/TextView;

.field chooseBackgroundText:Ljava/lang/String;

.field isGlobal:Z

.field isLite:Z

.field private onPrePickCallback:Lcom/narvii/widget/BackgroundPickerView$OnPrePickCallback;

.field pickerIcon:Landroid/widget/ImageView;

.field redLinePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setWillNotDraw(Z)V

    .line 51
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/narvii/widget/BackgroundPickerView;->redLinePaint:Landroid/graphics/Paint;

    .line 52
    iget-object v1, p0, Lcom/narvii/widget/BackgroundPickerView;->redLinePaint:Landroid/graphics/Paint;

    const/high16 v3, -0x10000

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget-object v1, p0, Lcom/narvii/widget/BackgroundPickerView;->redLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 55
    sget-object v1, Lcom/narvii/amino/R$styleable;->BackgroundPickerView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x3

    .line 56
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/narvii/widget/BackgroundPickerView;->isLite:Z

    const/4 p2, 0x2

    .line 57
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/narvii/widget/BackgroundPickerView;->isGlobal:Z

    .line 58
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/widget/BackgroundPickerView;->backgroundText:Ljava/lang/String;

    .line 59
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/widget/BackgroundPickerView;->chooseBackgroundText:Ljava/lang/String;

    .line 61
    iget-object p2, p0, Lcom/narvii/widget/BackgroundPickerView;->chooseBackgroundText:Ljava/lang/String;

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/narvii/widget/BackgroundPickerView;->backgroundText:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 62
    iput-object p2, p0, Lcom/narvii/widget/BackgroundPickerView;->chooseBackgroundText:Ljava/lang/String;

    .line 65
    :cond_0
    iget-object p2, p0, Lcom/narvii/widget/BackgroundPickerView;->chooseBackgroundText:Ljava/lang/String;

    if-nez p2, :cond_1

    .line 66
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const v1, 0x7f0f025c

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/widget/BackgroundPickerView;->chooseBackgroundText:Ljava/lang/String;

    .line 69
    :cond_1
    iget-object p2, p0, Lcom/narvii/widget/BackgroundPickerView;->backgroundText:Ljava/lang/String;

    if-nez p2, :cond_2

    .line 70
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const v1, 0x7f0f0155

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/narvii/widget/BackgroundPickerView;->backgroundText:Ljava/lang/String;

    .line 73
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-boolean p2, p0, Lcom/narvii/widget/BackgroundPickerView;->isLite:Z

    if-eqz p2, :cond_3

    const p2, 0x7f0b005a

    goto :goto_0

    :cond_3
    iget-boolean p2, p0, Lcom/narvii/widget/BackgroundPickerView;->isGlobal:Z

    if-eqz p2, :cond_4

    const p2, 0x7f0b0059

    goto :goto_0

    :cond_4
    const p2, 0x7f0b0058

    :goto_0
    invoke-static {p1, p2, p0}, Landroid/widget/RelativeLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f09010c

    .line 79
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVImageView;

    iput-object p1, p0, Lcom/narvii/widget/BackgroundPickerView;->backgroundPreview:Lcom/narvii/widget/NVImageView;

    const p1, 0x7f090838

    .line 80
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/narvii/widget/BackgroundPickerView;->pickerIcon:Landroid/widget/ImageView;

    .line 81
    iget-boolean p1, p0, Lcom/narvii/widget/BackgroundPickerView;->isLite:Z

    if-nez p1, :cond_5

    const p1, 0x7f09010e

    .line 82
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/narvii/widget/BackgroundPickerView;->backgroundTextView:Landroid/widget/TextView;

    .line 85
    :cond_5
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setClipChildren(Z)V

    .line 86
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setClipToPadding(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/widget/BackgroundPickerView;)Lcom/narvii/widget/BackgroundPickerView$OnPrePickCallback;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/narvii/widget/BackgroundPickerView;->onPrePickCallback:Lcom/narvii/widget/BackgroundPickerView$OnPrePickCallback;

    return-object p0
.end method

.method private resetBackgoundTextView()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/narvii/widget/BackgroundPickerView;->backgroundPost:Lcom/narvii/image/BackgroundSource;

    if-nez v0, :cond_0

    return-void

    .line 98
    :cond_0
    invoke-interface {v0}, Lcom/narvii/image/BackgroundSource;->hasBackground()Z

    move-result v0

    .line 99
    iget-object v1, p0, Lcom/narvii/widget/BackgroundPickerView;->backgroundTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/narvii/widget/BackgroundPickerView;->backgroundText:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/BackgroundPickerView;->chooseBackgroundText:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 134
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 135
    iget-object v0, p0, Lcom/narvii/widget/BackgroundPickerView;->backgroundPost:Lcom/narvii/image/BackgroundSource;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/narvii/image/BackgroundSource;->hasBackground()Z

    move-result v0

    if-nez v0, :cond_1

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/BackgroundPickerView;->backgroundPreview:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/narvii/widget/BackgroundPickerView;->backgroundPreview:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTop()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/narvii/widget/BackgroundPickerView;->backgroundPreview:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/narvii/widget/BackgroundPickerView;->backgroundPreview:Lcom/narvii/widget/NVImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBottom()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/narvii/widget/BackgroundPickerView;->redLinePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public setBackgroundPost(Lcom/narvii/image/BackgroundSource;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 113
    :cond_0
    iput-object p1, p0, Lcom/narvii/widget/BackgroundPickerView;->backgroundPost:Lcom/narvii/image/BackgroundSource;

    .line 114
    invoke-interface {p1}, Lcom/narvii/image/BackgroundSource;->hasBackground()Z

    move-result v0

    .line 115
    iget-object v1, p0, Lcom/narvii/widget/BackgroundPickerView;->pickerIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-boolean v2, p0, Lcom/narvii/widget/BackgroundPickerView;->isGlobal:Z

    if-nez v2, :cond_2

    if-eqz v0, :cond_1

    const v2, 0x7f080455

    goto :goto_0

    :cond_1
    const v2, 0x7f080454

    .line 116
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 118
    :cond_2
    iget-object v1, p0, Lcom/narvii/widget/BackgroundPickerView;->backgroundTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    .line 119
    iget-object v0, p0, Lcom/narvii/widget/BackgroundPickerView;->backgroundText:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/narvii/widget/BackgroundPickerView;->chooseBackgroundText:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    :cond_4
    iget-object v0, p0, Lcom/narvii/widget/BackgroundPickerView;->backgroundPreview:Lcom/narvii/widget/NVImageView;

    if-eqz v0, :cond_6

    .line 122
    invoke-interface {p1}, Lcom/narvii/image/BackgroundSource;->getBackgroundMedia()Lcom/narvii/model/Media;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 124
    iget-object p1, p0, Lcom/narvii/widget/BackgroundPickerView;->backgroundPreview:Lcom/narvii/widget/NVImageView;

    iget-object v0, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    goto :goto_2

    .line 126
    :cond_5
    iget-object v0, p0, Lcom/narvii/widget/BackgroundPickerView;->backgroundPreview:Lcom/narvii/widget/NVImageView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-interface {p1}, Lcom/narvii/image/BackgroundSource;->getBackgroundColor()I

    move-result p1

    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    :cond_6
    :goto_2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method public setBackgroundText(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/narvii/widget/BackgroundPickerView;->backgroundText:Ljava/lang/String;

    .line 91
    invoke-direct {p0}, Lcom/narvii/widget/BackgroundPickerView;->resetBackgoundTextView()V

    return-void
.end method

.method public setChooseBackgroundText(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/narvii/widget/BackgroundPickerView;->chooseBackgroundText:Ljava/lang/String;

    .line 106
    invoke-direct {p0}, Lcom/narvii/widget/BackgroundPickerView;->resetBackgoundTextView()V

    return-void
.end method

.method public setMediaPicker(Lcom/narvii/media/MediaPickerFragment;Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    .line 141
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/widget/BackgroundPickerView;->setMediaPicker(Lcom/narvii/media/MediaPickerFragment;Ljava/io/File;I)V

    return-void
.end method

.method public setMediaPicker(Lcom/narvii/media/MediaPickerFragment;Ljava/io/File;I)V
    .locals 1

    .line 146
    new-instance v0, Lcom/narvii/widget/BackgroundPickerView$1;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/narvii/widget/BackgroundPickerView$1;-><init>(Lcom/narvii/widget/BackgroundPickerView;Lcom/narvii/media/MediaPickerFragment;ILjava/io/File;)V

    .line 173
    iget-boolean p1, p0, Lcom/narvii/widget/BackgroundPickerView;->isLite:Z

    if-eqz p1, :cond_0

    .line 174
    iget-object p1, p0, Lcom/narvii/widget/BackgroundPickerView;->pickerIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object p1, p0, Lcom/narvii/widget/BackgroundPickerView;->backgroundPreview:Lcom/narvii/widget/NVImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public setOnPrePickCallback(Lcom/narvii/widget/BackgroundPickerView$OnPrePickCallback;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/narvii/widget/BackgroundPickerView;->onPrePickCallback:Lcom/narvii/widget/BackgroundPickerView$OnPrePickCallback;

    return-void
.end method
