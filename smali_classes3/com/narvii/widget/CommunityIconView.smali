.class public Lcom/narvii/widget/CommunityIconView;
.super Lcom/narvii/widget/ThumbImageView;
.source "CommunityIconView.java"


# instance fields
.field community:Lcom/narvii/model/Community;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/ThumbImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "community-icon"

    .line 27
    iput-object p1, p0, Lcom/narvii/widget/NVImageView;->imageType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCommunityIconBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/narvii/widget/CommunityIconView;->community:Lcom/narvii/model/Community;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 44
    :cond_0
    iget-object v0, v0, Lcom/narvii/model/Community;->themePack:Lcom/narvii/model/ThemePack;

    if-nez v0, :cond_1

    .line 45
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/narvii/lib/R$drawable;->placeholder_community_big:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 47
    :cond_1
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 48
    iget-object v1, p0, Lcom/narvii/widget/CommunityIconView;->community:Lcom/narvii/model/Community;

    invoke-virtual {v1}, Lcom/narvii/model/Community;->themeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 49
    iget v1, p0, Lcom/narvii/widget/NVImageView;->cornerRadius:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 55
    invoke-super/range {p0 .. p5}, Lcom/narvii/widget/NVImageView;->onLayout(ZIIII)V

    .line 56
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    const p2, 0x3e676c8b    # 0.226f

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 57
    iget p2, p0, Lcom/narvii/widget/NVImageView;->cornerRadius:I

    if-eq p2, p1, :cond_0

    .line 58
    iput p1, p0, Lcom/narvii/widget/NVImageView;->cornerRadius:I

    .line 59
    invoke-virtual {p0}, Lcom/narvii/widget/CommunityIconView;->getCommunityIconBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setCommunity(Lcom/narvii/model/Community;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 34
    :cond_0
    iput-object p1, p0, Lcom/narvii/widget/CommunityIconView;->community:Lcom/narvii/model/Community;

    .line 35
    invoke-virtual {p0}, Lcom/narvii/widget/CommunityIconView;->getCommunityIconBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/narvii/widget/NVImageView;->setDefaultDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 36
    iget-object p1, p1, Lcom/narvii/model/Community;->icon:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    return-void
.end method
