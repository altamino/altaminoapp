.class public Lcom/narvii/monetization/utils/ExpiredItemHintDialog;
.super Lcom/narvii/util/dialog/AlertDialog;
.source "ExpiredItemHintDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected context:Lcom/narvii/app/NVContext;

.field protected membershipService:Lcom/narvii/wallet/MembershipService;

.field private final storeHelper:Lcom/narvii/monetization/store/StoreHelper;

.field private storeItem:Lcom/narvii/model/IStoreItem;

.field private final storeItemHelper:Lcom/narvii/monetization/utils/StoreItemHelper;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;Lcom/narvii/model/IStoreItem;)V
    .locals 2

    .line 28
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object p1, p0, Lcom/narvii/monetization/utils/ExpiredItemHintDialog;->context:Lcom/narvii/app/NVContext;

    .line 31
    iput-object p2, p0, Lcom/narvii/monetization/utils/ExpiredItemHintDialog;->storeItem:Lcom/narvii/model/IStoreItem;

    const-string v0, "membership"

    .line 33
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/wallet/MembershipService;

    iput-object v0, p0, Lcom/narvii/monetization/utils/ExpiredItemHintDialog;->membershipService:Lcom/narvii/wallet/MembershipService;

    .line 34
    new-instance v0, Lcom/narvii/monetization/utils/StoreItemHelper;

    invoke-direct {v0, p1}, Lcom/narvii/monetization/utils/StoreItemHelper;-><init>(Lcom/narvii/app/NVContext;)V

    iput-object v0, p0, Lcom/narvii/monetization/utils/ExpiredItemHintDialog;->storeItemHelper:Lcom/narvii/monetization/utils/StoreItemHelper;

    .line 35
    new-instance p1, Lcom/narvii/monetization/store/StoreHelper;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/monetization/store/StoreHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/narvii/monetization/utils/ExpiredItemHintDialog;->storeHelper:Lcom/narvii/monetization/store/StoreHelper;

    const p1, 0x7f0b0198

    .line 37
    invoke-virtual {p0, p1}, Lcom/narvii/util/dialog/AlertDialog;->setContentView(I)V

    const p1, 0x7f0905eb

    .line 39
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/widget/NVImageView;

    .line 40
    invoke-interface {p2}, Lcom/narvii/model/IStoreItem;->getStoreIcon()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    const p1, 0x7f0905ea

    .line 42
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/narvii/monetization/utils/StoreItemNameView;

    .line 43
    invoke-virtual {p1, p2}, Lcom/narvii/monetization/utils/StoreItemNameView;->setStoreItem(Lcom/narvii/model/IStoreItem;)V

    const p1, 0x7f09025e

    .line 46
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 47
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0905e4

    .line 50
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 51
    iget-object v0, p0, Lcom/narvii/monetization/utils/ExpiredItemHintDialog;->storeItemHelper:Lcom/narvii/monetization/utils/StoreItemHelper;

    invoke-interface {p2}, Lcom/narvii/model/IStoreItem;->getOwnershipInfo()Lcom/narvii/model/OwnershipInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/monetization/utils/StoreItemHelper;->getExpiredTimeString(Lcom/narvii/model/OwnershipInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0905fa

    .line 53
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    invoke-interface {p2}, Lcom/narvii/model/IStoreItem;->availableInAnyStore()Z

    move-result p2

    if-nez p2, :cond_0

    const p2, 0x7f090c00

    .line 56
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 57
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected jumpToStore()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/narvii/monetization/utils/ExpiredItemHintDialog;->storeHelper:Lcom/narvii/monetization/store/StoreHelper;

    iget-object v1, p0, Lcom/narvii/monetization/utils/ExpiredItemHintDialog;->storeItem:Lcom/narvii/model/IStoreItem;

    invoke-static {v1}, Lcom/narvii/monetization/store/data/StoreItem;->wrapStoreItem(Lcom/narvii/model/IStoreItem;)Lcom/narvii/monetization/store/data/StoreItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/narvii/monetization/store/StoreHelper;->openStoreItemDetail(Lcom/narvii/monetization/store/data/StoreItem;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09025e

    if-eq p1, v0, :cond_1

    const v0, 0x7f0905fa

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/monetization/utils/ExpiredItemHintDialog;->jumpToStore()V

    .line 69
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {p0}, Lcom/narvii/app/NVDialog;->dismiss()V

    :goto_0
    return-void
.end method
