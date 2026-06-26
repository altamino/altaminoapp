.class public final Lcom/narvii/nested/tab/ScrollTabViewDelegate;
.super Ljava/lang/Object;
.source "UpdateTabViewDelegate.kt"

# interfaces
.implements Lcom/narvii/nested/tab/UpdateTabViewDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/view/View;IF)V
    .locals 4

    if-eqz p1, :cond_0

    .line 40
    sget p2, Lcom/narvii/lib/R$id;->tab_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p1, :cond_6

    if-nez p2, :cond_1

    goto :goto_3

    :cond_1
    const/4 v0, -0x1

    .line 44
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x3f7ae148    # 0.98f

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, p3, v0

    if-lez v0, :cond_2

    const/high16 p3, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const v0, 0x3ca3d70a    # 0.02f

    cmpg-float v0, p3, v0

    if-gez v0, :cond_3

    const/4 p3, 0x0

    .line 52
    :cond_3
    :goto_1
    instance-of v0, p1, Lcom/narvii/widget/ScaleView;

    if-eqz v0, :cond_4

    const v0, 0x3f9b645a    # 1.214f

    const/4 v2, 0x1

    int-to-float v2, v2

    sub-float/2addr v0, v2

    mul-float v0, v0, p3

    add-float/2addr v0, v1

    .line 55
    check-cast p1, Lcom/narvii/widget/ScaleView;

    invoke-virtual {p1, v0}, Lcom/narvii/widget/ScaleView;->setScale(F)V

    :cond_4
    const p1, 0x3e99999a    # 0.3f

    cmpl-float p1, p3, p1

    if-lez p1, :cond_5

    .line 58
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    goto :goto_2

    :cond_5
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_2
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const-wide v0, 0x3fd3333333333333L    # 0.3

    float-to-double v2, p3

    .line 59
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v0

    const-wide v0, 0x3fe6666666666666L    # 0.7

    add-double/2addr v2, v0

    double-to-float p1, v2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_6
    :goto_3
    return-void
.end method

.method public onSelected(Landroid/view/View;IZ)V
    .locals 0

    return-void
.end method
