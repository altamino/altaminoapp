.class public Lcom/narvii/monetization/sticker/collection/HeaderLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public final actionbarSize:I

.field banner:Lcom/narvii/widget/NVImageView;

.field blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

.field finalIconSize:I

.field gradient:Landroid/view/View;

.field height1:I

.field iconBg:Landroid/view/View;

.field imageView:Lcom/narvii/monetization/sticker/widget/StickerImageView;

.field initIconSize:I

.field public final statusbarSize:I

.field stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    move-result-object p1

    .line 12
    .line 13
    .line 14
    const p2, 0x7f0704e2

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 18
    move-result p1

    .line 19
    .line 20
    iput p1, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->initIconSize:I

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    move-result-object p1

    .line 25
    .line 26
    const/high16 p2, 0x41f00000    # 30.0f

    .line 27
    .line 28
    .line 29
    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 30
    move-result p1

    .line 31
    float-to-int p1, p1

    .line 32
    .line 33
    iput p1, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->finalIconSize:I

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    check-cast p1, Lcom/narvii/app/NVActivity;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getStatusBarOverlaySize()I

    .line 43
    move-result p1

    .line 44
    .line 45
    iput p1, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->statusbarSize:I

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 49
    move-result-object p1

    .line 50
    .line 51
    check-cast p1, Lcom/narvii/app/NVActivity;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/narvii/app/NVActivity;->getActionBarOverlaySize()I

    .line 55
    move-result p1

    .line 56
    .line 57
    iput p1, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->actionbarSize:I

    .line 58
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a06dd

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->iconBg:Landroid/view/View;

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0a0343

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    check-cast v0, Lcom/narvii/monetization/sticker/widget/StickerImageView;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->imageView:Lcom/narvii/monetization/sticker/widget/StickerImageView;

    .line 24
    .line 25
    .line 26
    const v0, 0x7f0a01af

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    check-cast v0, Lcom/narvii/widget/NVImageView;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->banner:Lcom/narvii/widget/NVImageView;

    .line 35
    .line 36
    .line 37
    const v0, 0x7f0a01da

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object v0

    .line 42
    .line 43
    check-cast v0, Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 44
    .line 45
    iput-object v0, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 46
    .line 47
    .line 48
    const v0, 0x7f0a062a

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object v0

    .line 53
    .line 54
    iput-object v0, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->gradient:Landroid/view/View;

    .line 55
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 4
    .line 5
    iget p1, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->statusbarSize:I

    .line 6
    .line 7
    iget p2, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->actionbarSize:I

    .line 8
    add-int/2addr p1, p2

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 12
    move-result p2

    .line 13
    sub-int/2addr p2, p1

    .line 14
    int-to-float p2, p2

    .line 15
    .line 16
    const/high16 p3, 0x3f800000    # 1.0f

    .line 17
    mul-float/2addr p2, p3

    .line 18
    .line 19
    iget p4, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->height1:I

    .line 20
    sub-int/2addr p4, p1

    .line 21
    int-to-float p4, p4

    .line 22
    div-float/2addr p2, p4

    .line 23
    .line 24
    sub-float p2, p3, p2

    .line 25
    .line 26
    iget-object p4, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p4, p2}, Landroid/view/View;->setAlpha(F)V

    .line 30
    .line 31
    iget-object p4, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->gradient:Landroid/view/View;

    .line 32
    sub-float/2addr p3, p2

    .line 33
    .line 34
    .line 35
    invoke-virtual {p4, p3}, Landroid/view/View;->setAlpha(F)V

    .line 36
    .line 37
    iget p3, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->initIconSize:I

    .line 38
    int-to-float p4, p3

    .line 39
    .line 40
    iget p5, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->finalIconSize:I

    .line 41
    .line 42
    sub-int v0, p3, p5

    .line 43
    int-to-float v0, v0

    .line 44
    mul-float/2addr v0, p2

    .line 45
    sub-float/2addr p4, v0

    .line 46
    .line 47
    iget v0, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->height1:I

    .line 48
    sub-int/2addr v0, p3

    .line 49
    int-to-float p3, v0

    .line 50
    .line 51
    iget v0, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->statusbarSize:I

    .line 52
    .line 53
    iget v1, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->actionbarSize:I

    .line 54
    sub-int/2addr v1, p5

    .line 55
    .line 56
    div-int/lit8 v1, v1, 0x2

    .line 57
    add-int/2addr v0, v1

    .line 58
    int-to-float p5, v0

    .line 59
    .line 60
    sub-float p5, p3, p5

    .line 61
    mul-float/2addr p5, p2

    .line 62
    sub-float/2addr p3, p5

    .line 63
    float-to-int p2, p3

    .line 64
    int-to-float p2, p2

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 68
    move-result p3

    .line 69
    int-to-float p3, p3

    .line 70
    sub-float/2addr p3, p4

    .line 71
    .line 72
    .line 73
    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    .line 74
    move-result p2

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 78
    move-result p3

    .line 79
    int-to-float p3, p3

    .line 80
    sub-float/2addr p3, p4

    .line 81
    .line 82
    const/high16 p5, 0x40000000    # 2.0f

    .line 83
    div-float/2addr p3, p5

    .line 84
    float-to-int p3, p3

    .line 85
    int-to-float p3, p3

    .line 86
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    const-string v1, "margin-"

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object v0

    .line 103
    .line 104
    .line 105
    invoke-static {v0}, Lcom/narvii/util/Log;->d(Ljava/lang/String;)V

    .line 106
    .line 107
    iget-object v0, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->banner:Lcom/narvii/widget/NVImageView;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 111
    move-result v1

    .line 112
    .line 113
    div-float p5, p4, p5

    .line 114
    add-float/2addr p5, p2

    .line 115
    float-to-int p5, p5

    .line 116
    .line 117
    .line 118
    invoke-static {p1, p5}, Ljava/lang/Math;->max(II)I

    .line 119
    move-result v2

    .line 120
    const/4 v3, 0x0

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 124
    .line 125
    iget-object v0, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->blurView:Lcom/github/mmin18/widget/RealtimeBlurView;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 129
    move-result v1

    .line 130
    .line 131
    .line 132
    invoke-static {p1, p5}, Ljava/lang/Math;->max(II)I

    .line 133
    move-result v2

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 137
    .line 138
    iget-object v0, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->gradient:Landroid/view/View;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 142
    move-result v1

    .line 143
    .line 144
    .line 145
    invoke-static {p1, p5}, Ljava/lang/Math;->max(II)I

    .line 146
    move-result p1

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v3, v3, v1, p1}, Landroid/view/View;->layout(IIII)V

    .line 150
    .line 151
    iget-object p1, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->iconBg:Landroid/view/View;

    .line 152
    float-to-int p5, p3

    .line 153
    float-to-int v0, p2

    .line 154
    add-float/2addr p3, p4

    .line 155
    float-to-int p3, p3

    .line 156
    add-float/2addr p2, p4

    .line 157
    float-to-int p2, p2

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, p5, v0, p3, p2}, Landroid/view/View;->layout(IIII)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 164
    move-result-object p1

    .line 165
    .line 166
    const/high16 v1, 0x40400000    # 3.0f

    .line 167
    .line 168
    .line 169
    invoke-static {p1, v1}, Lcom/narvii/util/Utils;->dpToPx(Landroid/content/Context;F)F

    .line 170
    move-result p1

    .line 171
    mul-float/2addr p4, v1

    .line 172
    .line 173
    const/high16 v1, 0x42a00000    # 80.0f

    .line 174
    div-float/2addr p4, v1

    .line 175
    float-to-int p4, p4

    .line 176
    int-to-float p4, p4

    .line 177
    .line 178
    .line 179
    invoke-static {p1, p4}, Ljava/lang/Math;->min(FF)F

    .line 180
    move-result p1

    .line 181
    float-to-int p1, p1

    .line 182
    .line 183
    iget-object p4, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->imageView:Lcom/narvii/monetization/sticker/widget/StickerImageView;

    .line 184
    add-int/2addr p5, p1

    .line 185
    add-int/2addr v0, p1

    .line 186
    sub-int/2addr p3, p1

    .line 187
    sub-int/2addr p2, p1

    .line 188
    .line 189
    .line 190
    invoke-virtual {p4, p5, v0, p3, p2}, Landroid/view/View;->layout(IIII)V

    .line 191
    return-void
.end method

.method public setHeight1(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->height1:I

    return-void
.end method

.method public setStickerCollection(Lcom/narvii/monetization/sticker/model/StickerCollection;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iput-object p1, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->stickerCollection:Lcom/narvii/monetization/sticker/model/StickerCollection;

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->imageView:Lcom/narvii/monetization/sticker/widget/StickerImageView;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->id()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    iget-object v2, p1, Lcom/narvii/monetization/sticker/model/StickerCollection;->icon:Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/narvii/monetization/sticker/widget/StickerImageView;->setStickerImageUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    iget-object v0, p0, Lcom/narvii/monetization/sticker/collection/HeaderLayout;->banner:Lcom/narvii/widget/NVImageView;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/narvii/monetization/sticker/model/StickerCollection;->getBannerUrl()Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 30
    :cond_1
    return-void
.end method
