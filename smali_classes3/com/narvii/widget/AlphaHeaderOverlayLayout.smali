.class public Lcom/narvii/widget/AlphaHeaderOverlayLayout;
.super Lcom/narvii/list/overlay/OverlayLayout;
.source "AlphaHeaderOverlayLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/AlphaHeaderOverlayLayout$CustomAlphaAlgorithm;,
        Lcom/narvii/widget/AlphaHeaderOverlayLayout$HeaderOverlayScrollChanged;
    }
.end annotation


# instance fields
.field private alphaAlgorithm:Lcom/narvii/widget/AlphaHeaderOverlayLayout$CustomAlphaAlgorithm;

.field private firstHeight:I

.field private listener:Lcom/narvii/widget/AlphaHeaderOverlayLayout$HeaderOverlayScrollChanged;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/AlphaHeaderOverlayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/narvii/list/overlay/OverlayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/narvii/widget/AlphaHeaderOverlayLayout;->firstHeight:I

    return-void
.end method

.method private getAlphaValue(F)F
    .locals 6

    .line 58
    iget-object v0, p0, Lcom/narvii/widget/AlphaHeaderOverlayLayout;->alphaAlgorithm:Lcom/narvii/widget/AlphaHeaderOverlayLayout$CustomAlphaAlgorithm;

    if-eqz v0, :cond_0

    .line 59
    invoke-interface {v0, p1}, Lcom/narvii/widget/AlphaHeaderOverlayLayout$CustomAlphaAlgorithm;->getAlpha(F)F

    move-result p1

    return p1

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    float-to-double v4, p1

    .line 61
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 27
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/list/overlay/OverlayLayout;->onScroll(Landroid/widget/AbsListView;III)V

    .line 28
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result p2

    const/4 p3, 0x0

    const/4 p4, 0x2

    if-ge p2, p4, :cond_0

    .line 29
    iput p3, p0, Lcom/narvii/widget/AlphaHeaderOverlayLayout;->firstHeight:I

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 31
    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-virtual {p1, p3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/narvii/widget/AlphaHeaderOverlayLayout;->firstHeight:I

    :goto_0
    return-void
.end method

.method public setCustomAlphaAlgorithm(Lcom/narvii/widget/AlphaHeaderOverlayLayout$CustomAlphaAlgorithm;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/narvii/widget/AlphaHeaderOverlayLayout;->alphaAlgorithm:Lcom/narvii/widget/AlphaHeaderOverlayLayout$CustomAlphaAlgorithm;

    return-void
.end method

.method public setScroll(I)V
    .locals 7

    .line 37
    iget v0, p0, Lcom/narvii/widget/AlphaHeaderOverlayLayout;->firstHeight:I

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-nez v0, :cond_0

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_0
    int-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v1

    int-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    :goto_0
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 38
    invoke-direct {p0, v0}, Lcom/narvii/widget/AlphaHeaderOverlayLayout;->getAlphaValue(F)F

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 39
    invoke-super {p0, p1}, Lcom/narvii/list/overlay/OverlayLayout;->setScroll(I)V

    .line 40
    iget-object p1, p0, Lcom/narvii/widget/AlphaHeaderOverlayLayout;->listener:Lcom/narvii/widget/AlphaHeaderOverlayLayout$HeaderOverlayScrollChanged;

    if-eqz p1, :cond_1

    .line 41
    invoke-interface {p1, v0}, Lcom/narvii/widget/AlphaHeaderOverlayLayout$HeaderOverlayScrollChanged;->onScroll(F)V

    :cond_1
    return-void
.end method

.method public setScrollStatusListener(Lcom/narvii/widget/AlphaHeaderOverlayLayout$HeaderOverlayScrollChanged;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/narvii/widget/AlphaHeaderOverlayLayout;->listener:Lcom/narvii/widget/AlphaHeaderOverlayLayout$HeaderOverlayScrollChanged;

    return-void
.end method
