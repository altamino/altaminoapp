.class public Lcom/narvii/link/viewer/LinkSnippetSizeUtils;
.super Ljava/lang/Object;
.source "LinkSnippetSizeUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdjustedSize(Landroid/content/Context;IFIII)I
    .locals 1

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float p1, p1, v0

    div-float/2addr p1, p2

    mul-float p1, p1, p0

    float-to-int p0, p1

    .line 11
    invoke-static {p0, p3, p5}, Lcom/narvii/link/viewer/LinkSnippetSizeUtils;->resolveAdjustedSize(III)I

    move-result p1

    if-eqz p4, :cond_0

    int-to-float p2, p4

    mul-float p2, p2, v0

    int-to-float p3, p3

    div-float/2addr p2, p3

    cmpg-float p3, p2, v0

    if-gez p3, :cond_0

    if-ge p0, p4, :cond_0

    int-to-float p0, p1

    mul-float p0, p0, p2

    float-to-int p0, p0

    return p0

    :cond_0
    return p1
.end method

.method private static resolveAdjustedSize(III)I
    .locals 2

    .line 27
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 28
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_1

    const/high16 p1, 0x40000000    # 2.0f

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p0, p2

    goto :goto_0

    .line 34
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_0

    .line 40
    :cond_2
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    :goto_0
    return p0
.end method
