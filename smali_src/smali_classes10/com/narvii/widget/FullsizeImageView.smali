.class public Lcom/narvii/widget/FullsizeImageView;
.super Lcom/narvii/widget/NVImageView;
.source "SourceFile"


# instance fields
.field debugPaint:Landroid/graphics/Paint;

.field public forceUhq:Z

.field public hidingHeight:I

.field private final membershipService:Lcom/narvii/wallet/MembershipService;

.field originalHeight:I

.field paint:Landroid/graphics/Paint;

.field public preload:Z

.field public supportUhq:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/FullsizeImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/NVImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    sget-object v0, Lcom/narvii/lib/R$styleable;->FullsizeImageView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 4
    sget v0, Lcom/narvii/lib/R$styleable;->FullsizeImageView_preload:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/widget/FullsizeImageView;->preload:Z

    .line 5
    sget v0, Lcom/narvii/lib/R$styleable;->FullsizeImageView_hidingHeight:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/narvii/widget/FullsizeImageView;->hidingHeight:I

    .line 6
    sget v0, Lcom/narvii/lib/R$styleable;->FullsizeImageView_supportUhq:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/narvii/widget/FullsizeImageView;->supportUhq:Z

    .line 7
    invoke-static {p1}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    move-result-object p1

    const-string v0, "membership"

    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/wallet/MembershipService;

    iput-object p1, p0, Lcom/narvii/widget/FullsizeImageView;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 8
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 9
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/FullsizeImageView;->paint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 10
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setDither(Z)V

    return-void
.end method


# virtual methods
.method protected getCachedBitmap(Ljava/lang/String;)Z
    .locals 5

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/widget/NVImageView;->getImageLoader()Lcom/android/volley/toolbox/ImageLoader;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    check-cast v0, Lcom/narvii/util/image/NVImageLoader;

    .line 7
    .line 8
    .line 9
    const-string/jumbo v1, "v2_"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const-string v1, "hq"

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v1}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/narvii/util/image/NVImageLoader;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 25
    move-result-object v1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v1, 0x0

    .line 28
    :goto_0
    const/4 v2, 0x1

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 36
    move-result-object v3

    .line 37
    .line 38
    .line 39
    invoke-direct {v0, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 40
    .line 41
    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->loadingDrawable:Landroid/graphics/drawable/Drawable;

    .line 42
    .line 43
    iput-boolean v2, p0, Lcom/narvii/widget/NVImageView;->scalePlaceholder:Z

    .line 44
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    const-string v1, "prefetch bitmap hq "

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    .line 63
    invoke-static {p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;)V

    .line 64
    return v2

    .line 65
    .line 66
    .line 67
    :cond_1
    invoke-virtual {v0, p1}, Lcom/narvii/util/image/NVImageLoader;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 68
    move-result-object v1

    .line 69
    .line 70
    if-eqz v1, :cond_2

    .line 71
    .line 72
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 76
    move-result-object v3

    .line 77
    .line 78
    .line 79
    invoke-direct {v0, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 80
    .line 81
    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->loadingDrawable:Landroid/graphics/drawable/Drawable;

    .line 82
    .line 83
    iput-boolean v2, p0, Lcom/narvii/widget/NVImageView;->scalePlaceholder:Z

    .line 84
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    const-string v1, "prefetch bitmap 00 "

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object p1

    .line 101
    .line 102
    .line 103
    invoke-static {p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;)V

    .line 104
    return v2

    .line 105
    .line 106
    :cond_2
    const-string v1, "128"

    .line 107
    .line 108
    .line 109
    invoke-static {p1, v1}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    move-result-object v1

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1}, Lcom/narvii/util/image/NVImageLoader;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 114
    move-result-object v1

    .line 115
    const/4 v3, 0x0

    .line 116
    .line 117
    if-eqz v1, :cond_3

    .line 118
    .line 119
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 123
    move-result-object v4

    .line 124
    .line 125
    .line 126
    invoke-direct {v0, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 127
    .line 128
    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->loadingDrawable:Landroid/graphics/drawable/Drawable;

    .line 129
    .line 130
    iput-boolean v3, p0, Lcom/narvii/widget/NVImageView;->scalePlaceholder:Z

    .line 131
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    const-string v1, "prefetch bitmap 128 "

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    move-result-object p1

    .line 148
    .line 149
    .line 150
    invoke-static {p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;)V

    .line 151
    return v2

    .line 152
    .line 153
    :cond_3
    const-string v1, "68"

    .line 154
    .line 155
    .line 156
    invoke-static {p1, v1}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    move-result-object v1

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v1}, Lcom/narvii/util/image/NVImageLoader;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 161
    move-result-object v0

    .line 162
    .line 163
    if-eqz v0, :cond_4

    .line 164
    .line 165
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 169
    move-result-object v4

    .line 170
    .line 171
    .line 172
    invoke-direct {v1, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 173
    .line 174
    iput-object v1, p0, Lcom/narvii/widget/NVImageView;->loadingDrawable:Landroid/graphics/drawable/Drawable;

    .line 175
    .line 176
    iput-boolean v3, p0, Lcom/narvii/widget/NVImageView;->scalePlaceholder:Z

    .line 177
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .line 183
    const-string v1, "prefetch bitmap 68 "

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    move-result-object p1

    .line 194
    .line 195
    .line 196
    invoke-static {p1}, Lcom/narvii/util/Log;->d(Ljava/lang/String;)V

    .line 197
    return v2

    .line 198
    :cond_4
    return v3
.end method

.method public getRequestUrl(Lcom/narvii/model/Media;ZII)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    .line 6
    :cond_0
    iget-object p2, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-static {p2}, Lcom/narvii/util/YoutubeUtils;->getYoutubeVideoIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object p2

    .line 11
    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    .line 15
    invoke-static {p2}, Lcom/narvii/util/YoutubeUtils;->getHQYoutubeImage(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    .line 19
    :cond_1
    iget-object p2, p1, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    .line 20
    .line 21
    if-nez p2, :cond_2

    .line 22
    .line 23
    iget-object p2, p1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 24
    .line 25
    :cond_2
    iget-boolean p1, p0, Lcom/narvii/widget/FullsizeImageView;->supportUhq:Z

    .line 26
    .line 27
    if-eqz p1, :cond_4

    .line 28
    .line 29
    iget-boolean p1, p0, Lcom/narvii/widget/FullsizeImageView;->forceUhq:Z

    .line 30
    .line 31
    if-nez p1, :cond_3

    .line 32
    .line 33
    iget-object p1, p0, Lcom/narvii/widget/FullsizeImageView;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 34
    .line 35
    if-eqz p1, :cond_4

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/narvii/wallet/MembershipService;->isMembership()Z

    .line 39
    move-result p1

    .line 40
    .line 41
    if-eqz p1, :cond_4

    .line 42
    .line 43
    .line 44
    :cond_3
    const-string/jumbo p1, "v2_"

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 48
    move-result p1

    .line 49
    .line 50
    if-eqz p1, :cond_4

    .line 51
    .line 52
    .line 53
    const-string/jumbo p1, "uhq"

    .line 54
    .line 55
    .line 56
    invoke-static {p2, p1}, Lcom/narvii/widget/NVImageView;->replaceUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 58
    return-object p1

    .line 59
    .line 60
    :cond_4
    iget-object p1, p0, Lcom/narvii/widget/NVImageView;->imageType:Ljava/lang/String;

    .line 61
    .line 62
    const/16 p3, 0xf00

    .line 63
    .line 64
    .line 65
    invoke-static {p2, p1, p3, p3}, Lcom/narvii/widget/NVImageView;->fitSize(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 67
    return-object p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    .line 18
    :goto_0
    iget v1, p0, Lcom/narvii/widget/FullsizeImageView;->hidingHeight:I

    .line 19
    const/4 v2, 0x0

    .line 20
    .line 21
    if-lez v1, :cond_2

    .line 22
    .line 23
    iget v1, p0, Lcom/narvii/widget/FullsizeImageView;->originalHeight:I

    .line 24
    .line 25
    if-lez v1, :cond_2

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 31
    move-result v1

    .line 32
    .line 33
    iget v3, p0, Lcom/narvii/widget/FullsizeImageView;->originalHeight:I

    .line 34
    .line 35
    iget v4, p0, Lcom/narvii/widget/FullsizeImageView;->hidingHeight:I

    .line 36
    add-int/2addr v3, v4

    .line 37
    .line 38
    .line 39
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 40
    move-result v3

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 44
    move-result v4

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 48
    move-result v5

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 52
    move-result v6

    .line 53
    .line 54
    mul-int v7, v5, v3

    .line 55
    .line 56
    mul-int v8, v4, v6

    .line 57
    .line 58
    if-le v7, v8, :cond_1

    .line 59
    int-to-float v3, v3

    .line 60
    int-to-float v7, v6

    .line 61
    :goto_1
    div-float/2addr v3, v7

    .line 62
    goto :goto_2

    .line 63
    :cond_1
    int-to-float v3, v4

    .line 64
    int-to-float v7, v5

    .line 65
    goto :goto_1

    .line 66
    :goto_2
    int-to-float v4, v4

    .line 67
    int-to-float v5, v5

    .line 68
    mul-float/2addr v5, v3

    .line 69
    sub-float/2addr v4, v5

    .line 70
    .line 71
    const/high16 v5, 0x3f000000    # 0.5f

    .line 72
    mul-float/2addr v4, v5

    .line 73
    int-to-float v1, v1

    .line 74
    int-to-float v6, v6

    .line 75
    mul-float/2addr v6, v3

    .line 76
    sub-float/2addr v1, v6

    .line 77
    mul-float/2addr v1, v5

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 84
    move-result v6

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 88
    move-result v7

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 92
    move-result v8

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 96
    move-result v9

    .line 97
    sub-int/2addr v8, v9

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 101
    move-result v9

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 105
    move-result v10

    .line 106
    sub-int/2addr v9, v10

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 110
    add-float/2addr v4, v5

    .line 111
    float-to-int v4, v4

    .line 112
    int-to-float v4, v4

    .line 113
    add-float/2addr v1, v5

    .line 114
    float-to-int v1, v1

    .line 115
    int-to-float v1, v1

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v4, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 122
    .line 123
    iget-object v1, p0, Lcom/narvii/widget/FullsizeImageView;->paint:Landroid/graphics/Paint;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 130
    goto :goto_3

    .line 131
    .line 132
    .line 133
    :cond_2
    invoke-super {p0, p1}, Lcom/narvii/widget/NVImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 134
    .line 135
    :goto_3
    sget-boolean v1, Lcom/narvii/app/NVApplication;->DEBUG:Z

    .line 136
    .line 137
    if-eqz v1, :cond_4

    .line 138
    .line 139
    if-eqz v0, :cond_4

    .line 140
    .line 141
    iget v1, p0, Lcom/narvii/widget/NVImageView;->status:I

    .line 142
    const/4 v3, 0x4

    .line 143
    .line 144
    if-ne v1, v3, :cond_4

    .line 145
    .line 146
    iget-object v1, p0, Lcom/narvii/widget/NVImageView;->requestUrl:Ljava/lang/String;

    .line 147
    .line 148
    if-eqz v1, :cond_4

    .line 149
    .line 150
    .line 151
    const-string/jumbo v3, "v2_uhq."

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 155
    move-result v1

    .line 156
    .line 157
    if-eqz v1, :cond_4

    .line 158
    .line 159
    iget-object v1, p0, Lcom/narvii/widget/FullsizeImageView;->debugPaint:Landroid/graphics/Paint;

    .line 160
    .line 161
    if-nez v1, :cond_3

    .line 162
    .line 163
    new-instance v1, Landroid/graphics/Paint;

    .line 164
    .line 165
    .line 166
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 167
    .line 168
    iput-object v1, p0, Lcom/narvii/widget/FullsizeImageView;->debugPaint:Landroid/graphics/Paint;

    .line 169
    .line 170
    :cond_3
    iget-object v1, p0, Lcom/narvii/widget/FullsizeImageView;->debugPaint:Landroid/graphics/Paint;

    .line 171
    const/4 v3, -0x1

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 175
    .line 176
    iget-object v1, p0, Lcom/narvii/widget/FullsizeImageView;->debugPaint:Landroid/graphics/Paint;

    .line 177
    .line 178
    const/high16 v3, 0x40400000    # 3.0f

    .line 179
    .line 180
    const/high16 v4, -0x1000000

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1, v3, v2, v2, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 184
    .line 185
    iget-object v1, p0, Lcom/narvii/widget/FullsizeImageView;->debugPaint:Landroid/graphics/Paint;

    .line 186
    .line 187
    const/high16 v3, 0x41a00000    # 20.0f

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 191
    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .line 197
    const-string v3, "UHQ "

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 204
    move-result v3

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const-string/jumbo v3, "x"

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 217
    move-result v0

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    move-result-object v0

    .line 225
    .line 226
    .line 227
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 228
    move-result v1

    .line 229
    int-to-float v1, v1

    .line 230
    .line 231
    iget-object v3, p0, Lcom/narvii/widget/FullsizeImageView;->debugPaint:Landroid/graphics/Paint;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    .line 235
    move-result v3

    .line 236
    sub-float/2addr v1, v3

    .line 237
    .line 238
    iget-object v3, p0, Lcom/narvii/widget/FullsizeImageView;->debugPaint:Landroid/graphics/Paint;

    .line 239
    .line 240
    .line 241
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 242
    :cond_4
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p5}, Lcom/narvii/widget/NVImageView;->onLayout(ZIIII)V

    .line 4
    .line 5
    iget p1, p0, Lcom/narvii/widget/FullsizeImageView;->originalHeight:I

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    sub-int/2addr p5, p3

    .line 9
    .line 10
    iput p5, p0, Lcom/narvii/widget/FullsizeImageView;->originalHeight:I

    .line 11
    :cond_0
    return-void
.end method

.method protected setImageStatus(IZ)V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/NVImageView;->loadingDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    .line 4
    iget-boolean v1, p0, Lcom/narvii/widget/NVImageView;->scalePlaceholder:Z

    .line 5
    .line 6
    iget-boolean v2, p0, Lcom/narvii/widget/FullsizeImageView;->preload:Z

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    iget-object v2, p0, Lcom/narvii/widget/NVImageView;->media:Lcom/narvii/model/Media;

    .line 12
    .line 13
    if-nez v2, :cond_1

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_1
    iget-object v3, v2, Lcom/narvii/model/Media;->coverImage:Ljava/lang/String;

    .line 17
    .line 18
    if-nez v3, :cond_2

    .line 19
    .line 20
    iget-object v3, v2, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 21
    :cond_2
    const/4 v2, 0x1

    .line 22
    .line 23
    if-ne p1, v2, :cond_5

    .line 24
    .line 25
    if-eqz v3, :cond_5

    .line 26
    .line 27
    const-string v2, "_00."

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 31
    move-result v2

    .line 32
    .line 33
    if-nez v2, :cond_3

    .line 34
    goto :goto_0

    .line 35
    .line 36
    .line 37
    :cond_3
    invoke-virtual {p0}, Lcom/narvii/widget/NVImageView;->getImageLoader()Lcom/android/volley/toolbox/ImageLoader;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    instance-of v2, v2, Lcom/narvii/util/image/NVImageLoader;

    .line 41
    .line 42
    if-nez v2, :cond_4

    .line 43
    .line 44
    const-string v2, "no NVImageLoader available, prefetch doesn\'t work"

    .line 45
    .line 46
    .line 47
    invoke-static {v2}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    .line 48
    goto :goto_0

    .line 49
    .line 50
    .line 51
    :cond_4
    invoke-virtual {p0, v3}, Lcom/narvii/widget/FullsizeImageView;->getCachedBitmap(Ljava/lang/String;)Z

    .line 52
    move-result v2

    .line 53
    goto :goto_1

    .line 54
    :cond_5
    :goto_0
    const/4 v2, 0x0

    .line 55
    .line 56
    .line 57
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/narvii/widget/NVImageView;->setImageStatus(IZ)V

    .line 58
    .line 59
    if-eqz v2, :cond_6

    .line 60
    .line 61
    iput-object v0, p0, Lcom/narvii/widget/NVImageView;->loadingDrawable:Landroid/graphics/drawable/Drawable;

    .line 62
    .line 63
    iput-boolean v1, p0, Lcom/narvii/widget/NVImageView;->scalePlaceholder:Z

    .line 64
    :cond_6
    return-void
.end method
