.class final Lcom/narvii/widget/VerticalViewPager$VerticalPageTransformer;
.super Ljava/lang/Object;
.source "VerticalViewPager.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$PageTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/VerticalViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VerticalPageTransformer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/narvii/widget/VerticalViewPager$1;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/narvii/widget/VerticalViewPager$VerticalPageTransformer;-><init>()V

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 5

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    cmpg-float v3, p2, v3

    if-gez v3, :cond_0

    .line 83
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v4, p2, v3

    if-gtz v4, :cond_1

    .line 85
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    int-to-float v0, v0

    neg-float v2, p2

    mul-float v0, v0, v2

    .line 87
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    int-to-float v0, v1

    mul-float p2, p2, v0

    .line 90
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method
