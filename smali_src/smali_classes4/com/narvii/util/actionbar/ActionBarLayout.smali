.class public Lcom/narvii/util/actionbar/ActionBarLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field gestureDetector:Landroid/view/GestureDetector;

.field loc:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const/4 p1, 0x2

    .line 5
    .line 6
    new-array p1, p1, [I

    .line 7
    .line 8
    iput-object p1, p0, Lcom/narvii/util/actionbar/ActionBarLayout;->loc:[I

    .line 9
    return-void
.end method

.method private getScreenWidth()I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    const-string/jumbo v1, "window"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Landroid/view/WindowManager;

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    .line 21
    move-result v0

    .line 22
    return v0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 4
    .line 5
    sget p1, Lcom/narvii/lib/R$id;->actionbar_left:I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    const/4 p2, 0x0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    .line 17
    move-result p2

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 21
    move-result p3

    .line 22
    sub-int/2addr p2, p3

    .line 23
    .line 24
    :goto_0
    sget p3, Lcom/narvii/lib/R$id;->actionbar_title:I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object p3

    .line 29
    .line 30
    if-eqz p3, :cond_6

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/narvii/util/actionbar/ActionBarLayout;->getScreenWidth()I

    .line 34
    move-result p4

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 38
    move-result p5

    .line 39
    const/4 v0, 0x2

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    if-eq v1, p1, :cond_1

    .line 48
    .line 49
    if-eq v1, p3, :cond_1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 53
    move-result p1

    .line 54
    sub-int/2addr p5, p1

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 58
    move-result-object p1

    .line 59
    .line 60
    instance-of v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 61
    .line 62
    if-eqz v1, :cond_1

    .line 63
    .line 64
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 65
    .line 66
    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 67
    .line 68
    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 69
    add-int/2addr v1, p1

    .line 70
    sub-int/2addr p5, v1

    .line 71
    .line 72
    .line 73
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    .line 74
    move-result p1

    .line 75
    sub-int/2addr p4, p1

    .line 76
    div-int/2addr p4, v0

    .line 77
    add-int/2addr p1, p4

    .line 78
    .line 79
    if-le p1, p5, :cond_2

    .line 80
    sub-int/2addr p1, p5

    .line 81
    sub-int/2addr p4, p1

    .line 82
    move p1, p5

    .line 83
    .line 84
    :cond_2
    if-ge p4, p2, :cond_3

    .line 85
    goto :goto_1

    .line 86
    :cond_3
    move p5, p1

    .line 87
    move p2, p4

    .line 88
    .line 89
    .line 90
    :goto_1
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    .line 91
    move-result p1

    .line 92
    .line 93
    if-ne p2, p1, :cond_4

    .line 94
    .line 95
    .line 96
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    .line 97
    move-result p1

    .line 98
    .line 99
    if-eq p5, p1, :cond_6

    .line 100
    .line 101
    :cond_4
    sub-int p1, p5, p2

    .line 102
    .line 103
    const/high16 p4, 0x40000000    # 2.0f

    .line 104
    .line 105
    .line 106
    invoke-static {p1, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 107
    move-result p1

    .line 108
    .line 109
    .line 110
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    .line 111
    move-result v0

    .line 112
    .line 113
    .line 114
    invoke-static {v0, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 115
    move-result p4

    .line 116
    .line 117
    .line 118
    invoke-virtual {p3, p1, p4}, Landroid/view/View;->measure(II)V

    .line 119
    .line 120
    .line 121
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 122
    move-result p1

    .line 123
    .line 124
    if-eqz p1, :cond_5

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 128
    move-result p1

    .line 129
    sub-int/2addr p1, p5

    .line 130
    .line 131
    .line 132
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    .line 133
    move-result p4

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 137
    move-result p5

    .line 138
    sub-int/2addr p5, p2

    .line 139
    .line 140
    .line 141
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    .line 142
    move-result p2

    .line 143
    .line 144
    .line 145
    invoke-virtual {p3, p1, p4, p5, p2}, Landroid/view/View;->layout(IIII)V

    .line 146
    goto :goto_2

    .line 147
    .line 148
    .line 149
    :cond_5
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    .line 150
    move-result p1

    .line 151
    .line 152
    .line 153
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    .line 154
    move-result p4

    .line 155
    .line 156
    .line 157
    invoke-virtual {p3, p2, p1, p5, p4}, Landroid/view/View;->layout(IIII)V

    .line 158
    :cond_6
    :goto_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/actionbar/ActionBarLayout;->gestureDetector:Landroid/view/GestureDetector;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 8
    const/4 p1, 0x1

    .line 9
    return p1

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public setOnGestureListener(Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/view/GestureDetector;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, p1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/narvii/util/actionbar/ActionBarLayout;->gestureDetector:Landroid/view/GestureDetector;

    .line 12
    return-void
.end method
