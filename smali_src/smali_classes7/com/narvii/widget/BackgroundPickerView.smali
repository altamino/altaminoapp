.class public Lcom/narvii/widget/BackgroundPickerView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 8
    .line 9
    new-instance v1, Landroid/graphics/Paint;

    .line 10
    const/4 v2, 0x1

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 14
    .line 15
    iput-object v1, p0, Lcom/narvii/widget/BackgroundPickerView;->redLinePaint:Landroid/graphics/Paint;

    .line 16
    .line 17
    const/high16 v3, -0x10000

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 21
    .line 22
    iget-object v1, p0, Lcom/narvii/widget/BackgroundPickerView;->redLinePaint:Landroid/graphics/Paint;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    move-result-object v3

    .line 27
    .line 28
    const/high16 v4, 0x3f800000    # 1.0f

    .line 29
    .line 30
    .line 31
    invoke-static {v3, v4}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 32
    move-result v3

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 36
    .line 37
    sget-object v1, Lcom/narvii/amino/R$styleable;->BackgroundPickerView:[I

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 41
    move-result-object p1

    .line 42
    const/4 p2, 0x3

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 46
    move-result p2

    .line 47
    .line 48
    iput-boolean p2, p0, Lcom/narvii/widget/BackgroundPickerView;->isLite:Z

    .line 49
    const/4 p2, 0x2

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 53
    move-result p2

    .line 54
    .line 55
    iput-boolean p2, p0, Lcom/narvii/widget/BackgroundPickerView;->isGlobal:Z

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 59
    move-result-object p2

    .line 60
    .line 61
    iput-object p2, p0, Lcom/narvii/widget/BackgroundPickerView;->backgroundText:Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 65
    move-result-object p2

    .line 66
    .line 67
    iput-object p2, p0, Lcom/narvii/widget/BackgroundPickerView;->chooseBackgroundText:Ljava/lang/String;

    .line 68
    .line 69
    if-nez p2, :cond_0

    .line 70
    .line 71
    iget-object p2, p0, Lcom/narvii/widget/BackgroundPickerView;->backgroundText:Ljava/lang/String;

    .line 72
    .line 73
    if-eqz p2, :cond_0

    .line 74
    .line 75
    iput-object p2, p0, Lcom/narvii/widget/BackgroundPickerView;->chooseBackgroundText:Ljava/lang/String;

    .line 76
    .line 77
    :cond_0
    iget-object p2, p0, Lcom/narvii/widget/BackgroundPickerView;->chooseBackgroundText:Ljava/lang/String;

    .line 78
    .line 79
    if-nez p2, :cond_1

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 83
    move-result-object p2

    .line 84
    .line 85
    .line 86
    const v1, 0x7f1202a0

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 90
    move-result-object p2

    .line 91
    .line 92
    iput-object p2, p0, Lcom/narvii/widget/BackgroundPickerView;->chooseBackgroundText:Ljava/lang/String;

    .line 93
    .line 94
    :cond_1
    iget-object p2, p0, Lcom/narvii/widget/BackgroundPickerView;->backgroundText:Ljava/lang/String;

    .line 95
    .line 96
    if-nez p2, :cond_2

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 100
    move-result-object p2

    .line 101
    .line 102
    .line 103
    const v1, 0x7f120195

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 107
    move-result-object p2

    .line 108
    .line 109
    iput-object p2, p0, Lcom/narvii/widget/BackgroundPickerView;->backgroundText:Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 116
    move-result-object p1

    .line 117
    .line 118
    iget-boolean p2, p0, Lcom/narvii/widget/BackgroundPickerView;->isLite:Z

    .line 119
    .line 120
    if-eqz p2, :cond_3

    .line 121
    .line 122
    .line 123
    const p2, 0x7f0d0070

    .line 124
    goto :goto_0

    .line 125
    .line 126
    :cond_3
    iget-boolean p2, p0, Lcom/narvii/widget/BackgroundPickerView;->isGlobal:Z

    .line 127
    .line 128
    if-eqz p2, :cond_4

    .line 129
    .line 130
    .line 131
    const p2, 0x7f0d006f

    .line 132
    goto :goto_0

    .line 133
    .line 134
    .line 135
    :cond_4
    const p2, 0x7f0d006e

    .line 136
    .line 137
    .line 138
    :goto_0
    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 139
    .line 140
    .line 141
    const p1, 0x7f0a019e

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 145
    move-result-object p1

    .line 146
    .line 147
    check-cast p1, Lcom/narvii/widget/NVImageView;

    .line 148
    .line 149
    iput-object p1, p0, Lcom/narvii/widget/BackgroundPickerView;->backgroundPreview:Lcom/narvii/widget/NVImageView;

    .line 150
    .line 151
    .line 152
    const p1, 0x7f0a0aee

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 156
    move-result-object p1

    .line 157
    .line 158
    check-cast p1, Landroid/widget/ImageView;

    .line 159
    .line 160
    iput-object p1, p0, Lcom/narvii/widget/BackgroundPickerView;->pickerIcon:Landroid/widget/ImageView;

    .line 161
    .line 162
    iget-boolean p1, p0, Lcom/narvii/widget/BackgroundPickerView;->isLite:Z

    .line 163
    .line 164
    if-nez p1, :cond_5

    .line 165
    .line 166
    .line 167
    const p1, 0x7f0a01a0

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 171
    move-result-object p1

    .line 172
    .line 173
    check-cast p1, Landroid/widget/TextView;

    .line 174
    .line 175
    iput-object p1, p0, Lcom/narvii/widget/BackgroundPickerView;->backgroundTextView:Landroid/widget/TextView;

    .line 176
    .line 177
    .line 178
    :cond_5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 182
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/widget/BackgroundPickerView;)Lcom/narvii/widget/BackgroundPickerView$OnPrePickCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/widget/BackgroundPickerView;->onPrePickCallback:Lcom/narvii/widget/BackgroundPickerView$OnPrePickCallback;

    return-object p0
.end method

.method private resetBackgoundTextView()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/BackgroundPickerView;->backgroundPost:Lcom/narvii/image/BackgroundSource;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-interface {v0}, Lcom/narvii/image/BackgroundSource;->hasBackground()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/widget/BackgroundPickerView;->backgroundTextView:Landroid/widget/TextView;

    .line 12
    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/widget/BackgroundPickerView;->backgroundText:Ljava/lang/String;

    .line 18
    goto :goto_0

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/BackgroundPickerView;->chooseBackgroundText:Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    :cond_2
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/widget/BackgroundPickerView;->backgroundPost:Lcom/narvii/image/BackgroundSource;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Lcom/narvii/image/BackgroundSource;->hasBackground()Z

    .line 13
    move-result v0

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/BackgroundPickerView;->backgroundPreview:Lcom/narvii/widget/NVImageView;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 21
    move-result v0

    .line 22
    int-to-float v2, v0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/widget/BackgroundPickerView;->backgroundPreview:Lcom/narvii/widget/NVImageView;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 28
    move-result v0

    .line 29
    int-to-float v3, v0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/widget/BackgroundPickerView;->backgroundPreview:Lcom/narvii/widget/NVImageView;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 35
    move-result v0

    .line 36
    int-to-float v4, v0

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/widget/BackgroundPickerView;->backgroundPreview:Lcom/narvii/widget/NVImageView;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 42
    move-result v0

    .line 43
    int-to-float v5, v0

    .line 44
    .line 45
    iget-object v6, p0, Lcom/narvii/widget/BackgroundPickerView;->redLinePaint:Landroid/graphics/Paint;

    .line 46
    move-object v1, p1

    .line 47
    .line 48
    .line 49
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 50
    :cond_1
    return-void
.end method

.method public setBackgroundPost(Lcom/narvii/image/BackgroundSource;)V
    .locals 3

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iput-object p1, p0, Lcom/narvii/widget/BackgroundPickerView;->backgroundPost:Lcom/narvii/image/BackgroundSource;

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Lcom/narvii/image/BackgroundSource;->hasBackground()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/narvii/widget/BackgroundPickerView;->pickerIcon:Landroid/widget/ImageView;

    .line 12
    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    iget-boolean v2, p0, Lcom/narvii/widget/BackgroundPickerView;->isGlobal:Z

    .line 16
    .line 17
    if-nez v2, :cond_2

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    .line 22
    const v2, 0x7f08057b

    .line 23
    goto :goto_0

    .line 24
    .line 25
    .line 26
    :cond_1
    const v2, 0x7f08057a

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 30
    .line 31
    :cond_2
    iget-object v1, p0, Lcom/narvii/widget/BackgroundPickerView;->backgroundTextView:Landroid/widget/TextView;

    .line 32
    .line 33
    if-eqz v1, :cond_4

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    iget-object v0, p0, Lcom/narvii/widget/BackgroundPickerView;->backgroundText:Ljava/lang/String;

    .line 38
    goto :goto_1

    .line 39
    .line 40
    :cond_3
    iget-object v0, p0, Lcom/narvii/widget/BackgroundPickerView;->chooseBackgroundText:Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    :cond_4
    iget-object v0, p0, Lcom/narvii/widget/BackgroundPickerView;->backgroundPreview:Lcom/narvii/widget/NVImageView;

    .line 46
    .line 47
    if-eqz v0, :cond_6

    .line 48
    .line 49
    .line 50
    invoke-interface {p1}, Lcom/narvii/image/BackgroundSource;->getBackgroundMedia()Lcom/narvii/model/Media;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    if-eqz v0, :cond_5

    .line 54
    .line 55
    iget-object p1, p0, Lcom/narvii/widget/BackgroundPickerView;->backgroundPreview:Lcom/narvii/widget/NVImageView;

    .line 56
    .line 57
    iget-object v0, v0, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 61
    goto :goto_2

    .line 62
    .line 63
    :cond_5
    iget-object v0, p0, Lcom/narvii/widget/BackgroundPickerView;->backgroundPreview:Lcom/narvii/widget/NVImageView;

    .line 64
    .line 65
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 66
    .line 67
    .line 68
    invoke-interface {p1}, Lcom/narvii/image/BackgroundSource;->getBackgroundColor()I

    .line 69
    move-result p1

    .line 70
    .line 71
    .line 72
    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    .line 77
    .line 78
    :cond_6
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 79
    return-void
.end method

.method public setBackgroundText(Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/BackgroundPickerView;->backgroundText:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/widget/BackgroundPickerView;->resetBackgoundTextView()V

    .line 6
    return-void
.end method

.method public setChooseBackgroundText(Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/BackgroundPickerView;->chooseBackgroundText:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/narvii/widget/BackgroundPickerView;->resetBackgoundTextView()V

    .line 6
    return-void
.end method

.method public setMediaPicker(Lcom/narvii/media/MediaPickerFragment;Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/narvii/widget/BackgroundPickerView;->setMediaPicker(Lcom/narvii/media/MediaPickerFragment;Ljava/io/File;I)V

    return-void
.end method

.method public setMediaPicker(Lcom/narvii/media/MediaPickerFragment;Ljava/io/File;I)V
    .locals 1

    .line 2
    new-instance v0, Lcom/narvii/widget/BackgroundPickerView$1;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/narvii/widget/BackgroundPickerView$1;-><init>(Lcom/narvii/widget/BackgroundPickerView;Lcom/narvii/media/MediaPickerFragment;ILjava/io/File;)V

    iget-boolean p1, p0, Lcom/narvii/widget/BackgroundPickerView;->isLite:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/narvii/widget/BackgroundPickerView;->pickerIcon:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/narvii/widget/BackgroundPickerView;->backgroundPreview:Lcom/narvii/widget/NVImageView;

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public setOnPrePickCallback(Lcom/narvii/widget/BackgroundPickerView$OnPrePickCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/BackgroundPickerView;->onPrePickCallback:Lcom/narvii/widget/BackgroundPickerView$OnPrePickCallback;

    return-void
.end method
