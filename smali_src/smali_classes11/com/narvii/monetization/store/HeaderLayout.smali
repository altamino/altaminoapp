.class public Lcom/narvii/monetization/store/HeaderLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private final actionBarHeight:I

.field private icon:Landroid/view/View;

.field private imageMaxSize:I

.field private imageMinSize:I

.field private final statusBarHeight:I

.field private titleWrapper:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/monetization/store/HeaderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/monetization/store/HeaderLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x7fffffff

    iput p1, p0, Lcom/narvii/monetization/store/HeaderLayout;->imageMaxSize:I

    iput p1, p0, Lcom/narvii/monetization/store/HeaderLayout;->imageMinSize:I

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/narvii/monetization/store/HeaderLayout;->statusBarHeight:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->getActionBarHeight(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/narvii/monetization/store/HeaderLayout;->actionBarHeight:I

    return-void
.end method

.method private calcAlpha(Landroid/view/View;II)F
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 4
    move-result p1

    .line 5
    .line 6
    if-gt p1, p2, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    .line 10
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 11
    .line 12
    if-lt p1, p3, :cond_1

    .line 13
    move p1, v0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    :cond_1
    sub-int p1, p3, p1

    .line 17
    int-to-float p1, p1

    .line 18
    mul-float/2addr p1, v0

    .line 19
    sub-int/2addr p3, p2

    .line 20
    int-to-float p2, p3

    .line 21
    div-float/2addr p1, p2

    .line 22
    .line 23
    sub-float p1, v0, p1

    .line 24
    :goto_0
    return p1
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0dca

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/monetization/store/HeaderLayout;->icon:Landroid/view/View;

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0a0dce

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/monetization/store/HeaderLayout;->titleWrapper:Landroid/view/View;

    .line 22
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 7
    move-result p1

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 11
    move-result p2

    .line 12
    .line 13
    iget p3, p0, Lcom/narvii/monetization/store/HeaderLayout;->actionBarHeight:I

    .line 14
    .line 15
    iget p4, p0, Lcom/narvii/monetization/store/HeaderLayout;->imageMinSize:I

    .line 16
    .line 17
    sub-int p5, p3, p4

    .line 18
    .line 19
    div-int/lit8 p5, p5, 0x2

    .line 20
    sub-int/2addr p3, p5

    .line 21
    .line 22
    .line 23
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    .line 24
    move-result p3

    .line 25
    .line 26
    iget p4, p0, Lcom/narvii/monetization/store/HeaderLayout;->statusBarHeight:I

    .line 27
    add-int/2addr p4, p5

    .line 28
    sub-int/2addr p2, p4

    .line 29
    .line 30
    iget p5, p0, Lcom/narvii/monetization/store/HeaderLayout;->imageMaxSize:I

    .line 31
    .line 32
    iget-object v0, p0, Lcom/narvii/monetization/store/HeaderLayout;->titleWrapper:Landroid/view/View;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 36
    move-result v0

    .line 37
    add-int/2addr p5, v0

    .line 38
    const/4 v0, 0x0

    .line 39
    .line 40
    const/high16 v1, 0x3f800000    # 1.0f

    .line 41
    .line 42
    if-le p2, p5, :cond_0

    .line 43
    .line 44
    iget p3, p0, Lcom/narvii/monetization/store/HeaderLayout;->imageMaxSize:I

    .line 45
    .line 46
    iget-object p5, p0, Lcom/narvii/monetization/store/HeaderLayout;->titleWrapper:Landroid/view/View;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    .line 50
    move-result p5

    .line 51
    add-int/2addr p3, p5

    .line 52
    .line 53
    iget p5, p0, Lcom/narvii/monetization/store/HeaderLayout;->imageMaxSize:I

    .line 54
    .line 55
    sub-int v2, p1, p5

    .line 56
    .line 57
    div-int/lit8 v2, v2, 0x2

    .line 58
    sub-int/2addr p2, p3

    .line 59
    .line 60
    div-int/lit8 p2, p2, 0x2

    .line 61
    add-int/2addr p2, p4

    .line 62
    .line 63
    iget-object p3, p0, Lcom/narvii/monetization/store/HeaderLayout;->icon:Landroid/view/View;

    .line 64
    .line 65
    add-int p4, v2, p5

    .line 66
    add-int/2addr p5, p2

    .line 67
    .line 68
    .line 69
    invoke-virtual {p3, v2, p2, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 70
    .line 71
    iget-object p3, p0, Lcom/narvii/monetization/store/HeaderLayout;->titleWrapper:Landroid/view/View;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p3, v1}, Landroid/view/View;->setAlpha(F)V

    .line 75
    .line 76
    iget-object p3, p0, Lcom/narvii/monetization/store/HeaderLayout;->titleWrapper:Landroid/view/View;

    .line 77
    .line 78
    iget p4, p0, Lcom/narvii/monetization/store/HeaderLayout;->imageMaxSize:I

    .line 79
    .line 80
    add-int p5, p2, p4

    .line 81
    add-int/2addr p2, p4

    .line 82
    .line 83
    .line 84
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    .line 85
    move-result p4

    .line 86
    add-int/2addr p2, p4

    .line 87
    .line 88
    .line 89
    invoke-virtual {p3, v0, p5, p1, p2}, Landroid/view/View;->layout(IIII)V

    .line 90
    goto :goto_0

    .line 91
    .line 92
    :cond_0
    iget-object p5, p0, Lcom/narvii/monetization/store/HeaderLayout;->titleWrapper:Landroid/view/View;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    .line 96
    move-result p5

    .line 97
    add-int/2addr p5, p3

    .line 98
    .line 99
    if-le p2, p5, :cond_1

    .line 100
    .line 101
    iget-object p3, p0, Lcom/narvii/monetization/store/HeaderLayout;->titleWrapper:Landroid/view/View;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    .line 105
    move-result p3

    .line 106
    sub-int/2addr p2, p3

    .line 107
    .line 108
    sub-int p3, p1, p2

    .line 109
    .line 110
    div-int/lit8 p3, p3, 0x2

    .line 111
    .line 112
    iget-object p5, p0, Lcom/narvii/monetization/store/HeaderLayout;->icon:Landroid/view/View;

    .line 113
    .line 114
    add-int v2, p3, p2

    .line 115
    add-int/2addr p2, p4

    .line 116
    .line 117
    .line 118
    invoke-virtual {p5, p3, p4, v2, p2}, Landroid/view/View;->layout(IIII)V

    .line 119
    .line 120
    iget-object p3, p0, Lcom/narvii/monetization/store/HeaderLayout;->titleWrapper:Landroid/view/View;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p3, v1}, Landroid/view/View;->setAlpha(F)V

    .line 124
    .line 125
    iget-object p3, p0, Lcom/narvii/monetization/store/HeaderLayout;->titleWrapper:Landroid/view/View;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    .line 129
    move-result p4

    .line 130
    add-int/2addr p4, p2

    .line 131
    .line 132
    .line 133
    invoke-virtual {p3, v0, p2, p1, p4}, Landroid/view/View;->layout(IIII)V

    .line 134
    goto :goto_0

    .line 135
    :cond_1
    sub-int/2addr p1, p3

    .line 136
    .line 137
    div-int/lit8 p1, p1, 0x2

    .line 138
    .line 139
    iget-object p2, p0, Lcom/narvii/monetization/store/HeaderLayout;->icon:Landroid/view/View;

    .line 140
    .line 141
    add-int p5, p1, p3

    .line 142
    add-int/2addr p3, p4

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2, p1, p4, p5, p3}, Landroid/view/View;->layout(IIII)V

    .line 146
    .line 147
    iget-object p1, p0, Lcom/narvii/monetization/store/HeaderLayout;->titleWrapper:Landroid/view/View;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    .line 151
    move-result p2

    .line 152
    .line 153
    sub-int p2, p3, p2

    .line 154
    .line 155
    .line 156
    invoke-direct {p0, p1, p2, p3}, Lcom/narvii/monetization/store/HeaderLayout;->calcAlpha(Landroid/view/View;II)F

    .line 157
    move-result p2

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 161
    :goto_0
    return-void
.end method

.method public setImageSizeRange(II)V
    .locals 0

    iput p1, p0, Lcom/narvii/monetization/store/HeaderLayout;->imageMaxSize:I

    iput p2, p0, Lcom/narvii/monetization/store/HeaderLayout;->imageMinSize:I

    return-void
.end method
