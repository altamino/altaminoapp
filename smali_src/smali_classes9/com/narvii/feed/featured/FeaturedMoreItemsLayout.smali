.class public Lcom/narvii/feed/featured/FeaturedMoreItemsLayout;
.super Lcom/narvii/widget/MaskView;
.source "SourceFile"


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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/MaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const/4 p1, -0x1

    .line 5
    .line 6
    iput p1, p0, Lcom/narvii/feed/featured/FeaturedMoreItemsLayout;->count:I

    .line 7
    return-void
.end method

.method private needBlurCurrentImage(I)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/feed/featured/FeaturedMoreItemsLayout;->needBlurImage:Ljava/util/List;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v0

    .line 9
    .line 10
    if-gt v0, p1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/narvii/feed/featured/FeaturedMoreItemsLayout;->needBlurImage:Ljava/util/List;

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    check-cast p1, Ljava/lang/Boolean;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    move-result p1

    .line 24
    return p1

    .line 25
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 26
    return p1
.end method


# virtual methods
.method protected varargs set([Ljava/lang/String;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    iget v1, p0, Lcom/narvii/feed/featured/FeaturedMoreItemsLayout;->count:I

    .line 11
    array-length v2, p1

    .line 12
    .line 13
    if-eq v1, v2, :cond_2

    .line 14
    array-length v1, p1

    .line 15
    .line 16
    iput v1, p0, Lcom/narvii/feed/featured/FeaturedMoreItemsLayout;->count:I

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 20
    .line 21
    iget v1, p0, Lcom/narvii/feed/featured/FeaturedMoreItemsLayout;->count:I

    .line 22
    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    .line 26
    const v1, 0x7f0d025a

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v2, 0x4

    .line 32
    .line 33
    if-ge v1, v2, :cond_1

    .line 34
    .line 35
    .line 36
    const v1, 0x7f0d025b

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 40
    goto :goto_0

    .line 41
    .line 42
    .line 43
    :cond_1
    const v1, 0x7f0d025c

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    :goto_0
    const v0, 0x7f0a06ec

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    check-cast v0, Lcom/narvii/widget/SecretImageView;

    .line 56
    .line 57
    iput-object v0, p0, Lcom/narvii/feed/featured/FeaturedMoreItemsLayout;->v1:Lcom/narvii/widget/SecretImageView;

    .line 58
    .line 59
    .line 60
    const v0, 0x7f0a06ed

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    move-result-object v0

    .line 65
    .line 66
    check-cast v0, Lcom/narvii/widget/SecretImageView;

    .line 67
    .line 68
    iput-object v0, p0, Lcom/narvii/feed/featured/FeaturedMoreItemsLayout;->v2:Lcom/narvii/widget/SecretImageView;

    .line 69
    .line 70
    .line 71
    const v0, 0x7f0a06ee

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    move-result-object v0

    .line 76
    .line 77
    check-cast v0, Lcom/narvii/widget/SecretImageView;

    .line 78
    .line 79
    iput-object v0, p0, Lcom/narvii/feed/featured/FeaturedMoreItemsLayout;->v3:Lcom/narvii/widget/SecretImageView;

    .line 80
    .line 81
    .line 82
    const v0, 0x7f0a06ef

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    move-result-object v0

    .line 87
    .line 88
    check-cast v0, Lcom/narvii/widget/SecretImageView;

    .line 89
    .line 90
    iput-object v0, p0, Lcom/narvii/feed/featured/FeaturedMoreItemsLayout;->v4:Lcom/narvii/widget/SecretImageView;

    .line 91
    :cond_2
    array-length v0, p1

    .line 92
    .line 93
    if-lez v0, :cond_3

    .line 94
    .line 95
    iget-object v0, p0, Lcom/narvii/feed/featured/FeaturedMoreItemsLayout;->v1:Lcom/narvii/widget/SecretImageView;

    .line 96
    .line 97
    if-eqz v0, :cond_3

    .line 98
    const/4 v1, 0x0

    .line 99
    .line 100
    aget-object v2, p1, v1

    .line 101
    .line 102
    .line 103
    invoke-direct {p0, v1}, Lcom/narvii/feed/featured/FeaturedMoreItemsLayout;->needBlurCurrentImage(I)Z

    .line 104
    move-result v1

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v2, v1}, Lcom/narvii/widget/SecretImageView;->setImageUrl(Ljava/lang/String;Z)Z

    .line 108
    :cond_3
    array-length v0, p1

    .line 109
    const/4 v1, 0x1

    .line 110
    .line 111
    if-le v0, v1, :cond_4

    .line 112
    .line 113
    iget-object v0, p0, Lcom/narvii/feed/featured/FeaturedMoreItemsLayout;->v2:Lcom/narvii/widget/SecretImageView;

    .line 114
    .line 115
    if-eqz v0, :cond_4

    .line 116
    .line 117
    aget-object v2, p1, v1

    .line 118
    .line 119
    .line 120
    invoke-direct {p0, v1}, Lcom/narvii/feed/featured/FeaturedMoreItemsLayout;->needBlurCurrentImage(I)Z

    .line 121
    move-result v1

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v2, v1}, Lcom/narvii/widget/SecretImageView;->setImageUrl(Ljava/lang/String;Z)Z

    .line 125
    :cond_4
    array-length v0, p1

    .line 126
    const/4 v1, 0x2

    .line 127
    .line 128
    if-le v0, v1, :cond_5

    .line 129
    .line 130
    iget-object v0, p0, Lcom/narvii/feed/featured/FeaturedMoreItemsLayout;->v3:Lcom/narvii/widget/SecretImageView;

    .line 131
    .line 132
    if-eqz v0, :cond_5

    .line 133
    .line 134
    aget-object v2, p1, v1

    .line 135
    .line 136
    .line 137
    invoke-direct {p0, v1}, Lcom/narvii/feed/featured/FeaturedMoreItemsLayout;->needBlurCurrentImage(I)Z

    .line 138
    move-result v1

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v2, v1}, Lcom/narvii/widget/SecretImageView;->setImageUrl(Ljava/lang/String;Z)Z

    .line 142
    :cond_5
    array-length v0, p1

    .line 143
    const/4 v1, 0x3

    .line 144
    .line 145
    if-le v0, v1, :cond_6

    .line 146
    .line 147
    iget-object v0, p0, Lcom/narvii/feed/featured/FeaturedMoreItemsLayout;->v4:Lcom/narvii/widget/SecretImageView;

    .line 148
    .line 149
    if-eqz v0, :cond_6

    .line 150
    .line 151
    aget-object p1, p1, v1

    .line 152
    .line 153
    .line 154
    invoke-direct {p0, v1}, Lcom/narvii/feed/featured/FeaturedMoreItemsLayout;->needBlurCurrentImage(I)Z

    .line 155
    move-result v1

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, p1, v1}, Lcom/narvii/widget/SecretImageView;->setImageUrl(Ljava/lang/String;Z)Z

    .line 159
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

    .line 1
    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 13
    move-result v0

    .line 14
    .line 15
    new-array v0, v0, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 20
    .line 21
    check-cast p1, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/narvii/feed/featured/FeaturedMoreItemsLayout;->set([Ljava/lang/String;)V

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 27
    .line 28
    new-array p1, p1, [Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/narvii/feed/featured/FeaturedMoreItemsLayout;->set([Ljava/lang/String;)V

    .line 32
    :goto_1
    return-void
.end method
