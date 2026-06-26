.class public Lcom/narvii/scene/view/PlayerContainerLayout;
.super Landroid/widget/RelativeLayout;
.source "PlayerContainerLayout.java"


# instance fields
.field cornorDelegate:Lcom/narvii/scene/view/RoundCornorDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, p1, v0}, Lcom/narvii/scene/view/PlayerContainerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/scene/view/PlayerContainerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    new-instance p1, Lcom/narvii/scene/view/RoundCornorDelegate;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/narvii/scene/view/RoundCornorDelegate;-><init>(Landroid/view/View;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/scene/view/PlayerContainerLayout;->cornorDelegate:Lcom/narvii/scene/view/RoundCornorDelegate;

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 26
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 27
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    mul-int/lit8 v0, p2, 0x9

    shr-int/lit8 v0, v0, 0x4

    if-le p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    shl-int/lit8 p2, p1, 0x4

    .line 33
    div-int/lit8 p2, p2, 0x9

    :goto_0
    const/high16 v0, 0x40000000    # 2.0f

    .line 36
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 37
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 39
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method
