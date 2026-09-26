.class public Lcom/narvii/widget/SecretImageViewDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/widget/NVImageView$OnImageChangedListener;
.implements Lcom/narvii/widget/ISecretImage;


# static fields
.field static ytMaxSize:I

.field static ytMinSize:I

.field static ytPaint:Landroid/graphics/Paint;

.field static ytSymbol:Ljava/lang/String;


# instance fields
.field private bitmapRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private blurBmp:Landroid/graphics/Bitmap;

.field private blurDrawable:Landroid/graphics/drawable/Drawable;

.field private blurLightenColor:I

.field private blurOrigHeight:I

.field private blurOrigWidth:I

.field private blurPaint:Landroid/graphics/Paint;

.field private blurRadius:I

.field private cornerRadius:I

.field public forceBlur:Z

.field private host:Lcom/narvii/widget/NVImageView;

.field private hostHeight:I

.field private hostWidth:I

.field private mRectDst:Landroid/graphics/RectF;

.field private matrix:Landroid/graphics/Matrix;

.field private media:Lcom/narvii/model/Media;

.field public needHidden:Z

.field private overlayColor:I

.field private overlayPaint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private radii:[F

.field private shader:Landroid/graphics/BitmapShader;

.field private ytBgPaint:Landroid/graphics/Paint;

.field private ytBitmap:Landroid/graphics/Bitmap;

.field private ytRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lcom/narvii/widget/NVImageView;I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->needHidden:Z

    .line 7
    .line 8
    iput-boolean v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->forceBlur:Z

    .line 9
    .line 10
    new-instance v0, Landroid/graphics/RectF;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 14
    .line 15
    iput-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->mRectDst:Landroid/graphics/RectF;

    .line 16
    .line 17
    new-instance v0, Landroid/graphics/Paint;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 21
    .line 22
    iput-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurPaint:Landroid/graphics/Paint;

    .line 23
    .line 24
    new-instance v0, Landroid/graphics/Paint;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 28
    .line 29
    iput-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->overlayPaint:Landroid/graphics/Paint;

    .line 30
    const/4 v1, 0x1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    const/high16 v1, 0x41f00000    # 30.0f

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 43
    move-result v0

    .line 44
    .line 45
    iput v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurRadius:I

    .line 46
    .line 47
    iput-object p1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p0}, Lcom/narvii/widget/NVImageView;->setOnImageChangedListener(Lcom/narvii/widget/NVImageView$OnImageChangedListener;)V

    .line 51
    .line 52
    iput p2, p0, Lcom/narvii/widget/SecretImageViewDelegate;->cornerRadius:I

    .line 53
    .line 54
    new-instance p1, Landroid/graphics/Matrix;

    .line 55
    .line 56
    .line 57
    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 58
    .line 59
    iput-object p1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->matrix:Landroid/graphics/Matrix;

    .line 60
    return-void
.end method

.method private drawLoadingDrawable(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/widget/NVImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 10
    goto :goto_0

    .line 11
    .line 12
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 13
    .line 14
    .line 15
    const v1, -0x777778

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 22
    :goto_0
    return-void
.end method

.method private drawPlayButton(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 3
    .line 4
    iget-boolean v0, v0, Lcom/narvii/widget/NVImageView;->hidePlayButton:Z

    .line 5
    .line 6
    if-nez v0, :cond_7

    .line 7
    .line 8
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->media:Lcom/narvii/model/Media;

    .line 9
    .line 10
    if-eqz v0, :cond_7

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/narvii/model/Media;->isVideo()Z

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 19
    .line 20
    iget-boolean v0, v0, Lcom/narvii/widget/NVImageView;->forceShowPlayButton:Z

    .line 21
    .line 22
    if-eqz v0, :cond_7

    .line 23
    .line 24
    :cond_0
    iget v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->hostWidth:I

    .line 25
    .line 26
    if-lez v0, :cond_7

    .line 27
    .line 28
    iget v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->hostHeight:I

    .line 29
    .line 30
    if-lez v0, :cond_7

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->ytBgPaint:Landroid/graphics/Paint;

    .line 33
    const/4 v1, 0x1

    .line 34
    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    new-instance v0, Landroid/graphics/Paint;

    .line 38
    .line 39
    .line 40
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 41
    .line 42
    iput-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->ytBgPaint:Landroid/graphics/Paint;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 46
    .line 47
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->ytBgPaint:Landroid/graphics/Paint;

    .line 48
    .line 49
    const-string v2, "#22000000"

    .line 50
    .line 51
    .line 52
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 53
    move-result v2

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    :cond_1
    const/4 v4, 0x0

    .line 58
    const/4 v5, 0x0

    .line 59
    .line 60
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 64
    move-result v0

    .line 65
    int-to-float v6, v0

    .line 66
    .line 67
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 71
    move-result v0

    .line 72
    int-to-float v7, v0

    .line 73
    .line 74
    iget-object v8, p0, Lcom/narvii/widget/SecretImageViewDelegate;->ytBgPaint:Landroid/graphics/Paint;

    .line 75
    move-object v3, p1

    .line 76
    .line 77
    .line 78
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 79
    .line 80
    sget-object v0, Lcom/narvii/widget/SecretImageViewDelegate;->ytPaint:Landroid/graphics/Paint;

    .line 81
    .line 82
    if-nez v0, :cond_2

    .line 83
    .line 84
    new-instance v0, Landroid/graphics/Paint;

    .line 85
    .line 86
    .line 87
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 88
    .line 89
    sput-object v0, Lcom/narvii/widget/SecretImageViewDelegate;->ytPaint:Landroid/graphics/Paint;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 93
    .line 94
    sget-object v0, Lcom/narvii/widget/SecretImageViewDelegate;->ytPaint:Landroid/graphics/Paint;

    .line 95
    const/4 v2, 0x2

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFlags(I)V

    .line 99
    .line 100
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 104
    move-result-object v0

    .line 105
    .line 106
    sget v2, Lcom/narvii/lib/R$string;->fa_play:I

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 110
    move-result-object v0

    .line 111
    .line 112
    sput-object v0, Lcom/narvii/widget/SecretImageViewDelegate;->ytSymbol:Ljava/lang/String;

    .line 113
    .line 114
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 118
    move-result-object v0

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 122
    move-result-object v0

    .line 123
    .line 124
    sget v2, Lcom/narvii/lib/R$dimen;->video_play_min_size:I

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 128
    move-result v0

    .line 129
    .line 130
    sput v0, Lcom/narvii/widget/SecretImageViewDelegate;->ytMinSize:I

    .line 131
    .line 132
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 136
    move-result-object v0

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 140
    move-result-object v0

    .line 141
    .line 142
    sget v2, Lcom/narvii/lib/R$dimen;->video_play_max_size:I

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 146
    move-result v0

    .line 147
    .line 148
    sput v0, Lcom/narvii/widget/SecretImageViewDelegate;->ytMaxSize:I

    .line 149
    .line 150
    :cond_2
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->ytBitmap:Landroid/graphics/Bitmap;

    .line 151
    .line 152
    if-nez v0, :cond_3

    .line 153
    .line 154
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 158
    move-result-object v0

    .line 159
    .line 160
    sget v2, Lcom/narvii/lib/R$drawable;->ic_sr_media_play:I

    .line 161
    .line 162
    .line 163
    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 164
    move-result-object v0

    .line 165
    .line 166
    iput-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->ytBitmap:Landroid/graphics/Bitmap;

    .line 167
    .line 168
    new-instance v0, Landroid/graphics/RectF;

    .line 169
    const/4 v2, 0x0

    .line 170
    .line 171
    .line 172
    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 173
    .line 174
    iput-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->ytRectF:Landroid/graphics/RectF;

    .line 175
    .line 176
    :cond_3
    iget v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->hostHeight:I

    .line 177
    .line 178
    iget v2, p0, Lcom/narvii/widget/SecretImageViewDelegate;->hostWidth:I

    .line 179
    .line 180
    if-ge v0, v2, :cond_4

    .line 181
    move v3, v0

    .line 182
    goto :goto_0

    .line 183
    :cond_4
    move v3, v2

    .line 184
    :goto_0
    int-to-float v3, v3

    .line 185
    .line 186
    const/high16 v4, 0x3f400000    # 0.75f

    .line 187
    mul-float/2addr v3, v4

    .line 188
    float-to-int v3, v3

    .line 189
    .line 190
    sget v4, Lcom/narvii/widget/SecretImageViewDelegate;->ytMinSize:I

    .line 191
    .line 192
    if-ge v3, v4, :cond_5

    .line 193
    move v3, v4

    .line 194
    .line 195
    :cond_5
    sget v4, Lcom/narvii/widget/SecretImageViewDelegate;->ytMaxSize:I

    .line 196
    .line 197
    if-le v3, v4, :cond_6

    .line 198
    move v3, v4

    .line 199
    .line 200
    :cond_6
    iget-object v4, p0, Lcom/narvii/widget/SecretImageViewDelegate;->ytRectF:Landroid/graphics/RectF;

    .line 201
    .line 202
    sub-int v5, v2, v3

    .line 203
    shr-int/2addr v5, v1

    .line 204
    int-to-float v5, v5

    .line 205
    .line 206
    sub-int v6, v0, v3

    .line 207
    shr-int/2addr v6, v1

    .line 208
    int-to-float v6, v6

    .line 209
    add-int/2addr v2, v3

    .line 210
    shr-int/2addr v2, v1

    .line 211
    int-to-float v2, v2

    .line 212
    add-int/2addr v0, v3

    .line 213
    shr-int/2addr v0, v1

    .line 214
    int-to-float v0, v0

    .line 215
    .line 216
    .line 217
    invoke-virtual {v4, v5, v6, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 218
    .line 219
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->ytBitmap:Landroid/graphics/Bitmap;

    .line 220
    .line 221
    iget-object v1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->ytRectF:Landroid/graphics/RectF;

    .line 222
    .line 223
    sget-object v2, Lcom/narvii/widget/SecretImageViewDelegate;->ytPaint:Landroid/graphics/Paint;

    .line 224
    const/4 v3, 0x0

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 228
    :cond_7
    return-void
.end method

.method private drawRoundPath(Landroid/graphics/Path;Landroid/graphics/RectF;FI)V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->radii:[F

    .line 3
    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-array v0, v1, [F

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->radii:[F

    .line 11
    .line 12
    :cond_0
    and-int/lit8 v0, p4, 0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x1

    .line 15
    const/4 v4, 0x0

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->radii:[F

    .line 20
    .line 21
    aput v4, v0, v2

    .line 22
    .line 23
    aput v4, v0, v3

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->radii:[F

    .line 27
    .line 28
    aput p3, v0, v2

    .line 29
    .line 30
    aput p3, v0, v3

    .line 31
    .line 32
    :goto_0
    and-int/lit8 v0, p4, 0x2

    .line 33
    const/4 v2, 0x3

    .line 34
    const/4 v3, 0x2

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->radii:[F

    .line 39
    .line 40
    aput v4, v0, v3

    .line 41
    .line 42
    aput v4, v0, v2

    .line 43
    goto :goto_1

    .line 44
    .line 45
    :cond_2
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->radii:[F

    .line 46
    .line 47
    aput p3, v0, v3

    .line 48
    .line 49
    aput p3, v0, v2

    .line 50
    .line 51
    :goto_1
    and-int/lit8 v0, p4, 0x4

    .line 52
    const/4 v2, 0x5

    .line 53
    const/4 v3, 0x4

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->radii:[F

    .line 58
    .line 59
    aput v4, v0, v3

    .line 60
    .line 61
    aput v4, v0, v2

    .line 62
    goto :goto_2

    .line 63
    .line 64
    :cond_3
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->radii:[F

    .line 65
    .line 66
    aput p3, v0, v3

    .line 67
    .line 68
    aput p3, v0, v2

    .line 69
    :goto_2
    and-int/2addr p4, v1

    .line 70
    const/4 v0, 0x7

    .line 71
    const/4 v1, 0x6

    .line 72
    .line 73
    if-eqz p4, :cond_4

    .line 74
    .line 75
    iget-object p3, p0, Lcom/narvii/widget/SecretImageViewDelegate;->radii:[F

    .line 76
    .line 77
    aput v4, p3, v1

    .line 78
    .line 79
    aput v4, p3, v0

    .line 80
    goto :goto_3

    .line 81
    .line 82
    :cond_4
    iget-object p4, p0, Lcom/narvii/widget/SecretImageViewDelegate;->radii:[F

    .line 83
    .line 84
    aput p3, p4, v1

    .line 85
    .line 86
    aput p3, p4, v0

    .line 87
    .line 88
    :goto_3
    iget-object p3, p0, Lcom/narvii/widget/SecretImageViewDelegate;->radii:[F

    .line 89
    .line 90
    sget-object p4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 94
    return-void
.end method

.method private drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FILandroid/graphics/Paint;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    cmpl-float v0, p3, v0

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    if-nez p4, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2, p3, p3, p5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 11
    goto :goto_1

    .line 12
    .line 13
    :cond_0
    if-lez v0, :cond_2

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->path:Landroid/graphics/Path;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    new-instance v0, Landroid/graphics/Path;

    .line 20
    .line 21
    .line 22
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 23
    .line 24
    iput-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->path:Landroid/graphics/Path;

    .line 25
    goto :goto_0

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 29
    .line 30
    :goto_0
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->path:Landroid/graphics/Path;

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/narvii/widget/SecretImageViewDelegate;->drawRoundPath(Landroid/graphics/Path;Landroid/graphics/RectF;FI)V

    .line 34
    .line 35
    iget-object p2, p0, Lcom/narvii/widget/SecretImageViewDelegate;->path:Landroid/graphics/Path;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2, p5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 39
    goto :goto_1

    .line 40
    .line 41
    .line 42
    :cond_2
    invoke-virtual {p1, p2, p5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 43
    :goto_1
    return-void
.end method


# virtual methods
.method public drawSecret(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 6
    move-result v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    .line 12
    move-result v1

    .line 13
    sub-int/2addr v0, v1

    .line 14
    .line 15
    iget-object v1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    .line 19
    move-result v1

    .line 20
    sub-int/2addr v0, v1

    .line 21
    .line 22
    iput v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->hostWidth:I

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 28
    move-result v0

    .line 29
    .line 30
    iget-object v1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    .line 34
    move-result v1

    .line 35
    sub-int/2addr v0, v1

    .line 36
    .line 37
    iget-object v1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    .line 41
    move-result v1

    .line 42
    sub-int/2addr v0, v1

    .line 43
    .line 44
    iput v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->hostHeight:I

    .line 45
    .line 46
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 47
    .line 48
    iget v1, v0, Lcom/narvii/widget/NVImageView;->status:I

    .line 49
    const/4 v2, 0x4

    .line 50
    .line 51
    if-ne v1, v2, :cond_e

    .line 52
    .line 53
    iget-object v1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurDrawable:Landroid/graphics/drawable/Drawable;

    .line 54
    .line 55
    if-eqz v1, :cond_0

    .line 56
    goto :goto_0

    .line 57
    .line 58
    .line 59
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 60
    move-result-object v1

    .line 61
    :goto_0
    const/4 v0, 0x0

    .line 62
    .line 63
    if-eqz v1, :cond_7

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 67
    move-result v2

    .line 68
    .line 69
    if-lez v2, :cond_7

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 73
    move-result v2

    .line 74
    .line 75
    if-gtz v2, :cond_1

    .line 76
    .line 77
    goto/16 :goto_6

    .line 78
    .line 79
    :cond_1
    iget v2, p0, Lcom/narvii/widget/SecretImageViewDelegate;->hostWidth:I

    .line 80
    .line 81
    iget-object v3, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    .line 85
    move-result v3

    .line 86
    sub-int/2addr v2, v3

    .line 87
    .line 88
    iget-object v3, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    .line 92
    move-result v3

    .line 93
    sub-int/2addr v2, v3

    .line 94
    .line 95
    add-int/lit8 v2, v2, 0x1

    .line 96
    .line 97
    div-int/lit8 v2, v2, 0x2

    .line 98
    .line 99
    iget v3, p0, Lcom/narvii/widget/SecretImageViewDelegate;->hostHeight:I

    .line 100
    .line 101
    iget-object v4, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    .line 105
    move-result v4

    .line 106
    sub-int/2addr v3, v4

    .line 107
    .line 108
    iget-object v4, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    .line 112
    move-result v4

    .line 113
    sub-int/2addr v3, v4

    .line 114
    .line 115
    add-int/lit8 v3, v3, 0x1

    .line 116
    .line 117
    div-int/lit8 v3, v3, 0x2

    .line 118
    .line 119
    new-instance v4, Landroid/graphics/RectF;

    .line 120
    .line 121
    mul-int/lit8 v5, v2, 0x2

    .line 122
    int-to-float v5, v5

    .line 123
    .line 124
    mul-int/lit8 v6, v3, 0x2

    .line 125
    int-to-float v6, v6

    .line 126
    const/4 v7, 0x0

    .line 127
    .line 128
    .line 129
    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 130
    .line 131
    iput-object v4, p0, Lcom/narvii/widget/SecretImageViewDelegate;->mRectDst:Landroid/graphics/RectF;

    .line 132
    .line 133
    iget-object v4, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurBmp:Landroid/graphics/Bitmap;

    .line 134
    .line 135
    if-eqz v4, :cond_2

    .line 136
    .line 137
    .line 138
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 139
    move-result v4

    .line 140
    .line 141
    if-ne v4, v2, :cond_2

    .line 142
    .line 143
    iget-object v4, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurBmp:Landroid/graphics/Bitmap;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 147
    move-result v4

    .line 148
    .line 149
    if-eq v4, v3, :cond_8

    .line 150
    .line 151
    :cond_2
    :try_start_0
    instance-of v4, v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 152
    .line 153
    if-eqz v4, :cond_3

    .line 154
    move-object v4, v1

    .line 155
    .line 156
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 160
    move-result-object v4

    .line 161
    goto :goto_1

    .line 162
    :catchall_0
    move-exception v1

    .line 163
    .line 164
    goto/16 :goto_5

    .line 165
    :cond_3
    move-object v4, v0

    .line 166
    .line 167
    :goto_1
    if-eqz v4, :cond_4

    .line 168
    .line 169
    .line 170
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 171
    move-result v5

    .line 172
    .line 173
    .line 174
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 175
    move-result v6

    .line 176
    goto :goto_2

    .line 177
    .line 178
    .line 179
    :cond_4
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 180
    move-result v5

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 184
    move-result v6

    .line 185
    .line 186
    :goto_2
    mul-int v8, v5, v3

    .line 187
    .line 188
    mul-int v9, v2, v6

    .line 189
    .line 190
    const/high16 v10, 0x3f000000    # 0.5f

    .line 191
    .line 192
    if-le v8, v9, :cond_5

    .line 193
    int-to-float v8, v3

    .line 194
    int-to-float v9, v6

    .line 195
    div-float/2addr v8, v9

    .line 196
    int-to-float v9, v2

    .line 197
    int-to-float v11, v5

    .line 198
    mul-float/2addr v11, v8

    .line 199
    sub-float/2addr v9, v11

    .line 200
    mul-float/2addr v9, v10

    .line 201
    move v10, v7

    .line 202
    goto :goto_3

    .line 203
    :cond_5
    int-to-float v8, v2

    .line 204
    int-to-float v9, v5

    .line 205
    div-float/2addr v8, v9

    .line 206
    int-to-float v9, v3

    .line 207
    int-to-float v11, v6

    .line 208
    mul-float/2addr v11, v8

    .line 209
    sub-float/2addr v9, v11

    .line 210
    mul-float/2addr v9, v10

    .line 211
    move v10, v9

    .line 212
    move v9, v7

    .line 213
    .line 214
    :goto_3
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 215
    .line 216
    .line 217
    invoke-static {v2, v3, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 218
    move-result-object v2

    .line 219
    .line 220
    iput-object v2, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurBmp:Landroid/graphics/Bitmap;

    .line 221
    const/4 v3, -0x1

    .line 222
    .line 223
    .line 224
    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 225
    .line 226
    new-instance v2, Landroid/graphics/Canvas;

    .line 227
    .line 228
    iget-object v11, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurBmp:Landroid/graphics/Bitmap;

    .line 229
    .line 230
    .line 231
    invoke-direct {v2, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v2, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v2, v8, v8}, Landroid/graphics/Canvas;->scale(FF)V

    .line 238
    .line 239
    if-eqz v4, :cond_6

    .line 240
    .line 241
    iget-object v1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurPaint:Landroid/graphics/Paint;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 245
    .line 246
    iget-object v1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurPaint:Landroid/graphics/Paint;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v2, v4, v7, v7, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 250
    goto :goto_4

    .line 251
    :cond_6
    const/4 v3, 0x0

    .line 252
    .line 253
    .line 254
    invoke-virtual {v1, v3, v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 258
    .line 259
    :goto_4
    new-instance v1, Lcom/narvii/util/blur/NativeBlurProcess;

    .line 260
    .line 261
    .line 262
    invoke-direct {v1}, Lcom/narvii/util/blur/NativeBlurProcess;-><init>()V

    .line 263
    .line 264
    iget-object v2, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurBmp:Landroid/graphics/Bitmap;

    .line 265
    .line 266
    iget v3, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurRadius:I

    .line 267
    int-to-float v3, v3

    .line 268
    .line 269
    .line 270
    invoke-virtual {v1, v2, v3}, Lcom/narvii/util/blur/NativeBlurProcess;->blur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    .line 271
    move-result-object v1

    .line 272
    .line 273
    iput-object v1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurBmp:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    goto :goto_7

    .line 275
    .line 276
    :goto_5
    iput-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurBmp:Landroid/graphics/Bitmap;

    .line 277
    .line 278
    const-string v2, "fail to process blur image"

    .line 279
    .line 280
    .line 281
    invoke-static {v2, v1}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 282
    goto :goto_7

    .line 283
    .line 284
    .line 285
    :cond_7
    :goto_6
    invoke-direct {p0, p1}, Lcom/narvii/widget/SecretImageViewDelegate;->drawLoadingDrawable(Landroid/graphics/Canvas;)V

    .line 286
    .line 287
    :cond_8
    :goto_7
    iget-object v1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurBmp:Landroid/graphics/Bitmap;

    .line 288
    .line 289
    if-nez v1, :cond_9

    .line 290
    .line 291
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 295
    .line 296
    goto/16 :goto_9

    .line 297
    .line 298
    :cond_9
    iget-object v1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->shader:Landroid/graphics/BitmapShader;

    .line 299
    .line 300
    if-eqz v1, :cond_b

    .line 301
    .line 302
    iget-object v1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->bitmapRef:Ljava/lang/ref/WeakReference;

    .line 303
    .line 304
    if-nez v1, :cond_a

    .line 305
    move-object v1, v0

    .line 306
    goto :goto_8

    .line 307
    .line 308
    .line 309
    :cond_a
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 310
    move-result-object v1

    .line 311
    .line 312
    check-cast v1, Landroid/graphics/Bitmap;

    .line 313
    .line 314
    :goto_8
    iget-object v2, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurBmp:Landroid/graphics/Bitmap;

    .line 315
    .line 316
    if-eq v1, v2, :cond_b

    .line 317
    .line 318
    iput-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->shader:Landroid/graphics/BitmapShader;

    .line 319
    .line 320
    :cond_b
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->shader:Landroid/graphics/BitmapShader;

    .line 321
    .line 322
    if-nez v0, :cond_c

    .line 323
    .line 324
    new-instance v0, Landroid/graphics/BitmapShader;

    .line 325
    .line 326
    iget-object v1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurBmp:Landroid/graphics/Bitmap;

    .line 327
    .line 328
    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 329
    .line 330
    .line 331
    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 332
    .line 333
    iput-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->shader:Landroid/graphics/BitmapShader;

    .line 334
    .line 335
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 336
    .line 337
    iget-object v1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurBmp:Landroid/graphics/Bitmap;

    .line 338
    .line 339
    .line 340
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 341
    .line 342
    iput-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->bitmapRef:Ljava/lang/ref/WeakReference;

    .line 343
    .line 344
    :cond_c
    iget v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->hostWidth:I

    .line 345
    int-to-float v0, v0

    .line 346
    .line 347
    iget-object v1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurBmp:Landroid/graphics/Bitmap;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 351
    move-result v1

    .line 352
    int-to-float v1, v1

    .line 353
    .line 354
    const/high16 v2, 0x3f800000    # 1.0f

    .line 355
    mul-float/2addr v1, v2

    .line 356
    div-float/2addr v0, v1

    .line 357
    .line 358
    iget v1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->hostHeight:I

    .line 359
    int-to-float v1, v1

    .line 360
    .line 361
    iget-object v3, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurBmp:Landroid/graphics/Bitmap;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 365
    move-result v3

    .line 366
    int-to-float v3, v3

    .line 367
    mul-float/2addr v3, v2

    .line 368
    div-float/2addr v1, v3

    .line 369
    .line 370
    iget-object v2, p0, Lcom/narvii/widget/SecretImageViewDelegate;->matrix:Landroid/graphics/Matrix;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 374
    .line 375
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->shader:Landroid/graphics/BitmapShader;

    .line 376
    .line 377
    iget-object v1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->matrix:Landroid/graphics/Matrix;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 381
    .line 382
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurPaint:Landroid/graphics/Paint;

    .line 383
    .line 384
    iget-object v1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->shader:Landroid/graphics/BitmapShader;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 388
    .line 389
    .line 390
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 391
    .line 392
    iget-object v4, p0, Lcom/narvii/widget/SecretImageViewDelegate;->mRectDst:Landroid/graphics/RectF;

    .line 393
    .line 394
    iget v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->cornerRadius:I

    .line 395
    int-to-float v5, v0

    .line 396
    .line 397
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 398
    .line 399
    iget v6, v0, Lcom/narvii/widget/NVImageView;->cornerMask:I

    .line 400
    .line 401
    iget-object v7, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurPaint:Landroid/graphics/Paint;

    .line 402
    move-object v2, p0

    .line 403
    move-object v3, p1

    .line 404
    .line 405
    .line 406
    invoke-direct/range {v2 .. v7}, Lcom/narvii/widget/SecretImageViewDelegate;->drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FILandroid/graphics/Paint;)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 410
    .line 411
    .line 412
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 413
    .line 414
    .line 415
    invoke-direct {p0, p1}, Lcom/narvii/widget/SecretImageViewDelegate;->drawPlayButton(Landroid/graphics/Canvas;)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 419
    .line 420
    :goto_9
    iget v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurLightenColor:I

    .line 421
    .line 422
    .line 423
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    .line 424
    move-result v0

    .line 425
    .line 426
    if-lez v0, :cond_d

    .line 427
    .line 428
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurPaint:Landroid/graphics/Paint;

    .line 429
    .line 430
    iget v1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurLightenColor:I

    .line 431
    .line 432
    .line 433
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 434
    const/4 v3, 0x0

    .line 435
    const/4 v4, 0x0

    .line 436
    .line 437
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 441
    move-result v0

    .line 442
    int-to-float v5, v0

    .line 443
    .line 444
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 445
    .line 446
    .line 447
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 448
    move-result v0

    .line 449
    int-to-float v6, v0

    .line 450
    .line 451
    iget-object v7, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurPaint:Landroid/graphics/Paint;

    .line 452
    move-object v2, p1

    .line 453
    .line 454
    .line 455
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 456
    .line 457
    :cond_d
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->overlayPaint:Landroid/graphics/Paint;

    .line 458
    .line 459
    iget v1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->overlayColor:I

    .line 460
    .line 461
    .line 462
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 463
    const/4 v3, 0x0

    .line 464
    const/4 v4, 0x0

    .line 465
    .line 466
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 467
    .line 468
    .line 469
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 470
    move-result v0

    .line 471
    int-to-float v5, v0

    .line 472
    .line 473
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 474
    .line 475
    .line 476
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 477
    move-result v0

    .line 478
    int-to-float v6, v0

    .line 479
    .line 480
    iget-object v7, p0, Lcom/narvii/widget/SecretImageViewDelegate;->overlayPaint:Landroid/graphics/Paint;

    .line 481
    move-object v2, p1

    .line 482
    .line 483
    .line 484
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 485
    goto :goto_a

    .line 486
    .line 487
    .line 488
    :cond_e
    invoke-direct {p0, p1}, Lcom/narvii/widget/SecretImageViewDelegate;->drawLoadingDrawable(Landroid/graphics/Canvas;)V

    .line 489
    :goto_a
    return-void
.end method

.method public layout()V
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurOrigWidth:I

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 10
    move-result v0

    .line 11
    .line 12
    iput v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurOrigWidth:I

    .line 13
    .line 14
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 18
    move-result v0

    .line 19
    .line 20
    iput v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurOrigHeight:I

    .line 21
    :cond_0
    return-void
.end method

.method public needBlur()Z
    .locals 1

    iget-boolean v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->needHidden:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->forceBlur:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 0

    .line 1
    const/4 p1, 0x4

    .line 2
    .line 3
    if-ne p2, p1, :cond_0

    .line 4
    .line 5
    iget-boolean p1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->needHidden:Z

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/narvii/widget/SecretImageViewDelegate;->setImageDrawable2(Landroid/graphics/drawable/Drawable;)V

    .line 17
    :cond_0
    return-void
.end method

.method public setBlurLightenColor(I)V
    .locals 0

    iput p1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurLightenColor:I

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurBmp:Landroid/graphics/Bitmap;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 13
    const/4 p1, 0x0

    .line 14
    .line 15
    iput-object p1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurBmp:Landroid/graphics/Bitmap;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->bitmapRef:Ljava/lang/ref/WeakReference;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->shader:Landroid/graphics/BitmapShader;

    .line 20
    :cond_0
    return-void
.end method

.method public setImageDrawable2(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, v0}, Lcom/narvii/widget/NVImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    .line 10
    :cond_0
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 15
    .line 16
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 24
    .line 25
    iput-object v1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurDrawable:Landroid/graphics/drawable/Drawable;

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_1
    iput-object p1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurDrawable:Landroid/graphics/drawable/Drawable;

    .line 29
    .line 30
    :goto_0
    iget-object p1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 34
    .line 35
    iget-object p1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurBmp:Landroid/graphics/Bitmap;

    .line 36
    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 41
    .line 42
    iput-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurBmp:Landroid/graphics/Bitmap;

    .line 43
    :cond_2
    return-void
.end method

.method public setImageForceBlur(Lcom/narvii/model/Media;ZI)V
    .locals 0

    .line 1
    .line 2
    iput-boolean p2, p0, Lcom/narvii/widget/SecretImageViewDelegate;->forceBlur:Z

    .line 3
    .line 4
    iput p3, p0, Lcom/narvii/widget/SecretImageViewDelegate;->overlayColor:I

    .line 5
    .line 6
    iget-boolean p2, p0, Lcom/narvii/widget/SecretImageViewDelegate;->needHidden:Z

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/narvii/widget/SecretImageViewDelegate;->setImageMedia(Lcom/narvii/model/Media;Z)Z

    .line 10
    return-void
.end method

.method public setImageMedia(Lcom/narvii/model/Media;Z)Z
    .locals 0

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    const/4 p2, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p2, 0x0

    .line 8
    .line 9
    :goto_0
    iput-boolean p2, p0, Lcom/narvii/widget/SecretImageViewDelegate;->needHidden:Z

    .line 10
    .line 11
    iget-object p2, p0, Lcom/narvii/widget/SecretImageViewDelegate;->media:Lcom/narvii/model/Media;

    .line 12
    .line 13
    .line 14
    invoke-static {p2, p1}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    move-result p2

    .line 16
    .line 17
    if-nez p2, :cond_1

    .line 18
    const/4 p2, 0x0

    .line 19
    .line 20
    iput-object p2, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurBmp:Landroid/graphics/Bitmap;

    .line 21
    .line 22
    iput-object p2, p0, Lcom/narvii/widget/SecretImageViewDelegate;->shader:Landroid/graphics/BitmapShader;

    .line 23
    .line 24
    iput-object p2, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurDrawable:Landroid/graphics/drawable/Drawable;

    .line 25
    .line 26
    :cond_1
    iput-object p1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->media:Lcom/narvii/model/Media;

    .line 27
    .line 28
    iget-object p2, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p1}, Lcom/narvii/widget/NVImageView;->setImageMedia(Lcom/narvii/model/Media;)Z

    .line 32
    move-result p1

    .line 33
    return p1
.end method

.method public setImageResource(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 6
    .line 7
    iget-object p1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurBmp:Landroid/graphics/Bitmap;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 13
    const/4 p1, 0x0

    .line 14
    .line 15
    iput-object p1, p0, Lcom/narvii/widget/SecretImageViewDelegate;->blurBmp:Landroid/graphics/Bitmap;

    .line 16
    :cond_0
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;Z)Z
    .locals 0

    .line 1
    .line 2
    iput-boolean p2, p0, Lcom/narvii/widget/SecretImageViewDelegate;->needHidden:Z

    .line 3
    .line 4
    iget-object p2, p0, Lcom/narvii/widget/SecretImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2, p1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    .line 8
    move-result p1

    .line 9
    return p1
.end method
