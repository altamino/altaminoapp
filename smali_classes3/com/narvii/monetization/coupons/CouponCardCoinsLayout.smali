.class public Lcom/narvii/monetization/coupons/CouponCardCoinsLayout;
.super Lcom/github/mmin18/widget/FlexLayout;
.source "CouponCardCoinsLayout.java"


# instance fields
.field private coinAmount:Landroid/widget/TextView;

.field private couponsDesc:Landroid/widget/TextView;

.field private couponsSource:Landroid/widget/TextView;

.field private final dividePosition:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, v0}, Lcom/narvii/monetization/coupons/CouponCardCoinsLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/monetization/coupons/CouponCardCoinsLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mmin18/widget/FlexLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    sget-object p3, Lcom/narvii/amino/R$styleable;->CouponCardCoinsLayout:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const p3, 0x3f333333    # 0.7f

    .line 35
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/narvii/monetization/coupons/CouponCardCoinsLayout;->dividePosition:F

    .line 36
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 38
    new-instance p1, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;-><init>(Landroid/content/Context;)V

    .line 39
    iget p2, p0, Lcom/narvii/monetization/coupons/CouponCardCoinsLayout;->dividePosition:F

    invoke-virtual {p1, p2}, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;->setDividePosition(F)V

    .line 40
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 45
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const v0, 0x7f0902fa

    .line 46
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/monetization/coupons/CouponCardCoinsLayout;->coinAmount:Landroid/widget/TextView;

    const v0, 0x7f0902f9

    .line 47
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/monetization/coupons/CouponCardCoinsLayout;->couponsSource:Landroid/widget/TextView;

    const v0, 0x7f0902f8

    .line 48
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/narvii/monetization/coupons/CouponCardCoinsLayout;->couponsDesc:Landroid/widget/TextView;

    return-void
.end method

.method public setCouponInfo(Lcom/narvii/wallet/CouponDetail;)V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/narvii/monetization/coupons/CouponCardCoinsLayout;->coinAmount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/narvii/wallet/CouponDetail;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/narvii/monetization/coupons/CouponCardCoinsLayout;->couponsSource:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/narvii/wallet/CouponDetail;->getCouponTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Lcom/narvii/monetization/coupons/CouponCardCoinsLayout;->couponsDesc:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/narvii/wallet/CouponDetail;->getCouponScopeDesc()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
