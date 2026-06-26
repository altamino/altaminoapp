.class public Lcom/narvii/feed/featured/FeaturedMoreItemsLayout;
.super Lcom/narvii/widget/MaskView;
.source "FeaturedMoreItemsLayout.java"


# instance fields
.field count:I

.field private needBlurImage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field v1:Lcom/narvii/widget/SecretImageView;

.field v2:Lcom/narvii/widget/SecretImageView;

.field v3:Lcom/narvii/widget/SecretImageView;

.field v4:Lcom/narvii/widget/SecretImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/MaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 19
    iput p1, p0, Lcom/narvii/feed/featured/FeaturedMoreItemsLayout;->count:I

    return-void
.end method

.method private needBlurCurrentImage(I)Z
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/narvii/feed/featured/FeaturedMoreItemsLayout;->needBlurImage:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/narvii/feed/featured/FeaturedMoreItemsLayout;->needBlurImage:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected varargs set([Ljava/lang/String;)V
    .locals 3

    .line 28
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 29
    iget v1, p0, Lcom/narvii/feed/featured/FeaturedMoreItemsLayout;->count:I

    array-length v2, p1

    if-eq v1, v2, :cond_2

    .line 30
    array-length v1, p1

    iput v1, p0, Lcom/narvii/feed/featured/FeaturedMoreItemsLayout;->count:I

    .line 31
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 32
    iget v1, p0, Lcom/narvii/feed/featured/FeaturedMoreItemsLayout;->count:I

    if-nez v1, :cond_0

    const v1, 0x7f0b022d

    .line 33
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    const v1, 0x7f0b022e

    .line 35
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    :cond_1
    const v1, 0x7f0b022f

    .line 37
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    :goto_0
    const v0, 0x7f090572

    .line 39
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/SecretImageView;

    iput-object v0, p0, Lcom/narvii/feed/featured/FeaturedMoreItemsLayout;->v1:Lcom/narvii/widget/SecretImageView;

    const v0, 0x7f090573

    .line 40
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/SecretImageView;

    iput-object v0, p0, Lcom/narvii/feed/featured/FeaturedMoreItemsLayout;->v2:Lcom/narvii/widget/SecretImageView;

    const v0, 0x7f090574

    .line 41
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/SecretImageView;

    iput-object v0, p0, Lcom/narvii/feed/featured/FeaturedMoreItemsLayout;->v3:Lcom/narvii/widget/SecretImageView;

    const v0, 0x7f090575

    .line 42
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/SecretImageView;

    iput-object v0, p0, Lcom/narvii/feed/featured/FeaturedMoreItemsLayout;->v4:Lcom/narvii/widget/SecretImageView;

    .line 45
    :cond_2
    array-length v0, p1

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/narvii/feed/featured/FeaturedMoreItemsLayout;->v1:Lcom/narvii/widget/SecretImageView;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 46
    aget-object v2, p1, v1

    invoke-direct {p0, v1}, Lcom/narvii/feed/featured/FeaturedMoreItemsLayout;->needBlurCurrentImage(I)Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/narvii/widget/SecretImageView;->setImageUrl(Ljava/lang/String;Z)Z

    .line 47
    :cond_3
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    iget-object v0, p0, Lcom/narvii/feed/featured/FeaturedMoreItemsLayout;->v2:Lcom/narvii/widget/SecretImageView;

    if-eqz v0, :cond_4

    .line 48
    aget-object v2, p1, v1

    invoke-direct {p0, v1}, Lcom/narvii/feed/featured/FeaturedMoreItemsLayout;->needBlurCurrentImage(I)Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/narvii/widget/SecretImageView;->setImageUrl(Ljava/lang/String;Z)Z

    .line 49
    :cond_4
    array-length v0, p1

    const/4 v1, 0x2

    if-le v0, v1, :cond_5

    iget-object v0, p0, Lcom/narvii/feed/featured/FeaturedMoreItemsLayout;->v3:Lcom/narvii/widget/SecretImageView;

    if-eqz v0, :cond_5

    .line 50
    aget-object v2, p1, v1

    invoke-direct {p0, v1}, Lcom/narvii/feed/featured/FeaturedMoreItemsLayout;->needBlurCurrentImage(I)Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/narvii/widget/SecretImageView;->setImageUrl(Ljava/lang/String;Z)Z

    .line 51
    :cond_5
    array-length v0, p1

    const/4 v1, 0x3

    if-le v0, v1, :cond_6

    iget-object v0, p0, Lcom/narvii/feed/featured/FeaturedMoreItemsLayout;->v4:Lcom/narvii/widget/SecretImageView;

    if-eqz v0, :cond_6

    .line 52
    aget-object p1, p1, v1

    invoke-direct {p0, v1}, Lcom/narvii/feed/featured/FeaturedMoreItemsLayout;->needBlurCurrentImage(I)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/narvii/widget/SecretImageView;->setImageUrl(Ljava/lang/String;Z)Z

    :cond_6
    return-void
.end method

.method public setNeedBlurImage(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/narvii/feed/featured/FeaturedMoreItemsLayout;->needBlurImage:Ljava/util/List;

    return-void
.end method

.method public setThumbUrls(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 67
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/narvii/feed/featured/FeaturedMoreItemsLayout;->set([Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    .line 68
    invoke-virtual {p0, p1}, Lcom/narvii/feed/featured/FeaturedMoreItemsLayout;->set([Ljava/lang/String;)V

    :goto_1
    return-void
.end method
