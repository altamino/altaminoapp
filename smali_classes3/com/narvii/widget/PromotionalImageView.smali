.class public Lcom/narvii/widget/PromotionalImageView;
.super Lcom/narvii/widget/ThumbImageView;
.source "PromotionalImageView.java"


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

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/ThumbImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcom/narvii/widget/PromotionalImageView;->showLaunchPage:Z

    .line 34
    iput-boolean p1, p0, Lcom/narvii/widget/PromotionalImageView;->noAnim:Z

    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Lcom/narvii/widget/NVImageView;->scalePlaceholder:Z

    .line 39
    iput-boolean p1, p0, Lcom/narvii/widget/NVImageView;->hidePlayButton:Z

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 105
    iget v0, p0, Lcom/narvii/widget/PromotionalImageView;->prevPlaceholderColor:I

    const/high16 v1, 0x437f0000    # 255.0f

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    .line 106
    iget-boolean v0, p0, Lcom/narvii/widget/PromotionalImageView;->noAnim:Z

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_0

    move-wide v5, v3

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0xc8

    .line 108
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v7

    .line 109
    iget-wide v9, p0, Lcom/narvii/widget/PromotionalImageView;->animTime:J

    sub-long/2addr v7, v9

    cmp-long v0, v7, v3

    if-ltz v0, :cond_3

    cmp-long v0, v7, v5

    if-gez v0, :cond_3

    long-to-float v0, v7

    mul-float v0, v0, v2

    long-to-float v3, v5

    div-float/2addr v0, v3

    .line 112
    iget-object v3, p0, Lcom/narvii/widget/PromotionalImageView;->paint:Landroid/graphics/Paint;

    if-nez v3, :cond_1

    .line 113
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/narvii/widget/PromotionalImageView;->paint:Landroid/graphics/Paint;

    .line 114
    iget-object v3, p0, Lcom/narvii/widget/PromotionalImageView;->paint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 115
    iget-object v3, p0, Lcom/narvii/widget/PromotionalImageView;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 117
    :cond_1
    iget v3, p0, Lcom/narvii/widget/PromotionalImageView;->prevPlaceholderColor:I

    .line 118
    iget-object v4, p0, Lcom/narvii/widget/PromotionalImageView;->paint:Landroid/graphics/Paint;

    sub-float v5, v2, v0

    mul-float v5, v5, v1

    float-to-int v5, v5

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v6

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v7

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v5, v6, v7, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    iget-object v3, p0, Lcom/narvii/widget/PromotionalImageView;->rectf:Landroid/graphics/RectF;

    if-nez v3, :cond_2

    .line 121
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/narvii/widget/PromotionalImageView;->rectf:Landroid/graphics/RectF;

    .line 123
    :cond_2
    iget-object v3, p0, Lcom/narvii/widget/PromotionalImageView;->rectf:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    iput v4, v3, Landroid/graphics/RectF;->left:F

    .line 124
    iget-object v3, p0, Lcom/narvii/widget/PromotionalImageView;->rectf:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    iput v4, v3, Landroid/graphics/RectF;->top:F

    .line 125
    iget-object v3, p0, Lcom/narvii/widget/PromotionalImageView;->rectf:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, v3, Landroid/graphics/RectF;->right:F

    .line 126
    iget-object v3, p0, Lcom/narvii/widget/PromotionalImageView;->rectf:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    .line 127
    iget-object v3, p0, Lcom/narvii/widget/PromotionalImageView;->rectf:Landroid/graphics/RectF;

    iget v4, p0, Lcom/narvii/widget/NVImageView;->cornerRadius:I

    int-to-float v5, v4

    int-to-float v4, v4

    iget-object v6, p0, Lcom/narvii/widget/PromotionalImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v4, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    cmpg-float v3, v0, v2

    if-gez v3, :cond_4

    .line 131
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 132
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v7, v3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v8, v3

    mul-float v1, v1, v0

    float-to-int v9, v1

    const/16 v10, 0x1f

    move-object v4, p1

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 134
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/ImageView;->dispatchDraw(Landroid/graphics/Canvas;)V

    cmpg-float v0, v0, v2

    if-gez v0, :cond_5

    .line 136
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 137
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_5
    return-void
.end method

.method protected getRequestUrl(Lcom/narvii/model/Media;ZII)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    if-eqz p3, :cond_9

    if-nez p4, :cond_1

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    return-object v0

    .line 149
    :cond_2
    iget-object p2, p1, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    if-nez p2, :cond_3

    iget-object p2, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 150
    :cond_3
    iget p1, p0, Lcom/narvii/widget/PromotionalImageView;->image:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    const-string p1, "community-icon"

    .line 151
    invoke-static {p2, p1, p3, p4}, Lcom/narvii/widget/NVImageView;->fitSize(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 154
    :cond_4
    invoke-static {p2}, Lcom/narvii/util/YoutubeUtils;->getYoutubeVideoIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    const/16 p2, 0xb4

    if-gt p3, p2, :cond_6

    const/16 p2, 0x87

    if-le p4, p2, :cond_5

    goto :goto_0

    .line 158
    :cond_5
    invoke-static {p1}, Lcom/narvii/util/YoutubeUtils;->getDefaultYoutubeImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 156
    :cond_6
    :goto_0
    invoke-static {p1}, Lcom/narvii/util/YoutubeUtils;->getHQYoutubeImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 162
    :cond_7
    iget p1, p0, Lcom/narvii/widget/PromotionalImageView;->image:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_8

    const-string v0, "community-launch-image"

    :cond_8
    invoke-static {p2, v0, p3, p4}, Lcom/narvii/widget/NVImageView;->fitSize(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_9
    :goto_1
    return-object v0
.end method

.method public setCommunity(Lcom/narvii/model/Community;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    goto :goto_0

    .line 52
    :cond_1
    iget-boolean v2, p0, Lcom/narvii/widget/PromotionalImageView;->showLaunchPage:Z

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/narvii/model/Community;->launchPage:Lcom/narvii/model/Community$LaunchPage;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/narvii/model/Community$LaunchPage;->image()Lcom/narvii/model/Media;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 53
    iget-object v2, p1, Lcom/narvii/model/Community;->launchPage:Lcom/narvii/model/Community$LaunchPage;

    invoke-virtual {v2}, Lcom/narvii/model/Community$LaunchPage;->image()Lcom/narvii/model/Media;

    move-result-object v2

    const/4 v3, 0x3

    goto :goto_0

    .line 55
    :cond_2
    iget-object v2, p1, Lcom/narvii/model/Community;->promotionalMediaList:Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 56
    iget-object v2, p1, Lcom/narvii/model/Community;->promotionalMediaList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/model/Media;

    const/4 v3, 0x2

    .line 63
    :goto_0
    iput-object p1, p0, Lcom/narvii/widget/PromotionalImageView;->community:Lcom/narvii/model/Community;

    .line 64
    iput v3, p0, Lcom/narvii/widget/PromotionalImageView;->image:I

    .line 65
    iput-object v2, p0, Lcom/narvii/widget/PromotionalImageView;->media:Lcom/narvii/model/Media;

    .line 67
    iget-object p1, p0, Lcom/narvii/widget/PromotionalImageView;->community:Lcom/narvii/model/Community;

    if-nez p1, :cond_3

    .line 68
    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 69
    iput v1, p0, Lcom/narvii/widget/PromotionalImageView;->prevPlaceholderColor:I

    goto :goto_1

    .line 71
    :cond_3
    invoke-virtual {p1}, Lcom/narvii/model/Community;->themeColor()I

    move-result p1

    .line 72
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_4

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_5

    .line 73
    :cond_4
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 75
    :cond_5
    iput p1, p0, Lcom/narvii/widget/PromotionalImageView;->prevPlaceholderColor:I

    .line 78
    :goto_1
    invoke-virtual {p0, v2}, Lcom/narvii/widget/ThumbImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    return-void
.end method

.method protected setImageDrawable(Landroid/graphics/drawable/Drawable;I)V
    .locals 3

    .line 91
    invoke-super {p0, p1, p2}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;I)V

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 93
    iput-wide v0, p0, Lcom/narvii/widget/PromotionalImageView;->animTime:J

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    if-ne p2, v2, :cond_1

    if-eqz p1, :cond_1

    .line 95
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/narvii/widget/PromotionalImageView;->animTime:J

    goto :goto_0

    .line 97
    :cond_1
    iput-wide v0, p0, Lcom/narvii/widget/PromotionalImageView;->animTime:J

    const/4 p1, 0x0

    .line 98
    iput p1, p0, Lcom/narvii/widget/PromotionalImageView;->prevPlaceholderColor:I

    :goto_0
    return-void
.end method

.method protected setImageStatus(IZ)V
    .locals 0

    .line 83
    invoke-super {p0, p1, p2}, Lcom/narvii/widget/NVImageView;->setImageStatus(IZ)V

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const-wide/16 p1, 0x0

    .line 85
    iput-wide p1, p0, Lcom/narvii/widget/PromotionalImageView;->animTime:J

    :cond_0
    return-void
.end method

.method public setNoAnim(Z)V
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/narvii/widget/PromotionalImageView;->noAnim:Z

    return-void
.end method
