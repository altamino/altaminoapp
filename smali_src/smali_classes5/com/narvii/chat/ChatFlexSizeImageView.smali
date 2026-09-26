.class public Lcom/narvii/chat/ChatFlexSizeImageView;
.super Lcom/narvii/widget/FlexSizeImageView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/FlexSizeImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    return-void
.end method


# virtual methods
.method public adjustSize([I)V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    aget v1, p1, v0

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    aget v3, p1, v2

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object v4

    .line 11
    .line 12
    .line 13
    const v5, 0x7f0700d7

    .line 14
    .line 15
    .line 16
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 17
    move-result v5

    .line 18
    .line 19
    .line 20
    const v6, 0x7f0700d6

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 24
    move-result v6

    .line 25
    .line 26
    .line 27
    const v7, 0x7f0700da

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 31
    move-result v7

    .line 32
    .line 33
    .line 34
    const v8, 0x7f0700d9

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 38
    move-result v8

    .line 39
    .line 40
    const/high16 v9, 0x3f000000    # 0.5f

    .line 41
    .line 42
    const/high16 v10, 0x3f800000    # 1.0f

    .line 43
    .line 44
    if-lt v1, v7, :cond_0

    .line 45
    .line 46
    if-ge v3, v8, :cond_1

    .line 47
    :cond_0
    int-to-float v7, v7

    .line 48
    mul-float/2addr v7, v10

    .line 49
    int-to-float v11, v1

    .line 50
    div-float/2addr v7, v11

    .line 51
    int-to-float v8, v8

    .line 52
    mul-float/2addr v8, v10

    .line 53
    int-to-float v12, v3

    .line 54
    div-float/2addr v8, v12

    .line 55
    .line 56
    .line 57
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    .line 58
    move-result v7

    .line 59
    .line 60
    cmpl-float v8, v7, v10

    .line 61
    .line 62
    if-eqz v8, :cond_1

    .line 63
    mul-float/2addr v11, v7

    .line 64
    add-float/2addr v11, v9

    .line 65
    float-to-int v1, v11

    .line 66
    mul-float/2addr v7, v12

    .line 67
    add-float/2addr v7, v9

    .line 68
    float-to-int v3, v7

    .line 69
    .line 70
    :cond_1
    if-gt v1, v5, :cond_2

    .line 71
    .line 72
    if-le v3, v6, :cond_3

    .line 73
    :cond_2
    int-to-float v5, v5

    .line 74
    mul-float/2addr v5, v10

    .line 75
    int-to-float v7, v1

    .line 76
    div-float/2addr v5, v7

    .line 77
    int-to-float v6, v6

    .line 78
    mul-float/2addr v6, v10

    .line 79
    int-to-float v8, v3

    .line 80
    div-float/2addr v6, v8

    .line 81
    .line 82
    .line 83
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    .line 84
    move-result v5

    .line 85
    .line 86
    cmpl-float v6, v5, v10

    .line 87
    .line 88
    if-eqz v6, :cond_3

    .line 89
    mul-float/2addr v7, v5

    .line 90
    add-float/2addr v7, v9

    .line 91
    float-to-int v1, v7

    .line 92
    mul-float/2addr v5, v8

    .line 93
    add-float/2addr v5, v9

    .line 94
    float-to-int v3, v5

    .line 95
    .line 96
    .line 97
    :cond_3
    const v5, 0x7f0700de

    .line 98
    .line 99
    .line 100
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 101
    move-result v5

    .line 102
    .line 103
    .line 104
    const v6, 0x7f0700df

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 108
    move-result v4

    .line 109
    .line 110
    mul-int/lit8 v5, v5, 0x2

    .line 111
    sub-int/2addr v1, v5

    .line 112
    .line 113
    mul-int/lit8 v4, v4, 0x2

    .line 114
    sub-int/2addr v3, v4

    .line 115
    .line 116
    if-gez v1, :cond_4

    .line 117
    move v1, v0

    .line 118
    .line 119
    :cond_4
    if-gez v3, :cond_5

    .line 120
    move v3, v0

    .line 121
    .line 122
    :cond_5
    aput v1, p1, v0

    .line 123
    .line 124
    aput v3, p1, v2

    .line 125
    return-void
.end method
