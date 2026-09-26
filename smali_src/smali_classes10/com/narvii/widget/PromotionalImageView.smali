.class public Lcom/narvii/widget/PromotionalImageView;
.super Lcom/narvii/widget/ThumbImageView;
.source "SourceFile"


# instance fields
.field animTime:J

.field community:Lcom/narvii/model/Community;

.field image:I

.field media:Lcom/narvii/model/Media;

.field private noAnim:Z

.field paint:Landroid/graphics/Paint;

.field public preloadCachedImage:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field prevPlaceholderColor:I

.field rectf:Landroid/graphics/RectF;

.field public showLaunchPage:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/ThumbImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/narvii/widget/PromotionalImageView;->showLaunchPage:Z

    .line 7
    .line 8
    iput-boolean p1, p0, Lcom/narvii/widget/PromotionalImageView;->noAnim:Z

    .line 9
    const/4 p1, 0x1

    .line 10
    .line 11
    iput-boolean p1, p0, Lcom/narvii/widget/NVImageView;->scalePlaceholder:Z

    .line 12
    .line 13
    iput-boolean p1, p0, Lcom/narvii/widget/NVImageView;->hidePlayButton:Z

    .line 14
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/PromotionalImageView;->prevPlaceholderColor:I

    .line 3
    .line 4
    const/high16 v1, 0x437f0000    # 255.0f

    .line 5
    .line 6
    const/high16 v2, 0x3f800000    # 1.0f

    .line 7
    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/narvii/widget/PromotionalImageView;->noAnim:Z

    .line 11
    .line 12
    const-wide/16 v3, 0x0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    move-wide v5, v3

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    const-wide/16 v5, 0xc8

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 22
    move-result-wide v7

    .line 23
    .line 24
    iget-wide v9, p0, Lcom/narvii/widget/PromotionalImageView;->animTime:J

    .line 25
    sub-long/2addr v7, v9

    .line 26
    .line 27
    cmp-long v0, v7, v3

    .line 28
    .line 29
    if-ltz v0, :cond_3

    .line 30
    .line 31
    cmp-long v0, v7, v5

    .line 32
    .line 33
    if-gez v0, :cond_3

    .line 34
    long-to-float v0, v7

    .line 35
    mul-float/2addr v0, v2

    .line 36
    long-to-float v3, v5

    .line 37
    div-float/2addr v0, v3

    .line 38
    .line 39
    iget-object v3, p0, Lcom/narvii/widget/PromotionalImageView;->paint:Landroid/graphics/Paint;

    .line 40
    .line 41
    if-nez v3, :cond_1

    .line 42
    .line 43
    new-instance v3, Landroid/graphics/Paint;

    .line 44
    .line 45
    .line 46
    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 47
    .line 48
    iput-object v3, p0, Lcom/narvii/widget/PromotionalImageView;->paint:Landroid/graphics/Paint;

    .line 49
    const/4 v4, 0x1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 53
    .line 54
    iget-object v3, p0, Lcom/narvii/widget/PromotionalImageView;->paint:Landroid/graphics/Paint;

    .line 55
    .line 56
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    .line 61
    :cond_1
    iget v3, p0, Lcom/narvii/widget/PromotionalImageView;->prevPlaceholderColor:I

    .line 62
    .line 63
    iget-object v4, p0, Lcom/narvii/widget/PromotionalImageView;->paint:Landroid/graphics/Paint;

    .line 64
    .line 65
    sub-float v5, v2, v0

    .line 66
    mul-float/2addr v5, v1

    .line 67
    float-to-int v5, v5

    .line 68
    .line 69
    .line 70
    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    .line 71
    move-result v6

    .line 72
    .line 73
    .line 74
    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    .line 75
    move-result v7

    .line 76
    .line 77
    .line 78
    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    .line 79
    move-result v3

    .line 80
    .line 81
    .line 82
    invoke-static {v5, v6, v7, v3}, Landroid/graphics/Color;->argb(IIII)I

    .line 83
    move-result v3

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    .line 88
    iget-object v3, p0, Lcom/narvii/widget/PromotionalImageView;->rectf:Landroid/graphics/RectF;

    .line 89
    .line 90
    if-nez v3, :cond_2

    .line 91
    .line 92
    new-instance v3, Landroid/graphics/RectF;

    .line 93
    .line 94
    .line 95
    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 96
    .line 97
    iput-object v3, p0, Lcom/narvii/widget/PromotionalImageView;->rectf:Landroid/graphics/RectF;

    .line 98
    .line 99
    :cond_2
    iget-object v3, p0, Lcom/narvii/widget/PromotionalImageView;->rectf:Landroid/graphics/RectF;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 103
    move-result v4

    .line 104
    int-to-float v4, v4

    .line 105
    .line 106
    iput v4, v3, Landroid/graphics/RectF;->left:F

    .line 107
    .line 108
    iget-object v3, p0, Lcom/narvii/widget/PromotionalImageView;->rectf:Landroid/graphics/RectF;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 112
    move-result v4

    .line 113
    int-to-float v4, v4

    .line 114
    .line 115
    iput v4, v3, Landroid/graphics/RectF;->top:F

    .line 116
    .line 117
    iget-object v3, p0, Lcom/narvii/widget/PromotionalImageView;->rectf:Landroid/graphics/RectF;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 121
    move-result v4

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 125
    move-result v5

    .line 126
    sub-int/2addr v4, v5

    .line 127
    int-to-float v4, v4

    .line 128
    .line 129
    iput v4, v3, Landroid/graphics/RectF;->right:F

    .line 130
    .line 131
    iget-object v3, p0, Lcom/narvii/widget/PromotionalImageView;->rectf:Landroid/graphics/RectF;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 135
    move-result v4

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 139
    move-result v5

    .line 140
    sub-int/2addr v4, v5

    .line 141
    int-to-float v4, v4

    .line 142
    .line 143
    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    .line 144
    .line 145
    iget-object v3, p0, Lcom/narvii/widget/PromotionalImageView;->rectf:Landroid/graphics/RectF;

    .line 146
    .line 147
    iget v4, p0, Lcom/narvii/widget/NVImageView;->cornerRadius:I

    .line 148
    int-to-float v5, v4

    .line 149
    int-to-float v4, v4

    .line 150
    .line 151
    iget-object v6, p0, Lcom/narvii/widget/PromotionalImageView;->paint:Landroid/graphics/Paint;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, v3, v5, v4, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 155
    goto :goto_1

    .line 156
    :cond_3
    move v0, v2

    .line 157
    .line 158
    :goto_1
    cmpg-float v2, v0, v2

    .line 159
    .line 160
    if-gez v2, :cond_4

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 164
    const/4 v4, 0x0

    .line 165
    const/4 v5, 0x0

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 169
    move-result v3

    .line 170
    int-to-float v6, v3

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 174
    move-result v3

    .line 175
    int-to-float v7, v3

    .line 176
    mul-float/2addr v0, v1

    .line 177
    float-to-int v8, v0

    .line 178
    .line 179
    const/16 v9, 0x1f

    .line 180
    move-object v3, p1

    .line 181
    .line 182
    .line 183
    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 184
    .line 185
    .line 186
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/ImageView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 187
    .line 188
    if-gez v2, :cond_5

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 195
    :cond_5
    return-void
.end method

.method protected getRequestUrl(Lcom/narvii/model/Media;ZII)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    return-object v0

    .line 5
    .line 6
    :cond_0
    if-eqz p3, :cond_9

    .line 7
    .line 8
    if-nez p4, :cond_1

    .line 9
    goto :goto_1

    .line 10
    .line 11
    :cond_1
    if-nez p1, :cond_2

    .line 12
    return-object v0

    .line 13
    .line 14
    :cond_2
    iget-object p2, p1, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    .line 15
    .line 16
    if-nez p2, :cond_3

    .line 17
    .line 18
    iget-object p2, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 19
    .line 20
    :cond_3
    iget p1, p0, Lcom/narvii/widget/PromotionalImageView;->image:I

    .line 21
    const/4 v1, 0x1

    .line 22
    .line 23
    if-ne p1, v1, :cond_4

    .line 24
    .line 25
    const-string p1, "community-icon"

    .line 26
    .line 27
    .line 28
    invoke-static {p2, p1, p3, p4}, Lcom/narvii/widget/NVImageView;->fitSize(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    return-object p1

    .line 31
    .line 32
    .line 33
    :cond_4
    invoke-static {p2}, Lcom/narvii/util/YoutubeUtils;->getYoutubeVideoIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    .line 36
    if-eqz p1, :cond_7

    .line 37
    .line 38
    const/16 p2, 0xb4

    .line 39
    .line 40
    if-gt p3, p2, :cond_6

    .line 41
    .line 42
    const/16 p2, 0x87

    .line 43
    .line 44
    if-le p4, p2, :cond_5

    .line 45
    goto :goto_0

    .line 46
    .line 47
    .line 48
    :cond_5
    invoke-static {p1}, Lcom/narvii/util/YoutubeUtils;->getDefaultYoutubeImage(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    return-object p1

    .line 51
    .line 52
    .line 53
    :cond_6
    :goto_0
    invoke-static {p1}, Lcom/narvii/util/YoutubeUtils;->getHQYoutubeImage(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    move-result-object p1

    .line 55
    return-object p1

    .line 56
    .line 57
    :cond_7
    iget p1, p0, Lcom/narvii/widget/PromotionalImageView;->image:I

    .line 58
    const/4 v1, 0x2

    .line 59
    .line 60
    if-ne p1, v1, :cond_8

    .line 61
    .line 62
    const-string v0, "community-launch-image"

    .line 63
    .line 64
    .line 65
    :cond_8
    invoke-static {p2, v0, p3, p4}, Lcom/narvii/widget/NVImageView;->fitSize(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 67
    return-object p1

    .line 68
    :cond_9
    :goto_1
    return-object v0
.end method

.method public setCommunity(Lcom/narvii/model/Community;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    if-nez p1, :cond_1

    .line 5
    :cond_0
    move-object v2, v0

    .line 6
    move v3, v1

    .line 7
    goto :goto_0

    .line 8
    .line 9
    :cond_1
    iget-boolean v2, p0, Lcom/narvii/widget/PromotionalImageView;->showLaunchPage:Z

    .line 10
    .line 11
    if-eqz v2, :cond_2

    .line 12
    .line 13
    iget-object v2, p1, Lcom/narvii/model/Community;->launchPage:Lcom/narvii/model/Community$LaunchPage;

    .line 14
    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/narvii/model/Community$LaunchPage;->image()Lcom/narvii/model/Media;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    iget-object v2, p1, Lcom/narvii/model/Community;->launchPage:Lcom/narvii/model/Community$LaunchPage;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/narvii/model/Community$LaunchPage;->image()Lcom/narvii/model/Media;

    .line 27
    move-result-object v2

    .line 28
    const/4 v3, 0x3

    .line 29
    goto :goto_0

    .line 30
    .line 31
    :cond_2
    iget-object v2, p1, Lcom/narvii/model/Community;->promotionalMediaList:Ljava/util/List;

    .line 32
    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    .line 36
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 37
    move-result v2

    .line 38
    .line 39
    if-lez v2, :cond_0

    .line 40
    .line 41
    iget-object v2, p1, Lcom/narvii/model/Community;->promotionalMediaList:Ljava/util/List;

    .line 42
    .line 43
    .line 44
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    move-result-object v2

    .line 46
    .line 47
    check-cast v2, Lcom/narvii/model/Media;

    .line 48
    const/4 v3, 0x2

    .line 49
    .line 50
    :goto_0
    iput-object p1, p0, Lcom/narvii/widget/PromotionalImageView;->community:Lcom/narvii/model/Community;

    .line 51
    .line 52
    iput v3, p0, Lcom/narvii/widget/PromotionalImageView;->image:I

    .line 53
    .line 54
    iput-object v2, p0, Lcom/narvii/widget/PromotionalImageView;->media:Lcom/narvii/model/Media;

    .line 55
    .line 56
    if-nez p1, :cond_3

    .line 57
    .line 58
    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 59
    .line 60
    iput v1, p0, Lcom/narvii/widget/PromotionalImageView;->prevPlaceholderColor:I

    .line 61
    goto :goto_1

    .line 62
    .line 63
    .line 64
    :cond_3
    invoke-virtual {p1}, Lcom/narvii/model/Community;->themeColor()I

    .line 65
    move-result p1

    .line 66
    .line 67
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 68
    .line 69
    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    .line 70
    .line 71
    if-eqz v1, :cond_4

    .line 72
    .line 73
    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    .line 77
    move-result v0

    .line 78
    .line 79
    if-eq v0, p1, :cond_5

    .line 80
    .line 81
    :cond_4
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 82
    .line 83
    .line 84
    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 85
    .line 86
    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 87
    .line 88
    :cond_5
    iput p1, p0, Lcom/narvii/widget/PromotionalImageView;->prevPlaceholderColor:I

    .line 89
    .line 90
    .line 91
    :goto_1
    invoke-virtual {p0, v2}, Lcom/narvii/widget/ThumbImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 92
    return-void
.end method

.method protected setImageDrawable(Landroid/graphics/drawable/Drawable;I)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;I)V

    .line 4
    const/4 v0, 0x1

    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    if-ne p2, v0, :cond_0

    .line 9
    .line 10
    iput-wide v1, p0, Lcom/narvii/widget/PromotionalImageView;->animTime:J

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x4

    .line 13
    .line 14
    if-ne p2, v0, :cond_1

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 20
    move-result-wide p1

    .line 21
    .line 22
    iput-wide p1, p0, Lcom/narvii/widget/PromotionalImageView;->animTime:J

    .line 23
    goto :goto_0

    .line 24
    .line 25
    :cond_1
    iput-wide v1, p0, Lcom/narvii/widget/PromotionalImageView;->animTime:J

    .line 26
    const/4 p1, 0x0

    .line 27
    .line 28
    iput p1, p0, Lcom/narvii/widget/PromotionalImageView;->prevPlaceholderColor:I

    .line 29
    :goto_0
    return-void
.end method

.method protected setImageStatus(IZ)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/narvii/widget/NVImageView;->setImageStatus(IZ)V

    .line 4
    const/4 p2, 0x1

    .line 5
    .line 6
    if-ne p1, p2, :cond_0

    .line 7
    .line 8
    const-wide/16 p1, 0x0

    .line 9
    .line 10
    iput-wide p1, p0, Lcom/narvii/widget/PromotionalImageView;->animTime:J

    .line 11
    :cond_0
    return-void
.end method

.method public setNoAnim(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/widget/PromotionalImageView;->noAnim:Z

    return-void
.end method
