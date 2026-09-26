.class public Lcom/narvii/widget/AlphaHeaderOverlayLayout;
.super Lcom/narvii/list/overlay/OverlayLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/widget/AlphaHeaderOverlayLayout$HeaderOverlayScrollChanged;,
        Lcom/narvii/widget/AlphaHeaderOverlayLayout$CustomAlphaAlgorithm;
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

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/widget/AlphaHeaderOverlayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/narvii/list/overlay/OverlayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/narvii/widget/AlphaHeaderOverlayLayout;->firstHeight:I

    return-void
.end method

.method private getAlphaValue(F)F
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/AlphaHeaderOverlayLayout;->alphaAlgorithm:Lcom/narvii/widget/AlphaHeaderOverlayLayout$CustomAlphaAlgorithm;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/narvii/widget/AlphaHeaderOverlayLayout$CustomAlphaAlgorithm;->getAlpha(F)F

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    .line 11
    :cond_0
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 12
    float-to-double v2, p1

    .line 13
    mul-double/2addr v2, v0

    .line 14
    .line 15
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    .line 19
    move-result-wide v0

    .line 20
    double-to-float p1, v0

    .line 21
    return p1
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/narvii/list/overlay/OverlayLayout;->onScroll(Landroid/widget/AbsListView;III)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 7
    move-result p2

    .line 8
    const/4 p3, 0x2

    .line 9
    const/4 p4, 0x0

    .line 10
    .line 11
    if-ge p2, p3, :cond_0

    .line 12
    .line 13
    iput p4, p0, Lcom/narvii/widget/AlphaHeaderOverlayLayout;->firstHeight:I

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p2, 0x1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    move-result-object p2

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 23
    move-result p2

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 27
    move-result-object p1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 31
    move-result p1

    .line 32
    sub-int/2addr p2, p1

    .line 33
    .line 34
    iput p2, p0, Lcom/narvii/widget/AlphaHeaderOverlayLayout;->firstHeight:I

    .line 35
    :goto_0
    return-void
.end method

.method public setCustomAlphaAlgorithm(Lcom/narvii/widget/AlphaHeaderOverlayLayout$CustomAlphaAlgorithm;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/AlphaHeaderOverlayLayout;->alphaAlgorithm:Lcom/narvii/widget/AlphaHeaderOverlayLayout$CustomAlphaAlgorithm;

    return-void
.end method

.method public setScroll(I)V
    .locals 7

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/widget/AlphaHeaderOverlayLayout;->firstHeight:I

    .line 3
    .line 4
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-wide/16 v3, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    int-to-double v3, p1

    .line 11
    mul-double/2addr v3, v1

    .line 12
    int-to-double v5, v0

    .line 13
    div-double/2addr v3, v5

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    .line 17
    move-result-wide v0

    .line 18
    double-to-float v0, v0

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v0}, Lcom/narvii/widget/AlphaHeaderOverlayLayout;->getAlphaValue(F)F

    .line 22
    move-result v1

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 26
    .line 27
    .line 28
    invoke-super {p0, p1}, Lcom/narvii/list/overlay/OverlayLayout;->setScroll(I)V

    .line 29
    .line 30
    iget-object p1, p0, Lcom/narvii/widget/AlphaHeaderOverlayLayout;->listener:Lcom/narvii/widget/AlphaHeaderOverlayLayout$HeaderOverlayScrollChanged;

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    .line 35
    invoke-interface {p1, v0}, Lcom/narvii/widget/AlphaHeaderOverlayLayout$HeaderOverlayScrollChanged;->onScroll(F)V

    .line 36
    :cond_1
    return-void
.end method

.method public setScrollStatusListener(Lcom/narvii/widget/AlphaHeaderOverlayLayout$HeaderOverlayScrollChanged;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/widget/AlphaHeaderOverlayLayout;->listener:Lcom/narvii/widget/AlphaHeaderOverlayLayout$HeaderOverlayScrollChanged;

    return-void
.end method
