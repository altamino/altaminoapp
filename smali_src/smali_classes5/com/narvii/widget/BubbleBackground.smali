.class public Lcom/narvii/widget/BubbleBackground;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final colors:[I


# instance fields
.field private id:Ljava/lang/String;

.field private paint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x6

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    const/16 v1, 0xcf

    .line 6
    .line 7
    const/16 v2, 0xe8

    .line 8
    .line 9
    const/16 v3, 0x96

    .line 10
    .line 11
    .line 12
    invoke-static {v3, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    .line 16
    aput v1, v0, v2

    .line 17
    .line 18
    const/16 v1, 0xd2

    .line 19
    .line 20
    const/16 v2, 0x92

    .line 21
    .line 22
    const/16 v3, 0x6a

    .line 23
    .line 24
    .line 25
    invoke-static {v3, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x1

    .line 28
    .line 29
    aput v1, v0, v2

    .line 30
    .line 31
    const/16 v1, 0xaf

    .line 32
    .line 33
    const/16 v2, 0x99

    .line 34
    .line 35
    const/16 v3, 0xee

    .line 36
    .line 37
    .line 38
    invoke-static {v3, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    .line 39
    move-result v1

    .line 40
    const/4 v2, 0x2

    .line 41
    .line 42
    aput v1, v0, v2

    .line 43
    .line 44
    const/16 v1, 0x9e

    .line 45
    .line 46
    const/16 v2, 0xd6

    .line 47
    .line 48
    const/16 v3, 0xa6

    .line 49
    .line 50
    .line 51
    invoke-static {v3, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    .line 52
    move-result v1

    .line 53
    const/4 v2, 0x3

    .line 54
    .line 55
    aput v1, v0, v2

    .line 56
    .line 57
    const/16 v1, 0x9c

    .line 58
    .line 59
    const/16 v2, 0x93

    .line 60
    .line 61
    const/16 v3, 0xb8

    .line 62
    .line 63
    .line 64
    invoke-static {v3, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    .line 65
    move-result v1

    .line 66
    const/4 v2, 0x4

    .line 67
    .line 68
    aput v1, v0, v2

    .line 69
    .line 70
    const/16 v1, 0xda

    .line 71
    .line 72
    const/16 v2, 0x8a

    .line 73
    .line 74
    const/16 v3, 0xdd

    .line 75
    .line 76
    .line 77
    invoke-static {v3, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    .line 78
    move-result v1

    .line 79
    const/4 v2, 0x5

    .line 80
    .line 81
    aput v1, v0, v2

    .line 82
    .line 83
    sput-object v0, Lcom/narvii/widget/BubbleBackground;->colors:[I

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    .line 5
    new-instance p1, Landroid/graphics/Paint;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/narvii/widget/BubbleBackground;->paint:Landroid/graphics/Paint;

    .line 11
    const/4 p2, 0x1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 15
    return-void
.end method


# virtual methods
.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/narvii/widget/BubbleBackground;->id:Ljava/lang/String;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/widget/BubbleBackground;->id:Ljava/lang/String;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    return-void

    .line 9
    .line 10
    :cond_0
    sget-object v1, Lcom/narvii/widget/BubbleBackground;->colors:[I

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 14
    move-result v0

    .line 15
    array-length v2, v1

    .line 16
    rem-int/2addr v0, v2

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 20
    move-result v0

    .line 21
    .line 22
    aget v0, v1, v0

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    .line 26
    move-result v1

    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x34

    .line 29
    .line 30
    const/16 v2, 0xff

    .line 31
    .line 32
    if-le v1, v2, :cond_1

    .line 33
    move v1, v2

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    .line 37
    move-result v3

    .line 38
    .line 39
    add-int/lit8 v3, v3, 0x34

    .line 40
    .line 41
    if-le v3, v2, :cond_2

    .line 42
    move v3, v2

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    .line 46
    move-result v4

    .line 47
    .line 48
    add-int/lit8 v4, v4, 0x34

    .line 49
    .line 50
    if-le v4, v2, :cond_3

    .line 51
    goto :goto_0

    .line 52
    :cond_3
    move v2, v4

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-static {v1, v3, v2}, Landroid/graphics/Color;->rgb(III)I

    .line 56
    move-result v1

    .line 57
    .line 58
    iget-object v2, p0, Lcom/narvii/widget/BubbleBackground;->paint:Landroid/graphics/Paint;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    const/4 v4, 0x0

    .line 63
    const/4 v5, 0x0

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 67
    move-result v0

    .line 68
    int-to-float v6, v0

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 72
    move-result v0

    .line 73
    int-to-float v7, v0

    .line 74
    .line 75
    iget-object v8, p0, Lcom/narvii/widget/BubbleBackground;->paint:Landroid/graphics/Paint;

    .line 76
    move-object v3, p1

    .line 77
    .line 78
    .line 79
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 80
    .line 81
    iget-object v0, p0, Lcom/narvii/widget/BubbleBackground;->paint:Landroid/graphics/Paint;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 88
    move-result-object v0

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 92
    move-result-object v0

    .line 93
    .line 94
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 95
    .line 96
    const/high16 v1, 0x42000000    # 32.0f

    .line 97
    mul-float/2addr v0, v1

    .line 98
    float-to-int v0, v0

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 102
    move-result v1

    .line 103
    .line 104
    div-int/lit8 v1, v1, 0x2

    .line 105
    add-int/2addr v1, v0

    .line 106
    div-int/2addr v1, v0

    .line 107
    .line 108
    div-int/lit8 v1, v1, 0x2

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 112
    move-result v2

    .line 113
    .line 114
    div-int/lit8 v2, v2, 0x2

    .line 115
    .line 116
    mul-int/lit8 v3, v0, 0x2

    .line 117
    add-int/2addr v2, v3

    .line 118
    div-int/2addr v2, v0

    .line 119
    .line 120
    div-int/lit8 v2, v2, 0x4

    .line 121
    neg-int v3, v1

    .line 122
    .line 123
    :goto_1
    if-gt v3, v1, :cond_6

    .line 124
    .line 125
    mul-int v4, v3, v0

    .line 126
    .line 127
    mul-int/lit8 v4, v4, 0x2

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 131
    move-result v5

    .line 132
    .line 133
    div-int/lit8 v5, v5, 0x2

    .line 134
    add-int/2addr v4, v5

    .line 135
    neg-int v5, v2

    .line 136
    .line 137
    :goto_2
    if-gt v5, v2, :cond_5

    .line 138
    .line 139
    rem-int/lit8 v6, v3, 0x2

    .line 140
    .line 141
    if-nez v6, :cond_4

    .line 142
    const/4 v6, -0x1

    .line 143
    goto :goto_3

    .line 144
    :cond_4
    const/4 v6, 0x1

    .line 145
    :goto_3
    mul-int/2addr v6, v0

    .line 146
    .line 147
    mul-int v7, v5, v0

    .line 148
    .line 149
    mul-int/lit8 v7, v7, 0x4

    .line 150
    add-int/2addr v6, v7

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 154
    move-result v7

    .line 155
    .line 156
    div-int/lit8 v7, v7, 0x2

    .line 157
    add-int/2addr v6, v7

    .line 158
    int-to-float v6, v6

    .line 159
    int-to-float v7, v4

    .line 160
    int-to-float v8, v0

    .line 161
    .line 162
    iget-object v9, p0, Lcom/narvii/widget/BubbleBackground;->paint:Landroid/graphics/Paint;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 166
    .line 167
    add-int/lit8 v5, v5, 0x1

    .line 168
    goto :goto_2

    .line 169
    .line 170
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 171
    goto :goto_1

    .line 172
    :cond_6
    return-void
.end method

.method public set(Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/BubbleBackground;->id:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 6
    return-void
.end method
