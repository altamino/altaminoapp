.class public Lcom/narvii/widget/FlexSizeImageViewDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/widget/IFlexSizeImageView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/FlexSizeImageViewDelegate$IFlexSizeCallback;
    }
.end annotation


# instance fields
.field private configService:Lcom/narvii/config/ConfigService;

.field private estimatedHeight:I

.field private estimatedWidth:I

.field private flexSizeCallback:Lcom/narvii/widget/FlexSizeImageViewDelegate$IFlexSizeCallback;

.field private heightFromUrl:I

.field private host:Lcom/narvii/widget/NVImageView;

.field private keepRatio:Z

.field private preferredRatio:F

.field private ratioFromUrl:F

.field private widthFromUrl:I


# direct methods
.method public constructor <init>(Lcom/narvii/widget/NVImageView;FIILcom/narvii/widget/FlexSizeImageViewDelegate$IFlexSizeCallback;)V
    .locals 1
    .param p1    # Lcom/narvii/widget/NVImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/widget/FlexSizeImageViewDelegate$IFlexSizeCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    const/high16 v0, -0x40800000    # -1.0f

    .line 6
    .line 7
    iput v0, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->ratioFromUrl:F

    .line 8
    .line 9
    iput-object p1, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 10
    .line 11
    iput p2, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->preferredRatio:F

    .line 12
    .line 13
    iput p4, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->estimatedHeight:I

    .line 14
    .line 15
    iput p3, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->estimatedWidth:I

    .line 16
    .line 17
    iput-object p5, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->flexSizeCallback:Lcom/narvii/widget/FlexSizeImageViewDelegate$IFlexSizeCallback;

    .line 18
    return-void
.end method

.method private getConfigService()Lcom/narvii/config/ConfigService;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->configService:Lcom/narvii/config/ConfigService;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/util/Utils;->getNVContext(Landroid/content/Context;)Lcom/narvii/app/NVContext;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const-string v1, "config"

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    .line 24
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->configService:Lcom/narvii/config/ConfigService;

    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->configService:Lcom/narvii/config/ConfigService;

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string/jumbo v1, "unable to get a configService in context "

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    .line 56
    .line 57
    invoke-static {v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    const-string v1, "imageLoader"

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    move-result-object v0

    .line 68
    .line 69
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 70
    :cond_1
    return-object v0
.end method


# virtual methods
.method public flexMeasure(II)V
    .locals 4

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->ratioFromUrl:F

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    cmpl-float v0, v0, v1

    .line 6
    .line 7
    if-lez v0, :cond_2

    .line 8
    .line 9
    iget v0, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->widthFromUrl:I

    .line 10
    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    iget v1, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->heightFromUrl:I

    .line 14
    .line 15
    if-lez v1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 21
    move-result p2

    .line 22
    add-int/2addr v0, p2

    .line 23
    .line 24
    iget-object p2, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    .line 28
    move-result p2

    .line 29
    add-int/2addr v0, p2

    .line 30
    .line 31
    iget-object p2, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 32
    .line 33
    iget v1, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->heightFromUrl:I

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    .line 37
    move-result v2

    .line 38
    add-int/2addr v1, v2

    .line 39
    .line 40
    iget-object v2, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    .line 44
    move-result v2

    .line 45
    add-int/2addr v1, v2

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, v1}, Lcom/narvii/widget/NVImageView;->getFixedHeight(I)I

    .line 49
    move-result p2

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0, p2}, Lcom/narvii/widget/NVImageView;->innerSetMeasuredDimension(II)V

    .line 53
    .line 54
    goto/16 :goto_3

    .line 55
    .line 56
    :cond_0
    iget-object v0, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->flexSizeCallback:Lcom/narvii/widget/FlexSizeImageViewDelegate$IFlexSizeCallback;

    .line 57
    .line 58
    .line 59
    invoke-interface {v0, p1, p2}, Lcom/narvii/widget/FlexSizeImageViewDelegate$IFlexSizeCallback;->onSuperMeasuredCalled(II)V

    .line 60
    .line 61
    iget-object p1, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 65
    move-result p1

    .line 66
    .line 67
    iget-object p2, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    .line 71
    move-result p2

    .line 72
    sub-int/2addr p1, p2

    .line 73
    .line 74
    iget-object p2, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    .line 78
    move-result p2

    .line 79
    sub-int/2addr p1, p2

    .line 80
    .line 81
    iget-object p2, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 82
    int-to-float p1, p1

    .line 83
    .line 84
    iget v0, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->ratioFromUrl:F

    .line 85
    mul-float/2addr p1, v0

    .line 86
    .line 87
    const/high16 v0, 0x3f000000    # 0.5f

    .line 88
    add-float/2addr p1, v0

    .line 89
    float-to-int p1, p1

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    .line 93
    move-result v0

    .line 94
    add-int/2addr p1, v0

    .line 95
    .line 96
    iget-object v0, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 100
    move-result v0

    .line 101
    add-int/2addr p1, v0

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2, p1}, Lcom/narvii/widget/NVImageView;->getFixedHeight(I)I

    .line 105
    move-result p1

    .line 106
    .line 107
    iget-boolean p2, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->keepRatio:Z

    .line 108
    .line 109
    if-eqz p2, :cond_1

    .line 110
    int-to-float p2, p1

    .line 111
    .line 112
    iget v0, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->ratioFromUrl:F

    .line 113
    div-float/2addr p2, v0

    .line 114
    float-to-int p2, p2

    .line 115
    .line 116
    iget-object v0, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, p2, p1}, Lcom/narvii/widget/NVImageView;->innerSetMeasuredDimension(II)V

    .line 120
    .line 121
    goto/16 :goto_3

    .line 122
    .line 123
    :cond_1
    iget-object p2, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 127
    move-result v0

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2, v0, p1}, Lcom/narvii/widget/NVImageView;->innerSetMeasuredDimension(II)V

    .line 131
    .line 132
    goto/16 :goto_3

    .line 133
    .line 134
    .line 135
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 136
    move-result v0

    .line 137
    .line 138
    .line 139
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 140
    move-result v1

    .line 141
    .line 142
    const/high16 v2, 0x40000000    # 2.0f

    .line 143
    .line 144
    if-eq v1, v2, :cond_3

    .line 145
    const/4 v1, 0x1

    .line 146
    goto :goto_0

    .line 147
    :cond_3
    const/4 v1, 0x0

    .line 148
    .line 149
    :goto_0
    if-lez v0, :cond_7

    .line 150
    .line 151
    if-eqz v1, :cond_7

    .line 152
    .line 153
    iget-object p1, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 157
    move-result p1

    .line 158
    .line 159
    sub-int p1, v0, p1

    .line 160
    .line 161
    iget-object p2, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    .line 165
    move-result p2

    .line 166
    sub-int/2addr p1, p2

    .line 167
    .line 168
    iget-object p2, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p2}, Lcom/narvii/widget/NVImageView;->getStatus()I

    .line 172
    move-result p2

    .line 173
    const/4 v1, 0x4

    .line 174
    .line 175
    if-ne p2, v1, :cond_4

    .line 176
    .line 177
    iget-object p2, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 181
    move-result-object p2

    .line 182
    goto :goto_1

    .line 183
    :cond_4
    const/4 p2, 0x0

    .line 184
    .line 185
    :goto_1
    iget v1, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->preferredRatio:F

    .line 186
    .line 187
    if-eqz p2, :cond_5

    .line 188
    .line 189
    .line 190
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 191
    move-result v2

    .line 192
    .line 193
    if-lez v2, :cond_5

    .line 194
    .line 195
    .line 196
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 197
    move-result p2

    .line 198
    .line 199
    if-lez p2, :cond_5

    .line 200
    int-to-float v1, p2

    .line 201
    .line 202
    const/high16 v3, 0x3f800000    # 1.0f

    .line 203
    mul-float/2addr v1, v3

    .line 204
    int-to-float v3, v2

    .line 205
    div-float/2addr v1, v3

    .line 206
    mul-int/2addr p2, p1

    .line 207
    div-int/2addr p2, v2

    .line 208
    goto :goto_2

    .line 209
    .line 210
    :cond_5
    iget p2, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->preferredRatio:F

    .line 211
    int-to-float p1, p1

    .line 212
    mul-float/2addr p2, p1

    .line 213
    float-to-int p2, p2

    .line 214
    .line 215
    :goto_2
    iget-object p1, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 219
    move-result v2

    .line 220
    add-int/2addr p2, v2

    .line 221
    .line 222
    iget-object v2, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    .line 226
    move-result v2

    .line 227
    add-int/2addr p2, v2

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1, p2}, Lcom/narvii/widget/NVImageView;->getFixedHeight(I)I

    .line 231
    move-result p1

    .line 232
    .line 233
    iget-boolean p2, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->keepRatio:Z

    .line 234
    .line 235
    if-eqz p2, :cond_6

    .line 236
    int-to-float p2, p1

    .line 237
    div-float/2addr p2, v1

    .line 238
    float-to-int p2, p2

    .line 239
    .line 240
    iget-object v0, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0, p2, p1}, Lcom/narvii/widget/NVImageView;->innerSetMeasuredDimension(II)V

    .line 244
    goto :goto_3

    .line 245
    .line 246
    :cond_6
    iget-object p2, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 247
    .line 248
    .line 249
    invoke-virtual {p2, v0, p1}, Lcom/narvii/widget/NVImageView;->innerSetMeasuredDimension(II)V

    .line 250
    goto :goto_3

    .line 251
    .line 252
    :cond_7
    iget-object v0, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->flexSizeCallback:Lcom/narvii/widget/FlexSizeImageViewDelegate$IFlexSizeCallback;

    .line 253
    .line 254
    .line 255
    invoke-interface {v0, p1, p2}, Lcom/narvii/widget/FlexSizeImageViewDelegate$IFlexSizeCallback;->onSuperMeasuredCalled(II)V

    .line 256
    :goto_3
    return-void
.end method

.method public processImageUrl(Ljava/lang/String;)F
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lcom/narvii/util/Utils;->getImageAspectRatioFromUrl(Ljava/lang/String;)F

    .line 4
    move-result p1

    .line 5
    .line 6
    iput p1, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->ratioFromUrl:F

    .line 7
    return p1
.end method

.method public setImageSize(II)V
    .locals 3

    .line 1
    int-to-float v0, p2

    .line 2
    int-to-float v1, p1

    .line 3
    .line 4
    const/high16 v2, 0x3f800000    # 1.0f

    .line 5
    mul-float/2addr v1, v2

    .line 6
    div-float/2addr v0, v1

    .line 7
    .line 8
    const/high16 v1, 0x42c80000    # 100.0f

    .line 9
    mul-float/2addr v0, v1

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 13
    move-result v0

    .line 14
    int-to-float v0, v0

    .line 15
    div-float/2addr v0, v1

    .line 16
    .line 17
    iput v0, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->ratioFromUrl:F

    .line 18
    .line 19
    iget-object v0, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->F(Landroid/view/View;)I

    .line 23
    move-result v0

    .line 24
    .line 25
    .line 26
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 27
    move-result p1

    .line 28
    .line 29
    iput p1, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->widthFromUrl:I

    .line 30
    .line 31
    iget-object p1, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->E(Landroid/view/View;)I

    .line 35
    move-result p1

    .line 36
    .line 37
    .line 38
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 39
    move-result p1

    .line 40
    .line 41
    iput p1, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->heightFromUrl:I

    .line 42
    .line 43
    iget p1, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->widthFromUrl:I

    .line 44
    .line 45
    iget-object p2, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 49
    move-result p2

    .line 50
    .line 51
    iget-object v0, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 55
    move-result v0

    .line 56
    sub-int/2addr p2, v0

    .line 57
    .line 58
    iget-object v0, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 62
    move-result v0

    .line 63
    sub-int/2addr p2, v0

    .line 64
    .line 65
    if-ne p1, p2, :cond_0

    .line 66
    .line 67
    iget p1, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->heightFromUrl:I

    .line 68
    .line 69
    iget-object p2, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 73
    move-result p2

    .line 74
    .line 75
    iget-object v0, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 79
    move-result v0

    .line 80
    sub-int/2addr p2, v0

    .line 81
    .line 82
    iget-object v0, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 86
    move-result v0

    .line 87
    sub-int/2addr p2, v0

    .line 88
    .line 89
    if-ne p1, p2, :cond_0

    .line 90
    return-void

    .line 91
    .line 92
    :cond_0
    iget-object p1, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 96
    return-void
.end method

.method public setImageSizeFromUrl(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/narvii/widget/FlexSizeImageViewDelegate;->setImageSizeFromUrl(Ljava/lang/String;Z)V

    return-void
.end method

.method public setImageSizeFromUrl(Ljava/lang/String;Z)V
    .locals 5

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->estimatedWidth:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget v2, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->estimatedHeight:I

    if-lez v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v1

    .line 3
    :goto_1
    new-instance v3, Lcom/narvii/model/Media;

    invoke-direct {v3}, Lcom/narvii/model/Media;-><init>()V

    iput-object p1, v3, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    iget-object p1, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->host:Lcom/narvii/widget/NVImageView;

    .line 4
    iget-boolean v4, p1, Lcom/narvii/widget/NVImageView;->visible:Z

    invoke-virtual {p1, v3, v4, v0, v2}, Lcom/narvii/widget/NVImageView;->getRequestUrl(Lcom/narvii/model/Media;ZII)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {p0}, Lcom/narvii/widget/FlexSizeImageViewDelegate;->getConfigService()Lcom/narvii/config/ConfigService;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/narvii/util/Utils;->getImageSizeFromUrl(Ljava/lang/String;Lcom/narvii/config/ConfigService;Z)[I

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object p2, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->flexSizeCallback:Lcom/narvii/widget/FlexSizeImageViewDelegate$IFlexSizeCallback;

    .line 6
    invoke-interface {p2, p1}, Lcom/narvii/widget/FlexSizeImageViewDelegate$IFlexSizeCallback;->adjustSize([I)V

    .line 7
    aget p2, p1, v1

    const/4 v0, 0x1

    .line 8
    aget p1, p1, v0

    .line 9
    invoke-virtual {p0, p2, p1}, Lcom/narvii/widget/FlexSizeImageViewDelegate;->setImageSize(II)V

    return-void
.end method

.method public setKeepRatio(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/narvii/widget/FlexSizeImageViewDelegate;->keepRatio:Z

    return-void
.end method
