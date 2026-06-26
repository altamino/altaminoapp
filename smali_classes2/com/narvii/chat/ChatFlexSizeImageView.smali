.class public Lcom/narvii/chat/ChatFlexSizeImageView;
.super Lcom/narvii/widget/FlexSizeImageView;
.source "ChatFlexSizeImageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/FlexSizeImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public adjustSize([I)V
    .locals 13

    const/4 v0, 0x0

    .line 21
    aget v1, p1, v0

    const/4 v2, 0x1

    .line 22
    aget v3, p1, v2

    .line 24
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07009d

    .line 25
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v6, 0x7f07009c

    .line 26
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v7, 0x7f0700a0

    .line 27
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const v8, 0x7f07009f

    .line 28
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const/high16 v9, 0x3f000000    # 0.5f

    const/high16 v10, 0x3f800000    # 1.0f

    if-lt v1, v7, :cond_0

    if-ge v3, v8, :cond_1

    :cond_0
    int-to-float v7, v7

    mul-float v7, v7, v10

    int-to-float v11, v1

    div-float/2addr v7, v11

    int-to-float v8, v8

    mul-float v8, v8, v10

    int-to-float v12, v3

    div-float/2addr v8, v12

    .line 33
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    cmpl-float v8, v7, v10

    if-eqz v8, :cond_1

    mul-float v11, v11, v7

    add-float/2addr v11, v9

    float-to-int v1, v11

    mul-float v7, v7, v12

    add-float/2addr v7, v9

    float-to-int v3, v7

    :cond_1
    if-gt v1, v5, :cond_2

    if-le v3, v6, :cond_3

    :cond_2
    int-to-float v5, v5

    mul-float v5, v5, v10

    int-to-float v7, v1

    div-float/2addr v5, v7

    int-to-float v6, v6

    mul-float v6, v6, v10

    int-to-float v8, v3

    div-float/2addr v6, v8

    .line 42
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    cmpl-float v6, v5, v10

    if-eqz v6, :cond_3

    mul-float v7, v7, v5

    add-float/2addr v7, v9

    float-to-int v1, v7

    mul-float v5, v5, v8

    add-float/2addr v5, v9

    float-to-int v3, v5

    :cond_3
    const v5, 0x7f0700a4

    .line 48
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v6, 0x7f0700a5

    .line 49
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v1, v5

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    if-gez v1, :cond_4

    const/4 v1, 0x0

    :cond_4
    if-gez v3, :cond_5

    const/4 v3, 0x0

    .line 55
    :cond_5
    aput v1, p1, v0

    .line 56
    aput v3, p1, v2

    return-void
.end method
