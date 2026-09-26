.class public Lcom/narvii/feed/Image3Layout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field image1:Landroid/view/View;

.field image2:Landroid/view/View;

.field image3:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0576

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iput-object v0, p0, Lcom/narvii/feed/Image3Layout;->image1:Landroid/view/View;

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0a0577

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    iput-object v0, p0, Lcom/narvii/feed/Image3Layout;->image2:Landroid/view/View;

    .line 22
    .line 23
    .line 24
    const v0, 0x7f0a0578

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    iput-object v0, p0, Lcom/narvii/feed/Image3Layout;->image3:Landroid/view/View;

    .line 31
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 1
    sub-int/2addr p4, p2

    .line 2
    .line 3
    sub-int p1, p5, p3

    .line 4
    .line 5
    if-lez p1, :cond_2

    .line 6
    .line 7
    iget-object p2, p0, Lcom/narvii/feed/Image3Layout;->image2:Landroid/view/View;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 11
    move-result p2

    .line 12
    const/4 p3, 0x0

    .line 13
    .line 14
    if-nez p2, :cond_1

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/narvii/util/Utils;->isRtl()Z

    .line 18
    move-result p2

    .line 19
    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    iget-object p2, p0, Lcom/narvii/feed/Image3Layout;->image1:Landroid/view/View;

    .line 23
    .line 24
    mul-int/lit16 v0, p1, 0x111

    .line 25
    .line 26
    div-int/lit16 v0, v0, 0x21c

    .line 27
    .line 28
    mul-int/lit16 p4, p4, 0x1dd

    .line 29
    .line 30
    div-int/lit16 p4, p4, 0x2ee

    .line 31
    add-int/2addr p4, v0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, v0, p3, p4, p1}, Landroid/view/View;->layout(IIII)V

    .line 35
    .line 36
    iget-object p2, p0, Lcom/narvii/feed/Image3Layout;->image2:Landroid/view/View;

    .line 37
    .line 38
    mul-int/lit16 p1, p1, 0x10b

    .line 39
    .line 40
    div-int/lit16 p1, p1, 0x21c

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, p3, p3, p1, p1}, Landroid/view/View;->layout(IIII)V

    .line 44
    .line 45
    iget-object p2, p0, Lcom/narvii/feed/Image3Layout;->image3:Landroid/view/View;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, p3, v0, p1, p5}, Landroid/view/View;->layout(IIII)V

    .line 49
    goto :goto_0

    .line 50
    .line 51
    :cond_0
    iget-object p2, p0, Lcom/narvii/feed/Image3Layout;->image1:Landroid/view/View;

    .line 52
    .line 53
    mul-int/lit16 p5, p4, 0x1dd

    .line 54
    .line 55
    div-int/lit16 p5, p5, 0x2ee

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, p3, p3, p5, p1}, Landroid/view/View;->layout(IIII)V

    .line 59
    .line 60
    iget-object p2, p0, Lcom/narvii/feed/Image3Layout;->image2:Landroid/view/View;

    .line 61
    .line 62
    mul-int/lit16 p5, p4, 0x1e3

    .line 63
    .line 64
    div-int/lit16 p5, p5, 0x2ee

    .line 65
    .line 66
    mul-int/lit16 v0, p1, 0x10b

    .line 67
    .line 68
    div-int/lit16 v0, v0, 0x21c

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, p5, p3, p4, v0}, Landroid/view/View;->layout(IIII)V

    .line 72
    .line 73
    iget-object p2, p0, Lcom/narvii/feed/Image3Layout;->image3:Landroid/view/View;

    .line 74
    .line 75
    mul-int/lit16 p3, p1, 0x111

    .line 76
    .line 77
    div-int/lit16 p3, p3, 0x21c

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, p5, p3, p4, p1}, Landroid/view/View;->layout(IIII)V

    .line 81
    goto :goto_0

    .line 82
    .line 83
    :cond_1
    iget-object p2, p0, Lcom/narvii/feed/Image3Layout;->image1:Landroid/view/View;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, p3, p3, p4, p1}, Landroid/view/View;->layout(IIII)V

    .line 87
    :cond_2
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 4
    move-result p1

    .line 5
    .line 6
    mul-int/lit8 p2, p1, 0x36

    .line 7
    .line 8
    div-int/lit8 p2, p2, 0x4b

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/feed/Image3Layout;->image1:Landroid/view/View;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 14
    move-result v0

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 20
    .line 21
    iget-object v0, p0, Lcom/narvii/feed/Image3Layout;->image2:Landroid/view/View;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 25
    move-result v0

    .line 26
    .line 27
    const/high16 v1, 0x40000000    # 2.0f

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/narvii/feed/Image3Layout;->image1:Landroid/view/View;

    .line 32
    .line 33
    mul-int/lit16 v2, p1, 0x1dd

    .line 34
    .line 35
    div-int/lit16 v2, v2, 0x2ee

    .line 36
    .line 37
    .line 38
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 39
    move-result v2

    .line 40
    .line 41
    .line 42
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 43
    move-result v3

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    .line 47
    .line 48
    iget-object v0, p0, Lcom/narvii/feed/Image3Layout;->image2:Landroid/view/View;

    .line 49
    .line 50
    mul-int/lit16 p1, p1, 0x10b

    .line 51
    .line 52
    div-int/lit16 p1, p1, 0x2ee

    .line 53
    .line 54
    .line 55
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 56
    move-result v2

    .line 57
    .line 58
    mul-int/lit16 p2, p2, 0x10b

    .line 59
    .line 60
    div-int/lit16 p2, p2, 0x21c

    .line 61
    .line 62
    .line 63
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 64
    move-result v3

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    .line 68
    .line 69
    iget-object v0, p0, Lcom/narvii/feed/Image3Layout;->image3:Landroid/view/View;

    .line 70
    .line 71
    .line 72
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 73
    move-result p1

    .line 74
    .line 75
    .line 76
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 77
    move-result p2

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 81
    goto :goto_0

    .line 82
    .line 83
    :cond_0
    iget-object v0, p0, Lcom/narvii/feed/Image3Layout;->image1:Landroid/view/View;

    .line 84
    .line 85
    .line 86
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 87
    move-result p1

    .line 88
    .line 89
    .line 90
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 91
    move-result p2

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 95
    goto :goto_0

    .line 96
    :cond_1
    const/4 p2, 0x0

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 100
    :goto_0
    return-void
.end method
