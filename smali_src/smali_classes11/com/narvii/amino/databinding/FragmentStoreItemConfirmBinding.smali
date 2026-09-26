.class public final Lcom/narvii/amino/databinding/FragmentStoreItemConfirmBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final clickRemoveMask:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final purchaseBenefitsAminoPlusHint:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final redeemCouponComponent:Lcom/narvii/wallet/RedeemCouponComponent;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final rootView:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final storeItemIcon:Lcom/narvii/widget/NVImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final storeItemName:Lcom/narvii/monetization/utils/StoreItemNameView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final storeItemOriginalPriceHint:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final storeItemPrice:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/view/View;Landroid/widget/LinearLayout;Lcom/narvii/wallet/RedeemCouponComponent;Lcom/narvii/widget/NVImageView;Lcom/narvii/monetization/utils/StoreItemNameView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/narvii/wallet/RedeemCouponComponent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/narvii/widget/NVImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/narvii/monetization/utils/StoreItemNameView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/narvii/amino/databinding/FragmentStoreItemConfirmBinding;->rootView:Landroid/widget/FrameLayout;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/amino/databinding/FragmentStoreItemConfirmBinding;->clickRemoveMask:Landroid/view/View;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/amino/databinding/FragmentStoreItemConfirmBinding;->purchaseBenefitsAminoPlusHint:Landroid/widget/LinearLayout;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/narvii/amino/databinding/FragmentStoreItemConfirmBinding;->redeemCouponComponent:Lcom/narvii/wallet/RedeemCouponComponent;

    .line 12
    .line 13
    iput-object p5, p0, Lcom/narvii/amino/databinding/FragmentStoreItemConfirmBinding;->storeItemIcon:Lcom/narvii/widget/NVImageView;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/narvii/amino/databinding/FragmentStoreItemConfirmBinding;->storeItemName:Lcom/narvii/monetization/utils/StoreItemNameView;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/narvii/amino/databinding/FragmentStoreItemConfirmBinding;->storeItemOriginalPriceHint:Landroid/widget/TextView;

    .line 18
    .line 19
    iput-object p8, p0, Lcom/narvii/amino/databinding/FragmentStoreItemConfirmBinding;->storeItemPrice:Landroid/widget/TextView;

    .line 20
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/narvii/amino/databinding/FragmentStoreItemConfirmBinding;
    .locals 10
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x7f0a0316

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 7
    move-result-object v3

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    .line 12
    const v0, 0x7f0a0ba2

    .line 13
    .line 14
    .line 15
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 16
    move-result-object v1

    .line 17
    move-object v4, v1

    .line 18
    .line 19
    check-cast v4, Landroid/widget/LinearLayout;

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    .line 24
    const v0, 0x7f0a0c02

    .line 25
    .line 26
    .line 27
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 28
    move-result-object v1

    .line 29
    move-object v5, v1

    .line 30
    .line 31
    check-cast v5, Lcom/narvii/wallet/RedeemCouponComponent;

    .line 32
    .line 33
    if-eqz v5, :cond_0

    .line 34
    .line 35
    .line 36
    const v0, 0x7f0a0dbf

    .line 37
    .line 38
    .line 39
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 40
    move-result-object v1

    .line 41
    move-object v6, v1

    .line 42
    .line 43
    check-cast v6, Lcom/narvii/widget/NVImageView;

    .line 44
    .line 45
    if-eqz v6, :cond_0

    .line 46
    .line 47
    .line 48
    const v0, 0x7f0a0dc2

    .line 49
    .line 50
    .line 51
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 52
    move-result-object v1

    .line 53
    move-object v7, v1

    .line 54
    .line 55
    check-cast v7, Lcom/narvii/monetization/utils/StoreItemNameView;

    .line 56
    .line 57
    if-eqz v7, :cond_0

    .line 58
    .line 59
    .line 60
    const v0, 0x7f0a0dc3

    .line 61
    .line 62
    .line 63
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 64
    move-result-object v1

    .line 65
    move-object v8, v1

    .line 66
    .line 67
    check-cast v8, Landroid/widget/TextView;

    .line 68
    .line 69
    if-eqz v8, :cond_0

    .line 70
    .line 71
    .line 72
    const v0, 0x7f0a0dc6

    .line 73
    .line 74
    .line 75
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->a(Landroid/view/View;I)Landroid/view/View;

    .line 76
    move-result-object v1

    .line 77
    move-object v9, v1

    .line 78
    .line 79
    check-cast v9, Landroid/widget/TextView;

    .line 80
    .line 81
    if-eqz v9, :cond_0

    .line 82
    .line 83
    new-instance v0, Lcom/narvii/amino/databinding/FragmentStoreItemConfirmBinding;

    .line 84
    move-object v2, p0

    .line 85
    .line 86
    check-cast v2, Landroid/widget/FrameLayout;

    .line 87
    move-object v1, v0

    .line 88
    .line 89
    .line 90
    invoke-direct/range {v1 .. v9}, Lcom/narvii/amino/databinding/FragmentStoreItemConfirmBinding;-><init>(Landroid/widget/FrameLayout;Landroid/view/View;Landroid/widget/LinearLayout;Lcom/narvii/wallet/RedeemCouponComponent;Lcom/narvii/widget/NVImageView;Lcom/narvii/monetization/utils/StoreItemNameView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 91
    return-object v0

    .line 92
    .line 93
    .line 94
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 95
    move-result-object p0

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 99
    move-result-object p0

    .line 100
    .line 101
    new-instance v0, Ljava/lang/NullPointerException;

    .line 102
    .line 103
    const-string v1, "Missing required view with ID: "

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    move-result-object p0

    .line 108
    .line 109
    .line 110
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 111
    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/narvii/amino/databinding/FragmentStoreItemConfirmBinding;
    .locals 2
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/narvii/amino/databinding/FragmentStoreItemConfirmBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/FragmentStoreItemConfirmBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/narvii/amino/databinding/FragmentStoreItemConfirmBinding;
    .locals 2
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0d0327

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/narvii/amino/databinding/FragmentStoreItemConfirmBinding;->bind(Landroid/view/View;)Lcom/narvii/amino/databinding/FragmentStoreItemConfirmBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/narvii/amino/databinding/FragmentStoreItemConfirmBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/databinding/FragmentStoreItemConfirmBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
