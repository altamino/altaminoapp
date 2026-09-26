.class public Lcom/narvii/widget/CommunityIconView;
.super Lcom/narvii/widget/ThumbImageView;
.source "SourceFile"


# instance fields
.field community:Lcom/narvii/model/Community;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/ThumbImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    const-string p1, "community-icon"

    .line 6
    .line 7
    iput-object p1, p0, Lcom/narvii/widget/NVImageView;->imageType:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public getCommunityIconBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/CommunityIconView;->community:Lcom/narvii/model/Community;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    .line 8
    :cond_0
    iget-object v0, v0, Lcom/narvii/model/Community;->themePack:Lcom/narvii/model/ThemePack;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    sget v1, Lcom/narvii/lib/R$drawable;->placeholder_community_big:I

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    .line 23
    :cond_1
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 24
    .line 25
    .line 26
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 27
    .line 28
    iget-object v1, p0, Lcom/narvii/widget/CommunityIconView;->community:Lcom/narvii/model/Community;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/narvii/model/Community;->themeColor()I

    .line 32
    move-result v1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 36
    .line 37
    iget v1, p0, Lcom/narvii/widget/NVImageView;->cornerRadius:I

    .line 38
    int-to-float v1, v1

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 42
    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p5}, Lcom/narvii/widget/NVImageView;->onLayout(ZIIII)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 7
    move-result p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 11
    move-result p2

    .line 12
    sub-int/2addr p1, p2

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 16
    move-result p2

    .line 17
    sub-int/2addr p1, p2

    .line 18
    int-to-float p1, p1

    .line 19
    .line 20
    .line 21
    const p2, 0x3e676c8b    # 0.226f

    .line 22
    mul-float/2addr p1, p2

    .line 23
    float-to-int p1, p1

    .line 24
    .line 25
    iget p2, p0, Lcom/narvii/widget/NVImageView;->cornerRadius:I

    .line 26
    .line 27
    if-eq p2, p1, :cond_0

    .line 28
    .line 29
    iput p1, p0, Lcom/narvii/widget/NVImageView;->cornerRadius:I

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/narvii/widget/CommunityIconView;->getCommunityIconBackground()Landroid/graphics/drawable/Drawable;

    .line 33
    move-result-object p1

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 40
    :cond_0
    return-void
.end method

.method public setCommunity(Lcom/narvii/model/Community;)V
    .locals 1

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    :cond_0
    iput-object p1, p0, Lcom/narvii/widget/CommunityIconView;->community:Lcom/narvii/model/Community;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/narvii/widget/CommunityIconView;->getCommunityIconBackground()Landroid/graphics/drawable/Drawable;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/narvii/widget/NVImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 13
    .line 14
    iget-object p1, p1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 18
    return-void
.end method
