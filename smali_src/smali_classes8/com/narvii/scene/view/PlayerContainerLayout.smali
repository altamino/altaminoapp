.class public Lcom/narvii/scene/view/PlayerContainerLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field cornorDelegate:Lcom/narvii/scene/view/RoundCornorDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/scene/view/PlayerContainerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/scene/view/PlayerContainerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Lcom/narvii/scene/view/RoundCornorDelegate;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/narvii/scene/view/RoundCornorDelegate;-><init>(Landroid/view/View;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/scene/view/PlayerContainerLayout;->cornorDelegate:Lcom/narvii/scene/view/RoundCornorDelegate;

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 4
    move-result p2

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 8
    move-result p1

    .line 9
    .line 10
    mul-int/lit8 v0, p2, 0x9

    .line 11
    .line 12
    shr-int/lit8 v0, v0, 0x4

    .line 13
    .line 14
    if-le p1, v0, :cond_0

    .line 15
    move p1, v0

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    shl-int/lit8 p2, p1, 0x4

    .line 19
    .line 20
    div-int/lit8 p2, p2, 0x9

    .line 21
    .line 22
    :goto_0
    const/high16 v0, 0x40000000    # 2.0f

    .line 23
    .line 24
    .line 25
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 26
    move-result p1

    .line 27
    .line 28
    .line 29
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 30
    move-result p2

    .line 31
    .line 32
    .line 33
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 34
    return-void
.end method
