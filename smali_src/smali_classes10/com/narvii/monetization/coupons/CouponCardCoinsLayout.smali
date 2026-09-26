.class public Lcom/narvii/monetization/coupons/CouponCardCoinsLayout;
.super Lcom/github/mmin18/widget/FlexLayout;
.source "SourceFile"


# instance fields
.field private coinAmount:Landroid/widget/TextView;

.field private couponsDesc:Landroid/widget/TextView;

.field private couponsSource:Landroid/widget/TextView;

.field private final dividePosition:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/narvii/monetization/coupons/CouponCardCoinsLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/narvii/monetization/coupons/CouponCardCoinsLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mmin18/widget/FlexLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    sget-object p3, Lcom/narvii/amino/R$styleable;->CouponCardCoinsLayout:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    const p3, 0x3f333333    # 0.7f

    .line 5
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/narvii/monetization/coupons/CouponCardCoinsLayout;->dividePosition:F

    .line 6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 7
    new-instance p1, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3}, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;-><init>(Landroid/content/Context;)V

    .line 8
    invoke-virtual {p1, p2}, Lcom/narvii/monetization/coupons/CouponBackgroundDrawable;->setDividePosition(F)V

    .line 9
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

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
    const v0, 0x7f0a03cd

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    check-cast v0, Landroid/widget/TextView;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/narvii/monetization/coupons/CouponCardCoinsLayout;->coinAmount:Landroid/widget/TextView;

    .line 15
    .line 16
    .line 17
    const v0, 0x7f0a03cc

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    move-result-object v0

    .line 22
    .line 23
    check-cast v0, Landroid/widget/TextView;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/narvii/monetization/coupons/CouponCardCoinsLayout;->couponsSource:Landroid/widget/TextView;

    .line 26
    .line 27
    .line 28
    const v0, 0x7f0a03cb

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    move-result-object v0

    .line 33
    .line 34
    check-cast v0, Landroid/widget/TextView;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/narvii/monetization/coupons/CouponCardCoinsLayout;->couponsDesc:Landroid/widget/TextView;

    .line 37
    return-void
.end method

.method public setCouponInfo(Lcom/narvii/wallet/CouponDetail;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/monetization/coupons/CouponCardCoinsLayout;->coinAmount:Landroid/widget/TextView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/wallet/CouponDetail;->getValue()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/narvii/monetization/coupons/CouponCardCoinsLayout;->couponsSource:Landroid/widget/TextView;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/narvii/wallet/CouponDetail;->getCouponTitle()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    iget-object v0, p0, Lcom/narvii/monetization/coupons/CouponCardCoinsLayout;->couponsDesc:Landroid/widget/TextView;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/narvii/wallet/CouponDetail;->getCouponScopeDesc()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    return-void
.end method
