.class public Lcom/narvii/chat/MultiAvatarView;
.super Lcom/narvii/widget/MaskView;
.source "MultiAvatarView.java"


# instance fields
.field count:I

.field v1:Lcom/narvii/widget/NVImageView;

.field v2:Lcom/narvii/widget/NVImageView;

.field v3:Lcom/narvii/widget/NVImageView;

.field v4:Lcom/narvii/widget/NVImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/MaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lcom/narvii/chat/MultiAvatarView;->count:I

    return-void
.end method


# virtual methods
.method protected varargs set([Ljava/lang/String;)V
    .locals 7

    .line 24
    iget v0, p0, Lcom/narvii/chat/MultiAvatarView;->count:I

    array-length v1, p1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v1, :cond_4

    .line 25
    array-length v0, p1

    iput v0, p0, Lcom/narvii/chat/MultiAvatarView;->count:I

    .line 26
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 27
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 28
    iget v1, p0, Lcom/narvii/chat/MultiAvatarView;->count:I

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_1

    const/4 v5, 0x4

    const v6, 0x7f0b00cd

    if-eq v1, v5, :cond_0

    .line 42
    invoke-virtual {v0, v6, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {v0, v6, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    :cond_1
    const v1, 0x7f0b00cc

    .line 36
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    :cond_2
    const v1, 0x7f0b00cb

    .line 33
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    :cond_3
    const v1, 0x7f0b00ca

    .line 30
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    :goto_0
    const v0, 0x7f090572

    .line 46
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/chat/MultiAvatarView;->v1:Lcom/narvii/widget/NVImageView;

    const v0, 0x7f090573

    .line 47
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/chat/MultiAvatarView;->v2:Lcom/narvii/widget/NVImageView;

    const v0, 0x7f090574

    .line 48
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/chat/MultiAvatarView;->v3:Lcom/narvii/widget/NVImageView;

    const v0, 0x7f090575

    .line 49
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/narvii/widget/NVImageView;

    iput-object v0, p0, Lcom/narvii/chat/MultiAvatarView;->v4:Lcom/narvii/widget/NVImageView;

    .line 52
    :cond_4
    iget v0, p0, Lcom/narvii/chat/MultiAvatarView;->count:I

    const/4 v1, 0x0

    if-le v0, v4, :cond_5

    .line 53
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f060216

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/narvii/widget/MaskView;->placeholderColor:I

    goto :goto_1

    .line 55
    :cond_5
    iput v1, p0, Lcom/narvii/widget/MaskView;->placeholderColor:I

    .line 58
    :goto_1
    array-length v0, p1

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/narvii/chat/MultiAvatarView;->v1:Lcom/narvii/widget/NVImageView;

    if-eqz v0, :cond_6

    .line 59
    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 60
    :cond_6
    array-length v0, p1

    if-le v0, v4, :cond_7

    iget-object v0, p0, Lcom/narvii/chat/MultiAvatarView;->v2:Lcom/narvii/widget/NVImageView;

    if-eqz v0, :cond_7

    .line 61
    aget-object v1, p1, v4

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 62
    :cond_7
    array-length v0, p1

    if-le v0, v3, :cond_8

    iget-object v0, p0, Lcom/narvii/chat/MultiAvatarView;->v3:Lcom/narvii/widget/NVImageView;

    if-eqz v0, :cond_8

    .line 63
    aget-object v1, p1, v3

    invoke-virtual {v0, v1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 64
    :cond_8
    array-length v0, p1

    if-le v0, v2, :cond_9

    iget-object v0, p0, Lcom/narvii/chat/MultiAvatarView;->v4:Lcom/narvii/widget/NVImageView;

    if-eqz v0, :cond_9

    .line 65
    aget-object p1, p1, v2

    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    :cond_9
    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/String;

    .line 70
    invoke-virtual {p0, p1}, Lcom/narvii/chat/MultiAvatarView;->set([Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v0

    .line 72
    invoke-virtual {p0, v1}, Lcom/narvii/chat/MultiAvatarView;->set([Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setAvatars(Ljava/util/List;)V
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

    .line 76
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/narvii/chat/MultiAvatarView;->set([Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    .line 77
    invoke-virtual {p0, p1}, Lcom/narvii/chat/MultiAvatarView;->set([Ljava/lang/String;)V

    :goto_1
    return-void
.end method
