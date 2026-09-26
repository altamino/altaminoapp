.class public Lcom/narvii/link/viewer/LinkSnippetSizeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static getAdjustedSize(Landroid/content/Context;IFIII)I
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    move-result-object p0

    .line 9
    .line 10
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 11
    int-to-float p1, p1

    .line 12
    .line 13
    const/high16 v0, 0x3f800000    # 1.0f

    .line 14
    mul-float/2addr p1, v0

    .line 15
    div-float/2addr p1, p2

    .line 16
    mul-float/2addr p1, p0

    .line 17
    float-to-int p0, p1

    .line 18
    .line 19
    .line 20
    invoke-static {p0, p3, p5}, Lcom/narvii/link/viewer/LinkSnippetSizeUtils;->resolveAdjustedSize(III)I

    .line 21
    move-result p1

    .line 22
    .line 23
    if-eqz p4, :cond_0

    .line 24
    int-to-float p2, p4

    .line 25
    mul-float/2addr p2, v0

    .line 26
    int-to-float p3, p3

    .line 27
    div-float/2addr p2, p3

    .line 28
    .line 29
    cmpg-float p3, p2, v0

    .line 30
    .line 31
    if-gez p3, :cond_0

    .line 32
    .line 33
    if-ge p0, p4, :cond_0

    .line 34
    int-to-float p0, p1

    .line 35
    mul-float/2addr p0, p2

    .line 36
    float-to-int p0, p0

    .line 37
    return p0

    .line 38
    :cond_0
    return p1
.end method

.method private static resolveAdjustedSize(III)I
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 4
    move-result v0

    .line 5
    .line 6
    .line 7
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 8
    move-result p2

    .line 9
    .line 10
    const/high16 v1, -0x80000000

    .line 11
    .line 12
    if-eq v0, v1, :cond_2

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const/high16 p1, 0x40000000    # 2.0f

    .line 17
    .line 18
    if-eq v0, p1, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move p0, p2

    .line 21
    goto :goto_0

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    .line 25
    move-result p0

    .line 26
    goto :goto_0

    .line 27
    .line 28
    .line 29
    :cond_2
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    .line 30
    move-result p0

    .line 31
    .line 32
    .line 33
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    .line 34
    move-result p0

    .line 35
    :goto_0
    return p0
.end method
